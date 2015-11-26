From: Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH v4 06/13] drm/bridge: Add Synopsys DesignWare MIPI DSI
 host controller driver
Date: Thu, 26 Nov 2015 09:04:49 +0100
Message-ID: <20151126080447.GA28064@ulmo.nvidia.com>
References: <1448007339-10966-1-git-send-email-zyw@rock-chips.com>
 <1448007339-10966-7-git-send-email-zyw@rock-chips.com>
 <20151120160706.GE3300@ulmo.nvidia.com>
 <5656AEDA.4080607@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="M9NhX3UHpAaciwkO"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5656AEDA.4080607@rock-chips.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
To: Chris Zhong <zyw@rock-chips.com>
Cc: heiko@sntech.de, linux-rockchip@lists.infradead.org, mark.yao@rock-chips.com, emil.l.velikov@gmail.com, airlied@linux.ie, ajaykumar.rs@samsung.com, rmk+kernel@arm.linux.org.uk, dri-devel@lists.freedesktop.org, Inki Dae <inki.dae@samsung.com>, Takashi Iwai <tiwai@suse.de>, Vincent Palatin <vpalatin@chromium.org>, Andy Yan <andy.yan@rock-chips.com>, Rahul Sharma <rahul.sharma@samsung.com>, Sean Paul <seanpaul@chromium.org>, Andrew Bresticker <abrestic@chromium.org>, linux-kernel@vger.kernel.org
List-Id: linux-rockchip.vger.kernel.org

--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 26, 2015 at 03:03:54PM +0800, Chris Zhong wrote:
> Hi Thierry
>=20
> Thanks for your feedback.
>=20
>=20
> On 11/21/2015 12:07 AM, Thierry Reding wrote:
> >On Fri, Nov 20, 2015 at 04:15:32PM +0800, Chris Zhong wrote:
> >>add Synopsys DesignWare MIPI DSI host controller driver support.
> >>
> >>Signed-off-by: Chris Zhong <zyw@rock-chips.com>
> >>---
> >>
> >>Changes in v4:
> >>eliminate some warnning
> >>
> >>Changes in v3: None
> >>Changes in v2: None
> >>
> >>  drivers/gpu/drm/bridge/Kconfig       |   11 +
> >>  drivers/gpu/drm/bridge/Makefile      |    1 +
> >>  drivers/gpu/drm/bridge/dw_mipi_dsi.c | 1056 +++++++++++++++++++++++++=
+++++++++
> >>  include/drm/bridge/dw_mipi_dsi.h     |   27 +
> >>  4 files changed, 1095 insertions(+)
> >>  create mode 100644 drivers/gpu/drm/bridge/dw_mipi_dsi.c
> >>  create mode 100644 include/drm/bridge/dw_mipi_dsi.h
> >>
> >>
> >>+struct dw_mipi_dsi {
> >>+	struct mipi_dsi_host dsi_host;
> >>+	struct drm_connector connector;
> >>+	struct drm_encoder *encoder;
> >struct drm_bridge already has a pointer to an encoder, can't you reuse
> >that instead?
> >
> >>+	struct drm_bridge *bridge;
> >Typically you'd embed the bridge into the driver structure.
> I'm almost done with all the modifications according to your comments.
> Remaining this point I can not understand, the dsi is a pointer of
> drm_bridge,
> hence I can not get the bridge by container_of.
> Although, the "bridge->driver_private =3D dsi" have done in
> dw_mipi_dsi_register.

I don't understand. If you don't make bridge a pointer, but rather embed
it within the structure, then you can use container_of(), can't you? You
get it allocated automatically as part of allocating the dw_mipi_dsi
structure. See for example the ps8622 and ptn3460 bridge drivers.

On a slightly unrelated note, I'm not sure if we discussed this already
or if it was in another thread, but why is this even a bridge driver? A
bridge is typically some IC outside of the SoC, whereas this clearly is
IP designed into the SoC. So it's really more of an encoder rather than
a bridge.

Thierry

--M9NhX3UHpAaciwkO
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJWVr0ZAAoJEN0jrNd/PrOhcKEP/1F8M2mLVgPvfmAgmITOzVud
/WTn3q7lmSqmWhs0hs7trnv5g/ftgHSEwG5iHXlT8K7WDksCGz+3o89N+5GHujcX
W33l3ZVtBOqgH42BLO5Vxt5d/mqtVypCiRIRWwqk1p8wKPqLbw5PKXHaK2LM6n40
x0NgGQqwbPuDOyPz2FH8u2Ejj2/Ynogb7UOnoHw3haUtJlWW+CiCuUu5qNSr3sjC
CY46lNQ/K5P8uodxE/wRWdyWe9y1H1+804Zaw5GiMQ9fwVQa09kITLAdLVKaaChI
GnWGyivo4WZaBaT6mq+q1QE7h1wjGtCkf4wTpJDhFlZxtKn9JnnKl4dxwKV1YL6Q
7NCaL0S/dCkldirnPrhVshiUNuB76jZ7J9mbrxplCsLGS8SMkQ+26RSh48YOIKQX
NkG0qqL5DaEOkp4D/TXM+dOIS/u6CgoLxzVshpLZeJSzgz8LJXs3gokqpqj+o/L9
p/St9ywbFEWh5kYxLHxOlbN+t9oTN0u8LSkfx1IRIshUJKymja47kNPTw2B5DL1F
28tqmBVwmMTNBBqs3y4Be/9tUOOywkBafFLVAZ8MEtC9pHEDUULjEkV8oH2d68vO
7mI+uKFPYOloDMWEh3F5Tze2EAzwdfEDwVr6seH3tbyj4zkQ9gq8rFBRtq+gjxNN
9DFA+wGabTkuWgxQd2UU
=skg+
-----END PGP SIGNATURE-----

--M9NhX3UHpAaciwkO--
