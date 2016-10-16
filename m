From: Paul Kocialkowski <contact-W9ppeneeCTY@public.gmane.org>
Subject: RK3288 USB issues with ath9k_htc Wi-Fi dongles on veyron devices
Date: Sun, 16 Oct 2016 22:01:41 +0200
Message-ID: <1476648101.3885.14.camel@paulk.fr>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============7269628793863262895=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-usb-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
Cc: Randy Li <ayaka-xPW3/0Ywev/iB9QmIjCX8w@public.gmane.org>, randy.li-TNX95d0MmH7DzftRWevZcw@public.gmane.org, Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org


--===============7269628793863262895==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-RLZuiHT6Vs/3HhSweCqi"


--=-RLZuiHT6Vs/3HhSweCqi
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to use ath9k_htc Wi-Fi dongles with various rk3288 veyron device=
s,
which currently do not work.

I have a bunch of different dongles, that all work nicely with other device=
s.
The kernel I'm running is 4.9-rc1 and the USB connectors I'm using are link=
ed to
OTG and HOST1 (both DWC2 controllers).

I have applied the latest version of Randy Li's patches, that fix an USB er=
ror
with these controllers. They do not fix my issue, or otherwise change the
behavior I'm seeing. The very same device running with the chromeos-3.14 ke=
rnel
works nicely and doesn't have this issue.

There are two different cases, that happen interchangeably and randomly:

1. The dongle is detected and the driver is probed but the first register r=
eads
fail:

[=C2=A0=C2=A0322.841142] usb 2-1: new high-speed USB device number 3 using =
dwc2
[=C2=A0=C2=A0323.104591] usb 2-1: ath9k_htc: Firmware ath9k_htc/htc_9271-1.=
4.0.fw requested
[=C2=A0=C2=A0323.113489] usb 2-1: Direct firmware load for ath9k_htc/htc_92=
71-1.4.0.fw failed with error -2
[=C2=A0=C2=A0323.122204] usb 2-1: ath9k_htc: Firmware htc_9271.fw requested
[=C2=A0=C2=A0323.414012] usb 2-1: ath9k_htc: Transferred FW: htc_9271.fw, s=
ize: 51008
[=C2=A0=C2=A0323.665556] ath9k_htc 2-1:1.0: ath9k_htc: HTC initialized with=
 33 credits
[=C2=A0=C2=A0324.710992] ath: phy1: Timeout waiting for WMI command: WMI_RE=
G_READ_CMDID
[=C2=A0=C2=A0324.717899] ath: phy1: REGISTER READ FAILED: (0x4020, -110)
[=C2=A0=C2=A0324.723525] ath: phy1: Mac Chip Rev 0x0f.3 is not supported by=
 this driver
[=C2=A0=C2=A0324.730416] ath: phy1: Unable to initialize hardware; initiali=
zation status: -95
[=C2=A0=C2=A0324.737853] ath: phy1: Unable to initialize hardware; initiali=
zation status: -95
[=C2=A0=C2=A0324.745296] ath9k_htc: Failed to initialize the device
[=C2=A0=C2=A0324.755440] usb 2-1: ath9k_htc: USB layer deinitialized

2. The dongle is detected, the first few register reads succeed but registe=
r
reads fail as soon as the dongle enters power-saving mode:

[=C2=A0=C2=A0=C2=A068.070377] ath: phy0: Removed a station entry for VIF 0 =
(idx: 0)
[=C2=A0=C2=A0=C2=A068.078752] ath: phy0: Detach Interface at idx: 0
[=C2=A0=C2=A0=C2=A068.085260] ath: phy0: AWAKE -> FULL-SLEEP
[=C2=A0=C2=A0=C2=A068.090766] ath: phy0: FULL-SLEEP -> AWAKE
[=C2=A0=C2=A0=C2=A068.107512] ath: phy0: AWAKE -> FULL-SLEEP
[=C2=A0=C2=A0=C2=A068.112756] ath: phy0: Driver halt
[=C2=A0=C2=A0=C2=A068.117108] ath: phy0: Starting driver with initial chann=
el: 2412 MHz
[=C2=A0=C2=A0=C2=A068.123577] ath: phy0: FULL-SLEEP -> AWAKE
[=C2=A0=C2=A0=C2=A069.191104] ath: phy0: Timeout waiting for WMI command: W=
MI_REG_READ_CMDID
[=C2=A0=C2=A0=C2=A069.197987] ath: phy0: REGISTER READ FAILED: (0x7044, -11=
0)
[=C2=A0=C2=A0=C2=A070.231015] ath: phy0: Timeout waiting for WMI command: W=
MI_REG_RMW_CMDID

What could be causing these issues?

Cheers!

--=20
Paul Kocialkowski, developer of free digital technology at the lower levels

Website: https://www.paulk.fr/
Coding blog: https://code.paulk.fr/
Git repositories: https://git.paulk.fr/ https://git.code.paulk.fr/
--=-RLZuiHT6Vs/3HhSweCqi
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQIcBAABCAAGBQJYA9ylAAoJEIT9weqP7pUM92AQAIP9WMZAFRUXoiKGHjymdXYB
Izx0GuJYJuvi1Anym2YZbfHbxeCMke305YAHU3NScEuqodvD5SYhObTEnb/JlvVf
Cp4+EsSOOvG4SzHIfhygdcLGvdJcGyfm7QZ5pCy+OYRbTEAamxHEIHlOdr8MJSc9
8NsUdv4IHezGOkP6puFfIO9HfNxeBblDoia+6Q63fYpophC3+I1sFdu7tt707Eoz
ndkcxg6KLBTk+nlXFXGdqUS4BpgBrmhT9GERr9GOvIZeuoighC0OPjY1FWEwfudz
vjK9SzHOWkCGut2yQZUmOVbBvme19CYM59S0gPt9VqSrq76pZXCJWRuY5JTu6wMa
5UXbkcvMzFu0FWHCzO++rs1EORoue/GEQkj9kqxdtU+R36opyfjQhcAqCvAhtWIZ
yeC7GwRQWFjySx7Fz+pmR3TruHeNJo91zAtyJQzb7V0cyOhykmGfaP7VRe2RcCB4
CpI98dztrhJYdTn1a1kzogyv++bgx4la7LQi1gUBj3zlK+AIGTvMOcCV8bIaXtAc
YlaSe5jD7x0w9nOECTXyEemXN1qhjG9R1SZUlEMQ1SSMbiiSuR6jMJngrBPiHF9/
hghStzuJyZKKB5MmJX9bbB26KZe+Qk6QaVmLs1I40QdyoZwH3ANPw10QFbbmpoaA
E0Gpb62M8R4zlv0vv+XM
=4p3q
-----END PGP SIGNATURE-----

--=-RLZuiHT6Vs/3HhSweCqi--



--===============7269628793863262895==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7269628793863262895==--
