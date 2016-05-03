From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Subject: Re: [PATCH 1/3] phy: rockchip-usb: should be a child device of the GRF
Date: Tue, 03 May 2016 13:02:53 +0200
Message-ID: <7658149.o0yR5eAPe1@diego>
References: <1459431812-6286-1-git-send-email-heiko@sntech.de> <1879262.vnFSl1oxpJ@diego> <5728845B.8070405@ti.com>
Mime-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <5728845B.8070405@ti.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Kishon Vijay Abraham I <kishon@ti.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
List-Id: linux-rockchip.vger.kernel.org

Hi Kishon,

Am Dienstag, 3. Mai 2016, 16:28:35 schrieb Kishon Vijay Abraham I:
> On Sunday 01 May 2016 01:37 AM, Heiko St=FCbner wrote:
> > Am Dienstag, 19. April 2016, 08:13:47 schrieb Heiko St=FCbner:
> >> Am Donnerstag, 31. M=E4rz 2016, 15:43:30 schrieb Heiko Stuebner:
> >>> The usb-phy is fully enclosed in the general register files (GRF)=
=2E
> >>> Therefore as seen from the device-tree it shouldn't be a separate
> >>> platform-
> >>> device but instead a sub-device of the GRF - using the simply-mfd
> >>> mechanism.
> >>>=20
> >>> As the usb-phy is part of the kernel for some releases now, we ke=
ep
> >>> the old (and now deprecated) binding for compatibility purposes.
> >>>=20
> >>> Signed-off-by: Heiko Stuebner <heiko@sntech.de>
> >>=20
> >> could you look into picking this patch up for 4.7?
> >>=20
> >> Same principle as for the other phy drivers, but it's already in t=
he
> >> kernel
> >> for a while, so it gets a fallback for the old binding and can go =
through
> >> the normal way.
> >>=20
> >> The other two (devicetree-)patches I would then simply queue for 4=
=2E8
> >> myself
> >> after you're fine with the driver-side.
> >=20
> > just saw that you already have a tag for 4.7-related phy changes si=
nce
> > this
> > afternoon, but no phy pull to Greg on lkml yet.
> >=20
> > So maybe there is still a way for this phy conversion (to be under =
the
> > Rockchip GRF node) to make it in for 4.7 :-) ?
>=20
> Looks like I've missed this before sending the pull request. Sorry ab=
out
> that. Is it okay if the PHY changes also go in 4.8?

yep, 4.8 is no problem as well. We have the current binding in the kern=
el for=20
so long, that waiting one more kernel release won't be a problem.


Heiko
