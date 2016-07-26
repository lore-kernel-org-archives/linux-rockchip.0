From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH 2/2] dt-bindings: add simple-panel-dsi and simple-panel
Date: Tue, 26 Jul 2016 10:01:32 +0800
Message-ID: <5796C47C.5040208@rock-chips.com>
References: <1468984730-23186-1-git-send-email-mark.yao@rock-chips.com>
 <1468984730-23186-2-git-send-email-mark.yao@rock-chips.com>
 <20160725152125.GS21170@ulmo.ba.sec>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0134529363=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20160725152125.GS21170@ulmo.ba.sec>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Thierry Reding <thierry.reding@gmail.com>
Cc: Mark Rutland <mark.rutland@arm.com>, =?UTF-8?B?6buE5rab?= <huangtao@rock-chips.com>, =?UTF-8?B?5bqE5paH6b6Z?= <zwl@rock-chips.com>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

--===============0134529363==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 2016=E5=B9=B407=E6=9C=8825=E6=97=A5=
 23:21, Thierry Reding
      wrote:<br>
    </div>
    <blockquote cite=3D"mid:20160725152125.GS21170@ulmo.ba.sec"
      type=3D"cite">
      <pre wrap=3D"">On Wed, Jul 20, 2016 at 11:18:50AM +0800, Mark Yao w=
rote:
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"">Allow user add display timing on device tree with =
simple-panel-dsi
or simple-panel.

Cc: Thierry Reding <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:thie=
rry.reding@gmail.com">&lt;thierry.reding@gmail.com&gt;</a>
Cc: Rob Herring <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:robh+dt=
@kernel.org">&lt;robh+dt@kernel.org&gt;</a>
Cc: Mark Rutland <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto:mark.r=
utland@arm.com">&lt;mark.rutland@arm.com&gt;</a>

Signed-off-by: Mark Yao <a class=3D"moz-txt-link-rfc2396E" href=3D"mailto=
:mark.yao@rock-chips.com">&lt;mark.yao@rock-chips.com&gt;</a>
---
 .../bindings/display/panel/simple-panel.txt        | 48 ++++++++++++++++=
++++++
 1 file changed, 48 insertions(+)
</pre>
      </blockquote>
      <pre wrap=3D"">
Sorry, not going to happen. Read this for an explanation of why not:

	<a class=3D"moz-txt-link-freetext" href=3D"https://sietch-tagr.blogspot.=
de/2016/04/display-panels-are-not-special.html">https://sietch-tagr.blogs=
pot.de/2016/04/display-panels-are-not-special.html</a>

Thierry
</pre>
    </blockquote>
    <br>
    Hi Thierry<br>
    <br>
    The blog actually not persuade me why can't use display timing on
    device tree.<br>
    <br>
    1, Binding panel as a simple string on device tree seems simple on
    device tree, but it's complex on kernel code, and kernel code would
    became bigger and bigger.<br>
    <br>
    2, Our customer always ask me, where is the display timing? They
    only find a simple panel string on device tree,=C2=A0 need search the
    kernel code to find the actually timing. They are used to find all
    device info on device tree, but panel timing info is not,
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
    this would confuse them. They don't want to know how code work, just
    want a easier interface.<br>
    <br>
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
    3, I think device tree not only can use for kernel, other module
    also can use it. on our project, we use uboot + kernel, the uboot
    support fdt, that function can parsing device tree. So if describe
    the display timing on device tree, both uboot and kernel can share
    same display timing, not need to describe twice, it would save work
    and not easy to make mistake.<br>
    <br>
    4, For differentiation product, we face many different panel, every
    once in a while, need to add a new panel, we can't convert all the
    panel
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
    , code the panel on kernel seems too bad, and the kernel image
    became bigger and bigger.
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
    <br>
    =C2=A0<br>
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
    Generally, Our customer don't want to do any modify on kernel, they
    just modify device tree to bring up their device. Describe the panel
    timing on device tree, would make customer easy to use and reuse it.
    <br>
    <br>
    Thanks.<br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
=EF=BC=ADark Yao</pre>
  </body>
</html>


--===============0134529363==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0134529363==--
