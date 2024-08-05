Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6519FC52D6F
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 16:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MCoNs5AX6Nm4Gc1k+anEqvLji+EC4ZFw317ndt4PTwQ=; b=EZKbAxFP/2JQKV
	KNTnJvOSnh01H6yewYNQ/7pnjcsQMZz7DvgQ30cuyA2bVXvNMvFmOlRinGmqnkvrurWYwMTQcExU1
	EF2uR/jZZMzOMOiycsaYed+yMwPhzOvwheg7Cx+9X+OmaUGrI1aAQZvAmtXoYERScN0EznmHqNlvf
	+Bnlc/cfCRprSGvtDeSN6FDBVxlpk0n7S9nDTC4cxNl0oYU8QsRUuz+MoMxMzFvvbd8NfrSNbolW/
	w6d83sK1dwoJGXftuMQhJyUZ18rBQHdHHwx/gPJp8PNmDYfj7rA9ploHtmn4JFWdfS1ExUjoT0FDa
	AB7CQz6a/pOqG/eakdOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0TE-0000000GUIe-0Loo;
	Mon, 05 Aug 2024 16:22:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb0SA-0000000GU1Q-0ST6;
	Mon, 05 Aug 2024 16:20:59 +0000
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sb0S6-0003cC-HL; Mon, 05 Aug 2024 18:20:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: actually enable pmu-io-domains on qnap-ts433
Date: Mon,  5 Aug 2024 18:20:52 +0200
Message-Id: <20240805162052.3345768-1-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_092058_178199_6734EF03 
X-CRM114-Status: GOOD (  12.48  )
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

Contrary to the vendor-kernel the pmu-io-domains are not enabled by
default. This resulted in the value not being set according to the
regulator, which in turn made the gmac0 interface that is connected
to the vccio4 supply inoperable.

Fixes: 64b7f16fb394 ("arm64: dts: rockchip: add 2 pmu_io_domain supplies for Qnap-TS433")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 9ee8e954fd341..1417411d15ae8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -604,6 +604,7 @@ vcc5v0_otg_en: vcc5v0-otg-en {
 &pmu_io_domains {
 	vccio4-supply = <&vcc_1v8>;
 	vccio6-supply = <&vcc_1v8>;
+	status = "okay";
 };
 
 &sata1 {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
