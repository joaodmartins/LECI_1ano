$(document).ready(function () {
    
    var dadosCicloVida = {
        data: [
            { name: "Ovo", y: 15 },
            { name: "Larva", y: 30 },
            { name: "Juvenil", y: 25 },
            { name: "Adulto", y: 30 }
        ]
    };

    // Configuração do gráfico de pizza
    Highcharts.chart('graphCyprinidae', {
        chart: {
            type: "pie"
        },
        title: {
            text: "Ciclo de Vida da familia Cyprinidae"
        },
        series: [{
            data: dadosCicloVida.data,
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.y:.2f}%'
            }
        }]
    });
});