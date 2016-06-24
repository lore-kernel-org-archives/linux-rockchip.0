From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH v4 5/5] usb: dwc3: rockchip: add devicetree bindings documentation
Date: Fri, 24 Jun 2016 21:50:24 +0200
Message-ID: <1518073.zeMq7N85Id@phil>
References: <1464870896-25612-1-git-send-email-william.wu@rock-chips.com> <4674233.DVms812T4a@diego> <576904D0.6060005@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <576904D0.6060005-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Sender: linux-usb-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, balbi-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, briannorris-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, dianders-hpIqsD4AKlfQT0dZR+AlfA@public.gmane.org, kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, frank.wang-TNX95d0MmH7DzftRWevZcw@public.gmane.org, eddie.cai-TNX95d0MmH7DzftRWevZcw@public.gmane.org, John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, sergei.shtylyov-M4DtvfQ/ZS1MRgGoP+s0PdBPR1lH4CV8@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Hi William,

Am Dienstag, 21. Juni 2016, 17:11:44 schrieb William Wu:
> On 06/20/2016 10:44 PM, Heiko St=FCbner wrote:
> > Am Freitag, 17. Juni 2016, 17:18:59 schrieb William Wu:
> >> On 06/17/2016 07:15 AM, Heiko St=FCbner wrote:
> >>> Am Donnerstag, 2. Juni 2016, 20:34:56 schrieb William Wu:
> >>>> This patch adds the devicetree documentation required for Rockch=
ip
> >>>> USB3.0 core wrapper consisting of USB3.0 IP from Synopsys.
> >>>>=20
> >>>> It supports DRD mode, and could operate in device mode (SS, HS, =
=46S)
> >>>> and host mode (SS, HS, FS, LS).
> >>>>=20
> >>>> Signed-off-by: William Wu <william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
> >=20
> > [...]
> >=20
> >>>> +Optional clocks:
> >>>> +  "aclk_usb3otg0"	Aclk for specific usb controller clock.
> >=20
> > what does this clock do? Also most likely same argument as below.
>=20
> Here is partial rk3399 clk tree about usb3:
>=20
> aclk_usb3                       7            7   297000000 0 0
>               aclk_usb3_grf                1            1
> 297000000          0 0
>               aclk_usb3_rksoc_axi_perf     1            1
> 297000000          0 0
>               aclk_usb3otg1                1            1
> 297000000          0 0
>               aclk_usb3otg0                1            1
> 297000000          0 0
>               aclk_usb3_noc                1            1
> 297000000          0 0
>=20
> from the clk tree, and check with our IC designers, we can see that:
> 1. aclk_usb3 is the parent clk of aclk_usb3****
> 2. aclk_usb3_grf  is used for both otg0 and otg1 grf, and these usb3 =
grf
> can be set
> to control otg0 and otg1 controller, but not the phy.
> 3. aclk_usb3otg1 is otg1 controller clk,  aclk_usb3otg0 is otg0
> controller clk.
> 4. aclk_usb3_rksoc_axi_perf is the clk for usb3 performance monitor
> module. 5. aclk_usb3_noc is the clk for soc bus interconnect.
>=20
> >>>> +  "aclk_usb3_rksoc_axi_perf"  USB AXI perf clock.  Not present =
on
> >>>> all
> >>>> platforms.
> >>>=20
> >>> The clock names looks pretty strange. What are they for? Especial=
ly as
> >>> nothing seems to use them right now.
> >>=20
> >> "aclk_usb3_rksoc_axi_perf", it's the clk for usb3 performance moni=
tor
> >> module, you can refer to the GRF_USB3_PERF_xxx. And we don't use t=
he
> >> usb3
> >> performance monitor control registers right now.
> >=20
> > ok, then I'd suggest not defining the clock for now.
> >=20
> > For one, there are more perf blocks in the GRF (usb3, pcie, hdcp22,
> > gmac, gpu, etc) which all seem to share a somewhat similar design, =
so
> > they will maybe result in a separate driver of some form for the
> > performance monitors.
> >=20
> > And secondly, it is somewhat easy to add new optional properties, b=
ut
> > you
> > cannot remove anything defined previously. So if we later decide to
> > handle all the performance monitors differently, you can't remove t=
hat
> > clock from the binding again. (or at least only with quite a bit of
> > hassle).
> >=20
> > So as this clock isn't used at all yet, I guess it should not get
> > included now.
>=20
> Yes, I agree with you. We can remove the aclk_usb3_rksoc_axi_perf rig=
ht
> now.
> >>>> +  "aclk_usb3_grf"	USB grf clock.  Not present on all platforms.
> >>>=20
> >>> for my own education, which part of the GRF does this clock suppl=
y?
> >>=20
> >> "aclk_usb3_grf", it's the clk for USB3 grf, e.g. GRF_USB3OTGX_CONX
> >=20
> > Hmm, this looks more like it belongs to the otg phy?
> > Anyway, also seems unused right now, so same argument as above appl=
ies
> > here.
> As I have described above, the "aclk_usb3_grf" is  used for both otg0
> and otg1 grf,
> and these usb3 grf can be set to control otg0 and otg1 controller, bu=
t
> not the phy.
> And we have done a test that remove the grf clk, and the result showe=
d
> that usb3
> controller can't work normally. So I think we need the usb3 grf clk.
>=20
> So about the usb3 controller clk management, I think it should contai=
n
> the following clk:
> 1.  aclk_usb3otg1
> 2.  aclk_usb3otg0
> 3.  aclk_usb3_grf

correct, aclk_usb3otgX would then be the busclk for each controller if =
I'm=20
not mistaken and the grf clock should also get enabled, like we also pl=
an on=20
doing for the vio_grf clock in the display area.

> 4.  aclk_usb3_noc
> For "aclk_usb3_noc", I discuss with our clk manager, the clk is alway=
s
> on before,
> but according to upstream maintainer's suggestion, we need to manage =
the
> noc clk by each module.

can you point me to this discussion? The bus-interconnect is a very sep=
arate=20
component, which we don't model so far and thus we have all the noc clo=
cks=20
simply marked as critical.

As this clock doesn't belong to the actual usb controller block, but sa=
id=20
separate component, handling it in the controller seems somehow wrong t=
o me.

So my (current) opinion would again be to mark the noc clock as critica=
l for=20
the time being.


> and the follow two clk can be removed:
> 1. aclk_usb3
> 2. aclk_usb3_rksoc_axi_perf
>=20
> Is it ok?

yep, apart from the noc-clock, this looks great.


Heiko
--
To unsubscribe from this list: send the line "unsubscribe linux-usb" in
the body of a message to majordomo-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
