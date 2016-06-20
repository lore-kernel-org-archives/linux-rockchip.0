From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v4 5/5] usb: dwc3: rockchip: add devicetree bindings
 documentation
Date: Mon, 20 Jun 2016 16:44:20 +0200
Message-ID: <4674233.DVms812T4a@diego>
References: <1464870896-25612-1-git-send-email-william.wu@rock-chips.com>
 <12544596.GMXFpFZvx9@phil> <5763C083.2030304@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <5763C083.2030304-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, sergei.shtylyov-M4DtvfQ/ZS1MRgGoP+s0PdBPR1lH4CV8@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, briannorris-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi William,

Am Freitag, 17. Juni 2016, 17:18:59 schrieb William Wu:
> On 06/17/2016 07:15 AM, Heiko St=FCbner wrote:
> > Am Donnerstag, 2. Juni 2016, 20:34:56 schrieb William Wu:
> >> This patch adds the devicetree documentation required for Rockchip
> >> USB3.0 core wrapper consisting of USB3.0 IP from Synopsys.
> >> =

> >> It supports DRD mode, and could operate in device mode (SS, HS, FS)
> >> and host mode (SS, HS, FS, LS).
> >> =

> >> Signed-off-by: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>

[...]

> >> +Optional clocks:
> >> +  "aclk_usb3otg0"	Aclk for specific usb controller clock.

what does this clock do? Also most likely same argument as below.


> >> +  "aclk_usb3_rksoc_axi_perf"  USB AXI perf clock.  Not present on all
> >> platforms.
> > =

> > The clock names looks pretty strange. What are they for? Especially as
> > nothing seems to use them right now.
> =

> "aclk_usb3_rksoc_axi_perf", it's the clk for usb3 performance monitor
> module, you can refer to the GRF_USB3_PERF_xxx. And we don't use the usb3
> performance monitor control registers right now.

ok, then I'd suggest not defining the clock for now.

For one, there are more perf blocks in the GRF (usb3, pcie, hdcp22, gmac, g=
pu, =

etc) which all seem to share a somewhat similar design, so they will maybe =

result in a separate driver of some form for the performance monitors.

And secondly, it is somewhat easy to add new optional properties, but you =

cannot remove anything defined previously. So if we later decide to handle =
all =

the performance monitors differently, you can't remove that clock from the =

binding again. (or at least only with quite a bit of hassle).

So as this clock isn't used at all yet, I guess it should not get included =

now.


> >> +  "aclk_usb3_grf"	USB grf clock.  Not present on all platforms.
> > =

> > for my own education, which part of the GRF does this clock supply?
> =

> "aclk_usb3_grf", it's the clk for USB3 grf, e.g. GRF_USB3OTGX_CONX

Hmm, this looks more like it belongs to the otg phy? =

Anyway, also seems unused right now, so same argument as above applies here.


Heiko
