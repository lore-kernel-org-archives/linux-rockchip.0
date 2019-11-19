From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: Re: [PATCH v2 1/6] linux/log2.h: Add roundup/rounddown_pow_two64()
 family of functions
Date: Tue, 19 Nov 2019 12:30:47 +0100
Message-ID: <052d07fb4eb79b29dd58cab577d59bab6684329a.camel@suse.de>
References: <20191112155926.16476-1-nsaenzjulienne@suse.de>
         <20191112155926.16476-2-nsaenzjulienne@suse.de>
         <20191119111320.GP43905@e119886-lin.cambridge.arm.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg="pgp-sha256";
        protocol="application/pgp-signature"; boundary="=-JCAElqvKu605DtMG+rxz"
Return-path: <linux-kernel-owner@vger.kernel.org>
In-Reply-To: <20191119111320.GP43905@e119886-lin.cambridge.arm.com>
Sender: linux-kernel-owner@vger.kernel.org
To: Andrew Murray <andrew.murray@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>, Christoph Hellwig <hch@lst.de>, Marek Szyprowski <m.szyprowski@samsung.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-rdma@vger.kernel.org, maz@kernel.org, phil@raspberrypi.org, iommu@lists.linux-foundation.org, linux-rockchip@lists.infradead.org, f.fainelli@gmail.com, Bjorn Helgaas <bhelgaas@google.com>, linux-arm-kernel@lists.infradead.org, mbrugger@suse.com, netdev@vger.kernel.org, linux-kernel@vger.kernel.org, jeremy.linton@arm.com, Tom Joseph <tjoseph@cadence.com>, wahrenst@gmx.net, james.quinlan@broadcom.com, Robin Murphy <robin.murphy@arm.com>, "David S. Miller" <davem@davemloft.net>, Tariq Toukan <tariqt@mellanox.com>
List-Id: linux-rockchip.vger.kernel.org


--=-JCAElqvKu605DtMG+rxz
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Andrew, thanks for the review.
> > +/**
> > + * __roundup_pow_of_two64() - round 64bit value up to nearest power of=
 two
> > + * @n: value to round up
> > + */
> > +static inline __attribute__((const)) __u64 __roundup_pow_of_two64(__u6=
4 n)
>=20
> To be consistent with other functions in the same file (__ilog_u64) you m=
ay
> want to rename this to __roundup_pow_of_two_u64.

Sounds good to me.

> Also do you know why u64 is used in some places and __u64 in others?

That's unwarranted, it should be __u64 everywhere.

> > +{
> > +	return 1UL << fls64(n - 1);
>=20
> Does this need to be (and for the others):
>=20
> return 1ULL << fls64(n - 1);
>=20
> Notice that the PCI drivers you convert, all use 1ULL.

Noted

Regards,
Nicolas


--=-JCAElqvKu605DtMG+rxz
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEErOkkGDHCg2EbPcGjlfZmHno8x/4FAl3T0mcACgkQlfZmHno8
x/6BgQf9EPIQKoR6phksU0S8lgk9wqpGnUdxBbs82aHnTqsDgCrCDSnKXEYjrytg
JP7gToqXjInWjAuYTza/e4u4j4nQShrZSrX/Wo7n0g/iOPzIrKgFEwt/I8JlZnxn
eGSGgGDLXcFOIXzSy7aNsDEOHM1JS3Nan1xj+4vfNYb5bx3U7VlJuAAVsNZ7aLHu
1JSo56OTcTN6DejhWw1GzvlTsqzLUa41v8BUgW19GyOv185sXkbfJImn1hgkRuKj
JHu3GwUlrQkRrcAs0xqLRflUJHE8If7t+Xh+Su4ToLjWKyWvMu4fnPpwFXCyHhyG
T2k6eYGiEuyKMYHxJg9YLmvjNMdJuA==
=s9/D
-----END PGP SIGNATURE-----

--=-JCAElqvKu605DtMG+rxz--
