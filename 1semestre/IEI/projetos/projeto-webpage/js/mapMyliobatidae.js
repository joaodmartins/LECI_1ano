$(document).ready(function () {
    // Dados fictícios para o gráfico
    var dadosMigracao = {
        categories: ["2000", "2005", "2010", "2015", "2020"],
        series: [{
            name: "Padrões de Migração",
            data: [50, 60, 70, 80, 75] // Substitua com dados reais
        }]
    };

    // Configuração do gráfico de linhas
    Highcharts.chart('graphMyliobatidae', {
        chart: {
            type: "line"
        },
        title: {
            text: "Padrões de Migração da Família Myliobatidae"
        },
        xAxis: {
            categories: dadosMigracao.categories
        },
        yAxis: {
            title: {
                text: "Intensidade de Migração"
            }
        },
        series: dadosMigracao.series,
        plotOptions: {
            line: {
                dataLabels: {
                    enabled: true,
                    format: '{point.y}%'
                }
            }
        }
    });
});