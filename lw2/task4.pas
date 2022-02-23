PROGRAM Hello(INPUT, OUTPUT);
USES dos;
  // http://localhost:4001/cgi-bin/task4.cgi/?first_name=Ekaterina&last_name=Bakhtina&age=18&
FUNCTION GetQueryStringParameter(Key: STRING): STRING;
VAR
  Str: STRING;
BEGIN
  Str := GetEnv('QUERY_STRING');
  Str := Copy(Str, POS(Key, Str) + length(Key) + 1, Length(Str));
  GetQueryStringParameter := COPY(Str, 1, POS('&', Str) - 1)   
END;
  
BEGIN {Hello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  WRITELN('First Name: ', GetQueryStringParameter('first_name'));
  WRITELN('Last Name: ', GetQueryStringParameter('last_name'));
  WRITELN('Age: ', GetQueryStringParameter('age'))
END. {Hello}