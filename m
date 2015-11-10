From: Mark yao <mark.yao@rock-chips.com>
Subject: Re: [RFC PATCH v3 1/4] drm: Introduce generic probe function for
 component based masters.
Date: Tue, 10 Nov 2015 13:49:48 +0800
Message-ID: <5641857C.8030707@rock-chips.com>
References: <1445267270-23126-1-git-send-email-Liviu.Dudau@arm.com>
 <20151109120334.GZ8644@n2100.arm.linux.org.uk>
 <20151109120720.GF963@e106497-lin.cambridge.arm.com>
 <2772927.crXiDc9cOV@phil>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============1188956011=="
Return-path: <dri-devel-bounces@lists.freedesktop.org>
In-Reply-To: <2772927.crXiDc9cOV@phil>
List-Unsubscribe: <http://lists.freedesktop.org/mailman/options/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <http://lists.freedesktop.org/archives/dri-devel>
List-Post: <mailto:dri-devel@lists.freedesktop.org>
List-Help: <mailto:dri-devel-request@lists.freedesktop.org?subject=help>
List-Subscribe: <http://lists.freedesktop.org/mailman/listinfo/dri-devel>,
 <mailto:dri-devel-request@lists.freedesktop.org?subject=subscribe>
Errors-To: dri-devel-bounces@lists.freedesktop.org
Sender: "dri-devel" <dri-devel-bounces@lists.freedesktop.org>
To: Heiko Stuebner <heiko@sntech.de>, Liviu Dudau <Liviu.Dudau@arm.com>
Cc: Russell King - ARM Linux <linux@arm.linux.org.uk>, Daniel Vetter <daniel.vetter@ffwll.ch>, LKML <linux-kernel@vger.kernel.org>, dri-devel <dri-devel@lists.freedesktop.org>, linux-rockchip <linux-rockchip@lists.infradead.org>, LAKML <linux-arm-kernel@lists.infradead.org>
List-Id: linux-rockchip.vger.kernel.org

This is a multi-part message in MIME format.
--===============1188956011==
Content-Type: multipart/alternative;
 boundary="------------000907070803080601010106"

This is a multi-part message in MIME format.
--------------000907070803080601010106
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: quoted-printable

On 2015=E5=B9=B411=E6=9C=8810=E6=97=A5 03:49, Heiko Stuebner wrote:
> Hi Liviu,
>
> Am Montag, 9. November 2015, 12:07:20 schrieb Liviu Dudau:
>> On Mon, Nov 09, 2015 at 12:03:35PM +0000, Russell King - ARM Linux wro=
te:
>>> On Mon, Nov 09, 2015 at 11:57:27AM +0000, Liviu Dudau wrote:
>>>> Meanwhile, what is your suggestion regarding the patchset. I've seen=
 David has
>>>> sent Linus a pull request for 4.4-rc1 that includes it. Should we se=
nd a
>>>> revert for rockchip commit and then patch later the function?
>>> It definitely needs to be fixed, and I'd suggest its early enough in =
the
>>> -rc cycle (which hasn't begun yet) to simply fix drm_of_component_pro=
be()
>>> to take two compare functions.
>> I still don't have a Rockchip board to test the patch, so I need to fi=
nd out
>> someone willing to test them. Mark?
> I of course also have a plethora of rockchip boards, so can test stuff
> as well.
>
>
> Heiko
>
>
>
>
Hi Liviu
    Sorry to reply late , of course I have rockchip boards and can do=20
the test.

Hi Russell and Philipp,
     Thanks for your analysis, let me know what happen.

--=20
=EF=BC=ADark Yao


--------------000907070803080601010106
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta content=3D"text/html; charset=3Dutf-8" http-equiv=3D"Content-Ty=
pe">
  </head>
  <body bgcolor=3D"#FFFFFF" text=3D"#000000">
    <div class=3D"moz-cite-prefix">On 2015=E5=B9=B411=E6=9C=8810=E6=97=A5=
 03:49, Heiko Stuebner
      wrote:<br>
    </div>
    <blockquote cite=3D"mid:2772927.crXiDc9cOV@phil" type=3D"cite">
      <pre wrap=3D"">Hi Liviu,

Am Montag, 9. November 2015, 12:07:20 schrieb Liviu Dudau:
</pre>
      <blockquote type=3D"cite">
        <pre wrap=3D"">On Mon, Nov 09, 2015 at 12:03:35PM +0000, Russell =
King - ARM Linux wrote:
</pre>
        <blockquote type=3D"cite">
          <pre wrap=3D"">On Mon, Nov 09, 2015 at 11:57:27AM +0000, Liviu =
Dudau wrote:
</pre>
          <blockquote type=3D"cite">
            <pre wrap=3D"">Meanwhile, what is your suggestion regarding t=
he patchset. I've seen David has
sent Linus a pull request for 4.4-rc1 that includes it. Should we send a
revert for rockchip commit and then patch later the function?
</pre>
          </blockquote>
          <pre wrap=3D"">
It definitely needs to be fixed, and I'd suggest its early enough in the
-rc cycle (which hasn't begun yet) to simply fix drm_of_component_probe()
to take two compare functions.
</pre>
        </blockquote>
        <pre wrap=3D"">
I still don't have a Rockchip board to test the patch, so I need to find =
out
someone willing to test them. Mark?
</pre>
      </blockquote>
      <pre wrap=3D"">
I of course also have a plethora of rockchip boards, so can test stuff
as well.


Heiko




</pre>
    </blockquote>
    Hi Liviu<br>
    =C2=A0=C2=A0 Sorry to reply late
    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
    , of course I have rockchip boards and can do the test. <br>
    <br>
    Hi Russell and Philipp,<br>
    =C2=A0=C2=A0=C2=A0 Thanks for your analysis, let me know what happen.=
 <br>
    <pre class=3D"moz-signature" cols=3D"72">--=20
=EF=BC=ADark Yao</pre>
  </body>
</html>

--------------000907070803080601010106--


--===============1188956011==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: base64
Content-Disposition: inline

X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KZHJpLWRldmVs
IG1haWxpbmcgbGlzdApkcmktZGV2ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCmh0dHA6Ly9saXN0
cy5mcmVlZGVza3RvcC5vcmcvbWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwK

--===============1188956011==--
