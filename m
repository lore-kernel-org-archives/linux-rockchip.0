Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D6D6C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 25 Mar 2022 07:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DCF90n6/qmR/GBTFSDFUy7ywhtOVfRAvS/3dAU2q4bc=; b=aaKxo10Yryhw5s
	brsVpR6cy9rGErbM0Ob6VDLNtMQK4R++McSCDLSU2Vm6cqOBCfsU2+6M5n3+TQdGxaFVNAwHXfsz4
	Vd2i6JOYou6IjkNYKI0FOHLNBLMFfepU/89lDp2iAe4DLLehNvpqlPffZylkNITRinbLlAg41KCma
	O867M0sKuuDUoOFGPzVeAU8sVT6AmeU0vi8sEx03CSd6LQ2kPbHbxclPnoCtc008KjifxmTbqSEE3
	It1jSA1y542ZacZ7sz/vqph02R7AkNqu7T6F+w8Zq7t5E7aHNKbajA2h8gup2TL+7TqZQx9KnJ12J
	OX/R9HnlYpTBh/zUrOkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nXeYg-001MeA-LY; Fri, 25 Mar 2022 07:40:30 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nXeYc-001Mcr-TJ
 for linux-rockchip@lists.infradead.org; Fri, 25 Mar 2022 07:40:29 +0000
Received: by mail-wm1-x329.google.com with SMTP id
 123-20020a1c1981000000b0038b3616a71aso3856005wmz.4
 for <linux-rockchip@lists.infradead.org>; Fri, 25 Mar 2022 00:40:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=dnODPaJY/J+n3BkIXlCmsZJUqQLCC5eiwNXYnqqukBk=;
 b=bqhz2zWMvRkdTQBDj6ZAZIlYrvJPAcKBIWzKZeB+/CBBucdnqvI52PJthfpFSq+v5U
 gXqOV2I/8IDY7tAerS3IsF8S1vXomCZ1TkWfwbcmlpEgxTPxHvU+zVX3G2N0DTAcHLMJ
 xOUOaDwTZW9KOGyD2L0A4rv7QA0/M+fARHBAeMn3SCe/jeZPkLW3Dj3jiq3n+2iluKQE
 cAhJiVZqDkYed4GWxHxsLQw3DW4OsTsw3ovEleJL41j1eDpnGyH2ilSHffmU2sYL02Gm
 xR1hyx4LtKVBwt6pwVXtAWjX8dqRx7hdnRbdg5huBC4C2NnohFwIHSQmBkkuIzhrg8hK
 w5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=dnODPaJY/J+n3BkIXlCmsZJUqQLCC5eiwNXYnqqukBk=;
 b=L5iPVJWn6MF8AhmHS2OcM8GEhvPxdCAiKjzcEM2Rv2iZ1TGTMy+4O2ySJ9Ep6HIrzX
 zlhNRn7h3onspltmCtSRjMBNeDh4yTbyTcnseZLAQ96sc5/fjcbnLG2dByWeK2grrQOz
 qGaS2R5/1QkeKUoXi6Fb8HHCOMdyjptsMTSI/Oy6VBUJ+lCZO2RZA2nI8TLuDz53ELDd
 vKF1CIb5/gFIRXR2ciF7aluVUS7pc55oVOsi0xG9fEren74Ukrpvw/XlGDpfxFsu5VsC
 VXS25vVa308FMJuaZF2Wuo+DN9pPrMH6wIQVpRcuglhMV+wyKKGIY2G8HvYxjROxQThX
 erHw==
X-Gm-Message-State: AOAM532EK8sLdguM8ruuEkgtApv7z3py/wrgAtzYjvWiivVk4UtEbemm
 3DSVJckN3g6jTH6F8XWHed7OGQ==
X-Google-Smtp-Source: ABdhPJx8uYzQeFEFXzUdYuZYNV0f37cM+IUTkBkG2uijMoKDe1z93YfbCiKDAtPpG64eUg9/BDRz/Q==
X-Received: by 2002:a05:600c:34c5:b0:38c:30e3:1e6c with SMTP id
 d5-20020a05600c34c500b0038c30e31e6cmr18251767wmq.144.1648194024977; 
 Fri, 25 Mar 2022 00:40:24 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 q16-20020adfea10000000b00203e0735791sm4407043wrm.39.2022.03.25.00.40.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Mar 2022 00:40:24 -0700 (PDT)
Date: Fri, 25 Mar 2022 08:40:22 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Stephen Boyd <sboyd@kernel.org>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au, krzk+dt@kernel.org,
 mturquette@baylibre.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 17/26] clk: rk3399: use proper crypto0 name
Message-ID: <Yj1x5hJEKVL71JZ1@Red>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-18-clabbe@baylibre.com>
 <20220325004125.C80FDC340EC@smtp.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220325004125.C80FDC340EC@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220325_004027_037590_A0F276E2 
X-CRM114-Status: GOOD (  17.38  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Thu, Mar 24, 2022 at 05:41:23PM -0700, Stephen Boyd a =E9crit :
> Quoting Corentin Labbe (2022-03-21 13:07:30)
> > rk3399 has 2 crypto instance, reset for crypto1 is correctly named, but
> > crypto0 not.
> > Add a 0 to be consistent.
> =

> This is OK because nothing is using the define today?

Yes, nothing use this rk3399 define.

> =

> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  include/dt-bindings/clock/rk3399-cru.h | 6 +++---
> >  1 file changed, 3 insertions(+), 3 deletions(-)
> > =

> > diff --git a/include/dt-bindings/clock/rk3399-cru.h b/include/dt-bindin=
gs/clock/rk3399-cru.h
> > index 44e0a319f077..39169d94a44e 100644
> > --- a/include/dt-bindings/clock/rk3399-cru.h
> > +++ b/include/dt-bindings/clock/rk3399-cru.h
> > @@ -547,8 +547,8 @@
> >  #define SRST_H_PERILP0                 171
> >  #define SRST_H_PERILP0_NOC             172
> >  #define SRST_ROM                       173
> > -#define SRST_CRYPTO_S                  174
> > -#define SRST_CRYPTO_M                  175
> > +#define SRST_CRYPTO0_S                 174
> > +#define SRST_CRYPTO0_M                 175
> >  =

> >  /* cru_softrst_con11 */
> >  #define SRST_P_DCF                     176
> > @@ -556,7 +556,7 @@
> >  #define SRST_CM0S                      178
> >  #define SRST_CM0S_DBG                  179
> >  #define SRST_CM0S_PO                   180
> > -#define SRST_CRYPTO                    181
> > +#define SRST_CRYPTO0                   181
> =

> $ git grep SRST_CRYPTO
> Documentation/devicetree/bindings/crypto/rockchip-crypto.txt:           r=
esets =3D <&cru SRST_CRYPTO>;
> arch/arm/boot/dts/rk3288.dtsi:          resets =3D <&cru SRST_CRYPTO>;
> =

> Uh oh. Just don't change it and think about something else when it
> starts to feel inconsistent.

This is on rk3288, so not related to rk3399.
Even on the RK3399 TRM, all crypto clocks are called either crypto0 or cryp=
to1 (neither just crypto)

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
