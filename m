From: Qiang Yu <yuq825@gmail.com>
Subject: Re: [PATCH v4 2/2] drm/lima: Add optional devfreq and cooling device support
Date: Sun, 29 Mar 2020 17:57:13 +0800
Message-ID: <CAKGbVbsHXUhpaU34ovRPqc51LSavERUzMySx3hG7AqdO-oobHw@mail.gmail.com>
References: <20200319203427.2259891-1-martin.blumenstingl@googlemail.com>
 <20200319203427.2259891-3-martin.blumenstingl@googlemail.com>
 <CAKGbVbtKqdCEcawkjG=7TRd30df6GJ+gagV_JegntyqRpzC4cg@mail.gmail.com>
 <CAKGbVbvAvk0L5sGQmuqfxeL6AwtVnSsYyCp6YBYV6ZHKepWBXg@mail.gmail.com> <CAFBinCDUhVaky6EUA7dOAhAZM9itbydQ+w=0P-1m2u0o0HUUeA@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <CAFBinCDUhVaky6EUA7dOAhAZM9itbydQ+w=0P-1m2u0o0HUUeA@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Tomeu Vizoso <tomeu.vizoso@collabora.com>, Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>, Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>, "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, linux-pm@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

I'm not the maintainer of patch 1 file, so please contact:
  - Rob Herring <robh@kernel.org>
  - Maxime Ripard <maxime.ripard@free-electrons.com>
  - Heiko Stuebner <heiko@sntech.de>
to review and apply patch 1.

Regards,
Qiang

On Sat, Mar 28, 2020 at 6:20 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:
>
> On Sat, Mar 28, 2020 at 9:40 AM Qiang Yu <yuq825@gmail.com> wrote:
> >
> > Applied to drm-misc-next.
> thank you!
>
> regarding patch #1 - can you apply this as well?
> patch #1 just takes this midgard change [0] and ports it to utgard
>
>
> Thank you!
> Martin
>
>
> [0] https://cgit.freedesktop.org/drm/drm-misc/commit/Documentation/devicetree/bindings/gpu?id=982c0500fd1a8012c31d3c9dd8de285129904656
