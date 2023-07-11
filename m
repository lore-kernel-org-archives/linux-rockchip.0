Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBD2EEB64DC
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Jul 2023 13:29:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXmXNl3ziqGwk2jActG2OyjWVjrSX1l7TOMcxUR7tEA=; b=G1VfKjuTuCZKMD
	8LudrHdlkelm+gLjei3eTfY+GwC1GjWSALLKxRIkD113M25YhzSBvhl8RXIEE/lqHpd3fLQUFb8gO
	Coam2vkUs/BaqNGgqPX7d3lURYDq+006NRpp6Nx3zHkm0I4YxP4/gcRqDr/pAjrRdhwZ+FpRVxm6a
	gybOhBx7YYHyEUbH1gAvLPNEfpCCwiW4d4t10Aq5zyoyj4tGWyZIDpMCmh8WAy0qvGOy05hHbAU4Y
	HDY3cdW6XIfjkFQmN5c5LlCa2cD1xpQm3ISUplRl/EhWnWt7nR761/LcTyzlbamagvaaLkor5rq45
	rQb0pzJQdW+qWfX3p18Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJDQz-00Ez0L-1D;
	Tue, 11 Jul 2023 13:29:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJDQx-00Eyye-1j;
	Tue, 11 Jul 2023 13:29:40 +0000
Received: from i53875a50.versanet.de ([83.135.90.80] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qJDQu-0008E7-Oc; Tue, 11 Jul 2023 15:29:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-rockchip@lists.infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	devicetree@vger.kernel.org,
	Conor Dooley <conor+dt@kernel.org>,
	kernel@collabora.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 00/13] Improve Rock 5A Device Tree
Date: Tue, 11 Jul 2023 15:29:35 +0200
Message-Id: <168908206875.1895326.643066920213723100.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230711_062939_573334_A56E67E0 
X-CRM114-Status: GOOD (  11.11  )
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

On Mon, 10 Jul 2023 18:52:15 +0200, Sebastian Reichel wrote:
> This brings Rock 5A on par with the Rock 5B. All necessary driver
> changes have already been merged.
> 
> -- Sebastian
> 
> Lucas Tanure (1):
>   arm64: dts: rockchip: rock-5a: add SD card support
> 
> [...]

Applied, thanks!

After talking with Arnd on IRC, I also picked the two binding patches
for the eeprom.

I also fixed a number of nits when applying:
- "-regulator" suffix was missing on most added fixed regulators
- one regulator@42 was instead a rk6*@42
- some ordering issues


[01/13] dt-bindings: vendor-prefixes: Add prefix for belling
        commit: 3dc9c73e65fbe1d8b4762b2ef763d8f5941e87bb
[02/13] dt-bindings: at24: add Belling BL24C16A
        commit: 892e989559c7352cd8cacc95729aa6d5bf63b897
[03/13] arm64: dts: rockchip: rock-5a: add PMIC
        commit: 75fdcbc8f4c1557545aaabe3f3d41a7337a1ffd8
[04/13] arm64: dts: rockchip: rock-5a: add vdd_cpu_big regulators
        commit: 4bbca5c7f4f0175c95588709535e3466a936dd2e
[05/13] arm64: dts: rockchip: rock-5a: add 5V regulator
        commit: 53bf040e14c0245711a3cae6f3259e589ac8171b
[06/13] arm64: dts: rockchip: rock-5a: add SD card support
        commit: ea3e66e7ad0d8ca1a4248a55e235fa27817ac3da
[07/13] arm64: dts: rockchip: rock-5a: add status LED
        commit: db02f866b140dc04eb13da8bc8d9b1e36232102c
[08/13] arm64: dts: rockchip: rock-5a: add analog audio
        commit: fb031e6275fc165100a2bf65d630872b89a97c08
[09/13] arm64: dts: rockchip: rock-5a: add I2C EEPROM
        commit: 89c880808cff8bc6f1ea6e1b5edc603e6232310e
[10/13] arm64: dts: rockchip: rock-5a: add vdd_npu_s0 regulator
        commit: afc3925f694a1a16f38ce66dfc7dcf88cc77b8ee
[11/13] arm64: dts: rockchip: rock-5a: enable I2C interface from DSI and CSI connectors
        commit: aa00cf88bd8c5ac22f4da9ae390790268b111f97
[12/13] arm64: dts: rockchip: rock-5a: add ADC
        commit: 43465c67518c3d2e6293e9d97e577de434ad682b
[13/13] arm64: dts: rockchip: rock-5a: add fan support
        commit: dd4464ecced6f07b0e62f67752928d1424883dee

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
