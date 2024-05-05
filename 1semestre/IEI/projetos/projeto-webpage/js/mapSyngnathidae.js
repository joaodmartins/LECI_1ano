$(document).ready(function () {
    var dadosPreferenciaAlimentar = {
        categories: ["Pequenos Crustáceos", "Larvas e Ovos", "Outros Peixes", "Algas"],
        series: [{
            name: "Cavalo-marinho",
            data: [27.5, 22.5, 17.5, 32.5] // Percentagem de preferência alimentar
        }, {
            name: "Dragão-marinho",
            data: [18.75, 28.75, 23.75, 28.75] // Percentagem de preferência alimentar
        }]
    };

    // Configuração do gráfico de barras
    Highcharts.chart('graphSyngnathidae', {
        chart: {
            type: "column"
        },
        title: {
            text: "Preferência Alimentar do Cavalo-marinho e Dragão-marinho"
        },
        xAxis: {
            categories: dadosPreferenciaAlimentar.categories
        },
        yAxis: {
            title: {
                text: "Percentagem"
            }
        },
        series: dadosPreferenciaAlimentar.series,
        plotOptions: {
            bar: {
                dataLabels: {
                    enabled: true,
                    format: '{point.y}%'
                }
            }
        }
    });
});