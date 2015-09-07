From: Thierry Reding <treding@nvidia.com>
Subject: Re: [PATCH 1/4] ARM: multi_v7_defconfig: Enable common Rockchip
 devices/busses
Date: Mon, 7 Sep 2015 13:27:38 +0200
Message-ID: <20150907112736.GA15787@ulmo.nvidia.com>
References: <1441570566-14001-1-git-send-email-sjoerd.simons@collabora.co.uk>
 <1441570566-14001-2-git-send-email-sjoerd.simons@collabora.co.uk>
 <55ED585B.9030009@osg.samsung.com>
 <1441621467.8778.26.camel@collabora.co.uk>
 <55ED6910.8010202@osg.samsung.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="AqsLC8rIMeq19msA"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <55ED6910.8010202@osg.samsung.com>
Content-Disposition: inline
Sender: linux-kernel-owner@vger.kernel.org
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: Sjoerd Simons <sjoerd.simons@collabora.co.uk>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Heiko Stuebner <heiko@sntech.de>, Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <k.kozlowski@samsung.com>, Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org, Russell King <linux@arm.linux.org.uk>, Alexandre Belloni <alexandre.belloni@free-electrons.com>, Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee.jones@linaro.org>, Olof Johansson <olof@lixom.net>, Ray Jui <rjui@broadcom.com>, Stephen Warren <swarren@nvidia.com>
List-Id: linux-rockchip.vger.kernel.org

--AqsLC8rIMeq19msA
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Sep 07, 2015 at 12:38:08PM +0200, Javier Martinez Canillas wrote:
> Hello Sjoerd,
>=20
> On 09/07/2015 12:24 PM, Sjoerd Simons wrote:
> > On Mon, 2015-09-07 at 11:26 +0200, Javier Martinez Canillas wrote:
> >> Hello Sjoerd,
> >>
> >> On 09/06/2015 10:16 PM, Sjoerd Simons wrote:
> >>> Enable Rockchip I2C, SPI, PWM, thermal drivers.
> >>>
> >>> Builtin are:
> >>>  * I2C as it often controls the pmic.
> >>
> >> Having I2C as a module will cause more probe deferrals due missing
> >> regulators and slow down the boot but it should not cause issues.
> >> Or am I missing something?
> >>
> >> In fact, I think even the PMIC could be built as a module.
> >=20
> > It could in principle. However as a lot of other drivers do need the
> > regulators provided by the pmic, they'll be deferred until that driver
> > is loaded. So e.g. with the i2c/pmic drivers as a module you cannot
> > boot to an NFS rootfs without using an initramfs.=20
> >
>=20
> Right, not needing an initramfs is certainly a good reason. If you could
> add something like that in the commit message of patches 1/4 and 2/4 that
> would be great.

I don't know. multi_v7_defconfig is primarily useful as a means to
quickly get a configuration that has most drivers enabled that most ARM
SoCs need. As such it's more of a convenience for build testing rather
than using it for booting a device.

I don't think the focus should be on optimizing for boot speed. Rather
if you do want to optimize for a device going through the trouble of
setting up an initial ramdisk isn't all that complicated. Even more so
because if you build drivers into the kernel and those drivers happen
to require firmware then people will be required to setup initial
ramdisks anyway.

Building too many drivers into the kernel has in the past often lead to
problems where all of a sudden the kernel became too big to fit into any
reasonably sized region of memory and cause all sorts of weird failures
in boot farms. Building everything as modules has the advantage that the
size of the zImage itself doesn't vary much, hence has less of a chance
to break boot farms.

There are quite a few drivers in multi_v7_defconfig that I suspect could
be built as loadable modules to decrease the size of the images that are
currently generated.

I understand that not everybody likes the additional ramdisk but, in my
opinion, that's what SoC-specific default configurations are good for.
We can use those to provide a base for developers where the focus is
ease of testability.

Thierry

--AqsLC8rIMeq19msA
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAABCAAGBQJV7XSkAAoJEN0jrNd/PrOh2/EP/26tfnMJp78FhP0p0oTapLE4
EFjeDfpc4SZpiJaIHWOvo/JcQg7CdlSttQotZiT1udWWshgNm/26Bw066HEr4wS/
UQelzgJxoGxHd5PpOOQ4AiTKO3WjfvmdLlldLAfnae2PaL8BjoWUevKbq9KNLNAR
qhW8AUJ+gAL3iaflR0yHINkcs10BQvwlEt4GwVcS+IQrhW/bGYnmAbe6/2SzRGun
yBavcAjxSk33pViPAgG2boGarrPlbIryXUYjGZJxTpfB2wYOKirPx8ckhkfq0zRp
HQxBlAlYkaWemLXrF8aKeRyDKs1oX1YHfvUI7ldBW4QC4g7OlYPdiW8kuLvAJ5OP
jULfAakEiOBuNZAo7/pncQVj3oTCM/aMrRm7gQI9ppb+Bn/UdAQ6O5ySkv5bpAVY
/ewkxGCnpSj1NL+y64AezYzXpSTCC2g2FGVj3z/QOt8npJTNfUwrUBZkwTY2kDOx
VaxW+obcPuaTVFkOSgnjP83HuIup6dqA8+Kmx020o1kRhWH5VxlwqrKqHhpqL8Rp
rY7kJNMcMJDAQAtxDic/DvshOg7th9B9GmCH1CTe3c/eJTXeYUUUeD82LwvpZ2y3
UtP3RCCVaouMUAtZWCrxsTBli84d41wtKo2jT4/V0LRHyiMflktErqOq7BMRdeVR
udN8HgA04GOgsfO5MCnB
=fnjB
-----END PGP SIGNATURE-----

--AqsLC8rIMeq19msA--
