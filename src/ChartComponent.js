import React from 'react';
import FusionCharts from 'fusioncharts';
import Charts from 'fusioncharts/fusioncharts.charts';
import ReactFC from 'react-fusioncharts';
import FusionTheme from 'fusioncharts/themes/fusioncharts.theme.fusion';

// Add the FusionCharts module and themes
ReactFC.fcRoot(FusionCharts, Charts, FusionTheme);

const ChartComponent = ({ chartConfigs }) => {
  return <ReactFC {...chartConfigs} />;
};

export default ChartComponent;
