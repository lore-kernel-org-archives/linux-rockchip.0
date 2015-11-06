From: Mark Brown <broonie-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org>
Subject: Re: [PATCH v2 1/2] ASoC: codec: Inno codec driver for RK3036 SoC
Date: Fri, 6 Nov 2015 09:28:42 +0000
Message-ID: <20151106092842.GT18409@sirena.org.uk>
References: <1446717194-8572-1-git-send-email-zhengsq@rock-chips.com>
 <1446717194-8572-2-git-send-email-zhengsq@rock-chips.com>
 <20151105161311.GR18409@sirena.org.uk>
 <563C61A9.2080105@rock-chips.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============2859650098291885719=="
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <563C61A9.2080105-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Shunqian Zheng <zhengsq-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
Cc: mark.rutland-5wv7dgnIgG8@public.gmane.org, heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org, pawel.moll-5wv7dgnIgG8@public.gmane.org, ijc+devicetree-KcIKpvwj1kUDXYZnReoRVg@public.gmane.org, linux-kernel-u79uwXL29TY76Z2rM5mHXA@public.gmane.org, tiwai-IBi9RG/b67k@public.gmane.org, lgirdwood-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, perex-/Fr2/VpizcU@public.gmane.org, benzh-F7+t8E8rja9g9hUCZPvPmw@public.gmane.org, robh+dt-DgEjT+Ai2ygdnm+yROfE0A@public.gmane.org, galak-sgV2jX0FEOL9JmXXK+q4OQ@public.gmane.org, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
List-Id: linux-rockchip.vger.kernel.org


--===============2859650098291885719==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="v15hXiddb3kq3Bam"
Content-Disposition: inline


--v15hXiddb3kq3Bam
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 06, 2015 at 04:15:37PM +0800, Shunqian Zheng wrote:
> On 2015=E5=B9=B411=E6=9C=8806=E6=97=A5 00:13, Mark Brown wrote:
> >On Thu, Nov 05, 2015 at 05:53:13PM +0800, Shunqian Zheng wrote:

> >This looks like a simple boolean control rather than an enum - it looks
> >like it's just turning antipop on and off.

> It is a boolean control, but it takes 2 bits -- the value of "on" is b10 =
and
> b01 for "off".
> So I try to use VALUE_ENUM.

The presentation of the control to userspace needs to be a Switch, this
is probably going to need you to code something custom.

--v15hXiddb3kq3Bam
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJWPHLAAAoJECTWi3JdVIfQjAcH/0Fj5h17AbC5k1Tz8Hvh6BoK
H9eGlwWW9vIUqaQU7Qi+jsVNaFcfgDJNUOXeBpndeubzxD4pHlWRS9lgM3xsW+F6
kpWAg5Mqqqb24gnUwYxva2W45J5rQdA2V8dIs08jUUlmVjytqldIofSi3oZUecIv
vEmpKv3t7O228qO4RzKFJ5vFY3qQ26KcFvtazmBeCreLO1Q11NxeGX9RxtKm8FXs
sDpRqsZ/pyZ8i5GO+eZZLVUW2W5DJv88KoOmgi2v1jdHdsE1ToIr27QAtw4oWf4t
ehqcu4SleYXhMTaaiPp/OsvBzcHheclWB2rxCVQHDCgMOPYIQ2Q0EzUcTTJkqGo=
=vFLB
-----END PGP SIGNATURE-----

--v15hXiddb3kq3Bam--


--===============2859650098291885719==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============2859650098291885719==--
