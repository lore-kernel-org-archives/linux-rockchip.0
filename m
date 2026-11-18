Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58935606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Nov 2026 22:31:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=RALd3KUJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:References:In-Reply-To:Date:Cc:To:From:Subject:Message-ID:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=WQ4LTnIgHf0fg5Nfr2g7ksQEWaeV4hh50ffk9hvPgvo=; b=RALd3KUJuDf75vbCNeLG6i6X+Y
	t+U8ByGWosTSKtXPx23Ah1wPXIUZqlJILweBldn/yGgflcgfcBh48pBz6pDyMxIIFOCIJJg3KJr+B
	DPtb1adJHGQGN2f2qMyPRJVWly/7ZiXp9jhd4dp4hGjZiT/lxtAwqtZFDVufCrDIJP2URE2uto301
	u2u59fjWikJ3cAFW3ZZv/Tj+qRmjNOlBUJk/uipvL7MgA6Ii5r8S4lqvs6S90hiXGVCuDiLGJA3cX
	AneU52+Ik5plzJPFio0AE4OS4exWJprFHdsnl0WnpGnjXULRMy70B5K/mXHf1ZVFUeq9h/Y1BnmvD
	Z9jTuyoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xToBD-0000000APOM-2050;
	Wed, 18 Nov 2026 22:31:03 +0000
Received: from smtp.gentoo.org ([2001:470:ea4a:1:5054:ff:fec7:86e4])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xToBA-0000000APNZ-2Pfq
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Nov 2026 22:31:02 +0000
Received: from 9.b.8.c.1.6.8.7.6.b.f.2.6.1.2.4.c.6.e.0.c.6.2.0.0.b.8.0.1.0.0.2.ip6.arpa (unknown [IPv6:2001:8b0:26c:e6c:4216:2fb6:7861:c8b9])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: chewi)
	by smtp.gentoo.org (Postfix) with ESMTPSA id 4045E342592;
	Wed, 18 Nov 2026 22:30:58 +0000 (UTC)
Message-ID: <a112657de590aefc2b306ebc9e6771cbaa76ae82.camel@gentoo.org>
Subject: Re: PCI: dw-rockchip: Unable to boot Quartz64 Model B from NVMe
 since reset changes
From: James Le Cuirot <chewi@gentoo.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Wilfred Mallawa <wilfred.mallawa@wdc.com>, Manivannan Sadhasivam	
 <manivannan.sadhasivam@oss.qualcomm.com>, Bjorn Helgaas
 <bhelgaas@google.com>, 	linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Shawn Lin	 <shawn.lin@rock-chips.com>
Date: Wed, 18 Nov 2026 22:30:45 +0000
In-Reply-To: <av3WcJyt_tRXNj2l@ryzen>
References: <08cc96c5171fc969b074371692e6d95d46eba60b.camel@gentoo.org>
	 <av3WcJyt_tRXNj2l@ryzen>
User-Agent: Evolution 3.60.2 
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261118_143100_645356_52EDC3D1 
X-CRM114-Status: GOOD (  14.44  )
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
Content-Type: multipart/mixed; boundary="===============7323173220072293614=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============7323173220072293614==
Content-Type: multipart/signed; micalg="pgp-sha512";
	protocol="application/pgp-signature"; boundary="=-ebQo5WGk+sMw/9Rs5xM+"


--=-ebQo5WGk+sMw/9Rs5xM+
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 2026-11-18 at 17:46 +0100, Niklas Cassel wrote:
> Hello James,
>=20
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
>=20
> There are some dwc-rockchip fixes queued on the following branch:
> https://git.kernel.org/pub/scm/linux/kernel/git/pci/pci.git/log/?h=3Dcont=
roller/dwc-rockchip
>=20
> It would be interesting to see if using this branch makes a differnce.
>=20
>=20
> Kind regards,
> Niklas

Thanks for the suggestion. I rebased these against 7.3.5 (with 85203c831a8)=
,
but sadly it made no difference.

--=-ebQo5WGk+sMw/9Rs5xM+
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part

-----BEGIN PGP SIGNATURE-----

iQEDBAAWCgCrFiEE6qETVs4yu3Lfuc3XsNCJZ6jP87QFAmr+JxUbFIAAAAAABAAO
bWFudTIsMi41KzEuMTIsMiwyXxSAAAAAAC4AKGlzc3Vlci1mcHJAbm90YXRpb25z
Lm9wZW5wZ3AuZmlmdGhob3JzZW1hbi5uZXRFQUExMTM1NkNFMzJCQjcyREZCOUNE
RDdCMEQwODk2N0E4Q0ZGM0I0ERxjaGV3aUBnZW50b28ub3JnAAoJELDQiWeoz/O0
a4UA/2QTkaQulxaeDprLbiSZip0cFicH+VDzRL03fNgAgMvuAP4nCgw1WMjlWfmE
ycubVwztY7P4xsIOejROvHY5BecKBg==
=Df3U
-----END PGP SIGNATURE-----

--=-ebQo5WGk+sMw/9Rs5xM+--


--===============7323173220072293614==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7323173220072293614==--

