From: Daniel Vetter <daniel-/w4YWyX8dFk@public.gmane.org>
Subject: Re: [GIT PULL] drm/rockchip: convert to drm_mm
Date: Sun, 26 Feb 2017 21:45:54 +0100
Message-ID: <20170226204554.y3dqu52hzrgbv5rj@phenom.ffwll.local>
References: <58A51647.2040003@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Content-Disposition: inline
In-Reply-To: <58A51647.2040003-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Mark yao <mark.yao-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: David Airlie <airlied-cv59FeDIM0c@public.gmane.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>, dri-devel-PD4FTy7X32lNgt0PjOBp9y5qC8QIuHrW@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org

On Thu, Feb 16, 2017 at 11:02:31AM +0800, Mark yao wrote:
> Hi Dave
> =

> After convert to drm_mm, rockchip arm64 platform can works with iommu, li=
ke
> rk3399. it's import patches for rockchip arm64 platform
> =

> And these patches already have full reviewed, I hope these patches can be
> landed.
> =A0
> Best regards
> =

> The following changes since commit 13f62f54d174d3417c3caaafedf5e22a0a03e4=
42:
> =

> =A0 Merge branch 'drm-next-4.11' of git://people.freedesktop.org/~agd5f/l=
inux
> into drm-next (2017-02-10 10:13:30 +1000)
> =

> are available in the git repository at:
> =

> =

> =A0 https://github.com/markyzq/kernel-drm-rockchip.git
> drm-rockchip-next-2017-02-16
> =

> for you to fetch changes up to 1aa5ca6e3ec63aa5815d78646748e88a7ceb1c8e:
> =

> =A0 drm/rockchip: Use common IOMMU API to attach devices (2017-02-15 08:5=
2:13
> +0800)
> =

> ----------------------------------------------------------------
> Shunqian Zheng (1):
> =A0=A0=A0=A0=A0 drm/rockchip: Use common IOMMU API to attach devices
> =

> Tomasz Figa (1):
> =A0=A0=A0=A0=A0 drm/rockchip: Do not use DMA mapping API if attached to I=
OMMU domain

I thought we've moved rockchip into drm-misc ...?

Can you and Sean Paul please talk and figure out how exactly you want to
maintain this driver? The current situation where we have stuff going in
independently through different maintainers is not great at all. If you
can't get agreement, we'll just make you agree by arbitrarily rolling the
dice or something silly like that :-)
-Daniel
-- =

Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
