From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [PATCH 1/2] drm/rockchip: vop: Do check if an update is pending
 during disable
Date: Wed, 25 May 2016 09:33:50 +0800
Message-ID: <574500FE.4050708@rock-chips.com>
References: <1459937686-9142-1-git-send-email-tomeu.vizoso@collabora.com>
 <5707043D.6060706@rock-chips.com>
 <CAAObsKAeAjUP1retiZqo5geOK2OkVjKvSB6g6nvGTh_rdNiFJQ@mail.gmail.com>
 <570AFAC2.8080907@rock-chips.com>
 <CAAObsKCmPZBaSudVJy8BPThhoZw8VVqxicqsmc8diApajD57nA@mail.gmail.com>
 <CAAObsKBXxb8ZS3CqLy4qsDRWLvT=w2ACANCcDLE5B47nRKtvBw@mail.gmail.com>
 <5742A41B.8030308@rock-chips.com>
 <CAAObsKAj9Ja56buTixvp0EVBk=xE4JCXPPwXdviweHkmUQb2xg@mail.gmail.com>
 <5744FA7C.3080802@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1995230926=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <5744FA7C.3080802@rock-chips.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Tomeu Vizoso <tomeu.vizoso@collabora.com>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

--===============1995230926==
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 2016=E5=B9=B405=E6=9C=8825=E6=97=A5=
 09:06, Mark yao wrote:<br>
    </div>
    <blockquote cite=3D"mid:5744FA7C.3080802@rock-chips.com" type=3D"cite=
">
      <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-=
Type">
      <div class=3D"moz-cite-prefix">On 2016=E5=B9=B405=E6=9C=8824=E6=97=A5=
 18:11, Tomeu Vizoso
        wrote:<br>
      </div>
      <blockquote
cite=3D"mid:CAAObsKAj9Ja56buTixvp0EVBk=3DxE4JCXPPwXdviweHkmUQb2xg@mail.gm=
ail.com"
        type=3D"cite">
        <blockquote type=3D"cite" style=3D"color: #000000;">
          <pre wrap=3D"">Hi Tomeu
<span class=3D"moz-txt-citetags">&gt;</span>
<span class=3D"moz-txt-citetags">&gt; </span>Sorry for reply late.
<span class=3D"moz-txt-citetags">&gt; </span>I don't agree the changes:
<span class=3D"moz-txt-citetags">&gt;</span>
<span class=3D"moz-txt-citetags">&gt; </span>- if (!state-&gt;enable)
<span class=3D"moz-txt-citetags">&gt; </span>- return VOP_WIN_GET(vop_win=
-&gt;vop, vop_win-&gt;data, enable) =3D=3D 0;
<span class=3D"moz-txt-citetags">&gt; </span>+ if (!state-&gt;enable &amp=
;&amp;
<span class=3D"moz-txt-citetags">&gt; </span>+    VOP_WIN_GET(vop_win-&gt=
;vop, vop_win-&gt;data, enable) =3D=3D 0)
<span class=3D"moz-txt-citetags">&gt; </span>+ return true;
<span class=3D"moz-txt-citetags">&gt;</span>
<span class=3D"moz-txt-citetags">&gt; </span>This changes actually would =
lead a bug.
<span class=3D"moz-txt-citetags">&gt; </span>when we disable a plane, the=
 vop_win_pending_is_complete would always return
<span class=3D"moz-txt-citetags">&gt; </span>true, That is not allowed, w=
ould cause fb free too early.
</pre>
        </blockquote>
        <pre wrap=3D"">Ok, maybe I need to ask you first what the origina=
l block of code
intended to achieve. The TRM I have is very terse and I don't find any
explanation there. The battery of tests I have pass just fine without
it.

</pre>
        <blockquote type=3D"cite" style=3D"color: #000000;">
          <pre wrap=3D""><span class=3D"moz-txt-citetags">&gt; </span>Doe=
s this patch is needed for "[PATCH 2/2] drm/rockchip: vop: Wait for
<span class=3D"moz-txt-citetags">&gt; </span>pending events when disablin=
g a CRTC"
</pre>
        </blockquote>
        <pre wrap=3D"">Yes, this function is currently returning false wh=
en the pageflip has
been completed but the plan has been already disabled.

If you have any different idea of how to fix this bug, please share.

Thanks,

Tomeu



</pre>
      </blockquote>
      Hi Tomeu<br>
      <br>
      <pre wrap=3D""><i>@@ -504,6 +506,9 @@ static void vop_crtc_disable(=
struct drm_crtc *crtc)
 	if (!vop-&gt;is_enabled)
 		return;
=20
+	if (crtc-&gt;state-&gt;event || vop-&gt;event)
+		vop_crtc_wait_for_update(crtc);
+</i><i>
</i>
I think above change has some problem,

the function stack:
-&gt;drm swap state
-&gt;vop_crtc_disable
-&gt;vop_atomic_begin
-&gt;vop_atomic_flush

on vop_crtc_disable, crtc-&gt;state is new state, the crtc-&gt;state-&gt;=
event not yet update to vop, wait for  crtc-&gt;state-&gt;event here is w=
rong.

So I think the patch should be:
<i>+	if (vop-&gt;event)
+		vop_crtc_wait_for_update(crtc);
+</i></pre>
    </blockquote>
    <br>
    call vop_crtc_wait_for_update(crtc) here also is unsafe, it will
    reinit the vop-&gt;wait_update_complete.<br>
    <br>
    I doubt that, since use the serialize outstanding nonblocking
    commits, only one process can run into the update stack, old
    vop-&gt;event should be free on last time, if we get vop-&gt;event
    here, that should be a bug.<br>
    <br>
    <blockquote cite=3D"mid:5744FA7C.3080802@rock-chips.com" type=3D"cite=
">
      <pre wrap=3D"">

Then the patch "drm/rockchip: vop: Do check if an update is pending durin=
g disable" should be no needed.

Thanks.

</pre>
      -- =EF=BC=ADark Yao <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap=3D"">_______________________________________________
dri-devel mailing list
<a class=3D"moz-txt-link-abbreviated" href=3D"mailto:dri-devel@lists.free=
desktop.org">dri-devel@lists.freedesktop.org</a>
<a class=3D"moz-txt-link-freetext" href=3D"https://lists.freedesktop.org/=
mailman/listinfo/dri-devel">https://lists.freedesktop.org/mailman/listinf=
o/dri-devel</a>
</pre>
    </blockquote>
    <br>
    <br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
=EF=BC=ADark Yao</pre>
  </body>
</html>


--===============1995230926==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============1995230926==--
