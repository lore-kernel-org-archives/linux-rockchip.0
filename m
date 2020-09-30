Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B916C4741F
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 18:57:53 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D59DE206DC
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 18:57:52 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="rDWxAEhk"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org D59DE206DC
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=simonsouth.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WWz/ZCDp46h0kahseLvPNxGGPTez4Y5rEs8RAId8n4Y=; b=rDWxAEhk6DTXQXgyEIbvYxk3im
	MbhifK6grI0AcXiHRKWp319uRxCZY0eWZyXxvhLpX/oRB0hK3TYVMghkVJAAXwhlrPiUuxSaxjpGY
	WF5ZBFK6Ntiaa2YW0Bu3RwxgK0bEdf8b8+jqZcZPAX06FxaW8cYWNmyIQ5WV/9nXY+OcrQWw2Svpt
	z9DZ+O9rXyDEMDfoYN8WbFgzKjZivBdX3KG9ZQi5jyimFuvPbcsVBODY+NJUfA6gJMV2LYjkAzqM8
	mAUzBiWuUPkYMu+GQOBlE1l+QaZgLkP1p5HxMpmMoB0B8LOP7S5bhfeOuhAYu8VQ/NdWQGtnphgB5
	J2uxMDhw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNhIO-0008OP-Fl; Wed, 30 Sep 2020 18:57:44 +0000
Received: from mailout.easymail.ca ([64.68.200.34])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNhIF-0008K7-LR; Wed, 30 Sep 2020 18:57:37 +0000
Received: from localhost (localhost [127.0.0.1])
 by mailout.easymail.ca (Postfix) with ESMTP id 6F246A13C6;
 Wed, 30 Sep 2020 18:57:34 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at emo05-pco.easydns.vpn
Received: from mailout.easymail.ca ([127.0.0.1])
 by localhost (emo05-pco.easydns.vpn [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mixK6SbgLMhN; Wed, 30 Sep 2020 18:57:34 +0000 (UTC)
Received: from jupiter.simonsouth.net (unknown [108.162.141.195])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mailout.easymail.ca (Postfix) with ESMTPSA id 6BED9A13B2;
 Wed, 30 Sep 2020 18:57:18 +0000 (UTC)
From: Simon South <simon@simonsouth.net>
To: robh+dt@kernel.org, heiko@sntech.de, smoch@web.de, t.schramm@manjaro.org,
 jbx6244@gmail.com, katsuhiro@katsuster.net, sigmaris@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Pinebook Pro: Use supported PCIe link
 speed
Date: Wed, 30 Sep 2020 14:56:27 -0400
Message-Id: <20200930185627.5918-1-simon@simonsouth.net>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_145735_725039_A49B01A1 
X-CRM114-Status: GOOD (  14.15  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Simon South <simon@simonsouth.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Pinebook Pro laptops with an NVMe SSD installed, prevent random
crashes in the NVMe driver by not attempting to use a PCIe link speed
higher than that supported by the RK3399 SoC.

See commit 712fa1777207 ("arm64: dts: rockchip: add max-link-speed for
rk3399").

Fixes: 5a65505a6988 ("arm64: dts: rockchip: Add initial support for Pinebook Pro")
Signed-off-by: Simon South <simon@simonsouth.net>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 06d48338c836..219b7507a10f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -790,7 +790,6 @@ &pcie_phy {
 &pcie0 {
 	bus-scan-delay-ms = <1000>;
 	ep-gpios = <&gpio2 RK_PD4 GPIO_ACTIVE_HIGH>;
-	max-link-speed = <2>;
 	num-lanes = <4>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pcie_clkreqn_cpm>;
-- 
2.28.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
