
-- Metadata

actions.pread = function ()
	out, res, err = io.pread("ipconfig /all");
	print(out);
	layout.info.text = out;
end

actions.plines = function ()
	lines, res, err = io.plines("ipconfig /all");
	print(lines);
	layout.info.text = lines;
end

actions.fwrite = function ()
	io.fwrite("C:\\hello.txt", "Hello World!");
end

actions.fread = function ()
	local r = io.fread("C:\\hello.txt");
	update(r);
end

actions.flines = function ()
	local r = io.flines("C:\\hello.txt");
end
