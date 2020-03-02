fileID = fopen('DatosF.txt');
C = textscan(fileID, '%d %f %f %f');
fclose(fileID);