From: Liviu Dudau <liviu.dudau@arm.com>
Subject: Re: [PATCH] drm: convert DT component matching to
 component_match_add_release()
Date: Fri, 3 Jun 2016 12:19:41 +0100
Message-ID: <20160603111941.GJ23566@e106497-lin.cambridge.arm.com>
References: <E1b8jze-00046l-K5@rmk-PC.armlinux.org.uk>
 <20160603094048.GI23566@e106497-lin.cambridge.arm.com>
 <20160603103633.GA1041@n2100.armlinux.org.uk>
Mime-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-arm-msm-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20160603103633.GA1041@n2100.armlinux.org.uk>
Sender: linux-arm-msm-owner@vger.kernel.org
To: Russell King - ARM Linux <linux@armlinux.org.uk>
Cc: David Airlie <airlied@linux.ie>, Rob Clark <robdclark@gmail.com>, Mark Yao <mark.yao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Benjamin Gaignard <benjamin.gaignard@linaro.org>, Vincent Abriou <vincent.abriou@st.com>, dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

On Fri, Jun 03, 2016 at 11:36:33AM +0100, Russell King - ARM Linux wrot=
e:
> On Fri, Jun 03, 2016 at 10:40:48AM +0100, Liviu Dudau wrote:
> > On Fri, Jun 03, 2016 at 08:58:10AM +0100, Russell King wrote:
> > > Convert DT component matching to use component_match_add_release(=
).
> >=20
> > Hi Russell,
> >=20
> > Any reason for not keeping the component_match_add() calls in the d=
rivers?
>=20
> Sorry, I don't understand your comment.

As in: component_match_add() already exists as a macro that calls
component_match_add_release(), but with a NULL release function. If it =
were
to be changed to pass a default release_of() function then most of the =
drivers
would not have to change, right? It is just one point of view and I was
curious if there was a reason not to choose it, as it would have (proba=
bly)
generated a smaller delta?

>=20
> If we kept component_match_add() in these drivers, then this patch
> would not exist, because there wouldn't be any changes to the drivers=
=2E
>=20
> > Planning to remove it?
>=20
> Possibly in the longer term, but at the moment there are drivers wher=
e
> the match data that is passed does not need any release functionality
> eg, data allocated with devm_k*alloc(), or
>=20
> 	component_match_add(dev->parent, match, dss_component_compare, dev);
>=20
> There are some new cases that need converting which have cropped up
> during the last merge window, and I expect this to be an on-going
> educational point for driver authors, so I'm not too bothered about
> capturing all existing cases in this patch.

Understood. Using managed allocators is definitely a strong point in fa=
vor
of having the component_match_add() function with a NULL release() hook=
=2E

Best regards,
Liviu

>=20
> --=20
> RMK's Patch system: http://www.armlinux.org.uk/developer/patches/
> FTTC broadband for 0.8mile line: currently at 9.6Mbps down 400kbps up
> according to speedtest.net.
>=20

--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
| I would like to |
| fix the world,  |
| but they're not |
| giving me the   |
 \ source code!  /
  ---------------
    =C2=AF\_(=E3=83=84)_/=C2=AF
