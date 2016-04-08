From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH 1/2] drm/rockchip: vop: Do check if an update is pending
 during disable
Date: Fri, 08 Apr 2016 09:07:09 +0800
Message-ID: <5707043D.6060706@rock-chips.com>
References: <1459937686-9142-1-git-send-email-tomeu.vizoso@collabora.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0014463278=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1459937686-9142-1-git-send-email-tomeu.vizoso@collabora.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>, linux-kernel@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

--===============0014463278==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 2016=E5=B9=B404=E6=9C=8806=E6=97=A5=
 18:14, Tomeu Vizoso
      wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:1459937686-9142-1-git-send-email-tomeu.vizoso@collabora=
.com"
      type=3D"cite">
      <pre wrap=3D"">When a plane is being disabled but it's still enable=
d, do check if the
previous update has been completed by reading yrgb_mst back.

Otherwise, pending pageflips would remain pending after a CRTC is
disabled.

Signed-off-by: Tomeu Vizoso <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:tomeu.vizoso@collabora.com">&lt;tomeu.vizoso@collabora.com&gt;</a>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/dr=
m/rockchip/rockchip_drm_vop.c
index a9b1e8b5ac85..f46b1fd1887b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1064,8 +1064,9 @@ static bool vop_win_pending_is_complete(struct vop_=
win *vop_win)
 	struct vop_plane_state *state =3D to_vop_plane_state(plane-&gt;state);
 	dma_addr_t yrgb_mst;
=20
-	if (!state-&gt;enable)
-		return VOP_WIN_GET(vop_win-&gt;vop, vop_win-&gt;data, enable) =3D=3D 0=
;
+	if (!state-&gt;enable &amp;&amp;
+	    VOP_WIN_GET(vop_win-&gt;vop, vop_win-&gt;data, enable) =3D=3D 0)
+		return true;</pre>
    </blockquote>
    <br>
    It is wrong, the patch would cause a bug.<br>
    <br>
    when state-&gt;enable is 0, check yrgb_mst =3D=3D state-&gt;yrgb_mst
    always be true, because state-&gt;yrgb_mst not update on plane
    disabled funtion, that would cause iommu crash.<br>
    <br>
    About pending pageflips would remain pending, can you=C2=A0
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
    describe more info about it? I think those pending <span
      style=3D"color: rgb(51, 51, 51); font-family: arial; font-size:
      13px; font-style: normal; font-variant: normal; font-weight:
      normal; letter-spacing: normal; line-height: 20.0200004577637px;
      orphans: auto; text-align: start; text-indent: 0px;
      text-transform: none; white-space: normal; widows: 1;
      word-spacing: 0px; -webkit-text-stroke-width: 0px; display: inline
      !important; float: none; background-color: rgb(255, 255, 255);"></s=
pan>pageflips
    should be ignore when CRTC is disabled.<br>
    <br>
    Thanks.<br>
    <br>
    <blockquote
      cite=3D"mid:1459937686-9142-1-git-send-email-tomeu.vizoso@collabora=
.com"
      type=3D"cite">
      <pre wrap=3D"">
=20
 	yrgb_mst =3D VOP_WIN_GET_YRGBADDR(vop_win-&gt;vop, vop_win-&gt;data);
=20
</pre>
    </blockquote>
    <br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
=EF=BC=ADark Yao</pre>
  </body>
</html>


--===============0014463278==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0014463278==--
