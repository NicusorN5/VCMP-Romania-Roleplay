function GetTok(string, separator, n, ...) {
    local m = vargv.len() > 0 ? vargv[0] : n,
        tokenized = split(string, separator),
        text = "";
    if (n > tokenized.len() || n < 1) return null;
    for (; n <= m; n++) {
        text += text == "" ? tokenized[n - 1] : separator + tokenized[n - 1];
    }
    return text;
}

function NumTok(string, separator) {
    local tokenized = split(string, separator);
    return tokenized.len();
}
