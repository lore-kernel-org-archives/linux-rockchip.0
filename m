Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F312EC04A6A
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Aug 2023 20:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDk4Vp05touGwS+W/OUsEPo4GN/F0FARllVpYhumO0I=; b=Zab6XvzFhgYGzY
	YbVzzG+nklwhDeJdUGX26Yn94kCCp9QKfbUBTeEwBC6M2nYZ/1s8hFKSwKMBkllo7oq8hAV/1sVe4
	YOpPYakyOshgnIs7cKCkSnu8LD4h5HnD7QBpZIV5WwPZ3OrHTvpkb3v23PPCIayCBIBDrPNt5jcup
	WK5x7u3dFJb+5A5hnPqL2E4VqubGNt4thwNpyl/ZXL+AHActWDR03BtLOhlD11tXqfI00Qqu2uu+T
	ywsuS/R5HzE5r4O5+vsPty6J/dOg4FROCLePSEaF0SDZ0XN48/EyMWdDQlLyPS4o/elepxx2mNlyZ
	U5mO1G+4c/B3CO5ARuZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUCWJ-008gRQ-2x;
	Thu, 10 Aug 2023 20:44:35 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUCWG-008gQa-0g;
	Thu, 10 Aug 2023 20:44:33 +0000
Received: from i53875bbf.versanet.de ([83.135.91.191] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qUCW6-0007VS-IY; Thu, 10 Aug 2023 22:44:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Jagan Teki <jagan@edgeble.ai>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH 00/13] arm64: rockchip: Add more RV1126 DT nodes
Date: Thu, 10 Aug 2023 22:44:21 +0200
Message-Id: <169170020924.3368292.14735229248126495361.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230731103518.2906147-1-jagan@edgeble.ai>
References: <20230731103518.2906147-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230810_134432_269439_FC91D12E 
X-CRM114-Status: GOOD (  10.35  )
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

On Mon, 31 Jul 2023 16:05:05 +0530, Jagan Teki wrote:
> Patchset adds more DT nodes for Rockchip RV1126.
> 
> Jagan Teki (12):
>   dt-bindings: pwm: rockchip: Document rv1126-pwm
>   ARM: dts: rockchip: rv1126: Add pwm2m0 pins
>   ARM: dts: rockchip: rv1126: Add pwm2 node
>   ARM: dts: rockchip: rv1126: Add pwm11m0 pins
>   ARM: dts: rockchip: rv1126: Add pwm11 node
>   ARM: dts: rockchip: rv1126: Add SFC node
>   ARM: dts: rockchip: rv1126: Add FSPI pins
>   ARM: dts: rockchip: rv1126: Add uart5m2_xfer pins
>   ARM: dts: rv1126: Enable pwm fan for edgeble-neu2
>   ARM: dts: rv1126: Drop EMMC_RSTN for edgeble-neu2
>   ARM: dts: rv1126: Add 3V3_SYS regulator for edgeble-neu2
>   ARM: dts: rv1126: Add 12V main supply for edgeble-neu2
> 
> [...]

Applied, thanks!

I've picked the patches not depending on the pwm binding change.
We'll see about the rest once the binding gets somewhere.


[06/13] ARM: dts: rockchip: rv1126: Add SFC node
        commit: c3ae1484e112343dc5d9fc33ca0cc83c994939c1
[07/13] ARM: dts: rockchip: rv1126: Add FSPI pins
        commit: d91d25b1db47fd5d91782298ac6e6e418aa2da46
[08/13] ARM: dts: rockchip: rv1126: Add uart5m2_xfer pins
        commit: 753c8a7d8bbda86811943b62f8d33c2e0d5e7046
[10/13] ARM: dts: rv1126: Drop EMMC_RSTN for edgeble-neu2
        commit: 012f90c31babdbd94f3e7bc80400f3d4ae5035bf
[11/13] ARM: dts: rv1126: Enable SFC for edgeble-neu2
        commit: f544630dc4967fc58cc995d0d2dd3940d9848c39
[12/13] ARM: dts: rv1126: Add 3V3_SYS regulator for edgeble-neu2
        commit: 5d1d164da4df3c744cf32cb1dae9fcd5837a0240
[13/13] ARM: dts: rv1126: Add 12V main supply for edgeble-neu2
        commit: c991ed9f57c8025b248e284545c5310e67dc44cf

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
