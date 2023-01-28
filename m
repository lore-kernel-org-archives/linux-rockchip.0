Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AD2BC27C76
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Jan 2023 11:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+LcEZJXJbC1nJj4kzpYTe3qu08mVwf67pQ5DOgmUtbc=; b=ISShKnmnuJaiek
	snhMi63r0SpVM+67Om2s5Jh+J8fjHOFtEHxmISNgKXciUcq9+06Fals2KnfO4oMsln/WN7hYfJ2E+
	dLUDupTN7b4mFyPmn2xUsaGXgHnCMjfOacwvnVPAmyycmj0LtMwf9ZAcPn3112OwcV4icuhGBN9U2
	1OQC6nmU3fYvXphAZzHk8R4/5iRSM9f34vc/bQ0DF5umBqcMgEVtF65Eu2Zxd1Bm1JgdncSfxJvf9
	+3vNagawIj7W2B/qQCzTGcCu7j7P+FKOX1oRp7uEvgtkqHo9NgqZXO5AiKhBYCty8EeZWrzEqq1jw
	+CdygMQUl+dy1EZhoeKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLjKE-000648-T5; Sat, 28 Jan 2023 11:24:50 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pLjKB-00063h-IO
	for linux-rockchip@lists.infradead.org; Sat, 28 Jan 2023 11:24:49 +0000
From: Dan Johansen <strit@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1674905078;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Cbv25kWnQcuHZxxSDi6fiv0hGyE8BN7RyAJmaVQP+Vk=;
	b=dvrXmY/iqHp3zZ86zdiiH42IcXOH+om8qnTpxFRub14DUczealFBsB0x2BED5CTdlvFUwD
	tjI9BYCAedvrCSIo/ga7dMxWxFbWppmt+kZzadVSKSSEB+lKY6S6LIvtnRw01vHJgq1rMt
	jquozzWiHh+9L04BGJZSBDi/30GGnclaWUuwJxn5Fol6iCq1qKpmcnwHvqcjj7RXTLIt+i
	CzUG6xnr9wHssF/V1hzTDF1Yg2iaUQRfgHNpYMYz0G+cWuBD/t6Tc2LDSAObMm8zgu/jHL
	Cc7pZxUg3FbtA7RPeO4mGe5Ht6s7M8f60vABl0gAa4aPbx7FUll3al/tNJqREg==
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Dan Johansen <strit@manjaro.org>
Subject: [PATCH] arm64: dts: rockchip: set sdmmc0 speed to sd-uhs-sdr50
Date: Sat, 28 Jan 2023 12:24:32 +0100
Message-Id: <20230128112432.132302-1-strit@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230128_032448_108750_09A81B24 
X-CRM114-Status: UNSURE (   8.38  )
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

As other rk336x based devices, the Rock 3 Model A has issues with high
speed SD cards, so lower the speed to 50 instead of 104 in the same
manor has the Quartz64 Model B has.

Fixes: 22a442e6 ("arm64: dts: rockchip: add basic dts for the radxa
rock3 model a")

Signed-off-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index a1c5fdf7d68f..e2e159371a9e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -730,7 +730,7 @@ &sdmmc0 {
 	disable-wp;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
-	sd-uhs-sdr104;
+	sd-uhs-sdr50;
 	vmmc-supply = <&vcc3v3_sd>;
 	vqmmc-supply = <&vccio_sd>;
 	status = "okay";
-- 
2.39.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
