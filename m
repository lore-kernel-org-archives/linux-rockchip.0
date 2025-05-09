Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0DE1FC3ABCC
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 17:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=y4T3h0zW2CcmKqX6H97nlArYvWQ0ORk87d9ruiAivQA=; b=MEYE4iJQreePf2
	T0QbEodACCf0XBGHOELl7M8tnwJmJebTkM+F6c33qTY5OPg0RWQFk7LYppf2mHuiGV9CxP9WLEeJk
	rQYODspZp+S8VSa/bOYE087sJFovSDbR5UEwVljDUoO7Il+8OnqpMFZNng3TFTG17gUiLks/cHALI
	HaBvx5Tdy8U1sz9xdFizPul2CWo8cUnR5pT98UmIewyxAKrvrN5k8Xc+I0BOXZh77o3n5mT2a+DyQ
	FhbMVv9gWQQgxCu31lWAy8N89voeub3c/EXlGxNj7P7W2Q11UB+UZYWsB66746HoJPx8E1ykWFkqW
	qDr7gVv22y0KQ6YhO9TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDRO3-00000004QL2-0mC7;
	Fri, 09 May 2025 17:19:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDPZj-000000044Wa-1DmG;
	Fri, 09 May 2025 15:23:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=VRcNlZIROkbG0sCWrxKhEWE7NClVs/KiomSYUNRRAb0=; b=neDzpjzXIQfLpAIf3TsVabbdFW
	bQgxgVZt5j7XnkvVC2LBFmEmjc7P7hQPj28gdKFjTFVO19P+CwGgoOJvKVSHbaGqOF8mR7ug5ZOiU
	kqmF7qjjoMotvxHsRAbdHPd8PlIyknyprW+0PPcEGhYHzXDjPfh8bZ9ID9/3appf4mbUEPy30VNxy
	SU+/1UB+huawEEekAUu+6tDC3XxSh4fFcic0vs/zx8mhb/YwvjkSNV1UDKMirwzIoVEkV8G36FKly
	3qgv4OA+F+26Is4PR/7LHpUmj6FFER7NcrZmdicAAThtVzNzzFskdTVtDhEV2EHqOveR+SrPBgskx
	gKAhJwGw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1uDPZg-0000000GIrY-0gWG;
	Fri, 09 May 2025 15:23:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=VRcNlZIROkbG0sCWrxKhEWE7NClVs/KiomSYUNRRAb0=; b=SN5O5y33zakZ19sb4IaG/Y8vdy
	tqV/b9FihN9G8n5yVs6/5n4mIsj5z1cBM5hPU8uCGzwV6mE3YKlSwAeoBXkJlITg7E2fFjObBZJ1+
	UoS9LoOs+j0QpYnOcjDcyQCDLiCfCv9iqDsDC8zK6to7GUkWP9CDMAxrZsPCbtLPf8UhZmP7dqxBU
	rN4jYixde5chFIxAZLu3tWFeoQngUIGUPuh4w4VmKfrW10hAUytalukjDsL4TQl8TM0Ufluh+RyNo
	FiEo6tgQLzGM+AmIBggPT1vbzBJb73Ki4MZ9GWg8ZitNSsxR6U/lhwfz/AX1YgdSEt9HElK4LhEmD
	lLzGwNoA==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uDPZc-0007v0-VF; Fri, 09 May 2025 17:23:41 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: drop wrong spdif clock from edp1 on rk3588
Date: Fri,  9 May 2025 17:23:29 +0200
Message-ID: <20250509152329.2004073-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_162344_443125_ADBE80D9 
X-CRM114-Status: GOOD (  15.77  )
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

As described, the analogix-dp controller on rk3588 only supports 2 clocks
and the edp0 node handles that correctly.

The edp1 node on the other hand seems to have a dangling 3rd clock called
spdif, that probably only exists in the vendor-tree.

As that is not handled at all, remove it for now so that we adhere to the
binding.

Fixes: a481bb0b1ad9 ("arm64: dts: rockchip: Add eDP1 dt node for rk3588")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
index 9d81d3b9444e..90414486e466 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-extra.dtsi
@@ -255,8 +255,8 @@ hdmi1_out: port@1 {
 	edp1: edp@fded0000 {
 		compatible = "rockchip,rk3588-edp";
 		reg = <0x0 0xfded0000 0x0 0x1000>;
-		clocks = <&cru CLK_EDP1_24M>, <&cru PCLK_EDP1>, <&cru CLK_EDP1_200M>;
-		clock-names = "dp", "pclk", "spdif";
+		clocks = <&cru CLK_EDP1_24M>, <&cru PCLK_EDP1>;
+		clock-names = "dp", "pclk";
 		interrupts = <GIC_SPI 164 IRQ_TYPE_LEVEL_HIGH 0>;
 		phys = <&hdptxphy1>;
 		phy-names = "dp";
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
