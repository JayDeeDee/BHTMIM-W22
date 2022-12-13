/*!
 * jQuery cleanerCode snippet
 * version: 0.0.1
 * Requires jQuery v1.7.2 or later
 * Project repository: https://github.com/JayDeeDee/BHTMIM-W22

 * Copyright 2022 Jana Deutschländer

 * licensed under MIT licenses
 * https://github.com/JayDeeDee/BHTMIM-W22#LICENSE
 */
/* eslint-enable */

// optional overwrite for settings
let options = {
	debug: false
};

if (typeof jQuery === 'function') {

    /**
     * Immediate-Invoked Function Expression (IIFE) is executed instantly
	 * used to alias global variables, make variables and functions private and to ensure asynchronous code
	 * in loops are executed correctly.
	 *
	 * @param {jQuery} $ 		Alias for jQuery
	 * @param {Object} win 		Browser window object
	 * @param {Object} options	Options for overwriting settings
     */
    (function ($, win, options) {
		'use strict';

		// default settings
		let settings = $.extend({
			debug: false,
			ajaxUrl: '/ajax/load_sectors_bubble.php?district=',
			imgSrcPath: '/images/sector_bubble_close.png',
			selectorChooseCityHeadline: '.choose-city-headline',
			selectorDivisionField: '#division-field',
			selectorSectorField: '#sector-field',
			selectorDistrictElement: '.district-element',
			selectorDistrictLabel: '.district-label',
			selectorDistrictInput: '.district-field',
			selectorDistrictWidget: '.district-custom-checkbox',
			selectorLoadingArea: '.loading-area',
			selectorLoadingAreaSector: '.loading-area-sector',
			selectorLoadingAreaActiveSector: '.loading-area-active-sector',
			selectorErrorMessages: '.error-area'
		}, options);

		// jQuery Objects
		let $chooseCityHeadline = $(settings.selectorChooseCityHeadline),
			$divisionField = $(settings.selectorDivisionField),
			$sectorField = $(settings.selectorSectorField),
			$loadingArea = $(settings.selectorLoadingArea);

		/**
		 * checks, if number of elements in the jQuery object is at least 1
		 * @param {jQuery} $object
		 * @returns {boolean}
		 */
		let existsInDocument = function($object) {
			return ($object.length > 0);
		}

		/**
		 * checks, if the current district element is active
		 * @param {jQuery} 	$districtElement
		 * @returns {boolean} isChecked
		 */
		let isActiveDistrict = function($districtElement) {
			let $input = $districtElement.find(settings.selectorDistrictInput);
			if(!existsInDocument($input)) {
				log('isActiveDistrict: district element or input does not exist');
				return false;
			}
			return $input.is(':checked');
		};

		/**
		 * returns comma separated list of sectors
		 * @returns {string} sectorList
		 */
		let getSectorList = function() {
			if(!existsInDocument($divisionField)) {
				log('getSectorList: $divisionField does not exist');
				return '';
			}
			return $divisionField.val().toString();
		};

		/**
		 * returns comma separated list of sectors without the sector of the given $districtElement
		 * @param {jQuery} $districtElement
		 * @returns {string} sectorList
		 */
		let getSectorListWithoutCurrent = function($districtElement) {
			let $currentDistrictInput = $districtElement.find(settings.selectorDistrictInput);
			if(!existsInDocument($currentDistrictInput)) {
				log('getSectorListWithoutCurrent: $districtElement does not exist');
				return '';
			}
			// @todo: ineffective way of storing and manipulating the sector list, but not enough information yet to refactor
			return getSectorList().replace($currentDistrictInput.val() + ', ', '');
		};

		/**
		 * sets the new city headline text removes
		 * @param {jQuery} $districtElement
		 */
		let setCityHeadline = function($districtElement) {
			let $districtLabel = $districtElement.find(settings.selectorDistrictLabel);
			if(existsInDocument($chooseCityHeadline) && existsInDocument($districtLabel)) {
				// @todo: ineffective way of storing and manipulating the city headline, but not enough information yet to refactor
				let newHeadlineText = $chooseCityHeadline.text().replace(', ' + $districtLabel, '');
				$chooseCityHeadline.text(newHeadlineText);
			} else {
				log('setCityHeadline: $chooseCityHeadline or $districtLabel do not exist');
			}
		};

		/**
		 *
		 * @param {jQuery} $districtElement
		 * @param {boolean} setActive
		 */
		let setStateDistrict = function($districtElement, setActive) {
			let $districtInput = $districtElement.find(settings.selectorDistrictInput);
			let $districtWidget = $districtElement.find(settings.selectorDistrictWidget);

			if(existsInDocument($districtInput) && existsInDocument($districtWidget)) {
				if(setActive) {
					$districtWidget.addClass('active');
					$districtInput.prop('checked', true);
				} else {
					$districtWidget.removeClass('active');
					$districtInput.prop('checked', false);
				}
			} else {
				log('setActiveDistrict: $districtInput or $districtWidget do not exist');
			}
		};

		/**
		 * set sector bubbles and close button for active sectors in loading area
		 * @param {jQuery} $sectorField
		 */
		let setSectorBubbles = function($sectorField) {
			if(existsInDocument($sectorField)) {
				// @todo: ineffective way of storing and manipulating the sector list, but not enough information yet to refactor
				let sectorList = $sectorField.val();
				let sectorArray = sectorList.split(',');
				let activeSelector = settings.selectorLoadingAreaActiveSector;

				let imgSrcPath = settings.imgSrcPath;
				for (let i=0; i < sectorArray.length; i++) {
					$(activeSelector + '-' + sectorArray[i]).addClass(activeSelector);
					$('img', activeSelector + '-' + sectorArray[i].attr("src", imgSrcPath));
				}
			}
		};

		let updateSectorList = function() {
			// @todo: not enough information yet to refactor the buggy code lines
		};

		/**
		 * load the sectors new according to the status of the given $districtElement
		 * @param {jQuery} $districtElement
		 */
		let loadSectors = function($districtElement) {
			let url = settings.ajaxUrl;

			if(isActiveDistrict($districtElement)) {
				url += getSectorListWithoutCurrent($districtElement);
			} else {
				// @todo: else branch of original-code.js
			}

			$($loadingArea).load(url, function(response, status, xhr) {
				if (status === 'error') {
					log('loadSectors: ajax was unsuccessful');
					log(xhr.status);
					log(xhr.statusText);
					let errorMsg = 'There was an error. The sectors could not be loaded, please try again.';
					$(settings.selectorErrorMessages).empty().append(errorMsg);
				} else {
					if(isActiveDistrict($districtElement)) {
						setCityHeadline($districtElement);
						setStateDistrict($districtElement, false);
						setSectorBubbles($sectorField);
						updateSectorList($sectorField);
					} else {
						// @todo: else branch of original-code.js
					}
				}
			});
		};

		/**
		 * set click event handler on all $districtElements, which starts loading of sector map
		 */
		$(document).on('click', settings.selectorDistrictElement, function(event) {
			event.preventDefault();
			let $districtElement = $(this);
			loadSectors($districtElement);
		});


    })(jQuery, window, options);

} else {
	log('jQuery is missing');
}

/**
 * helper fn for console logging
 */
function log() {
	if (!options.debug) {
		return;
	}

	let msg = '[jquery.cleanerCode] ' + Array.prototype.join.call(arguments, '');

	if (window.console && window.console.log) {
		window.console.log(msg);
	}
}

