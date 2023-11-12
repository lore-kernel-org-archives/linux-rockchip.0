Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BB79C4332F
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Nov 2023 20:27:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hjr9oB7VyseD9ZT1heawuN9syQt6yos/OUxYliomY/w=; b=XRU+VxuxPsSttj
	f4O5kx3j4yOTVnYqsv84RN2YLMxehIISBNimB5Rc97x1DYPIfSpQTeiEdy9MtQDd1TIB+OnCa4/xB
	SJyFeaVmQsBRx5Dono8IMqFTcOdAWOPSSY05RC+B8z/B4jDMJX6oQIHIxGr0g8q9xBt4P6Jijd3OA
	1vYcaH5dvJI33LUPEeXXvTCpjUFPZKH3hVBQeWgbbyrpwEMcg+EDy2tErvyqmvpWD6DeEulbajJGS
	JwYXGRZ55Gi/cahrgTx3C7xFcPDkTlDYJCIwmU0rzBRvvxtc9KVBmSEZNZN+SYHASiSjTg8tQsypJ
	3+cUbo8jn07q9uetxXMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2H2e-00Cl5C-0l;
	Sun, 12 Nov 2023 20:26:48 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2H2Z-00Cl4i-32;
	Sun, 12 Nov 2023 20:26:46 +0000
Received: from mercury (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 70DC46607285;
	Sun, 12 Nov 2023 20:26:41 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1699820801;
	bh=XhOtr6qNHJqXwERbWW6J7QMBUzqPDndZpiOWJCbArdI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=c7awyXEHNjcpI2tAMCar+Opag+p/HznWijBw6N31Rr1ujGTxjbivj6GBWZTelHFCH
	 QBypSn3o68uxcidLeZiik4kn5a/nE3xbb9ySebgXpGgUV6MYM54mFrdymEN2DfcdYo
	 nNzJye35cz4g6pHLFMproCh4tbLCW/OAj8Y8D2gZzDGRoOKNe4+Dv+rDmsEWer+BGY
	 ndga6qNX9LPNrq9wI2u+HC6e+ux+X4eSlWFObC6tihOXpZQdd9LoHPAY0GYvE4u5i4
	 REvp+XVzWTsdHexKDvSRvzwWOWcsbj1f50774f1KhinWn6Bv0JMXM9AsR8/eKsF9f+
	 2aYBRk072c5yQ==
Received: by mercury (Postfix, from userid 1000)
	id 80F43106323E; Sun, 12 Nov 2023 21:26:39 +0100 (CET)
Date: Sun, 12 Nov 2023 21:26:39 +0100
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
	Corentin Labbe <clabbe@baylibre.com>, davem@davemloft.net,
	herbert@gondor.apana.org.au, krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com, p.zabel@pengutronix.de, robh+dt@kernel.org,
	sboyd@kernel.org, ricardo@pardini.net, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 5/6] reset: rockchip: secure reset must be used by SCMI
Message-ID: <20231112202639.obvmnjlt4mpa52qr@mercury.elektranox.org>
References: <20231107155532.3747113-1-clabbe@baylibre.com>
 <20231107155532.3747113-6-clabbe@baylibre.com>
 <f1b24f19-c210-4f55-b40f-ab063e7eeb22@linaro.org>
 <11278271.CDJkKcVGEf@diego>
 <d82865bc-29a7-4150-876e-489e0d797699@linaro.org>
 <20231111205115.6hkhjj37ypeq45ax@mercury.elektranox.org>
 <4f86c7da-5589-4451-89cb-739b97b67170@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4f86c7da-5589-4451-89cb-739b97b67170@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231112_122644_274581_84CE7BA1 
X-CRM114-Status: GOOD (  42.04  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Sat, Nov 11, 2023 at 10:28:59PM +0100, Krzysztof Kozlowski wrote:
> On 11/11/2023 21:51, Sebastian Reichel wrote:
> > Hi,
> > =

> > On Tue, Nov 07, 2023 at 06:45:03PM +0100, Krzysztof Kozlowski wrote:
> >> On 07/11/2023 18:35, Heiko St=FCbner wrote:
> >>> Am Dienstag, 7. November 2023, 17:21:41 CET schrieb Krzysztof Kozlows=
ki:
> >>>> On 07/11/2023 16:55, Corentin Labbe wrote:
> >>>>> While working on the rk3588 crypto driver, I loose lot of time
> >>>>> understanding why resetting the IP failed.
> >>>>> This is due to RK3588_SECURECRU_RESET_OFFSET being in the secure wo=
rld,
> >>>>> so impossible to operate on it from the kernel.
> >>>>> All resets in this block must be handled via SCMI call.
> >>>>>
> >>>>> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> >>>>> ---
> >>>>>  drivers/clk/rockchip/rst-rk3588.c             | 42 ------------
> >>>>>  .../dt-bindings/reset/rockchip,rk3588-cru.h   | 68 +++++++++------=
----
> >>>>
> >>>> Please run scripts/checkpatch.pl and fix reported warnings. Some
> >>>> warnings can be ignored, but the code here looks like it needs a fix.
> >>>> Feel free to get in touch if the warning is not clear.
> >>>>
> >>>>>  2 files changed, 34 insertions(+), 76 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/clk/rockchip/rst-rk3588.c b/drivers/clk/rockch=
ip/rst-rk3588.c
> >>>>> index e855bb8d5413..6556d9d3c7ab 100644
> >>>>> --- a/drivers/clk/rockchip/rst-rk3588.c
> >>>>> +++ b/drivers/clk/rockchip/rst-rk3588.c
> >>>>> @@ -16,9 +16,6 @@
> >>>>>  /* 0xFD7C8000 + 0x0A00 */
> >>>>>  #define RK3588_PHPTOPCRU_RESET_OFFSET(id, reg, bit) [id] =3D (0x80=
00*4 + reg * 16 + bit)
> >>>>>  =

> >>>>> -/* 0xFD7D0000 + 0x0A00 */
> >>>>> -#define RK3588_SECURECRU_RESET_OFFSET(id, reg, bit) [id] =3D (0x10=
000*4 + reg * 16 + bit)
> >>>>> -
> >>>>>  /* 0xFD7F0000 + 0x0A00 */
> >>>>>  #define RK3588_PMU1CRU_RESET_OFFSET(id, reg, bit) [id] =3D (0x3000=
0*4 + reg * 16 + bit)
> >>>>>  =

> >>>>> @@ -806,45 +803,6 @@ static const int rk3588_register_offset[] =3D {
> >>>>>  	RK3588_PMU1CRU_RESET_OFFSET(SRST_P_PMU0IOC, 5, 4),
> >>>>>  	RK3588_PMU1CRU_RESET_OFFSET(SRST_P_GPIO0, 5, 5),
> >>>>>  	RK3588_PMU1CRU_RESET_OFFSET(SRST_GPIO0, 5, 6),
> >>>>> -
> >>>>> -	/* SECURECRU_SOFTRST_CON00 */
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_SECURE_NS_BIU, 0, 10),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SECURE_NS_BIU, 0, 11),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_SECURE_S_BIU, 0, 12),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SECURE_S_BIU, 0, 13),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_SECURE_S_BIU, 0, 14),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_CORE, 0, 15),
> >>>>> -
> >>>>> -	/* SECURECRU_SOFTRST_CON01 */
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_PKA, 1, 0),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_CRYPTO_RNG, 1, 1),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_CRYPTO, 1, 2),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_CRYPTO, 1, 3),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_KEYLADDER_CORE, 1, 9),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_KEYLADDER_RNG, 1, 10),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_KEYLADDER, 1, 11),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_KEYLADDER, 1, 12),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_OTPC_S, 1, 13),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_OTPC_S, 1, 14),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_WDT_S, 1, 15),
> >>>>> -
> >>>>> -	/* SECURECRU_SOFTRST_CON02 */
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_T_WDT_S, 2, 0),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_BOOTROM, 2, 1),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_A_DCF, 2, 2),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_DCF, 2, 3),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_BOOTROM_NS, 2, 5),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_KEYLADDER, 2, 14),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_TRNG_S, 2, 15),
> >>>>> -
> >>>>> -	/* SECURECRU_SOFTRST_CON03 */
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_TRNG_NS, 3, 0),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_D_SDMMC_BUFFER, 3, 1),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SDMMC, 3, 2),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_H_SDMMC_BUFFER, 3, 3),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_SDMMC, 3, 4),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_P_TRNG_CHK, 3, 5),
> >>>>> -	RK3588_SECURECRU_RESET_OFFSET(SRST_TRNG_S, 3, 6),
> >>>>>  };
> >>>>>  =

> >>>>>  void rk3588_rst_init(struct device_node *np, void __iomem *reg_bas=
e)
> >>>>> diff --git a/include/dt-bindings/reset/rockchip,rk3588-cru.h b/incl=
ude/dt-bindings/reset/rockchip,rk3588-cru.h
> >>>>> index d4264db2a07f..c0d08ae78cd5 100644
> >>>>> --- a/include/dt-bindings/reset/rockchip,rk3588-cru.h
> >>>>> +++ b/include/dt-bindings/reset/rockchip,rk3588-cru.h
> >>>>> @@ -716,39 +716,39 @@
> >>>>>  #define SRST_P_GPIO0			627
> >>>>>  #define SRST_GPIO0			628
> >>>>>  =

> >>>>> -#define SRST_A_SECURE_NS_BIU		629
> >>>>> -#define SRST_H_SECURE_NS_BIU		630
> >>>>> -#define SRST_A_SECURE_S_BIU		631
> >>>>> -#define SRST_H_SECURE_S_BIU		632
> >>>>> -#define SRST_P_SECURE_S_BIU		633
> >>>>> -#define SRST_CRYPTO_CORE		634
> >>>>> -
> >>>>> -#define SRST_CRYPTO_PKA			635
> >>>>> -#define SRST_CRYPTO_RNG			636
> >>>>> -#define SRST_A_CRYPTO			637
> >>>>> -#define SRST_H_CRYPTO			638
> >>>>> -#define SRST_KEYLADDER_CORE		639
> >>>>> -#define SRST_KEYLADDER_RNG		640
> >>>>> -#define SRST_A_KEYLADDER		641
> >>>>> -#define SRST_H_KEYLADDER		642
> >>>>> -#define SRST_P_OTPC_S			643
> >>>>> -#define SRST_OTPC_S			644
> >>>>> -#define SRST_WDT_S			645
> >>>>> -
> >>>>> -#define SRST_T_WDT_S			646
> >>>>> -#define SRST_H_BOOTROM			647
> >>>>> -#define SRST_A_DCF			648
> >>>>> -#define SRST_P_DCF			649
> >>>>> -#define SRST_H_BOOTROM_NS		650
> >>>>> -#define SRST_P_KEYLADDER		651
> >>>>> -#define SRST_H_TRNG_S			652
> >>>>> -
> >>>>> -#define SRST_H_TRNG_NS			653
> >>>>> -#define SRST_D_SDMMC_BUFFER		654
> >>>>> -#define SRST_H_SDMMC			655
> >>>>> -#define SRST_H_SDMMC_BUFFER		656
> >>>>> -#define SRST_SDMMC			657
> >>>>> -#define SRST_P_TRNG_CHK			658
> >>>>> -#define SRST_TRNG_S			659
> >>>>> +#define SRST_A_SECURE_NS_BIU		10
> >>>>
> >>>> NAK. You just broke all users.
> >>>
> >>> If I'm reading the commit message correctly, all resets in that area
> >>> couldn't have any users to begin with, as the registers controlling t=
hem
> >>> are in the secure space, and need a higher exception level
> >>>
> >>> So if  anything is trying to handle these resets, would end up with s=
ome
> >>> security exception right now.
> >>>
> >>> Though I guess we might want to use different names and not reuse the
> >>> existing ones. scmi clocks use a SCMI_CLK_* id scheme, so maybe SCMI_=
SRST_* ?
> >>
> >> I don't quite get what the patch wants to achieve. Why dropping driver
> >> support for given reset ID is connected with changing the value of
> >> binding for given reset?
> >>
> >> What is the point of this define SRST_A_SECURE_NS_BIU 10?
> > =

> > This is about two different reset controllers. The IDs defined here
> > are used by the operating system to access the correct registers.
> > The kernel has a LUT from the ID to a register addresses, which is
> > something you asked for during upstreaming.
> > =

> > The ID defined by Corentin is for reset control via SCMI firmware,
> > which has different number scheme than Linux. To me the suggestion
> > from Heiko looks sensible (i.e. create a new ID scheme and keep the
> > current one unchanged).
> =

> So the binding is not for Linux but for FW? This should be explained in
> the commit msg.

No.

The current binding describes reset IDs, which are mapped by the
Linux driver to register offsets in the CRU (clock-reset-unit).
But accessing the crypto reset line directly from Linux (which
usually does not run in secure state) will fail. Accessing it
from correct security context with the current binding is fine
though. Considering we are sharing the bindings with e.g.
U-Boot, I suggest to keep the currently defined IDs.

But Corentin tries to get this running on Linux. For that he
needs to ask the (SCMI) firmware running in secure state to
please take care of the reset. The firmware is using different
reset IDs (apparently the ones used by downstream Linux, which
are derived from register offset).

In DT the difference looks like this (check the different phandles):

#define SRST_A_SECURE_NS_BIU 629
crypto-old {
    // existing binding from Linux perspective
    // reset via direct CRU access
    // NOTE: permission denied
    resets =3D <&cru SRST_A_SECURE_NS_BIU>; =

};

#define SCMI_RST_A_SECURE_NS_BIU 10
crypto-new {
    // new binding from Linux perspective
    // reset via SCMI firmware request
    resets =3D <&scmi SCMI_RST_A_SECURE_NS_BIU>;
};

Instead of introducing SCMI_RST_A_SECURE_NS_BIU, Corentin
currently just redefines SRST_A_SECURE_NS_BIU. This is quite
misleading. If somebody does '<&cru SRST_A_SECURE_NS_BIU>'
with the '10' value for SCMI, it instead resets
SRST_A_TOP_M300_BIU.

So my suggestion is to go with the suggestion from Heiko and
introduce SCMI_RST_A_SECURE_NS_BIU (or something similar).
That also matches how the SCMI clks on RK3588 and some other
platforms. See e.g.:

of include/dt-bindings/clock/rockchip,rk3588-cru.h.

Greetings,

-- Sebastian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
