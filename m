Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ABDCDC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Nov 2023 17:36:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qftloC5z7YJRkp+WtN6oyuIcdLXcrUoHNpmP+twn6nc=; b=ZWlzzK3XlVTQ3t
	EtCcFFFcPyjwb+2dKMpHliyWglaRJoo57wazbRp/jyiU36xc7fYtX/cinColzqJeAHFomjq1PQv6p
	fMz8KmzFWJ1InwV4t0WbssEDZIfMcav2qOHUQ4MemdX5TJQx/pWTbmxaxQgqOPlEc5mtItq4r+Zsd
	eoqmWkPvqS2g2iGI5OhIsL76oLLfZWEYcFFjgDtS9HDz5LZfGDMjEdj1IFsss62IPbvfrEuEevQDp
	SASzhkbtKP9whTkwekz9twQNYn5YngoleTClZTno908Aou9uPX69drMahcvNSTrJ2t3ZuMhTGv7Me
	WfFsZ5yZIPcFcsJvd0aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Pzl-0025rn-28;
	Tue, 07 Nov 2023 17:36:09 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r0Pzg-0025ph-0W;
	Tue, 07 Nov 2023 17:36:08 +0000
Received: from i53875a93.versanet.de ([83.135.90.147] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r0PzS-0006PH-Sg; Tue, 07 Nov 2023 18:35:50 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Corentin Labbe <clabbe@baylibre.com>, davem@davemloft.net,
 herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
 mturquette@baylibre.com, p.zabel@pengutronix.de, robh+dt@kernel.org,
 sboyd@kernel.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: ricardo@pardini.net, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 5/6] reset: rockchip: secure reset must be used by SCMI
Date: Tue, 07 Nov 2023 18:35:49 +0100
Message-ID: <11278271.CDJkKcVGEf@diego>
In-Reply-To: <f1b24f19-c210-4f55-b40f-ab063e7eeb22@linaro.org>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-6-clabbe@baylibre.com>
 <f1b24f19-c210-4f55-b40f-ab063e7eeb22@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231107_093604_223268_E6C88331 
X-CRM114-Status: GOOD (  25.12  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 7. November 2023, 17:21:41 CET schrieb Krzysztof Kozlowski:
> On 07/11/2023 16:55, Corentin Labbe wrote:
> > While working on the rk3588 crypto driver, I loose lot of time
> > understanding why resetting the IP failed.
> > This is due to RK3588_SECURECRU_RESET_OFFSET being in the secure world,
> > so impossible to operate on it from the kernel.
> > All resets in this block must be handled via SCMI call.
> > 
> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  drivers/clk/rockchip/rst-rk3588.c             | 42 ------------
> >  .../dt-bindings/reset/rockchip,rk3588-cru.h   | 68 +++++++++----------
> 
> Please run scripts/checkpatch.pl and fix reported warnings. Some
> warnings can be ignored, but the code here looks like it needs a fix.
> Feel free to get in touch if the warning is not clear.
> 
> >  2 files changed, 34 insertions(+), 76 deletions(-)
> > 
> > diff --git a/drivers/clk/rockchip/rst-rk3588.c b/drivers/clk/rockchip/rst-rk3588.c
> > index e855bb8d5413..6556d9d3c7ab 100644
> > --- a/drivers/clk/rockchip/rst-rk3588.c
> > +++ b/drivers/clk/rockchip/rst-rk3588.c
> > @@ -16,9 +16,6 @@
> >  /* 0xFD7C8000 + 0x0A00 */
> >  #define RK3588_PHPTOPCRU_RESET_OFFSET(id, reg, bit) [id] = (0x8000*4 + reg * 16 + bit)
> >  
> > -/* 0xFD7D0000 + 0x0A00 */
> > -#define RK3588_SECURECRU_RESET_OFFSET(id, reg, bit) [id] = (0x10000*4 + reg * 16 + bit)
> > -
> >  /* 0xFD7F0000 + 0x0A00 */
> >  #define RK3588_PMU1CRU_RESET_OFFSET(id, reg, bit) [id] = (0x30000*4 + reg * 16 + bit)
> >  
> > @@ -806,45 +803,6 @@ static const int rk3588_register_offset[] = {
> >  	RK3588_PMU1CRU_RESET_OFFSET(SRST_P_PMU0IOC, 5, 4),
> >  	RK3588_PMU1CRU_RESET_OFFSET(SRST_P_GPIO0, 5, 5),
> >  	RK3588_PMU1CRU_RESET_OFFSET(SRST_GPIO0, 5, 6),
> > -
> > -	/* SECURECRU_SOFTRST_CON00 */
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_SECURE_NS_BIU, 0, 10),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SECURE_NS_BIU, 0, 11),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_SECURE_S_BIU, 0, 12),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SECURE_S_BIU, 0, 13),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_SECURE_S_BIU, 0, 14),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_CORE, 0, 15),
> > -
> > -	/* SECURECRU_SOFTRST_CON01 */
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_PKA, 1, 0),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_RNG, 1, 1),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_CRYPTO, 1, 2),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_CRYPTO, 1, 3),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_KEYLADDER_CORE, 1, 9),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_KEYLADDER_RNG, 1, 10),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_KEYLADDER, 1, 11),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_KEYLADDER, 1, 12),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_OTPC_S, 1, 13),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_OTPC_S, 1, 14),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_WDT_S, 1, 15),
> > -
> > -	/* SECURECRU_SOFTRST_CON02 */
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_T_WDT_S, 2, 0),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_BOOTROM, 2, 1),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_DCF, 2, 2),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_DCF, 2, 3),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_BOOTROM_NS, 2, 5),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_KEYLADDER, 2, 14),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_TRNG_S, 2, 15),
> > -
> > -	/* SECURECRU_SOFTRST_CON03 */
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_TRNG_NS, 3, 0),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_D_SDMMC_BUFFER, 3, 1),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SDMMC, 3, 2),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SDMMC_BUFFER, 3, 3),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_SDMMC, 3, 4),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_TRNG_CHK, 3, 5),
> > -	RK3588_SECURECRU_RESET_OFFSET(SRST_TRNG_S, 3, 6),
> >  };
> >  
> >  void rk3588_rst_init(struct device_node *np, void __iomem *reg_base)
> > diff --git a/include/dt-bindings/reset/rockchip,rk3588-cru.h b/include/dt-bindings/reset/rockchip,rk3588-cru.h
> > index d4264db2a07f..c0d08ae78cd5 100644
> > --- a/include/dt-bindings/reset/rockchip,rk3588-cru.h
> > +++ b/include/dt-bindings/reset/rockchip,rk3588-cru.h
> > @@ -716,39 +716,39 @@
> >  #define SRST_P_GPIO0			627
> >  #define SRST_GPIO0			628
> >  
> > -#define SRST_A_SECURE_NS_BIU		629
> > -#define SRST_H_SECURE_NS_BIU		630
> > -#define SRST_A_SECURE_S_BIU		631
> > -#define SRST_H_SECURE_S_BIU		632
> > -#define SRST_P_SECURE_S_BIU		633
> > -#define SRST_CRYPTO_CORE		634
> > -
> > -#define SRST_CRYPTO_PKA			635
> > -#define SRST_CRYPTO_RNG			636
> > -#define SRST_A_CRYPTO			637
> > -#define SRST_H_CRYPTO			638
> > -#define SRST_KEYLADDER_CORE		639
> > -#define SRST_KEYLADDER_RNG		640
> > -#define SRST_A_KEYLADDER		641
> > -#define SRST_H_KEYLADDER		642
> > -#define SRST_P_OTPC_S			643
> > -#define SRST_OTPC_S			644
> > -#define SRST_WDT_S			645
> > -
> > -#define SRST_T_WDT_S			646
> > -#define SRST_H_BOOTROM			647
> > -#define SRST_A_DCF			648
> > -#define SRST_P_DCF			649
> > -#define SRST_H_BOOTROM_NS		650
> > -#define SRST_P_KEYLADDER		651
> > -#define SRST_H_TRNG_S			652
> > -
> > -#define SRST_H_TRNG_NS			653
> > -#define SRST_D_SDMMC_BUFFER		654
> > -#define SRST_H_SDMMC			655
> > -#define SRST_H_SDMMC_BUFFER		656
> > -#define SRST_SDMMC			657
> > -#define SRST_P_TRNG_CHK			658
> > -#define SRST_TRNG_S			659
> > +#define SRST_A_SECURE_NS_BIU		10
> 
> NAK. You just broke all users.

If I'm reading the commit message correctly, all resets in that area
couldn't have any users to begin with, as the registers controlling them
are in the secure space, and need a higher exception level

So if  anything is trying to handle these resets, would end up with some
security exception right now.

Though I guess we might want to use different names and not reuse the
existing ones. scmi clocks use a SCMI_CLK_* id scheme, so maybe SCMI_SRST_* ?




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
