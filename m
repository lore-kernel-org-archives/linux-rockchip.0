Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94CD4106ACD2
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 17:57:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tkWGh/GCgDXhi/o5ly64qZyTNej+ZBFw/p7/9XLqpeM=; b=fMa+9aqyaJk4ET4WlhF2/SWB3R
	PlZrr64GrijYYFPdm8qVMvJopBPEQ0NHpBMSo5qcZFsYhDdB0ImTU5vY63fHcAYDj5TwVWlvNpl+9
	03TY3/fK9HE6XU0P78QR6fsCM8kldGncD7/YEevq0Yn0+cg9inPpDIj1/L/lMmJyWhNQ2hs3yU2Uv
	EhEiTGEBQOBbqHCoo8L8D5cNF3KiIIoYDcb6zAtOykdRQ7GG2mEa1GIVYKeFH5sCUBWf3TxD7XSyr
	rVYqAnoPx9e75eQn7oCx41pDJS9lhDc36f4uI8o6F0uDqI0yZX2aZlXAJx4z6UUw607nTqxwAA+7W
	UbcLDFJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0kHQ-0000000EoCN-3o8L;
	Thu, 12 Mar 2026 17:57:04 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0kHO-0000000EoBN-2CXA
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Mar 2026 17:57:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B66A044326;
	Thu, 12 Mar 2026 17:57:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69BC5C4CEF7;
	Thu, 12 Mar 2026 17:56:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773338221;
	bh=n8tbDoaegI9nZrcwUj1qP9UTA3xZzlsGFevGXWPREIA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=hE8pKgrbVvgKUy70OM/dwNRdNFcsAr3w1fRIFXZJ+nYRusrZLimTHtDcUUr4tPP6L
	 7BiWK20rDWZBFgEFkctsfFypMVlvIo3FlDhLUCEhOxkW2h0CHmvXhjhT7dXRXemXki
	 CAd3rRNRGPwElaVvy2ximO9No3pNC1PVtsN6HRmJ6d94jA6inS6ppmADy5pbbxiJDx
	 zrKvP68qJneVUbU+Kyprtj95f4aqy/rOhCy6yqKWpdeQYI8fOOhBN/yHeaP4J1AnvE
	 Vh67CZq+Utw4srWPEFVustMuQDdGVeOr6DTRWxQua69Fmcrje56nB7LRK2iFw59dxe
	 v4SbyaDhezx/g==
Date: Thu, 12 Mar 2026 17:56:57 +0000
From: Conor Dooley <conor@kernel.org>
To: Bart Van Assche <bvanassche@acm.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>,
	"Martin K . Petersen" <martin.petersen@oracle.com>,
	Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] scsi: ufs: drockchip,rk3576-ufshc: dt-bindings: Add
 new mphy reset item
Message-ID: <20260312-twister-going-dffa25440fe8@spud>
References: <1773276707-24857-1-git-send-email-shawn.lin@rock-chips.com>
 <b9024d90-6df7-4a2c-85fe-7f5178e7d1cf@acm.org>
MIME-Version: 1.0
In-Reply-To: <b9024d90-6df7-4a2c-85fe-7f5178e7d1cf@acm.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_105702_586263_7AC22AB7 
X-CRM114-Status: GOOD (  14.05  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============7121409616221881263=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7121409616221881263==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="tHJwJyPGKV9Baxma"
Content-Disposition: inline


--tHJwJyPGKV9Baxma
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 12, 2026 at 07:27:37AM -0700, Bart Van Assche wrote:
>=20
> On 3/11/26 5:51 PM, Shawn Lin wrote:
> > Add the mphy reset property to the devicetree bindings for the Rockchip
> > RK3576 UFS host controller. The mphy reset signal is used to reset the
> > physical adapter. Resetting other components while leaving the mphy
> > unreset may occasionally prevent the UFS controller from successfully
> > linking up with the device.
>=20
> I see "drockchip" in the patch subject instead of "rockchip". Is that
> perhaps a typo?
>=20
The whole $subject is a bit of a mess I feel. "scsi: ufs: dt-bindings"
is fine, a few subsystems use that instead of "dt-bindings: scsi: ufs",
but putting the compatible/filename before "dt-bindings:" is not right.


--tHJwJyPGKV9Baxma
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCabL+aQAKCRB4tDGHoIJi
0trDAQDpMPE/2K3nkbJwA4CqqvVfyBPfDW2OEaSNZpABGF442wD/arcdxkDxcf48
URc8etfB/a+yIM/265RQOAyx87Qrowo=
=Owlm
-----END PGP SIGNATURE-----

--tHJwJyPGKV9Baxma--


--===============7121409616221881263==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7121409616221881263==--

