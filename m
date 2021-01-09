Return-Path: <SRS0=bvFq=GM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.2 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCFDC433DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 12:14:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0961D23118
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jan 2021 12:14:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0961D23118
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	MIME-Version:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=EcusYNXZ+z3a53E5/Y+HAL0bfojY9JKH910BtqCyZYM=; b=rOD
	PYKGqBivqpDRWl+DA5KpPISa30Ho5Db1JdAXizdGTEp//IqTkmdAfquf+4GTI3JfEByoxLMIv17JZ
	XTCczEcldLPXIBDng9mCRPpoi/ztABpxEROLQh9YesYBL1SRJxo1sWWFgqUTDvJiFzMkCtksAjnZ+
	RG8AVjK9jOfoGN3dlF//BDFojy+5Tcfy7Yb2aQesmBozZLX0KZZByJ7MakDfzEXk8YQC2vuxK8NyX
	wmJdDO9G7qBsZQxK4VUonHNYNbm0cbP11jLy58EIm9Q4OnQMbeyZbqafMG970quKiiY+9q5dH41Wm
	oeu1cjbQ1iTMoX5QG2ZXxZ3ys7aCR4Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kyD82-0005zL-RN; Sat, 09 Jan 2021 12:13:58 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyD80-0005xP-3u
 for linux-rockchip@lists.infradead.org; Sat, 09 Jan 2021 12:13:57 +0000
Received: by mail-pl1-x62f.google.com with SMTP id s15so7080607plr.9
 for <linux-rockchip@lists.infradead.org>; Sat, 09 Jan 2021 04:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:mime-version:content-disposition
 :user-agent; bh=zctrNyZGNRXLLOpyzhP9Lk7+QAPBbJgpD9SsDuS4des=;
 b=hL0JeNtjtg8dLCHAfWnPsW4hRMEPCLiV2gLD8rX2CpivUSriIMbUyJ7aavOZ29TAS0
 zMEqYpObsL1hUN9A8RsN3mWAQGDtY6jKQsXwrRlYQexh3wg+5YQyo8dPtO8UUvFY9vU/
 lHkjYqD8GvnLB42C3rreCWh7GPwl3EZbwJ3QLTOwZd9efOlphNfKAxGmbegBLTi/beuc
 d1Pl1xDjMVMybYtZ5AWP+q5KqTnRqlfh/U8IU/x5XazI2UXkW1jLwqswn54OnfAZEMwI
 811PSx/O2mWD0lCEWp5w+ZcTswMIjXFtqxnPsleiBNtmjMZMteZKjor5Wz3VGCmuVtRw
 q1Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=zctrNyZGNRXLLOpyzhP9Lk7+QAPBbJgpD9SsDuS4des=;
 b=ojCGe3dPHwmlqMpQFSMG5BmTM151CZcW9TYZaFdp+utztQToA51RR4jWspm78IDtew
 yRS3rcAaBUv2zFz8vVkTXR9U+M24jpa6IEEhLFP7mlpt7snlk+Dq9WBNqXBNXcN+UxT9
 OGzZfit1hXuOEyaZRYaOzhVyan90XPwyzWjiDxqZwxSnVLxVqGnGWG3R1v25sZQIN8f6
 jctfqqhwxO8OPROdYIhI5MLIC4Kkn28JnqhRyua0WmDlu05L0aQ2cQdMv8zDlPjqGUqj
 QxZ/ZkcAOgoOZ1vz/K5SjVrpSJcTH0AgOyM00tBtJqGDVHuve33aRx5M7zsoUAuW/2bl
 0ifg==
X-Gm-Message-State: AOAM531qFL5hCppENINLLiANNFRYG0nSY8N2Se/M6KGTMGTlFw9IlWcc
 pdouXs/R6bivS5ZdX4ZvcW0=
X-Google-Smtp-Source: ABdhPJyiNs/So4oCQvhV3GtWBG4CWOV4A/nDoh4W8LIPRbOqFzQZVT3kmCWWBGdZBdxpck1qlt+d/w==
X-Received: by 2002:a17:902:ac98:b029:da:cd0f:b6a4 with SMTP id
 h24-20020a170902ac98b02900dacd0fb6a4mr8378468plr.71.1610194432580; 
 Sat, 09 Jan 2021 04:13:52 -0800 (PST)
Received: from localhost ([183.83.253.110])
 by smtp.gmail.com with ESMTPSA id r123sm11963982pfr.68.2021.01.09.04.13.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 09 Jan 2021 04:13:51 -0800 (PST)
Date: Sat, 9 Jan 2021 17:43:49 +0530
From: Sri Laasya Nutheti <nutheti.laasya@gmail.com>
To: Ezequiel Garcia <ezequiel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3] staging: media: rkvdec: rkvdec.c: Use semicolon in place
 of comma
Message-ID: <20210109121349.wuf7xpkqicjadlnf@nutheti>
MIME-Version: 1.0
User-Agent: NeoMutt/20171215
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210109_071356_191837_438081A2 
X-CRM114-Status: GOOD (  12.28  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8876002031842098254=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8876002031842098254==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="zugsqpbzv55qcogp"
Content-Disposition: inline


--zugsqpbzv55qcogp
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Line 146 had a comma in place of a semicolon. Fix it.

Signed-off-by: Sri Laasya Nutheti <nutheti.laasya@gmail.com>
---
v3: Corrected email recipients
 drivers/staging/media/rkvdec/rkvdec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/media/rkvdec/rkvdec.c b/drivers/staging/media/=
rkvdec/rkvdec.c
index aa4f8c287618..d3eb81ee8dc2 100644
--- a/drivers/staging/media/rkvdec/rkvdec.c
+++ b/drivers/staging/media/rkvdec/rkvdec.c
@@ -143,7 +143,7 @@ static void rkvdec_reset_fmt(struct rkvdec_ctx *ctx, st=
ruct v4l2_format *f,
 	memset(f, 0, sizeof(*f));
 	f->fmt.pix_mp.pixelformat =3D fourcc;
 	f->fmt.pix_mp.field =3D V4L2_FIELD_NONE;
-	f->fmt.pix_mp.colorspace =3D V4L2_COLORSPACE_REC709,
+	f->fmt.pix_mp.colorspace =3D V4L2_COLORSPACE_REC709;
 	f->fmt.pix_mp.ycbcr_enc =3D V4L2_YCBCR_ENC_DEFAULT;
 	f->fmt.pix_mp.quantization =3D V4L2_QUANTIZATION_DEFAULT;
 	f->fmt.pix_mp.xfer_func =3D V4L2_XFER_FUNC_DEFAULT;
--=20
2.17.1


--zugsqpbzv55qcogp
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQGzBAEBCgAdFiEEXx10aON5ycvuBoyzehMF4uTokeMFAl/5nf0ACgkQehMF4uTo
keOvJwwAkBRovj9NfA2rSfBazuDwku9DOkGh5se9ma/zz7Lcs1iva7OE+p8HG2/e
m0SP+kH+mdKJMt2oxLwHfSNppCE+n3YImInVgkhnOT86cO6YQRGjcy/ONHSFFWVW
YyUSSMKOgAtPweSoeo2+cQHg4v2Pjf4bajgfqArXSel8ayhWgqJFB1cyxUwtekxl
lhG7vfOTUk2c9ySJz+T8uKQnWkxg6dzrSgHfCh4Ho5ylwKMRos3KtsG9REI6Uly4
qdGvMmfkOShpPdhYZq00ZMrTzZ67JPqPrySBjdtBtK6zDJnYZZfO91GgRsL+AmLT
fVuGWrd47JwuIOwnVabKQHZYdu4J2EnbH6t1unQRYIhHx4Illd7XOxn0KYCd1QbV
U9f+JcAIkHu97NNl7ZhjtJwoiCewwzoo+Nm0RqooHXZ6ZyXRcXr7k961n6UHtjNE
JXBEGLkA3LVojJv3tNcPNtin4sRpKCceaK3iBWE8UGqDXAHHnk+4TNT3cMHXFYAa
5CzjVree
=E7I4
-----END PGP SIGNATURE-----

--zugsqpbzv55qcogp--


--===============8876002031842098254==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8876002031842098254==--

