From: Cheng-yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
Date: Sun, 8 Sep 2019 21:51:01 +0800
Message-ID: <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
References: <20190717083327.47646-1-cychiang@chromium.org> <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
 <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Tzung-Bi Shih <tzungbi@google.com>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>, Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>, Douglas Anderson <dianders@chromium.org>, Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org, ALSA development <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.c>
List-Id: linux-rockchip.vger.kernel.org

On Fri, Aug 30, 2019 at 10:55 AM Cheng-yi Chiang <cychiang@chromium.org> wrote:
>
> On Wed, Jul 17, 2019 at 6:28 PM Tzung-Bi Shih <tzungbi@google.com> wrote:
> >
> > On Wed, Jul 17, 2019 at 4:33 PM Cheng-Yi Chiang <cychiang@chromium.org> wrote:
> > >
> > > This patch series supports HDMI jack reporting on RK3288, which uses
> > > DRM dw-hdmi driver and hdmi-codec codec driver.
> > >
> > > The previous discussion about reporting jack status using hdmi-notifier
> > > and drm_audio_component is at
> > >
> > > https://lore.kernel.org/patchwork/patch/1083027/
> > >
> > > The new approach is to use a callback mechanism that is
> > > specific to hdmi-codec.
> > >
> > > Changes from v4 to v5:
> > > - synopsys/Kconfig: Remove the incorrect dependency change in v4.
> > > - rockchip/Kconfig: Add dependency of hdmi-codec when it is really need
> > >   for jack support.
> > >
> > > Cheng-Yi Chiang (5):
> > >   ASoC: hdmi-codec: Add an op to set callback function for plug event
> > >   drm: bridge: dw-hdmi: Report connector status using callback
> > >   drm: dw-hdmi-i2s: Use fixed id for codec device
> > >   ASoC: rockchip_max98090: Add dai_link for HDMI
> > >   ASoC: rockchip_max98090: Add HDMI jack support
> > >
> > LGTM.
> >
> > Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
>
> Hi Daniel,
> Do you have further concern on this patch series related to hdmi-codec
> and drm part ?
> We would like to merge this patch series if possible.
> They will be needed in many future chrome projects for HDMI audio jack
> detection.
> Thanks a lot!

Hi Neil,
I am not sure if this patch series is under your radar.
Would you mind taking a look ?
This patch series has been following great suggestions from various
reviewers, so I hope it is fine now.

Audio jack reporting for HDMI might not be needed for other OS, but it
is a must on ChromeOS.
We have many previous projects using different local patch sets to
achieve HDMI jack reporting.
I hope that we can achieve a proper way and really get the patches
merged to mainline.
Thanks a lot!
