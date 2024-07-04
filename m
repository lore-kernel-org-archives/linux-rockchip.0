Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC93EC30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 10:05:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fHtpPjMcfsWOW9xQLmG2GwPVzCiKWs7sC3cBKp+YTOc=; b=nWu5BnuWhwM86b
	V94MKlAKDn2hi2plTLNujoX7trP3it4GgVM3FIo9qR6wCDdcQ6H1OErtkucTSHCD2h1EhN8v2K7+2
	igjYLCNBjzXlgmvCw8a3VaXT00w3EhprFL1isIAIE9Tcn+JJzsFMZ/O7Afk62AdiYXslvqLnFyASs
	TyqgXB35vAYe2QJ29d4TH+KX1szNUE12NKc8lpSLCvmeEJDI9BbPuj1BhFJvGLrnh6J4T3WVWReq/
	/jTsXxLMLgtTBonfvLuBvzChXlnWnN+nq7VbsxwcJxFYexm1f00k8jEKNsPi7hIHRcQ3GbmHzA6La
	SvHMMaINVVE7tPPg3q8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPJL5-0000000CpDM-0FV1;
	Thu, 04 Jul 2024 10:05:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPJL2-0000000CpC5-1UhV;
	Thu, 04 Jul 2024 10:05:17 +0000
Received: from i53875ac2.versanet.de ([83.135.90.194] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sPJKx-0007cl-E2; Thu, 04 Jul 2024 12:05:11 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org,
 Diederik de Haas <didi.debian@cknow.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: add rock5 itx board
Date: Thu, 04 Jul 2024 12:05:10 +0200
Message-ID: <4552794.8F6SAcFxjW@diego>
In-Reply-To: <2278169.QnsP76Vvrg@bagend>
References: <20240703210524.776455-1-heiko@sntech.de>
 <20240703210524.776455-3-heiko@sntech.de> <2278169.QnsP76Vvrg@bagend>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_030516_556337_43A35B80 
X-CRM114-Status: GOOD (  14.17  )
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

Hi Diederik,

Am Donnerstag, 4. Juli 2024, 11:38:51 CEST schrieb Diederik de Haas:
> Thanks for submitting this. A quick scan indicates it should work with a 
> (recent) Debian kernel OOTB :-)
> 
> On Wednesday, 3 July 2024 23:05:24 CEST Heiko Stuebner wrote:
> > +&sdhci {
> > +       bus-width = <8>;
> > +       no-sdio;
> > +       no-sd;
> > +       non-removable;
> > +       max-frequency = <200000000>;
> > +       mmc-hs400-1_8v;
> > +       mmc-hs400-enhanced-strobe;
> > +       mmc-hs200-1_8v;
> > +       status = "okay";
> > +};
> > +
> > +&sdmmc {
> > +       max-frequency = <200000000>;
> > +       no-sdio;
> > +       no-mmc;
> > +       bus-width = <4>;
> > +       cap-mmc-highspeed;
> > +       cap-sd-highspeed;
> > +       disable-wp;
> > +       sd-uhs-sdr104;
> > +       vmmc-supply = <&vcc_3v3_s3>;
> > +       vqmmc-supply = <&vccio_sd_s0>;
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&sdmmc_bus4 &sdmmc_clk &sdmmc_cmd &sdmmc_det>;
> > +       status = "okay";
> > +};
> > +
> > +/* M.2 E-KEY */
> > +&sdio {
> > +       broken-cd;
> > +       bus-width = <4>;
> > +       cap-sdio-irq;
> > +       disable-wp;
> > +       keep-power-in-suspend;
> > +       max-frequency = <150000000>;
> > +       mmc-pwrseq = <&sdio_pwrseq>;
> > +       no-sd;
> > +       no-mmc;
> > +       non-removable;
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&sdiom0_pins>;
> > +       sd-uhs-sdr104;
> > +       vmmc-supply = <&vcc3v3_ekey>;
> > +       status = "okay";
> > +};
> > +
> > +&sfc {
> > +       pinctrl-names = "default";
> > +       pinctrl-0 = <&fspim2_pins>;
> > +       status = "okay";
> 
> Shouldn't those properties be sorted alphabetically? Or at least consistently?
> Note that the same issue is present on other places too, but I believe the 
> above quoted part shows the issue enough.

The main sorting is
- compatible
- reg
[... alphabetically ...]
- status

But now that I look at it, you're right there are some non-alphabetical
shenanigans going on there in the sdmmc and sdhci nodes ;-)

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
