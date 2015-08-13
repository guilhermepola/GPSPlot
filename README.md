# GPSPlot
Graph Double Bar

#import "GPSPlot.h"

    //Inicializando e allocando o gráfico
    GPSPlot *novoGraph = [[GPSPlot alloc] init];
    
    //Desenhando o gráfico
    [novoGraph setSpacing:5.0];
    [novoGraph setInicialX:80.0];
    [novoGraph setWidthGraph:100.0];
    [novoGraph setInicialY:80.0];

    [novoGraph printWithArrayReal:@[@100, @100, @120, @20] andView:self.view];
