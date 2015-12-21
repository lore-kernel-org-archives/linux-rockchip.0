From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH v3 0/8] drm/rockchip: covert to support atomic API
Date: Mon, 21 Dec 2015 10:28:57 +0800
Message-ID: <567763E9.3080803@rock-chips.com>
References: <1450321275-31154-1-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0318908381=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1450321275-31154-1-git-send-email-mark.yao@rock-chips.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: David Airlie <airlied@linux.ie>, Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

--===============0318908381==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">Hi<br>
      =C2=A0=C2=A0=C2=A0 I want to push these patches in
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Du=
tf-8">
      a couple of days, So just Ping if anyone interested or have some
      doubt on it.<br>
      <br>
      Thanks.<br>
      -Mark<br>
      <br>
      On 2015=E5=B9=B412=E6=9C=8817=E6=97=A5 11:01, Mark Yao wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:1450321275-31154-1-git-send-email-mark.yao@rock-chips.c=
om"
      type=3D"cite">
      <pre wrap=3D"">The series of patches coverting drm rockchip to atom=
ic API, do some
cleanup and some fixes on atomic side.

TODO: fence is not support on current version.

Tested on rk3288 popmetal board.

All guys can test it with following url:
 test case: <a class=3D"moz-txt-link-freetext" href=3D"https://github.com=
/markyzq/libdrm.git">https://github.com/markyzq/libdrm.git</a> atomictest
 kernel:
  <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/markyzq/k=
ernel-drm-rockchip.git">https://github.com/markyzq/kernel-drm-rockchip.gi=
t</a> drm-rockchip-next-12-17

Changes in v3:
Reported by kbuild test robot
- fix rockchip_crtc_wait_for_update undefined when build drm rockchip as =
modules.

Changes in v2:
- Optimization commit planes sequence.
- Get vblank count on atomic_begin to protect vblank event.
Advised by Daniel Stone
- Direct return -EINVAL when yuv address is not support, instead of adjus=
t it.
- code formating and cleanup.
Advised by Thierry Reding &amp; Daniel Vetter
- Hook mode_set into crtc enable instead of hack crtc enable on mode set.

v2: <a class=3D"moz-txt-link-freetext" href=3D"http://www.spinics.net/lis=
ts/arm-kernel/msg468423.html">http://www.spinics.net/lists/arm-kernel/msg=
468423.html</a>
v1: <a class=3D"moz-txt-link-freetext" href=3D"http://lists.freedesktop.o=
rg/archives/dri-devel/2015-November/095745.html">http://lists.freedesktop=
.org/archives/dri-devel/2015-November/095745.html</a>

Mark Yao (8):
  drm/rockchip: Use new vblank api drm_crtc_vblank_*
  drm/rockchip: vop: replace dpms with enable/disable
  drm/rockchip: Convert to support atomic API
  drm/rockchip: Optimization vop mode set
  drm/rockchip: support atomic asynchronous commit
  drm/rockchip: direct config connecter gate and out_mode
  drm: bridge/dw_hdmi: add atomic API support
  drm/rockchip: dw_hdmi: use encoder enable function

 drivers/gpu/drm/bridge/dw_hdmi.c            |   23 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c |   14 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c |   21 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h |   20 +-
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c  |  123 +++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c |  782 +++++++++++----------=
------
 6 files changed, 495 insertions(+), 488 deletions(-)

</pre>
    </blockquote>
    <br>
  </body>
</html>


--===============0318908381==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============0318908381==--
