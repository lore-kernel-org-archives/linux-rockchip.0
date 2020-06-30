From: Yu-Hsuan Hsu <yuhsuan@chromium.org>
Subject: Re: [PATCH] ASoC: rockchip: add format and rate constraints on rk3399
Date: Tue, 30 Jun 2020 20:25:28 +0800
Message-ID: <CAGvk5PqqMKikj46yfvNYdiQ=3cWoHVLBgQKGOPs5iuoFWUBs=Q@mail.gmail.com>
References: <20200630091615.4020059-1-yuhsuan@chromium.org> <20200630104047.GD5272@sirena.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20200630104047.GD5272@sirena.org.uk>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark Brown <broonie@kernel.org>
Cc: linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, Heiko Stuebner <heiko@sntech.de>, alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, Cheng-Yi Chiang <cychiang@chromium.org>, Tzung-Bi Shih <tzungbi@chromium.org>
List-Id: linux-rockchip.vger.kernel.org

Mark Brown <broonie@kernel.org> =E6=96=BC 2020=E5=B9=B46=E6=9C=8830=E6=97=
=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=886:40=E5=AF=AB=E9=81=93=EF=BC=9A
>
> On Tue, Jun 30, 2020 at 05:16:15PM +0800, Yu-Hsuan Hsu wrote:
> > S8 and S24 formats does not work on this machine driver so force to use
> > S16_LE instead.
>
> > In addition, add constraint to limit the max value of rate because the
> > rate higher than 96000(172000, 192000) is not stable either.
>
> What is the source of these restrictions - are they due to the component
> devices?  If they are then the component devices ought to be setting
> suitable constraints themselves.

I'm not sure why it happened. But I guess it is not the issues on those
components because they work normally on other machine drivers.
Because this driver is old and lacks maintenance, I think we can just
filter some unstable formats. Actually, those formats are very rarely
used as well.
