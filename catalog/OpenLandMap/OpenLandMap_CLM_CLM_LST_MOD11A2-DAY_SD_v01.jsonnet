local id = 'OpenLandMap/CLM/CLM_LST_MOD11A2-DAY_SD/v01';
local subdir = 'OpenLandMap';

local ee_const = import 'earthengine_const.libsonnet';
local ee = import 'earthengine.libsonnet';
local spdx = import 'spdx.libsonnet';
local units = import 'units.libsonnet';

local license = spdx.cc_by_sa_4_0;

local basename = std.strReplace(id, '/', '_');
local base_filename = basename + '.json';
local self_ee_catalog_url = ee_const.ee_catalog_url + basename;

{
  stac_version: ee_const.stac_version,
  type: ee_const.stac_type.collection,
  stac_extensions: [
    ee_const.ext_eo,
    ee_const.ext_sci,
  ],
  id: id,
  title: 'OpenLandMap Long-term Land Surface Temperature Daytime Monthly Standard Deviation',
  'gee:type': ee_const.gee_type.image,
  description: |||
    Long-term MODIS LST day-time and night-time temperatures standard deviation
    at 1 km based on the 2000-2017 time series.

    Derived using the [data.table package and quantile function in R](https://gitlab.com/openlandmap/global-layers/tree/master/input_layers/MOD11A2).
    For more info about the MODIS LST product see [this page](https://lpdaac.usgs.gov/products/mod11a2v006/).
    Antarctica is not included.

    To access and visualize maps outside of Earth Engine, use [this page](https://opengeohub.org/about-openlandmap).

    If you discover a bug, artifact or inconsistency in the LandGIS maps
    or if you have a question please use the following channels:

     *  [Technical issues and questions about the code](https://gitlab.com/openlandmap/global-layers/issues)
     *  [General questions and comments](https://disqus.com/home/forums/landgis/)
  |||,
  license: license.id,
  links: ee.standardLinks(subdir, id) + [
    ee.link.license(license.reference),
    {
      rel: ee_const.rel.cite_as,
      href: 'https://doi.org/10.5281/zenodo.1420114',
    },
  ],
  'gee:categories': ['climate'],
  keywords: [
    'envirometrix',
    'lst',
    'mod11a2',
    'modis',
    'monthly',
    'opengeohub',
    'openlandmap',
  ],
  providers: [
    ee.producer_provider('EnvirometriX Ltd', 'https://doi.org/10.5281/zenodo.1420114'),
    ee.host_provider(self_ee_catalog_url),
  ],
  extent: ee.extent_global('2000-01-01T00:00:00Z', '2018-01-01T00:00:00Z'),
  summaries: {
    gsd: [
      1000.0,
    ],
    'eo:bands': [
      {
        name: 'jan',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, January',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
      {
        name: 'feb',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, February',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
      {
        name: 'mar',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, March',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
      {
        name: 'apr',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, April',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
      {
        name: 'may',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, May',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
      {
        name: 'jun',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, June',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
      {
        name: 'jul',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, July',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
      {
        name: 'aug',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, August',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
      {
        name: 'sep',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, September',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
      {
        name: 'oct',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, October',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
      {
        name: 'nov',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, November',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
      {
        name: 'dec',
        description: 'Long-term Land Surface Temperature daytime monthly stddev, December',
        'gee:units': units.kelvin,
        'gee:scale': 0.02,
      },
    ],
    'gee:visualizations': [
      {
        display_name: 'Long-term Land Surface Temperature daytime monthly sd',
        lookat: {
          lon: -5.6,
          lat: 30.7,
          zoom: 1,
        },
        image_visualization: {
          band_vis: {
            min: [
              25.0,
            ],
            max: [
              390.0,
            ],
            palette: [
              '2828ff',
              '2828ff',
              '6666ff',
              '8989ff',
              'a1a1ff',
              'b2b2ff',
              'c0c0ff',
              'cbcbff',
              'd5d5ff',
              'dedeff',
              'e6e6ff',
              'ededff',
              'f5f5ff',
              'ffffff',
              'fcfcff',
              'fffbfb',
              'fff4f4',
              'ffeded',
              'ffe5e5',
              'ffdddd',
              'ffd4d4',
              'ffcbcb',
              'ffbfbf',
              'ffb2b2',
              'ffa1a1',
              'ff8a8a',
              'ff6767',
              'ff2929',
            ],
            bands: [
              'jan',
            ],
          },
        },
      },
    ],
    jan: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
    feb: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
    mar: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
    apr: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
    may: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
    jun: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
    jul: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
    aug: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
    sep: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
    oct: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
    nov: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
    dec: {
      minimum: 25.0,
      maximum: 390.0,
      'gee:estimated_range': true,
    },
  },
  'sci:doi': '10.5281/zenodo.1420114',
  'sci:citation': |||
    Long-term MODIS LST day-time and night-time temperatures, sd and differences
    at 1 km based on the 2000-2017 time series
    [10.5281/zenodo.1420115](https://doi.org/10.5281/zenodo.1420114)
  |||,
  'gee:terms_of_use': ee.gee_terms_of_use(license),
  'gee:unusual_terms_of_use': true,
  'gee:user_uploaded': true,
}
