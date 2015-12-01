From: Daniel Vetter <daniel@ffwll.ch>
Subject: Re: [RFC PATCH 2/9] drm/rockchip: Use new vblank api
 drm_crtc_vblank_*
Date: Tue, 1 Dec 2015 10:01:27 +0100
Message-ID: <20151201090127.GN17050@phenom.ffwll.local>
References: <1448940391-23333-1-git-send-email-mark.yao@rock-chips.com>
 <1448940391-23333-3-git-send-email-mark.yao@rock-chips.com>
 <CAPj87rNs+c5Y01zVPF3a+8puFH1ZWuLZUGoDq6EPfDQB5DVZGw@mail.gmail.com>
 <565D5B57.4040102@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <565D5B57.4040102@rock-chips.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Mark yao <mark.yao@rock-chips.com>
Cc: Daniel Stone <daniel@fooishbar.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

On Tue, Dec 01, 2015 at 04:33:27PM +0800, Mark yao wrote:
> On 2015=E5=B9=B412=E6=9C=8801=E6=97=A5 15:56, Daniel Stone wrote:
> >Hi,
> >
> >On 1 December 2015 at 03:26, Mark Yao <mark.yao@rock-chips.com> wrot=
e:
> >>No functional update, drm_vblank_* is the legacy version of
> >>drm_crtc_vblank_*. and use new api make driver more clean.
> >>
> >>Signed-off-by: Mark Yao <mark.yao@rock-chips.com>
> >Heh, I had the same patch in my series to fix pageflip events.
> >
> >Reviewed-by: Daniel Stone <daniels@collabora.com>
> >
> >Cheers,
> >Daniel
> >
> >
> >
>=20
> Hi Daniel
>    I had picked your patch "[PATCH 1/2] drm/rockchip: Use CRTC vblank=
 event
> interface" into my drm-next, this patch is base on it.

That really should be mentioned in the commit message, and you must kee=
p
the signed-off-by chain intact when adapting or reusing other peoples
work.
-Daniel

>=20
> Thanks for your review.
>=20
> --=20
> =EF=BC=ADark Yao
>=20
>=20
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> http://lists.freedesktop.org/mailman/listinfo/dri-devel

--=20
Daniel Vetter
Software Engineer, Intel Corporation
http://blog.ffwll.ch
