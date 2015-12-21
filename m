From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH 4/6] drm/rockchip: vop: spilt scale regsters
Date: Mon, 21 Dec 2015 08:53:53 +0800
Message-ID: <56774DA1.6040800@rock-chips.com>
References: <1450323426-32109-1-git-send-email-mark.yao@rock-chips.com>
 <1450323426-32109-5-git-send-email-mark.yao@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1668249934=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <1450323426-32109-5-git-send-email-mark.yao@rock-chips.com>
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

--===============1668249934==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 2015=E5=B9=B412=E6=9C=8817=E6=97=A5=
 11:37, Mark Yao wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:1450323426-32109-5-git-send-email-mark.yao@rock-chips.c=
om"
      type=3D"cite">
      <pre wrap=3D"">@@ -242,6 +247,11 @@ static inline uint16_t scl_cal_=
scale(int src, int dst, int shift)
 	return ((src * 2 - 3) &lt;&lt; (shift - 1)) / (dst - 1);
 }
=20
+static inline uint16_t scl_cal_scale2(int src, int dst)
+{
+	return (src - 1) &lt;&lt; 12 / (dst - 1);
+}
+</pre>
    </blockquote>
    <br>
    Sorry, There is a mistake here, lose a parenthesis
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
    after code formating, it should be:<br>
    <pre wrap=3D"">+static inline uint16_t scl_cal_scale2(int src, int ds=
t)
+{
+	return <font color=3D"#ff0000"><b>(</b></font>(src - 1) &lt;&lt; 12<fon=
t color=3D"#ff0000"><b>)</b></font> / (dst - 1);
+}
+</pre>
    Without the parenthesis would cause rk3036 scale abnormal.<br>
    I would send v1.1 patch to fix it.<br>
    <br>
    Thanks.<br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
=EF=BC=ADark Yao</pre>
  </body>
</html>


--===============1668249934==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============1668249934==--
