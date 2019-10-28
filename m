From: Cheng-yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v8 2/6] ASoC: rockchip-max98090: Support usage with and
 without HDMI
Date: Mon, 28 Oct 2019 10:32:24 +0800
Message-ID: <CAFv8NwKhe=CEuMCgeP1G0-Az4GEdMGPMMhvM3oY2=KmZNGrcRw@mail.gmail.com>
References: <20191025133007.11190-1-cychiang@chromium.org>
 <20191025133007.11190-3-cychiang@chromium.org>
 <20191025162232.GA23022@bogus>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org>
In-Reply-To: <20191025162232.GA23022@bogus>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>,
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+linux-arm-kernel=m.gmane.org@lists.infradead.org
To: Rob Herring <robh@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>, "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." <alsa-devel@alsa-project.org>, Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org, linux-kernel <linux-kernel@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>, linux-rockchip@lists.infradead.org, Dylan Reid <dgreid@chromium.org>, devicetree@vger.kernel.org, Tzung-Bi Shih <tzungbi@chromium.org>, Jonas Karlman <jonas@kwiboo.se>, Liam Girdwood <lgirdwood@gmail.com>, Russell King <rmk+kernel@armlinux.org.uk>, Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org, Jernej
List-Id: linux-rockchip.vger.kernel.org

On Sat, Oct 26, 2019 at 12:22 AM Rob Herring <robh@kernel.org> wrote:
>
> On Fri, Oct 25, 2019 at 09:30:03PM +0800, Cheng-Yi Chiang wrote:
> > There will be multiple boards sharing this machine driver.
> > Use compatible string to specify the use case.
> >
> > "rockchip,rockchip-audio-max98090" for max98090-only.
> > "rockchip,rockchip-audio-hdmi" for HDMI-only
> > "rockchip,rockchip-audio-max98090-hdmi" for max98090 plus
> >
> > Move these properties to optional because they are not needed for
> > HDMI-only use case.
> > "rockchip,audio-codec": The phandle of the MAX98090 audio codec
> > "rockchip,headset-codec": The phandle of Ext chip for jack detection
> >
> > The machine driver change will add support for HDMI codec in
> > rockchip-max98090.
> > Add one optional property "rockchip,hdmi-codec" to let user specify HDMI
> > device node in DTS so machine driver can find hdmi-codec device node for
> > codec DAI.
>
> Why not just use the presence of rockchip,hdmi-codec to enable HDMI or
> not. Maybe you still add rockchip,rockchip-audio-hdmi for HDMI only.
>
> Really, the same should have been done for which codec is used too, but
> I guess someone wanted 2 machine drivers.

Hi Rob,
Thanks for the quick reply.
I can make change in machine driver so that
- The presence of rockchip,audio-codec enable max98090
- The presence of rockchip,hdmi-codec enable HDMI.

With that, we don't need the three properties added in this patch:
"rockchip,rockchip-audio-max98090" for max98090-only.
"rockchip,rockchip-audio-hdmi" for HDMI-only
"rockchip,rockchip-audio-max98090-hdmi" for max98090 plus HDMI.

I will post an update soon. Thanks!

>
>
> >
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  .../bindings/sound/rockchip-max98090.txt      | 38 +++++++++++++++++--
> >  1 file changed, 35 insertions(+), 3 deletions(-)
