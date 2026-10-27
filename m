Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EF2606A320
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 04:59:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=HKmHtE5K;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=collabora.com header.i=sebastian.reichel@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=iTgeNgkW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OrDhG3a60+MUNCmZHSdRVwFrttJZvdvwZCQy/SplZ8Y=; b=HKmHtE5KcIQpcvCYHxDrG33KXX
	g2d2n+wyDc6X/MBIlPop6El6HcNyI50aRyYt2BUV6ncGPRBS1K8BOkaKtXDpgGwB6+oL9bVBq4ZyJ
	k6AGpZIwd5ivVifykJ/Rwnf8MwZMpKxZaIZF+T0Y1oj/NvyZ8Bz2mGehQ00A2GMGBgLo7f5Fey2wL
	rr/yuH4wpCn8czfK/RXQAosbPHjeWlKC7vvj3Emz7/85QPTuUCGozCFExaEAjcC1YtPIJ94oA/kQw
	wSvyhPdOFICl1LJsqkQ9rtYAxiCDxLEGz+jC9bojJpgwFSrFEHQjQpyg78e9v7MRCeBBnRchFznEK
	vqyo7nQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLvkU-00000006J5o-3C7M;
	Wed, 28 Oct 2026 04:58:54 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLvkR-00000006J5U-0JHh
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 04:58:53 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1793163522; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=O5CHFE5Fj80njiA6oWhNJemejxeSylV8Gi2XYQkHCYfRIugxDPGnHNLhsS4wqp4SUttTE3taQ/dc/1GUl5YlvWfSnymdHGZSFnIf9MMr53uy+O6vYKrgbNkZKf2eHH0OmL4LHeHcY5S1fRdws9hMCgu/w/B9bCMfd0fHFugIdrg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1793163522; h=Content-Type:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=OUO6u9lHxIp5jWGKrEGttxrGgPfI29vxmJkzdRVVfDY=; 
	b=kemyADKiPHA7M2iGzLWgKn3gx0AmZ1tsEFfH0NwfVBqgGZVgqeftvGYvC0xd3as/gv1JOO4g3SjnrDV9beyAwrxCWLiom5wULc31jzHhGCnbIw6MyVOStb6rmQzLh7VaTL/zUzWTl6G4pInTBp27L2dsXeeaeocb3gYaTpBjlKE=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1793163522;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=Date:Date:From:From:To:To:Cc:Cc:Subject:Subject:Message-ID:MIME-Version:Content-Type:In-Reply-To:Message-Id:Reply-To;
	bh=OUO6u9lHxIp5jWGKrEGttxrGgPfI29vxmJkzdRVVfDY=;
	b=iTgeNgkWfgujCpwYxQ+7PmDb2ILK+AXt4vzGtX8g2TN9k69bROmh1KDm4BZwx3HQ
	1+Crb4cRTdO4SdvpL59ysOre7hiVd3VZfmflRaGBbqo8cS2POV8xkAMfcELri+im9UG
	d5RiGMqPrCzdACynmGch87BCJIj8H0OX5i3qg4C4=
Received: by smtp.zohomail.com with SMTPS id 1793163519353675.8261939490759;
	Tue, 27 Oct 2026 21:58:39 -0700 (PDT)
Received: by venus (Postfix, from userid 1000)
	id EC0231805DC; Tue, 27 Oct 2026 23:32:16 +0100 (CET)
Date: Tue, 27 Oct 2026 23:32:16 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: valery bokov <vlry.bkv@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org, 
	Simon Wright <simon@symple.nz>, Detlev Casanova <detlev.casanova@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal
 de-blocking edges y=4 and y=12
Message-ID: <auEjQ3mRw0xR1b7w@venus>
References: <CAN9BvprvMN+PX3nsktab6UDCn=Hy0mbh4WG6FUf6VFX1cuw9aw@mail.gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
In-Reply-To: <CAN9BvprvMN+PX3nsktab6UDCn=Hy0mbh4WG6FUf6VFX1cuw9aw@mail.gmail.com>
X-Zoho-Virus-Status: 1
X-Zoho-AV-Stamp: zmail-av-0.2.13.1.5.4/293.157.76
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_215851_146907_9C8D480D 
X-CRM114-Status: GOOD (  23.78  )
X-Spam-Score: -0.6 (/)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============4750343472651961604=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-2.3 required=3.0 tests=BAYES_00,DATE_IN_PAST_06_12,
	DKIMWL_WL_HIGH,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=no autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1


--===============4750343472651961604==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="2fao6gss7xz6es2n"
Content-Disposition: inline


--2fao6gss7xz6es2n
Content-Type: text/plain; protected-headers=v1; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
Subject: Re: [BUG] rkvdec-vdpu383-h264: wrong pixels at horizontal
 de-blocking edges y=4 and y=12
MIME-Version: 1.0

Hi,

On Tue, Oct 27, 2026 at 05:07:28PM +0100, valery bokov wrote:
> Hi all,
>=20
> A follow-up to my previous mail about 0x27b00618: I now know what it
> is, and there is a much larger speed-up behind it.
>=20
> What the register is:
> The Rockchip BSP (rockchip-linux kernel develop-6.1,
> drivers/video/rockchip/mpp/mpp_rkvdec2.c) maps the RK3576 decoder=E2=80=
=99s
> =E2=80=9Cregs=E2=80=9D bank at 0x27b00100 with size 0x600. Before every d=
ecode,
> rkvdec_vdpu38x_run() programs three =E2=80=9Ccache reference=E2=80=9D reg=
isters,
> offsets relative to that base:
>=20
> RKVDEC_REG_CLR_CACHE0_BASE   +0x510 (0x27b00610) =3D 1
> RKVDEC_REG_MAX_READS         +0x518 (0x27b00618) =3D 0x1c
> RKVDEC_REG_CACHE0_SIZE_BASE  +0x51c (0x27b0061c) =3D CACHEABLE_ACCESS |
>                                                    READ_ALLOCATE |
>                                                    LINE_SIZE_64_BYTES
>                                                  =3D 0x13
>=20
> So 0x618 is MAX_READS. Mainline maps only 0x100-0x5ff of this bank and
> writes none of the three, so they keep their power-up values. On our
> board 0x618 comes up as 0x0 or 0x2 (the slow/fast lottery from my last
> mail), and 0x61c as 0x1 or 0x111. The READ_ALLOCATE bit was clear in
> all eight dumps.
>=20
> Measurements:
> Same setup as before (Smatek T10PE / RK3576S, 6.18.34 with Simon=E2=80=99s
> priming patch, GStreamer 1.28.2 v4l2slh264dec). The full 654-frame
> 2688x1520 High-profile clip was decoded with sync=3Dfalse, all within
> one power-up held with power/control=3Don, changing the registers
> between runs. Each setting was run twice with identical results:
>=20
> 0x610  0x618  0x61c    ms/frame   fps
> -           0x0      -               65.4        15   (slow power-up,
> earlier runs)
> 0x0      0x2      0x111       22.5         44   (fast power-up)
> 0x0      0x1c    0x111       7.2           139
> 0x0      0x2      0x13        8.6           117
> 0x0      0x1c    0x13        3.6            ~278  (BSP values)
>=20
> 0x610 reads back 0 after the write, so it appears to be self-clearing.
> The fps figures include gst-launch start-up, so the fastest rows are
> slight underestimates.
>=20
> With the BSP values the decoder is about 18x faster than a slow
> power-up and about 6x faster than a fast one. MAX_READS and the
> read-allocate cache each contribute, and the effects combine. This may
> account for a good part of the mainline-vs-BSP gap noted in Simon=E2=80=
=99s
> FIX.md (4K ~30 fps vs ~112 fps).
>=20
> Correctness:
> For each register setting I hashed every decoded picture
> (v4l2slh264dec ! videoconvert ! NV12 ! fdsink | md5sum, so buffer
> padding cannot affect the hash). All five settings gave the same md5
> over the whole clip, and no kernel errors were logged. Two caveats:
>=20
> I cleared the cache once, while the BSP clears it before every frame.
> The clip still decoded identically, but I would not rely on that for
> other streams.
> The md5 shows the settings agree with each other; I did not compare
> against a software decoder in this run.
>=20
> Suggested fix (not written yet):
>=20
> Extend the VDPU383 =E2=80=9Cfunction=E2=80=9D reg range in the RK3576 DT =
to 0x600, as
> the BSP does; or map 0x27b00610-0x27b0061f separately.
>
> Program the three registers like rkvdec_vdpu38x_run() does: before
> every decode run (not only at runtime resume), with CLR_CACHE0 =3D 1,
> MAX_READS =3D 0x1c, and CACHE0_SIZE_BASE =3D 0x13.
>=20
> I=E2=80=99d appreciate a view from the maintainers on the preferred way t=
o map
> the range.

It is already mapped separately in DT, the driver just does not get
this extra range, since it does not use any registers in it. But this
should work:

void __iomem *cache =3D devm_platform_ioremap_resource_byname(pdev, "cache"=
);

> I=E2=80=99m happy to test patches on this board.

I suggest you write and test the patch and then send the patch :)
Ideally use https://b4.docs.kernel.org/ for this, which helps to
avoid common mistakes in the submission process.

Greetings,

-- Sebastian

--2fao6gss7xz6es2n
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAABCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAmrhJm0ACgkQ2O7X88g7
+ppJMA/9G0tRV8hDuQ2tfcOjtThDSGtvvtBlf2JqygDwqg/ER3k/1lPVHN9WjNqH
bs0Lc/PgIf46HZFimFdHpPHPB8NxDwdXOdFpspdRQ+KxxHEeW4zWUlcZ4mPI8l+o
yYSw4PaAtp0pdV9aSSpj7qO+IVtdJWeV7kVCynlj0oOIo8JwP6UtyLV61eQIQbTV
4DlMV3Xi77XnOwaOicC1MfSmwgz0JXABqzzSMl6/FHQ82iyOgR7KkcyLH+OXlUr1
HdSquu4KgG33dsw9jp5PR5BbreeeOrPCRUmqCd6Xn/cQdmlqN+jIHAwTToC6SCOC
IvzIo90CrTz4O8lJ/D3N9sXCp9708f/D0abpfOIE7imxOH9s6TlEFs/mEUGqk53u
US49qPFW3sTI2ccMt6z6lSt67bJKSgaMueSKR7Sz1ZcI0sbJdzuyltUoxfOPvKtm
klt60C4J2y5mBB62wL+1JhVEOJtbXdrpD52NE13l6BYxiqBdBMyNK7LTNLqwK2cL
l+fF0MzPb7C1rkLkZoU6W/WdjKKoS7iuHihjmfhhGcIF5cxmztFCc7corSComDXt
qf1/BAvdaDMiBdWeO+pgPT+n2FFm81+LryhrYTEzesyET60hDN7paxsdQ7I8xleF
vwgjpt3nY33g5XoKECqs+URWro11tcE007ydUDyDJiC2bWPb2VI=
=pEf5
-----END PGP SIGNATURE-----

--2fao6gss7xz6es2n--


--===============4750343472651961604==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============4750343472651961604==--

