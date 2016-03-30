From: Philipp Zabel <p.zabel-bIcnvbaLZ9MEGnE8C9+IrQ@public.gmane.org>
Subject: Re: [PATCH v2 2/5] drm/imx: dw_hdmi: Call drm_encoder_cleanup() in
 error path
Date: Wed, 30 Mar 2016 15:35:23 +0200
Message-ID: <1459344923.2505.35.camel@pengutronix.de>
References: <1457388054-23077-1-git-send-email-dianders@chromium.org>
 <1457388054-23077-2-git-send-email-dianders@chromium.org>
 <CAD=FV=Vq2JPYxDpa3kH97wnVTTJ-AsyWHQ2nSNSR2sw7aQKwOQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <CAD=FV=Vq2JPYxDpa3kH97wnVTTJ-AsyWHQ2nSNSR2sw7aQKwOQ-JsoAwUIsXosN+BqQ9rBEUg@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Doug Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
Cc: Russell King <linux-lFZ/pmaqli7XmaaqVzeoHQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, John Keeping <john-HPTTJ/6qucUJ3nxcUk3PyQ@public.gmane.org>, "linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org" <linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>, "dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org" <dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, Daniel Kurtz <djkurtz-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>, Mark Yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi Doug,

Am Montag, den 28.03.2016, 08:14 -0700 schrieb Doug Anderson:
> Hi,
> 
> On Mon, Mar 7, 2016 at 2:00 PM, Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org> wrote:
> > The drm_encoder_cleanup() was missing both from the error path of
> > dw_hdmi_imx_bind().  This caused a crash when slub_debug was
> > enabled and we ended up deferring probe of HDMI at boot.
> >
> > This call isn't needed from unbind() because if dw_hdmi_bind() returns
> > no error then it takes over the job of freeing the encoder (in
> > dw_hdmi_unbind).
> >
> > Signed-off-by: Douglas Anderson <dianders-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org>
> > ---
> > Changes in v2:
> > - IMX patch new in v2
> >
> >  drivers/gpu/drm/imx/dw_hdmi-imx.c | 11 ++++++++++-
> >  1 file changed, 10 insertions(+), 1 deletion(-)
> 
> Mark picked up:
> 
>   [PATCH v2 1/5] drm/rockchip: dw_hdmi: Call drm_encoder_cleanup() in error path
>   [PATCH v2 3/5] drm/rockchip: vop: Fix vop crtc cleanup
>   [PATCH v2 4/5] drm/rockchip: dw_hdmi: Don't call platform_set_drvdata()
> 
> ...for Rockchip, as you can see at
> <https://patchwork.kernel.org/patch/8523301/>.
> 
> Does someone want to pick up:
>   [PATCH v2 2/5] drm/imx: dw_hdmi: Call drm_encoder_cleanup() in error path
>   [PATCH v2 5/5] drm/imx: dw_hdmi: Don't call platform_set_drvdata()
> 
> Thanks!

Thank you for the reminder, both patches applied.

regards
Philipp
