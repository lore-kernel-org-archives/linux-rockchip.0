From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: Re: [RFC v1 0/1] drm: lima: devfreq and cooling device support
Date: Tue, 24 Dec 2019 12:22:55 +0100
Message-ID: <CAFBinCBTL05FLiZfBGdGCdq2JZ-_W_zDYKP_nrrUs-YEwaHCfg@mail.gmail.com>
References: <20191215211223.1451499-1-martin.blumenstingl@googlemail.com> <CAGb2v6528SUOyefhsnjEwG7vfud3+Ce+_=CM3cM4vKiRcmNXAA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAGb2v6528SUOyefhsnjEwG7vfud3+Ce+_=CM3cM4vKiRcmNXAA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Chen-Yu Tsai <wens@csie.org>
Cc: yuq825@gmail.com, dri-devel <dri-devel@lists.freedesktop.org>, lima@lists.freedesktop.org, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, linux-kernel <linux-kernel@vger.kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Rob Herring <robh@kernel.org>, steven.price@arm.com, alyssa.rosenzweig@collabora.com, "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Mon, Dec 16, 2019 at 4:03 AM Chen-Yu Tsai <wens@csie.org> wrote:
>
> On Mon, Dec 16, 2019 at 5:12 AM Martin Blumenstingl
> <martin.blumenstingl@googlemail.com> wrote:
> >
> > This is my attempt at adding devfreq (and cooling device) support to
> > the lima driver.
> > I didn't have much time to do in-depth testing. However, I'm sending
> > this out early because there are many SoCs with Mali-400/450 GPU so
> > I want to avoid duplicating the work with somebody else.
> >
> > The code is derived from panfrost_devfreq.c which is why I kept the
> > Collabora copyright in lima_devfreq.c. Please let me know if I should
> > drop this or how I can make it more clear that I "borrowed" the code
> > from panfrost.
>
> I think it's more common to have separate copyright notices. First you
> have yours, then a second paragraph stating the code is derived from
> foo, and then attach the copyright statements for foo.
thank you for the hint!
I found other examples that do it like this, so I'll update it.


Martin
