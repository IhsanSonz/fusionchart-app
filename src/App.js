import React, { useEffect, useState } from 'react';
import ChartComponent from './ChartComponent';

const App = () => {
  const [chartConfigs1, setChartConfigs1] = useState([]);
  const [chartConfigs2, setChartConfigs2] = useState([]);
  const [chartConfigs3, setChartConfigs3] = useState([]);
  const [chartConfigs4, setChartConfigs4] = useState([]);
  const [currentChart, setCurrentChart] = useState();

  useEffect(() => {
    // Fetch JSON data or load it in any other way
    fetch('data_kunjungan_poli.json')
      .then(response => response.json())
      .then(data => {
        setChartConfigs1(data);
      });

    // Fetch JSON data or load it in any other way
    fetch('data_kunjungan_penjamin.json')
      .then(response => response.json())
      .then(data => {
        console.log(data);
        setChartConfigs2(data);
      });

    // Fetch JSON data or load it in any other way
    fetch('data_perbandingan_pendapatan.json')
      .then(response => response.json())
      .then(data => {
        setChartConfigs3(data);
      });

    // Fetch JSON data or load it in any other way
    fetch('data_pendapatan_kasir.json')
      .then(response => response.json())
      .then(data => {
        setChartConfigs4(data);
      });
  }, []);

  const renderChart = (currentChart) => {
    const chart = [
      <ChartComponent chartConfigs={chartConfigs1} />,
      <ChartComponent chartConfigs={chartConfigs2} />,
      <ChartComponent chartConfigs={chartConfigs3} />,
      <ChartComponent chartConfigs={chartConfigs4} />,
    ];

    return chart[currentChart];
  }

  return (
    <div style={{ margin: '0 2em' }}>
      <h1>
        FusionChart
        &emsp;
        <select onChange={(e) => setCurrentChart(e.target.value)} style={{ fontSize: '1em' }}>
          <option value={0}>column2d</option>
          <option value={1}>pie2d</option>
          <option value={2}>doughnut2d</option>
          <option value={3}>stackedarea2d</option>
        </select>
      </h1>
      {currentChart ? renderChart(currentChart) : chartConfigs1 && <ChartComponent chartConfigs={chartConfigs1} />}
    </div>
  );
};

export default App;
