From: =?UTF-8?Q?St=C3=A9phane_Marchesin?= <marcheu@chromium.org>
Subject: Re: [PATCH 01/41] drm/panel: simple: Change mode for Sharp lq123p1jx31
Date: Mon, 20 Mar 2017 13:01:42 -0700
Message-ID: <CADMs+9ZT3+XAtomjz3htV4mDft-n=X+CkwvGvo3v1N+Ku6_gaw@mail.gmail.com>
References: <20170310043305.17216-1-seanpaul@chromium.org>
 <20170310043305.17216-2-seanpaul@chromium.org>
 <20170320135945.GQ22463@ulmo.ba.sec>
 <CAD=FV=V5QSMT_PD4oa6QwukBisiPvWGw67_xaQhds6ofe3D8Ug@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============0031334089=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <CAD=FV=V5QSMT_PD4oa6QwukBisiPvWGw67_xaQhds6ofe3D8Ug@mail.gmail.com>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Doug Anderson <dianders@chromium.org>
Cc: "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, Chris Zhong <zyw@rock-chips.com>
List-Id: linux-rockchip.vger.kernel.org

--===============0031334089==
Content-Type: multipart/alternative; boundary=94eb2c0d4d1e4237e1054b2f0083

--94eb2c0d4d1e4237e1054b2f0083
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Mar 20, 2017 at 9:37 AM, Doug Anderson <dianders@chromium.org>
wrote:

> Hi,
>
> On Mon, Mar 20, 2017 at 6:59 AM, Thierry Reding
> <thierry.reding@gmail.com> wrote:
> > On Thu, Mar 09, 2017 at 11:32:16PM -0500, Sean Paul wrote:
> >> Change the mode for Sharp lq123p1jx31 panel to something more
> >> rockchip-friendly such that we can use the fixed PLLs to
> >> generate the pixel clock
> >>
> >> Cc: Chris Zhong <zyw@rock-chips.com>
> >> Cc: St=C3=A9phane Marchesin <marcheu@chromium.org>
> >> Signed-off-by: Sean Paul <seanpaul@chromium.org>
> >> ---
> >>  drivers/gpu/drm/panel/panel-simple.c | 7 ++++---
> >>  1 file changed, 4 insertions(+), 3 deletions(-)
> >
> > That's really not how you should be doing this. If you want to support
> > this panel on more than one type of hardware, especially if they have
> > different restrictions on what clocks and timings they can generate,
> > the driver should specify the timings using a struct display_timing and
> > drivers should use that data to generate a mode that matches their
> > requirements but is still within the valid ranges specified in the .min
> > and .max values.
> >
> > That said, in this particular case nobody seems to be using the panel
> > in the upstream kernel.
>
> Sean and I had a private conversation about this too.  Roughly summarizin=
g:
>
> 1. We have validated with the panel manufacturer that 266.667 MHz is
> valid and within spec.  The panel's datasheet itself says something
> like "if you want to try other values you can, but they might not
> work", so technically the only values "known" to work are those that
> were in the original patch and the values here in Sean's patch.
>

So why don't you add 2 modes, and let the drivers pick the clock they
prefer?

St=C3=A9phane


>
> 2. In the particular case of rk3399-kevin (which uses this panel), we
> actually went through several iterations before we found a mode that
> not only worked with the limited PLLs but also that didn't generate
> excessive noise on the digitizer (used for stylus input).  The
> digitizer is (as I understand) a separate component from the panel
> itself, so this restriction isn't really one on the panel but is a
> reality of how this panel was used in real hardware.  I have no idea
> how one expresses this board-centric view of the world.
>
> NOTE: Point #2 actually made me check, and Sean's patch is the wrong
> iteration of these changes.  Please see http://crosreview.com/381015
>
> 3. In an ideal world, even on rk3399-kevin we'd be able to choose the
> 252.75 MHz clock if the variable PLL on rk3399 happened to be
> available (if there was no external display whose pixel clock needed
> the variable PLL).  This would save a bit of power, and I believe the
> 252.75 MHz also avoids noise on the digitizer.  ...but trying to deal
> with all this was very complicated.
>
>
> That all being said: I'd personally be in favor for something like
> Sean's patch to land since, as you said, there are no other current
> users of the panel.  It's nice to start with something working and
> hopefully we can figure out a more advanced / dynamic system sometime
> in the future.
>
>
> > One minor nit below...
> >
> >>
> >> diff --git a/drivers/gpu/drm/panel/panel-simple.c
> b/drivers/gpu/drm/panel/panel-simple.c
> >> index 89eb0422821c..787b4d143220 100644
> >> --- a/drivers/gpu/drm/panel/panel-simple.c
> >> +++ b/drivers/gpu/drm/panel/panel-simple.c
> >> @@ -1598,17 +1598,18 @@ static const struct panel_desc
> sharp_lq101k1ly04 =3D {
> >>  };
> >>
> >>  static const struct drm_display_mode sharp_lq123p1jx31_mode =3D {
> >> -     .clock =3D 252750,
> >> +     .clock =3D 266667,
> >>       .hdisplay =3D 2400,
> >>       .hsync_start =3D 2400 + 48,
> >>       .hsync_end =3D 2400 + 48 + 32,
> >> -     .htotal =3D 2400 + 48 + 32 + 80,
> >> +     .htotal =3D 2400 + 48 + 32 + 139,
>
> Please fold in <https://chromium-review.googlesource.com/381015> to
> get noise-free timings.
>
>
> >>       .vdisplay =3D 1600,
> >>       .vsync_start =3D 1600 + 3,
> >>       .vsync_end =3D 1600 + 3 + 10,
> >> -     .vtotal =3D 1600 + 3 + 10 + 33,
> >> +     .vtotal =3D 1600 + 3 + 10 + 84,
>
> Here too.
>
> >>       .vrefresh =3D 60,
> >>       .flags =3D DRM_MODE_FLAG_NVSYNC | DRM_MODE_FLAG_NHSYNC,
> >> +     .type =3D DRM_MODE_TYPE_PREFERRED | DRM_MODE_TYPE_DRIVER,
>
> IIRC this was an attempt to deal with the fact that the EDID had a
> different mode than we were specifying here, but I could be wrong.
>
>
>
> -Doug
>

--94eb2c0d4d1e4237e1054b2f0083
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">On Mon, Mar 20, 2017 at 9:37 AM, Doug Anderson <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:dianders@chromium.org" target=3D"_blank">dianders@chromium.=
org</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<span class=3D""><br>
On Mon, Mar 20, 2017 at 6:59 AM, Thierry Reding<br>
&lt;<a href=3D"mailto:thierry.reding@gmail.com">thierry.reding@gmail.com</a=
>&gt; wrote:<br>
&gt; On Thu, Mar 09, 2017 at 11:32:16PM -0500, Sean Paul wrote:<br>
&gt;&gt; Change the mode for Sharp lq123p1jx31 panel to something more<br>
&gt;&gt; rockchip-friendly such that we can use the fixed PLLs to<br>
&gt;&gt; generate the pixel clock<br>
&gt;&gt;<br>
&gt;&gt; Cc: Chris Zhong &lt;<a href=3D"mailto:zyw@rock-chips.com">zyw@rock=
-chips.com</a>&gt;<br>
&gt;&gt; Cc: St=C3=A9phane Marchesin &lt;<a href=3D"mailto:marcheu@chromium=
.org">marcheu@chromium.org</a>&gt;<br>
&gt;&gt; Signed-off-by: Sean Paul &lt;<a href=3D"mailto:seanpaul@chromium.o=
rg">seanpaul@chromium.org</a>&gt;<br>
&gt;&gt; ---<br>
&gt;&gt;=C2=A0 drivers/gpu/drm/panel/panel-<wbr>simple.c | 7 ++++---<br>
&gt;&gt;=C2=A0 1 file changed, 4 insertions(+), 3 deletions(-)<br>
&gt;<br>
&gt; That&#39;s really not how you should be doing this. If you want to sup=
port<br>
&gt; this panel on more than one type of hardware, especially if they have<=
br>
&gt; different restrictions on what clocks and timings they can generate,<b=
r>
&gt; the driver should specify the timings using a struct display_timing an=
d<br>
&gt; drivers should use that data to generate a mode that matches their<br>
&gt; requirements but is still within the valid ranges specified in the .mi=
n<br>
&gt; and .max values.<br>
&gt;<br>
&gt; That said, in this particular case nobody seems to be using the panel<=
br>
&gt; in the upstream kernel.<br>
<br>
</span>Sean and I had a private conversation about this too.=C2=A0 Roughly =
summarizing:<br>
<br>
1. We have validated with the panel manufacturer that 266.667 MHz is<br>
valid and within spec.=C2=A0 The panel&#39;s datasheet itself says somethin=
g<br>
like &quot;if you want to try other values you can, but they might not<br>
work&quot;, so technically the only values &quot;known&quot; to work are th=
ose that<br>
were in the original patch and the values here in Sean&#39;s patch.<br></bl=
ockquote><div><br></div><div>So why don&#39;t you add 2 modes, and let the =
drivers pick the clock they prefer?</div><div><br></div><div>St=C3=A9phane<=
/div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
2. In the particular case of rk3399-kevin (which uses this panel), we<br>
actually went through several iterations before we found a mode that<br>
not only worked with the limited PLLs but also that didn&#39;t generate<br>
excessive noise on the digitizer (used for stylus input).=C2=A0 The<br>
digitizer is (as I understand) a separate component from the panel<br>
itself, so this restriction isn&#39;t really one on the panel but is a<br>
reality of how this panel was used in real hardware.=C2=A0 I have no idea<b=
r>
how one expresses this board-centric view of the world.<br>
<br>
NOTE: Point #2 actually made me check, and Sean&#39;s patch is the wrong<br=
>
iteration of these changes.=C2=A0 Please see <a href=3D"http://crosreview.c=
om/381015" rel=3D"noreferrer" target=3D"_blank">http://crosreview.com/38101=
5</a><br>
<br>
3. In an ideal world, even on rk3399-kevin we&#39;d be able to choose the<b=
r>
252.75 MHz clock if the variable PLL on rk3399 happened to be<br>
available (if there was no external display whose pixel clock needed<br>
the variable PLL).=C2=A0 This would save a bit of power, and I believe the<=
br>
252.75 MHz also avoids noise on the digitizer.=C2=A0 ...but trying to deal<=
br>
with all this was very complicated.<br>
<br>
<br>
That all being said: I&#39;d personally be in favor for something like<br>
Sean&#39;s patch to land since, as you said, there are no other current<br>
users of the panel.=C2=A0 It&#39;s nice to start with something working and=
<br>
hopefully we can figure out a more advanced / dynamic system sometime<br>
in the future.<br>
<span class=3D""><br>
<br>
&gt; One minor nit below...<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; diff --git a/drivers/gpu/drm/panel/panel-<wbr>simple.c b/drivers/g=
pu/drm/panel/panel-<wbr>simple.c<br>
&gt;&gt; index 89eb0422821c..787b4d143220 100644<br>
&gt;&gt; --- a/drivers/gpu/drm/panel/panel-<wbr>simple.c<br>
&gt;&gt; +++ b/drivers/gpu/drm/panel/panel-<wbr>simple.c<br>
&gt;&gt; @@ -1598,17 +1598,18 @@ static const struct panel_desc sharp_lq101=
k1ly04 =3D {<br>
&gt;&gt;=C2=A0 };<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 static const struct drm_display_mode sharp_lq123p1jx31_mode =
=3D {<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0.clock =3D 252750,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0.clock =3D 266667,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.hdisplay =3D 2400,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.hsync_start =3D 2400 + 48,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.hsync_end =3D 2400 + 48 + 32,<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0.htotal =3D 2400 + 48 + 32 + 80,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0.htotal =3D 2400 + 48 + 32 + 139,<br>
<br>
</span>Please fold in &lt;<a href=3D"https://chromium-review.googlesource.c=
om/381015" rel=3D"noreferrer" target=3D"_blank">https://chromium-review.<wb=
r>googlesource.com/381015</a>&gt; to<br>
get noise-free timings.<br>
<span class=3D""><br>
<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.vdisplay =3D 1600,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.vsync_start =3D 1600 + 3,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.vsync_end =3D 1600 + 3 + 10,<br>
&gt;&gt; -=C2=A0 =C2=A0 =C2=A0.vtotal =3D 1600 + 3 + 10 + 33,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0.vtotal =3D 1600 + 3 + 10 + 84,<br>
<br>
</span>Here too.<br>
<span class=3D""><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.vrefresh =3D 60,<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0.flags =3D DRM_MODE_FLAG_NVSYNC | DRM_MO=
DE_FLAG_NHSYNC,<br>
&gt;&gt; +=C2=A0 =C2=A0 =C2=A0.type =3D DRM_MODE_TYPE_PREFERRED | DRM_MODE_=
TYPE_DRIVER,<br>
<br>
</span>IIRC this was an attempt to deal with the fact that the EDID had a<b=
r>
different mode than we were specifying here, but I could be wrong.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
<br>
<br>
-Doug<br>
</font></span></blockquote></div><br></div></div>

--94eb2c0d4d1e4237e1054b2f0083--

--===============0031334089==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHBzOi8vbGlz
dHMuZnJlZWRlc2t0b3Aub3JnL21haWxtYW4vbGlzdGluZm8vZHJpLWRldmVsCg==

--===============0031334089==--
