From: Cheng-yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v5 0/5] Add HDMI jack support on RK3288
Date: Wed, 18 Sep 2019 15:28:56 +0800
Message-ID: <CAFv8NwL3+4Qsv0B7PtVhB=HX6uFUMMaw5V=E3NTRE-v_jDVAxg@mail.gmail.com>
References: <20190717083327.47646-1-cychiang@chromium.org> <CA+Px+wX4gbntkd6y8NN8xwXpZLD4MH9rTeHcW9+Ndtw=3_mWBw@mail.gmail.com>
 <CAFv8NwLiY+ro0L4c5vjSOGN8jA-Qr4zm2OWvVHkiuoa7_4e2Fg@mail.gmail.com>
 <CAFv8NwJjG4mwfnYO=M3O9nZN48D6aY72nQuqEFpZL68dh5727w@mail.gmail.com>
 <7019a223-cc97-e1c6-907b-e6b3d626164f@baylibre.com> <20190909135346.GG2036@sirena.org.uk>
 <3fc94731-f66a-223d-995e-97ac67f9e882@baylibre.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <3fc94731-f66a-223d-995e-97ac67f9e882@baylibre.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Neil Armstrong <narmstrong@baylibre.com>
Cc: Mark Brown <broonie@kernel.org>, Tzung-Bi Shih <tzungbi@google.com>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Hans Verkuil <hverkuil@xs4all.nl>, Liam Girdwood <lgirdwood@gmail.com>, Takashi Iwai <tiwai@suse.com>, Jaroslav Kysela <perex@perex.cz>, Russell King <rmk+kernel@armlinux.org.uk>, Andrzej Hajda <a.hajda@samsung.com>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Heiko Stuebner <heiko@sntech.de>, Douglas Anderson <dianders@chromium.org>, Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org, ALSA development <alsa-devel@alsa-project.org>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Sep 13, 2019 at 5:33 PM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi,
>
> On 09/09/2019 15:53, Mark Brown wrote:
> > On Mon, Sep 09, 2019 at 09:37:14AM +0200, Neil Armstrong wrote:
> >
> >> I'd like some review from ASoC people and other drm bridge reviewers,
> >> Jernej, Jonas & Andrzej.
> >
> >> Jonas could have some comments on the overall patchset.
> >
> > The ASoC bits look basically fine, I've gone ahead and applied
> > patch 1 as is since we're just before the merge window and that
> > way we reduce potential cross tree issues.  I know there's a lot
> > of discussion on the DRM side about how they want to handle
> > things with jacks, I'm not 100% sure what the latest thinking is
> > there.
> >
>
> Thanks Mark.
>
>
> Cheng-Yi can you resent this serie without the already applied
> first patch with Jernej, Jonas, and Jerome Brunet <jbrunet@baylibre.com> CCed ?

Hi Neil,
Got it. Sorry for the late reply.
I will resend this series without the first patch, based on latest
drm-misc-next, and cc the folks.
Thanks!

>
> Thanks,
> Neil
>
