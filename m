From: Cheng-yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v6 2/4] drm: dw-hdmi-i2s: Use fixed id for codec device
Date: Wed, 18 Sep 2019 19:52:39 +0800
Message-ID: <CAFv8Nw+JssR+qJYWaQAjDRbHuNidHXQBPLsbOM7kNs4MN-Nkkw@mail.gmail.com>
References: <20190918082500.209281-1-cychiang@chromium.org>
 <20190918082500.209281-3-cychiang@chromium.org> <1j7e663sfu.fsf@starbuckisacylon.baylibre.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <1j7e663sfu.fsf@starbuckisacylon.baylibre.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Jerome Brunet <jbrunet@baylibre.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, Neil Armstrong <narmstrong@baylibre.com>, Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>, Hans Verkuil <hverkuil@xs4all.nl>, Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>, Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>, Doug Anderson <dianders@chromium.org>, Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org, "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." <alsa-devel@alsa-proje>
List-Id: linux-rockchip.vger.kernel.org

On Wed, Sep 18, 2019 at 4:43 PM Jerome Brunet <jbrunet@baylibre.com> wrote:
>
>
> On Wed 18 Sep 2019 at 10:24, Cheng-Yi Chiang <cychiang@chromium.org> wrote:
>
> > The problem of using auto ID is that the device name will be like
> > hdmi-audio-codec.<id number>.auto.
> >
> > The number might be changed when there are other platform devices being
> > created before hdmi-audio-codec device.
> > Use a fixed name so machine driver can set codec name on the DAI link.
> >
> > Using the fixed name should be fine because there will only be one
> > hdmi-audio-codec device.
>
> While this is true all platforms we know of (I suppose), It might not be
> the case later on. I wonder if making such assumption is really
> desirable in a code which is used by quite a few different platforms.
>
> Instead of trying to predict what the device name will be, can't you just
> query it in your machine driver ? Using a device tree phandle maybe ?
>
> It is quite usual to set the dai links this way, "simple-card" is a good
> example of this.
>

Hi Jerome,
Thanks for the quick reply!
And thanks for pointing this out.
I found that
soc_component_to_node searches upward for one layer so it can find the
node which creates hdmi-audio-codec in runtime. This works even that
hdmi-audio-codec does not have its own node in dts.
I will change accordingly in v7.
Thanks!



> >
> > Fix the codec name in rockchip rk3288_hdmi_analog machine driver.
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c | 2 +-
> >  sound/soc/rockchip/rk3288_hdmi_analog.c             | 3 ++-
> >  2 files changed, 3 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > index d7e65c869415..86bd482b9f94 100644
> > --- a/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > +++ b/drivers/gpu/drm/bridge/synopsys/dw-hdmi-i2s-audio.c
> > @@ -193,7 +193,7 @@ static int snd_dw_hdmi_probe(struct platform_device *pdev)
> >
> >       memset(&pdevinfo, 0, sizeof(pdevinfo));
> >       pdevinfo.parent         = pdev->dev.parent;
> > -     pdevinfo.id             = PLATFORM_DEVID_AUTO;
> > +     pdevinfo.id             = PLATFORM_DEVID_NONE;
> >       pdevinfo.name           = HDMI_CODEC_DRV_NAME;
> >       pdevinfo.data           = &pdata;
> >       pdevinfo.size_data      = sizeof(pdata);
> > diff --git a/sound/soc/rockchip/rk3288_hdmi_analog.c b/sound/soc/rockchip/rk3288_hdmi_analog.c
> > index 767700c34ee2..8286025a8747 100644
> > --- a/sound/soc/rockchip/rk3288_hdmi_analog.c
> > +++ b/sound/soc/rockchip/rk3288_hdmi_analog.c
> > @@ -15,6 +15,7 @@
> >  #include <linux/gpio.h>
> >  #include <linux/of_gpio.h>
> >  #include <sound/core.h>
> > +#include <sound/hdmi-codec.h>
> >  #include <sound/jack.h>
> >  #include <sound/pcm.h>
> >  #include <sound/pcm_params.h>
> > @@ -142,7 +143,7 @@ static const struct snd_soc_ops rk_ops = {
> >  SND_SOC_DAILINK_DEFS(audio,
> >       DAILINK_COMP_ARRAY(COMP_EMPTY()),
> >       DAILINK_COMP_ARRAY(COMP_CODEC(NULL, NULL),
> > -                        COMP_CODEC("hdmi-audio-codec.2.auto", "i2s-hifi")),
> > +                        COMP_CODEC(HDMI_CODEC_DRV_NAME, "i2s-hifi")),
> >       DAILINK_COMP_ARRAY(COMP_EMPTY()));
> >
> >  static struct snd_soc_dai_link rk_dailink = {
>
