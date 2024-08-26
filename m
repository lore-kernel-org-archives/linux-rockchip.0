Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7367BC5321D
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 07:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b4bO6F2L4783ymeMZwj9bbWp9EhsR+6PRPTVnT6DCNA=; b=qb29LgN/PyuUWB
	TfG0QYrk/5s4Ga+B3X2pl1QSC39+FHzjnTJej8S0L1xqRej7Mryfap4NbwdPuM+mt9BKJIyVKokAR
	uIg7YiDdbwViQePTBimph70uR04KzU3Leb78ZN5wRXCrS056lr0kwl/IIY55RSqWXk6raDE5wPG0M
	3r++WWeFXi5Iy8F6muOznwSJzVvn7Hw/hEIETeRZIX2Tt6EXgLyXj57cpy+KxOcaoL2Ln8swzpXls
	UjzVUxHm2Ostfqu7MkaLHPYVSGVmeEXBel+n1tGJ72QNhAxIPTUfSiBRlJbDg3ZE/Ki8Hd6hXlU/5
	Mz8flc6aKr0EK66zqlAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siTjV-00000006ANa-10iI;
	Mon, 26 Aug 2024 07:01:45 +0000
Received: from mail-m2414.xmail.ntesmail.com ([45.195.24.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siTjS-00000006AMZ-0tRB;
	Mon, 26 Aug 2024 07:01:44 +0000
Received: from amadeus-Vostro-3710.lan (unknown [58.61.141.165])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 14FA77E0195;
	Mon, 26 Aug 2024 15:01:13 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: bigfoot@classfun.cn
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	dsimic@manjaro.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: add dts for LCKFB Taishan Pi RK3566
Date: Mon, 26 Aug 2024 15:01:09 +0800
Message-Id: <20240826070109.55659-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240826044530.726458-4-bigfoot@classfun.cn>
References: <20240826044530.726458-4-bigfoot@classfun.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlDSUtIVkkYQhhNHkhKSR1LTlYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlOQ1VNSlVKT0pVSk1OWVdZFhoPEhUdFFlBWU9LSFVKS0lCQ0NNVUpLS1VLWQ
	Y+
X-HM-Tid: 0a918d7d201b03a2kunm14fa77e0195
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MTI6NBw5ETIrCh80GB9MM1Yt
	SgwKFEtVSlVKTElPTU5OTUxIQ0JCVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWU5D
	VU1KVUpPSlVKTU5ZV1kIAVlBSEhOTjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240826_000142_478097_B588FB58 
X-CRM114-Status: UNSURE (   8.87  )
X-CRM114-Notice: Please train this message.
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

Hi Junhao,

> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts
> ...
> +	aliases {
> +		mmc0 = &sdmmc0;
> +		mmc1 = &sdhci;
> +		mmc2 = &sdmmc1;
> +		wifi = &brcmf;
> +		bluetooth = &bluetooth;
> +	};

WiFi and Bluetooth do not need aliases.

> ...
> +	vcc5v0_host: vcc5v0-host-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc5v0_host";
> +		regulator-boot-on;
> +		regulator-always-on;

This regulator does not need always-on and boot-on.

> ...
> +	vccio_flash: vccio-flash {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vccio_flash";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		vin-supply = <&vcc_1v8>;
> +	};

Generally speaking, vccio_flash is not a DCDC regulator,
it is directly connected to vcc_1v8. Maybe you need to
confirm the schematics.

> +
> +	vccio_wl: vccio-wl {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vccio_wl";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		vin-supply = <&vcc_3v3>;
> +	};

Same as above, usually like this:
VCC_1V8 or VCCA1V8_PMU - 0R - VCCIO_WL
`sd-uhs-sdr104` requires 1.8v io voltage,
you need to confirm the schematics.

> ...
> +&pinctrl {
> ...
> pmic {
> +	pmic {
> +		pmic_int: pmic_int {

Only the pmic_int is needed.
Also `pmic_int: pmic-int {`

> ...
> +&sdhci {
> +	bus-width = <8>;
> +	max-frequency = <200000000>;
> +	non-removable;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe &emmc_rstnout>;
> +	status = "okay";
> +	vmmc-supply = <&vccio_flash>;
> +	vqmmc-supply = <&vccio_flash>;
> +};

The vmmc requires 3.3V supply (on rk356x).

> ...
> +&sdmmc1 {
> ...
> +	sd-uhs-sdr104;
> +	vmmc-supply = <&vccio_wl>;
> +	vqmmc-supply = <&vccio_wl>;

Same as above.

> ...
+&uart1 {
> ...
+		vbat-supply = <&vcc3v3_sys>;
+		vddio-supply = <&vccio_wl>;

Here corresponds to sdmmc1.

Thanks,
Chukun

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
