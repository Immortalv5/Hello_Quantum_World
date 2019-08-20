import qsharp
from Microsoft.Samples import HelloQ, HelloAgain
import time

HelloQ.simulate()
time.sleep(5)
HelloAgain.simulate(count = 3, name = 'Amar')
