Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC8A606A31E
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 10:47:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=P756B9tH
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7cjtkNOKAOJ0+G8HScqwGubOAZ60oIGnJWx5fipd81E=; b=P756B9tHQzNKmszGb1rlvObh+N
	w2ZvqZBI7/Z0qfiGe3Fa+MymI1T6Qkwy08PZxLM8RmYOx5bJYrBQkY5KLC4J2kup01lKKGmKytaHu
	Qa2FHYVxJ3T8wR4TQkL1TXD3loZCbNtJUYpWDWiKZzuKyti6Z3Lv0fC7PSPmj4669FkPfwaVcxo0S
	VDPoNIWGW483nLmAetFHOAVCARvYpssfaTieSuznP3ACb1DAygvI/WywzDdAPys1WGP+Y+efPOfSL
	RdxxrSqrpDY/+v+KpUSSCKDBv0NHS5hz7QbqN6WSmt1XSqfod0+SlFZDuqd0y8jLC+O14+svR1Di6
	grIa/V5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRa0-000000031tG-1qmH;
	Mon, 23 Nov 2026 10:47:24 +0000
Received: from smtp.gentoo.org ([2001:470:ea4a:1:5054:ff:fec7:86e4])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVRZx-000000031rv-3IH5
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 10:47:22 +0000
Received: from 6.1.6.a.a.4.0.0.3.b.d.7.8.f.c.9.c.6.e.0.c.6.2.0.0.b.8.0.1.0.0.2.ip6.arpa (unknown [IPv6:2001:8b0:26c:e6c:9cf8:7db3:4a:a616])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: chewi)
	by smtp.gentoo.org (Postfix) with ESMTPSA id BEE2F342BA3;
	Mon, 23 Nov 2026 10:47:18 +0000 (UTC)
Message-ID: <39bd808037e8eed09e40f7731a41e71e58d10070.camel@gentoo.org>
Subject: Re: PCI: dw-rockchip: Unable to boot Quartz64 Model B from NVMe
 since reset changes
From: James Le Cuirot <chewi@gentoo.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>, Manivannan Sadhasivam	
 <manivannan.sadhasivam@oss.qualcomm.com>, Bjorn Helgaas
 <bhelgaas@google.com>, 	linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Shawn Lin	 <shawn.lin@rock-chips.com>
Date: Mon, 23 Nov 2026 10:47:03 +0000
In-Reply-To: <av7Vvw5CpQo0gt1d@ryzen>
References: <08cc96c5171fc969b074371692e6d95d46eba60b.camel@gentoo.org>
	 <av7Vvw5CpQo0gt1d@ryzen>
User-Agent: Evolution 3.60.2 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_024721_864824_47CCFED7 
X-CRM114-Status: GOOD (  27.84  )
X-Spam-Score: -4.2 (----)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6002435820472435202=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============6002435820472435202==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-zwn4MhrHzB+5uyxiHqhx"


--=-zwn4MhrHzB+5uyxiHqhx
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2026-11-19 at 11:55 +0100, Niklas Cassel wrote:
> On Wed, Nov 18, 2026 at 04:03:11PM +0000, James Le Cuirot wrote:
> > Hello Wilfred,
> >=20
> > Unfortunately, since your commit "PCI: dw-rockchip: Implement
> > .reset_root_port() and use for link down" (b376b3ff9cb0527), I have bee=
n
> > basically unable to boot my Quartz64 Model B from NVMe. Sometimes if I =
wait
> > long enough, it will eventually work, albeit very slowly. If I revert t=
his
> > (and 4e9f69d08253) against 7.3.5, then it boots normally. Here is the r=
elevant
> > output.
> >=20
> > rockchip-dw-pcie 3c0000000.pcie: host bridge /pcie@fe260000 ranges:
> > rockchip-dw-pcie 3c0000000.pcie:       IO 0x00f4100000..0x00f41fffff ->=
 0x00f4100000
> > rockchip-dw-pcie 3c0000000.pcie:      MEM 0x00f4200000..0x00f5ffffff ->=
 0x00f4200000
> > rockchip-dw-pcie 3c0000000.pcie:      MEM 0x0300000000..0x033fffffff ->=
 0x0300000000
> > rockchip-dw-pcie 3c0000000.pcie: iATU: unroll T, 8 ob, 8 ib, align 64K,=
 limit 8G
> > rockchip-dw-pcie 3c0000000.pcie: PCIe Gen.2 x1 link up
>=20
> Here the link is reported as being up, at Gen2 speed.
>=20
>=20
> > rockchip-dw-pcie 3c0000000.pcie: PCI host bridge to bus 0000:00
> > pci_bus 0000:00: root bus resource [bus 00-0f]
> > pci_bus 0000:00: root bus resource [io  0x0000-0xfffff] (bus address [0=
xf4100000-0xf41fffff])
> > pci_bus 0000:00: root bus resource [mem 0xf4200000-0xf5ffffff]
> > pci_bus 0000:00: root bus resource [mem 0x300000000-0x33fffffff]
> > pci 0000:00:00.0: [1d87:3566] type 01 class 0x060400 PCIe Root Port
> > pci 0000:00:00.0: ROM [mem 0x00000000-0x0000ffff pref]
> > pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > pci 0000:00:00.0:   bridge window [io  0x0000-0x0fff]
> > pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff]
> > pci 0000:00:00.0:   bridge window [mem 0x00000000-0x000fffff 64bit pref=
]
> > pci 0000:00:00.0: supports D1 D2
> > pci 0000:00:00.0: PME# supported from D0 D1 D3hot
> > pci_bus 0000:01: busn_res: can not insert [bus 01-ff] under [bus 00-0f]=
 (conflicts with (null) [bus 00-0f])
> > pci 0000:01:00.0: [1e0f:0009] type 00 class 0x010802 PCIe Endpoint
> > pci 0000:01:00.0: BAR 0 [mem 0x00000000-0x00003fff 64bit]
> > pci 0000:01:00.0: 4.000 Gb/s available PCIe bandwidth, limited by 5.0 G=
T/s PCIe x1 link at 0000:00:00.0 (capable of 31.504 Gb/s with 8.0 GT/s PCIe=
 x4 link)
> > pci 0000:01:00.0: ASPM: default states L1
> > pci 0000:00:00.0: bridge window [mem 0xf4200000-0xf42fffff]: assigned
> > pci 0000:00:00.0: ROM [mem 0xf4300000-0xf430ffff pref]: assigned
> > pci 0000:01:00.0: BAR 0 [mem 0xf4200000-0xf4203fff 64bit]: assigned
> > pci 0000:00:00.0: PCI bridge to [bus 01-ff]
> > pci 0000:00:00.0:   bridge window [mem 0xf4200000-0xf42fffff]
> > pci_bus 0000:00: resource 4 [io  0x0000-0xfffff]
> > pci_bus 0000:00: resource 5 [mem 0xf4200000-0xf5ffffff]
> > pci_bus 0000:00: resource 6 [mem 0x300000000-0x33fffffff]
> > pci_bus 0000:01: resource 1 [mem 0xf4200000-0xf42fffff]
> > pcieport 0000:00:00.0: PME: Signaling with IRQ 86
> > pcieport 0000:00:00.0: AER: enabled with IRQ 95
> > pcieport 0000:00:00.0: Recovering Root Port due to Link Down
>=20
> Here you get a link down IRQ.
>=20
> Why is the link going down?
>=20
> You seem to have already trained in Gen2, and your board seems to only
> support Gen2 (so even if it was related to speed change - normally a
> speed should not trigger a link down - a speed change does not seem to
> happen here).
>=20
>=20
> Perhaps you can enable CONFIG_PCIE_DW_DEBUGFS and then look at
> /sys/kernel/debug/dwc_pcie_<dev>/
> to try to see if that gives any more information about why the link goes =
down.

Gave that a try but it revealed nothing. All the counter values were 0.

> Like Wilfred said, you could also try to disable ASPM.

Tried that. No difference, unfortunately.

> Also make sure that your device is attached to the slot properly (and
> hopefully you are not using any extender cables or similar).

Actually, I am using an extender, but only because it's practically impossi=
ble
not to with this board. The slot is positioned on the edge of the board,
pointing *outwards*. This does get joked about. However, it's worked perfec=
tly
fine like this for years until now.

> I guess we could also try to clear the interrupt just before unmasking it=
,
> to see if this is a spurious interrupt, something like:
>=20
> --- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> +++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
> @@ -692,7 +692,7 @@ static int rockchip_pcie_configure_rc(struct platform=
_device *pdev,
>         struct device *dev =3D &pdev->dev;
>         struct dw_pcie_rp *pp;
>         int irq, ret;
> -       u32 val;
> +       u32 reg, val;
>=20
>         if (!IS_ENABLED(CONFIG_PCIE_ROCKCHIP_DW_HOST))
>                 return -ENODEV;
> @@ -739,6 +739,9 @@ static int rockchip_pcie_configure_rc(struct platform=
_device *pdev,
>                 return ret;
>         }
>=20
> +       reg =3D rockchip_pcie_readl_apb(rockchip, PCIE_CLIENT_INTR_STATUS=
_MISC);
> +       rockchip_pcie_writel_apb(rockchip, reg, PCIE_CLIENT_INTR_STATUS_M=
ISC);
> +
>         /* unmask hot reset/link-down reset */
>         val =3D FIELD_PREP_WM16(PCIE_LINK_REQ_RST_NOT_INT, 0);
>         rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_MIS=
C);

The good news is that this worked! :) Please go ahead and commit it if you
believe it makes sense.

--=-zwn4MhrHzB+5uyxiHqhx
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEDBAAWCgCrFiEE6qETVs4yu3Lfuc3XsNCJZ6jP87QFAmsEGbEbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXRFQUExMTM1NkNFMzJCQjcyREZCOUNE
RDdCMEQwODk2N0E4Q0ZGM0I0ERxjaGV3aUBnZW50b28ub3JnAAoJELDQiWeoz/O0
S0oBAJL1uYNumrFXENhHAHLjXAjyueiaq2OQXs2HpV1F3d21AQDGNCfYDTDW3HV4
Wwe4cm/J8qVTPQfEi1K+i76PODvgDg==
=urbL
-----END PGP SIGNATURE-----

--=-zwn4MhrHzB+5uyxiHqhx--


--===============6002435820472435202==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============6002435820472435202==--

