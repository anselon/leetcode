def wordBreak( s, wordDict):
        length = len(s)
        if length==0:
            return False
        stack = [] # Stack to track the last character in each word
        stack.append(-1)  # So that the program checks if the whole string is just one word
        for i in range(length):
                print stack[::-1]
                for j in stack[::-1]:
                    if s[j+1:i+1] in wordDict:
                        stack.append(i)

                        break 
        if length-1 in stack:
            return True
        else: 
            return False
print wordBreak("aaaaaaaa", ["aaaaa","aaa"])