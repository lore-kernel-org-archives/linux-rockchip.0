Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31803C433FE
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/gSp9WnldpuH0Wn7ZiC4t77FOlInVMbT5Wu4p6J2QBQ=; b=2HnM2nELDMwHT/
	R/D2chLMcE9kMZmxKsWEjKWSGbV4TeGrUqBOJajjDXlX3VM3ne/Sf+hW9iM33t30K/U9GA3mTzrCV
	ajI8O9yyWAsiTGaTfFSdJgzzCDSyNBSRjNgPyfE15K4Lr4MJp1EmP5Tr7jL7xgEBXfZdW79ZIdci1
	xcCaRqn8xlmKtWBKJLP/2AC9Qn2rj5evASGnY0DdskgvJz4gV/QMmaXD1xuR7IW8b5+e2I+O6/t+V
	MTiofiZfdrWyUYK6npSsw+zM8WK1xThjon4x5f8gBoHeqNsgGPhdpqU5hjVmOtyMbIkD1V9ajO8t3
	lRY3N0eoMF9ZHh0ej/Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj3iJ-00AvjT-UU; Mon, 25 Apr 2022 18:45:35 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj3i7-00AvdB-57; Mon, 25 Apr 2022 18:45:24 +0000
Received: from obbardc-laptop.home (unknown
 [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: obbardc)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id C254B1F43008;
 Mon, 25 Apr 2022 19:45:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650912318;
 bh=ZflrCY90qDvsRTN/89T+MYpE5uYdGwBIfCIw17JRHS0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VNUGDF8zSp/x29xQ3kgPbHSYcmms/sNvtoaNvO+Zu9wh7RigElOutLh5cCi8QiVMp
 mEn9qYSyNPJ7HdVNsGrTrVZfgnXft1bsTmWtMxklAC4LilSUJ/gyAObAECxgfd5tbx
 y8Pa+FvtdQV6/BLqS76YkPS75gyYH5vg8ZLSRS9B5AxFCCJLJoRrCx5SoZLWwSv3cg
 of4k7AwoxhRB4RU1Sgd+uuuze2i2oEFSQV/PgNmxz7pIaLnnL4MyNcNu6EHA/13PJp
 iqTxAoXvh3j68xHOjpxivTSiXWMTXnBueB/cBLvszbYL/FtMapr3HYDIIZRJgYyjNS
 pzgbVK1EsuzQA==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v3 2/3] arm64: dts: rockchip: Rename vdec_mmu node for RK3328
Date: Mon, 25 Apr 2022 19:45:09 +0100
Message-Id: <20220425184510.1138446-3-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220425184510.1138446-1-chris.obbard@collabora.com>
References: <20220425184510.1138446-1-chris.obbard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_114523_423590_E02DCD57 
X-CRM114-Status: GOOD (  13.90  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

All other rockchip devices which have vdec nodes do not
have an rk prefix. Remove the prefix from the (currently
unused) rkvdec_mmu node for consistency with other
devices.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
Reviewed-by: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index b822533dc7f1..f8ef149fedad 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -660,7 +660,7 @@ vpu_mmu: iommu@ff350800 {
 		power-domains = <&power RK3328_PD_VPU>;
 	};
 
-	rkvdec_mmu: iommu@ff360480 {
+	vdec_mmu: iommu@ff360480 {
 		compatible = "rockchip,iommu";
 		reg = <0x0 0xff360480 0x0 0x40>, <0x0 0xff3604c0 0x0 0x40>;
 		interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
