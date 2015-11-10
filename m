From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [RFC PATCH v3 1/4] drm: Introduce generic probe function for
 component based masters.
Date: Tue, 10 Nov 2015 16:53:09 +0800
Message-ID: <5641B075.6020602@rock-chips.com>
References: <1445267270-23126-1-git-send-email-Liviu.Dudau@arm.com>
 <1445267270-23126-2-git-send-email-Liviu.Dudau@arm.com>
 <564069CD.2070102@rock-chips.com>
 <20151109114259.GX8644@n2100.arm.linux.org.uk>
 <20151109115727.GE963@e106497-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1208105507=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <20151109115727.GE963@e106497-lin.cambridge.arm.com>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Liviu Dudau <Liviu.Dudau@arm.com>, Russell King - ARM Linux <linux@arm.linux.org.uk>
Cc: Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============1208105507==
Content-Type: multipart/alternative;
 boundary="------------050903030302010300090109"

This is a multi-part message in MIME format.
--------------050903030302010300090109
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2015=E5=B9=B411=E6=9C=8809=E6=97=A5 19:57, Liviu Dudau wrote:
> Meanwhile, what is your suggestion regarding the patchset. I've seen Da=
vid has
> sent Linus a pull request for 4.4-rc1 that includes it. Should we send =
a
> revert for rockchip commit and then patch later the function?
Hi Liviu
     I had sent a patch to revert this rockchip commit, verfied rockchip=20
drm works. So we can do the fix later.

Thanks all the same. :-)

-- =EF=BC=ADark Yao

--------------050903030302010300090109
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 2015=E5=B9=B411=E6=9C=8809=E6=97=A5=
 19:57, Liviu Dudau
      wrote:<br>
    </div>
    <blockquote
      cite=3D"mid:20151109115727.GE963@e106497-lin.cambridge.arm.com"
      type=3D"cite">
      <pre wrap=3D"">Meanwhile, what is your suggestion regarding the pat=
chset. I've seen David has
sent Linus a pull request for 4.4-rc1 that includes it. Should we send a
revert for rockchip commit and then patch later the function?
</pre>
    </blockquote>
    Hi Liviu<br>
    =C2=A0=C2=A0=C2=A0 I had sent a patch to revert this rockchip commit,=
 verfied
    rockchip drm works. So we can do the fix later.<br>
    <br>
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
    Thanks all the same. <span class=3D"moz-smiley-s1"><span> :-) </span>=
</span><br>
    <br>
    -- =EF=BC=ADark Yao
  </body>
</html>

--------------050903030302010300090109--


--===============1208105507==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============1208105507==--
