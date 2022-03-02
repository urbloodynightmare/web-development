PROGRAM Hello(INPUT, OUTPUT);
USES Dos;
VAR
  Name: STRING;
  Index: INTEGER;
BEGIN {Hello}
  WRITELN('Content-Type: text/plain');
  WRITELN;
  NAME := GetEnv('QUERY_STRING');
  INDEX := POS('=', NAME);
  IF POS('&', NAME) > 0
  THEN
    NAME := COPY(NAME, 1, POS('&', NAME)-1);
  NAME := COPY(NAME, INDEX + 1, Length(NAME)-INDEX);
  IF Length(NAME) < 1 THEN
    WRITELN('Hello Anonymous!')
  ELSE
    WRITELN('Hello dear, ', NAME, '!')
END. {Hello}