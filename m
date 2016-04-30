From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/3] phy: rockchip-usb: should be a child device of the GRF
Date: Sat, 30 Apr 2016 22:07:33 +0200
Message-ID: <1879262.vnFSl1oxpJ@diego>
References: <1459431812-6286-1-git-send-email-heiko@sntech.de> <1459431812-6286-2-git-send-email-heiko@sntech.de> <2045729.fIbxLc8i6o@diego>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <2045729.fIbxLc8i6o@diego>
Sender: linux-kernel-owner@vger.kernel.org
To: kishon@ti.com
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon,

Am Dienstag, 19. April 2016, 08:13:47 schrieb Heiko St=FCbner:
> Hi Kishon.
>=20
> Am Donnerstag, 31. M=E4rz 2016, 15:43:30 schrieb Heiko Stuebner:
> > The usb-phy is fully enclosed in the general register files (GRF).
> > Therefore as seen from the device-tree it shouldn't be a separate
> > platform-
> > device but instead a sub-device of the GRF - using the simply-mfd
> > mechanism.
> >=20
> > As the usb-phy is part of the kernel for some releases now, we keep
> > the old (and now deprecated) binding for compatibility purposes.
> >=20
> > Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>=20
> could you look into picking this patch up for 4.7?
>=20
> Same principle as for the other phy drivers, but it's already in the =
kernel
> for a while, so it gets a fallback for the old binding and can go thr=
ough
> the normal way.
>=20
> The other two (devicetree-)patches I would then simply queue for 4.8 =
myself
> after you're fine with the driver-side.

just saw that you already have a tag for 4.7-related phy changes since =
this=20
afternoon, but no phy pull to Greg on lkml yet.

So maybe there is still a way for this phy conversion (to be under the=20
Rockchip GRF node) to make it in for 4.7 :-) ?


Thanks
Heiko
