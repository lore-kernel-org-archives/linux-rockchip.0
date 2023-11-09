Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67F11C4332F
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Nov 2023 07:30:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:CC:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hko7GFZZAFkcVgqgPHLNLtiMentRozVGz6hsgEMQ8EI=; b=HxrcNqA9SWju+Cm8Cg/TSFrfLc
	Nox+ropXIHxZb+fiWLF2B8k+CSu6BPh7q3aeUKm3QWIIhz4KED1FcvKioz0ij6nH1WTp6nIoijixn
	Msjp98ZDwabw2OnTD+BmJOnENjfWYB/BNINPqZQz9fk2tNynr6XAAGhgVdzYf+77nYudfquex0AbV
	4AG8JH9r37OYLlpC0pV167HjnSfKedal5pmH+VwG+NO+KR454T67wr/3houzUvN4R+9lgSfw2iViw
	Xvhxzx4o1+0nYB699Wn7hGTD7DVpaZZaEC2C0hoBgYi8SwVHzr6p9OOAJsAe+AWMSZZIQj6FLY6XD
	i3d0KKDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0zUV-005VTX-2J;
	Thu, 09 Nov 2023 07:30:15 +0000
Received: from esa.microchip.iphmx.com ([68.232.154.123])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0zUS-005VS8-1i;
	Thu, 09 Nov 2023 07:30:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1699515012; x=1731051012;
  h=date:from:to:cc:subject:message-id:references:
   mime-version:in-reply-to;
  bh=Dx8D95WyzuX2IuOEFmqgA8EyOzcTDNbo1MHb8a8iwMc=;
  b=1djwPdSwHtPxBOO1+0L+nEXwP9L4nd8IM4xV0uagZ6eAuPgFkdjLw/wF
   qam8vwHAxsrOqHQXVcSFZu5VFALGBlh9MNFErl7QGLDZuYMuB6dg83bex
   RoBAqJ5pGZC+GRvTjazqF3H70qVmm2xvmQXehEVAU9quCwaJ2eCygyMC8
   E90Z4IPtYiXGETkAIro9hzHOtOSo8ijS7WO2lK1G9GKP/gveAkk7Qaa1H
   aURrOwJoBzwbxANs4X2320bvBcPu50jSpXDK8aQEGHbMGlI4tnAKBlKO0
   16nMTrOV2ZsfKFaIg22eK91GiUd5q59RtXorbf8uRZmXlHSiKUNKapqMi
   Q==;
X-CSE-ConnectionGUID: AOkFoS2YSbmlI+bSBTzDlQ==
X-CSE-MsgGUID: HdNvzHRpRXCIEC/6FVIMRg==
X-ThreatScanner-Verdict: Negative
X-IronPort-AV: E=Sophos;i="6.03,288,1694761200"; 
   d="asc'?scan'208";a="11381001"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa4.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 09 Nov 2023 00:30:05 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.21; Thu, 9 Nov 2023 00:29:42 -0700
Received: from wendy (10.10.85.11) by chn-vm-ex03.mchp-main.com (10.10.85.151)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.21 via Frontend
 Transport; Thu, 9 Nov 2023 00:29:39 -0700
Date: Thu, 9 Nov 2023 07:29:13 +0000
From: Conor Dooley <conor.dooley@microchip.com>
To: zhangqing <zhangqing@rock-chips.com>
CC: Conor Dooley <conor@kernel.org>, <mturquette@baylibre.com>,
	<sboyd@kernel.org>, <kever.yang@rock-chips.com>, <heiko@sntech.de>,
	<robh+dt@kernel.org>, <krzysztof.kozlowski+dt@linaro.org>,
	<conor+dt@kernel.org>, <devicetree@vger.kernel.org>,
	<linux-arm-kernel@lists.infradead.org>, <linux-clk@vger.kernel.org>,
	<linux-rockchip@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
	<huangtao@rock-chips.com>, <andy.yan@rock-chips.com>, Sebastian Reichel
	<sebastian.reichel@collabora.com>
Subject: Re: [PATCH v5 3/4] dt-bindings: clock: rk3588: export PCLK_VO1GRF
 clk id
Message-ID: <20231109-send-pushchair-45b37551102a@wendy>
References: <20231108061822.4871-1-zhangqing@rock-chips.com>
 <20231108061822.4871-4-zhangqing@rock-chips.com>
 <20231108-donation-uncertain-c4d0f560c420@spud>
 <2e520a06-0ff1-76ef-2a72-ab6663738b45@rock-chips.com>
MIME-Version: 1.0
In-Reply-To: <2e520a06-0ff1-76ef-2a72-ab6663738b45@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231108_233012_658367_6210A9C2 
X-CRM114-Status: GOOD (  20.24  )
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
Content-Type: multipart/mixed; boundary="===============0133591533675943627=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

--===============0133591533675943627==
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="EOi6T8MEgEuAZcpd"
Content-Disposition: inline

--EOi6T8MEgEuAZcpd
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Thu, Nov 09, 2023 at 02:27:38PM +0800, zhangqing wrote:
> Hi:
>=20
> =E5=9C=A8 2023/11/8 20:01, Conor Dooley =E5=86=99=E9=81=93:
> > On Wed, Nov 08, 2023 at 02:18:21PM +0800, Elaine Zhang wrote:
> > > export PCLK_VO1GRF for DT.
> > >=20
> > > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > > ---
> > >   include/dt-bindings/clock/rockchip,rk3588-cru.h | 3 ++-
> > >   1 file changed, 2 insertions(+), 1 deletion(-)
> > >=20
> > > diff --git a/include/dt-bindings/clock/rockchip,rk3588-cru.h b/includ=
e/dt-bindings/clock/rockchip,rk3588-cru.h
> > > index 5790b1391201..50ba72980190 100644
> > > --- a/include/dt-bindings/clock/rockchip,rk3588-cru.h
> > > +++ b/include/dt-bindings/clock/rockchip,rk3588-cru.h
> > > @@ -733,8 +733,9 @@
> > >   #define ACLK_AV1_PRE			718
> > >   #define PCLK_AV1_PRE			719
> > >   #define HCLK_SDIO_PRE			720
> > > +#define PCLK_VO1GRF			721
> > > -#define CLK_NR_CLKS			(HCLK_SDIO_PRE + 1)
> > > +#define CLK_NR_CLKS			(PCLK_VO1GRF + 1)
> > This definition is part of the ABI, if it is safe to change it, then it
> > is safe to delete it.
> The new ID is to solve the niu clock dependency problem(Used in PATCH V5
> 4/4).This new ID will also be used in DTS in the future.
>=20
> CLK_NR_CLKS represents the number of clocks used by the
> drivers/clk/rockchip/clk-rkxxx.c. It is safe to modify it, but cannot del=
ete
> it.

Then delete it from the header and move it to clk-rkxxx.c

--EOi6T8MEgEuAZcpd
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRh246EGq/8RLhDjO14tDGHoIJi0gUCZUyKRQAKCRB4tDGHoIJi
0jvaAP9Mak6fvi3NGoWSCdxsuveQthMLhtNXZWoTZA3zgzYeKwD/Vopz5b98730K
4iZE1gFvKMmD5TaOp1tn1q9khTZRVA4=
=KvXP
-----END PGP SIGNATURE-----

--EOi6T8MEgEuAZcpd--


--===============0133591533675943627==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============0133591533675943627==--

