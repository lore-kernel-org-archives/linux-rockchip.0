From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH] drm/rockchip: Return -EBUSY if there's already a pending
 flip event v2
Date: Fri, 01 Apr 2016 19:26:33 +0800
Message-ID: <56FE5AE9.40806@rock-chips.com>
References: <1459411680-6176-1-git-send-email-tomeu.vizoso@collabora.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0894040454=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1459411680-6176-1-git-send-email-tomeu.vizoso@collabora.com>
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

--===============0894040454==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 2016=E5=B9=B403=E6=9C=8831=E6=97=A5=
 16:08, Tomeu Vizoso
      wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:1459411680-6176-1-git-send-email-tomeu.vizoso@collabora=
.com"
      type=3D"cite">
      <pre wrap=3D"">As per the docs, atomic_commit should return -EBUSY =
"if an asycnhronous
updated is requested and there is an earlier updated pending".

v2: Use the status of the workqueue instead of vop-&gt;event, and don't a=
dd
a superfluous wait on the workqueue.

Signed-off-by: Tomeu Vizoso <a class=3D"moz-txt-link-rfc2396E" href=3D"ma=
ilto:tomeu.vizoso@collabora.com">&lt;tomeu.vizoso@collabora.com&gt;</a>
---
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c b/drivers/gpu/drm=
/rockchip/rockchip_drm_fb.c
index 3b8f652698f8..285f8cd5afe1 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_fb.c
@@ -282,6 +282,9 @@ int rockchip_drm_atomic_commit(struct drm_device *dev=
,
 	struct rockchip_atomic_commit *commit =3D &amp;private-&gt;commit;
 	int ret;
=20
+	if (async &amp;&amp; work_busy(&amp;commit-&gt;work))
+		return -EBUSY;
+</pre>
    </blockquote>
    <br>
    Sorry for reply late.<br>
    <br>
    There is a comment on work_busy function describe
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
    :<br>
    <br>
    =C2=A0=C2=A0=C2=A0 "the test result is=C2=A0 unreliable and only usef=
ul as advisory
    hints or for debugging."<br>
    <br>
    I don't know if it's suitable to use it here, does some guys know
    it?<br>
    <br>
    And then, the "flush_work(&amp;commit-&gt;work);" is no needed if
    return -EBUSY here.<br>
    you can remove it at this patch.<br>
    <br>
    <br>
    <blockquote
      cite=3D"mid:1459411680-6176-1-git-send-email-tomeu.vizoso@collabora=
.com"
      type=3D"cite">
      <pre wrap=3D"">
 	ret =3D drm_atomic_helper_prepare_planes(dev, state);
 	if (ret)
 		return ret;
</pre>
    </blockquote>
    <br>
    <br>
    <br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
=EF=BC=ADark Yao</pre>
  </body>
</html>


--===============0894040454==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0894040454==--
