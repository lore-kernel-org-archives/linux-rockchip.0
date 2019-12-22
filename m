From: Christian Hewitt <christianshewitt-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>
Subject: Re: [PATCH v2 0/9] brcmfmac: add support for BCM4359 SDIO chipset
Date: Sun, 22 Dec 2019 07:35:43 +0300
Message-ID: <47DB71CE-ACC4-431D-9E66-D28A8C18C0A4@gmail.com>
References: <20191211235253.2539-1-smoch@web.de>
 <D1B53CE9-E87C-4514-A2D7-0FE70A4D1A5D@gmail.com>
 <cb3ac55f-4c8f-b0a0-41ee-f16b3232c87e@web.de>
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Content-Type: text/plain;
        charset=us-ascii
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org>
In-Reply-To: <cb3ac55f-4c8f-b0a0-41ee-f16b3232c87e-S0/GAf8tV78@public.gmane.org>
Sender: linux-wireless-owner-u79uwXL29TY76Z2rM5mHXA@public.gmane.org
To: Soeren Moch <smoch-S0/GAf8tV78@public.gmane.org>
Cc: Kalle Valo <kvalo-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org>, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>, linux-wireless-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, brcm80211-dev-list.pdl-dY08KVG/lbpWk0Htik3J/w@public.gmane.org, brcm80211-dev-list-+wT8y+m8/X5BDgjK7y7TUQ@public.gmane.org, netdev-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, Neil Armstrong <narmstrong-rdvid1DuHRBWk0Htik3J/w@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


> On 19 Dec 2019, at 2:04 am, Soeren Moch <smoch-S0/GAf8tV78@public.gmane.org> wrote:
>=20
> I guess you need similar enhancements of the board device tree as in
> patch 8 of this series for your VIM3 board.

Wider testing now points to a known SDIO issue (SoC bug) with Amlogic =
G12A/B hardware. The merged workaround for the bug was only tested with =
bcmdhd and brcmfmac may require tweaking as the same issue exhibits on =
an Amlogic G12B device with BCM4356 chip. Testing the series with =
Amlogic GXM (older) and SM1 (newer) hardware to exclude the SoC bug =
shows everything working as expected.

Christian=
