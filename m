From: Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Subject: Re: [PATCH v6 10/22] usb: dwc2: host: Properly set the HFIR
Date: Sun, 31 Jan 2016 17:23:59 +0800
Message-ID: <56ADD2AF.3040901@rock-chips.com>
References: <1454034013-24657-1-git-send-email-dianders@chromium.org>
 <1454034013-24657-11-git-send-email-dianders@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <1454034013-24657-11-git-send-email-dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, John Youn <John.Youn-HKixBCOQz3hWk0Htik3J/w@public.gmane.org>, balbi-l0cyMroinI0@public.gmane.org
Cc: huangtao-TNX95d0MmH7DzftRWevZcw@public.gmane.org, stefan.wahren-eS4NqCHxEME@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, johnyoun-HKixBCOQz3hWk0Htik3J/w@public.gmane.org, gregkh-hQyY1W1yCW8ekmWlsbkhG0B+6BGkLq7r@public.gmane.org, ming.lei-Z7WLFzj8eWMS+FvcfC7Uqw@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, yousaf.kaukab-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, stern-nwvwT67g6+6dFdvTe/nMLpVzexx5G7lz@public.gmane.org, linux-rpi-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, gregory.herrero-ral2JQCrhuEAvxtiuMwx3w@public.gmane.org, william.wu-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Julius Werner <jwerner-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, dinguyen-yzvPICuk2ABMcg4IHK0kFoH6Mc4MB0Vx@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

Doug,

On 01/29/2016 10:20 AM, Douglas Anderson wrote:
> According to the most up to date version of the dwc2 databook, the FRINT
> field of the HFIR register should be programmed to:
> * 125 us * (PHY clock freq for HS) - 1
> * 1000 us * (PHY clock freq for FS/LS) - 1
I got 3 version of dwc_otg databook, 2.74a, 2.94a and 3.10a,
all the doc describe the FrInt as:

* 125 us * (PHY clock freq for HS)
* 1000 us * (PHY clock freq for FS/LS)

Maybe John can help to check the design.

There are some feature different in new and old version, but not sure
if this is one of then.

The doc says If no value is programmed, the corecalculates the value
based on the PHY clock specified in the FS/LS PHY Clock select field of
Host configuration register(HCFG.FLSLPclkSel), does this work?

Thanks,
- Kever
>
> This is opposed to older versions of the doc that claimed it should be:
> * 125 us * (PHY clock freq for HS)
> * 1000 us * (PHY clock freq for FS/LS)
>
> In case you didn't spot it, the difference is the "- 1".
>
> Let's add the "- 1" to match the newest user manual.  It's presumed that
> the "- 1" should have always been there and that this was always a
> documentation error.  If some hardware needs the "- 1" and other
> hardware doesn't, we'll have to add a configuration parameter for it in
> the future.
>
> I checked things before and after this patch on rk3288 using a Total
> Phase Beagle 5000 analyzer.
>
> Before this patch, a low speed mouse shows constant Frame Timing Jitter
> errors.  After this patch errors have gone away.
>
> Before this patch SOF packets move forward about 1 us per 4 ms.  After
> this patch the SOF packets move backward about 1 us per 255 ms.  Some
> specific SOF timestamps from the analyzer are below.
>
> Before:
>    6.603.790
>    6.603.916
>    6.604.041
>    6.604.166
>    ...
>    6.607.541
>    6.607.667
>    6.607.792
>    6.607.917
>    ...
>    6.611.417
>    6.611.543
>    6.611.668
>    6.611.793
>
> After:
>    6.215.159
>    6.215.284
>    6.215.408
>    6.215.533
>    6.215.658
>    ...
>    6.470.658
>    6.470.783
>    6.470.907
>    ...
>    6.726.032
>    6.726.157
>    6.725.281
>    6.725.406
>
> Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> Tested-by: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
> ---
> Changes in v6:
> - Incorporated Properly set the HFIR patch to big series in v6
> - Add Heiko's Tested-by.
>
> Changes in v5: None
> Changes in v4: None
> Changes in v3: None
> Changes in v2: None
>
>   drivers/usb/dwc2/core.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/usb/dwc2/core.c b/drivers/usb/dwc2/core.c
> index ed73b26818c0..a5db20f12ee4 100644
> --- a/drivers/usb/dwc2/core.c
> +++ b/drivers/usb/dwc2/core.c
> @@ -2245,10 +2245,10 @@ u32 dwc2_calc_frame_interval(struct dwc2_hsotg *hsotg)
>   
>   	if ((hprt0 & HPRT0_SPD_MASK) >> HPRT0_SPD_SHIFT == HPRT0_SPD_HIGH_SPEED)
>   		/* High speed case */
> -		return 125 * clock;
> +		return 125 * clock - 1;
>   	else
>   		/* FS/LS case */
> -		return 1000 * clock;
> +		return 1000 * clock - 1;
>   }
>   
>   /**
