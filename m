From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Boundary between pinctrl and peripheral settings
Date: Fri, 05 Aug 2016 01:36:06 +0200
Message-ID: <1719598.F3JUalFtig@phil>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>
Cc: linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Linus,


on the rk3399 we found an interesting new feature and would like to get some 
input from the pinctrl expert :-) , as Doug and me currently are of 
differing opinions on where specific control elements belong.


In a nutshell on the rk3399 some things like one specific uart can use 
multiple pins to output data, but control of that seems to be split. The 
actual pin config is identical for all pins - each needs to be configured to 
function 2, pulls set etc. Then somewhere between the pin io-cells and the 
uart it seems to have some sort of switch to decide to which pin to actually 
route the data.


+-------+    +--------+  /- GPIO4_B1 (pinmux 2)
| uart2 | -- | switch | --- GPIO4_C1 (pinmux 2)
+-------+    +--------+  \- GPIO4_C4 (pinmux 2)
(switch selects one of the 3 pins to actually output data to)


So the question now is, should the pinctrl driver also flip that switch to 
the correct position itself when pin-function 2 of say gpio4_bq gets 
selected or is that routing outside of pinctrl's scope?

-----

I hope to have presented the core issue above somewhat neutrally, below are 
my personal worries about doing that in pinctrl :-) .


Apart from it feeling "bolted-on" to me, I have two main worries with that 
approach:
(1) Right now the unused pins are really unused on the same iomux, so when 
flipping the switch it essentially does

 uart-sout    unused 
  |(iomux2)    |(iomux2)
  |            |
+----------+ +----------+
| gpio4_b0 | | gpio4_c0 |
+----------+ +----------+

going to

 unused       uart-sout
  |(iomux2)    |(iomux2)
  |            |
+----------+ +----------+
| gpio4_b0 | | gpio4_c0 |
+----------+ +----------+

but nothing keeps designers from doing

 uart-sout    special1 
  |(iomux2)    |(iomux2)
  |            |
+----------+ +----------+
| gpio4_b0 | | gpio4_c0 |
+----------+ +----------+

going to

 special2     uart-sout
  |(iomux2)    |(iomux2)
  |            |
+----------+ +----------+
| gpio4_b0 | | gpio4_c0 |
+----------+ +----------+

somewhere down the road, so relying on following the selected iomux feels 
not future proof.

(2) Looking at [0] we already have a similar case, where we configure the 
pins for rgmii but still tell the gmac controller that it is supposed to do 
rgmii instead of rmii.

Here the pinmux is the same for all pins, rmii just uses less pins when 
compared to rgmii, so binding that to the pinmux isn't even possible.

And doing it one way here and another way for the switch feels very strange.


I hope this overly long mail was not to confusing and hope for some words of 
wisdom ;-)


Big thanks
Heiko


[0] 
https://git.kernel.org/cgit/linux/kernel/git/torvalds/linux.git/tree/arch/arm/boot/dts/rk3288-miqi.dts#n139
