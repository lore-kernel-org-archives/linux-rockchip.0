Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6618C678D5
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Mar 2023 16:42:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NsfFrDzQOM5YL1unjHjjcwKhonaUU41tX4rR5YzLr0w=; b=IKCPZumjAFKrtT
	7ggv5NdNYkkN3RlvBb5RF1fyoQIKAg4V3Uo5bDoui7v/jmB9S2hMppUrz03x88+H57iy9uLJoRY3A
	GKarcbixVYy8hO/Sn3Ug5IyrBtLGGXZ4kC9/t0LG/JcaPZXOMuPf/lOtf6ViVc6+guWJFaY2s8KTa
	bAaPgV7DJU4jgUydh15KPhrYuqmprBo5mMH/95Ikz69CVKyZCE0dwlhZHFtIHHgVTUEOTdlMzQ/DP
	DQzOh3qmn28pI8iMFrRVNKgtFuGIRiFqrvbuv5d6N5/ZAeAyu5fRIPYgJXP0Ex5kMNJQEc8oFAolB
	mJfcAw89gGvXn4qn29Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYUxN-009Fkr-QE; Sat, 04 Mar 2023 16:42:01 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYUxK-009Fjl-54
	for linux-rockchip@lists.infradead.org; Sat, 04 Mar 2023 16:42:00 +0000
From: Dan Johansen <strit@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1677948112;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=nCt+QIc9MNau1NmsRIbyQqcwYHXUBS41L6l58VlrIDs=;
	b=bpBy4XfR864bE3MoO9fXYFb7HlHi5lySc/furIKmIEWMZyQGUoNP7CFzeNptUe9WmI4jtY
	5fQCa9/ewcfdXR5iW7PBQJ/YpbtsK8MzuAWHhb5OnuJqf9xV46IQWsjxqiR/1IbliRH9uA
	DK3aS0L1fqRmistzy/kVEanob7UHkbGDb8IQ/TLknWUTxnMvyYSC14IBKGlPkrQENAsrlr
	PZFLYT0V7NS67HWiCDjtB4s9O46lcoUrp/PL2WkKc6FV0rVB9koH5WsC9n+v81b7/nl+aF
	dE2bzSMu52EmUUD/LZ59t4Ci4z8sd8q6s18AP3UbXUJIU1vppscZ41JnrG3t9w==
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Dan Johansen <strit@manjaro.org>
Subject: [PATCH] arm64: dts: rockchip: Lower sd speed on soquartz
Date: Sat,  4 Mar 2023 17:41:35 +0100
Message-Id: <20230304164135.28430-1-strit@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230304_084158_700775_57E075FD 
X-CRM114-Status: UNSURE (   8.21  )
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

Just like the Quartz64 Model B the previously stated speed of sdr-104
in soquartz is too high for the hardware to reliably communicate with
some fast SD cards.
Especially on some carrierboards.

Lower this to sd-uhs-sdr50 to fix this.

Fixes: 5859b5a9c3ac ("arm64: dts: rockchip: add SoQuartz CM4IO dts")

Signed-off-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
index ce7165d7f1a1..102e448bc026 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz.dtsi
@@ -598,7 +598,7 @@ &sdmmc1 {
 	non-removable;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc1_bus4 &sdmmc1_cmd &sdmmc1_clk>;
-	sd-uhs-sdr104;
+	sd-uhs-sdr50;
 	vmmc-supply = <&vcc3v3_sys>;
 	vqmmc-supply = <&vcc_1v8>;
 	status = "okay";
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
