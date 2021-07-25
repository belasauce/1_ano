import wave
import sys
def main(argv):
    wf = wave.open(argv[1], "rb")
    print(wf.getframerate())
    print(wf.getsampwidth())
    print(wf.getnchannels())
    print(wf.getnframes())
    wf.close()
main(sys.argv)