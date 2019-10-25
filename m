From: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v8 2/6] ASoC: rockchip-max98090: Support usage with and
 without HDMI
Date: Fri, 25 Oct 2019 11:22:32 -0500
Message-ID: <20191025162232.GA23022@bogus>
References: <20191025133007.11190-1-cychiang@chromium.org>
 <20191025133007.11190-3-cychiang@chromium.org>
Mime-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20191025133007.11190-3-cychiang@chromium.org>
Sender: linux-kernel-owner@vger.kernel.org
To: Cheng-Yi Chiang <cychiang@chromium.org>
Cc: linux-kernel@vger.kernel.org, Neil Armstrong <narmstrong@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, Jernej Skrabec <jernej.skrabec@siol.net>, Jonas Karlman <jonas@kwiboo.se>, Hans Verkuil <hverkuil@xs4all.nl>, Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>, Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>, Mark Rutland <mark.rutland@arm.com>, dianders@chromium.org, dgreid@chromium.org, tzungbi@chromium.org, alsa-devel@alsa-project.org, dri-devel@lists.freedesktop.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Oct 25, 2019 at 09:30:03PM +0800, Cheng-Yi Chiang wrote:
> There will be multiple boards sharing this machine driver.
> Use compatible string to specify the use case.
> 
> "rockchip,rockchip-audio-max98090" for max98090-only.
> "rockchip,rockchip-audio-hdmi" for HDMI-only
> "rockchip,rockchip-audio-max98090-hdmi" for max98090 plus
> 
> Move these properties to optional because they are not needed for
> HDMI-only use case.
> "rockchip,audio-codec": The phandle of the MAX98090 audio codec
> "rockchip,headset-codec": The phandle of Ext chip for jack detection
> 
> The machine driver change will add support for HDMI codec in
> rockchip-max98090.
> Add one optional property "rockchip,hdmi-codec" to let user specify HDMI
> device node in DTS so machine driver can find hdmi-codec device node for
> codec DAI.

Why not just use the presence of rockchip,hdmi-codec to enable HDMI or 
not. Maybe you still add rockchip,rockchip-audio-hdmi for HDMI only.

Really, the same should have been done for which codec is used too, but 
I guess someone wanted 2 machine drivers.

> 
> Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> ---
>  .../bindings/sound/rockchip-max98090.txt      | 38 +++++++++++++++++--
>  1 file changed, 35 insertions(+), 3 deletions(-)
