Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C1FAC64EC4
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Mar 2023 17:29:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ObNsQVY3rM9hn2tFp0F/u3CpeGSJV/95oXiiXQqu2+g=; b=4Bh3VbUtbSzZ79
	YD9ZyE3xeZguxjMiLxalF9tetRqpGoLoDdDKUYl4kSq8x3xUV/E30P4H/zKGlieUPypBEZmGTvZdZ
	uMJ04zdX6TI4n4PWrY98lOrPjQRzrRYF+Z8pGwSjD6DYiwMpSZS8OSC/ns3m/Qn1rzfGBDVBxffyP
	dAnHWNT0QLYKwRZbe+9f1JxrxVUDEcrggK8auerGW7LStWo03qkr5XwhYrIBbdtje4Kc0DyC/nbOV
	9IGrGxoyQvYveGHQOnrp1YkpqzfqYSDWz31DwGteHiPr6mpIJX8M7SbuuQ1TCcKL3ZbzCWmJ/30/L
	9Dn+t19oWDVczfdu8DXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYVgh-009Lqj-SW; Sat, 04 Mar 2023 17:28:51 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pYVge-009Lq0-GS
	for linux-rockchip@lists.infradead.org; Sat, 04 Mar 2023 17:28:50 +0000
From: Dan Johansen <strit@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1677950925;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=x87z+vjCvrBlBBbKs7GWBh8GXGMnyIrhP7gvLq53N5c=;
	b=dx/PzP5n1HrHOJJqYqhuWpAzTF4mehyP1CzjU7+1S05mBIs6Q3dw7YLOk6KvLm9WFYI3es
	eU5Mneg8PKsvyKylox8dSspKfG83XR8Xw8gBBM6np6ddLwAgEx7E7wcq4iuA+nPercdpgM
	2C30Y4sUooHYwRqa+lWIZ2WQN/obkpYWdVeZ1QW+CzrA44pEWjZFTz+m0cs6Kxeg4bN73A
	ddEXdjTzKkumgYUy6uEHlmaZRPrvcdPhTo7Z18VfoCTLahbPz1U7TRYVAbG3QOwChgBfzc
	ooOCXH9N8YPFbzXbARNy94t+gmSh5hkeV83Q15y5XpOeEgh7M/YJrrF6rrtawg==
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Dan Johansen <strit@manjaro.org>,
	Dragan Simic <dragan.simic@gmail.com>,
	JR Gonzalez <jrg@scientiam.org>
Subject: [PATCH] arm64: dts: rockchip: Lower SD card speed on Pinebook Pro
Date: Sat,  4 Mar 2023 18:28:38 +0100
Message-Id: <20230304172838.38059-1-strit@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230304_092848_746804_141D2B2B 
X-CRM114-Status: UNSURE (   9.62  )
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

MicroSD card slot in the Pinebook Pro is located on a separate
daughterboard that's connected to the mainboard using a rather
long flat cable.  The resulting signal degradation causes many
perfectly fine microSD cards not to work in the Pinebook Pro,
which is a common source of frustration among the owners.

Changing the mode and lowering the speed reportedly fixes this
issue and makes many microSD cards work as expected.

Co-authored-by: Dragan Simic <dragan.simic@gmail.com>
Tested-by: JR Gonzalez <jrg@scientiam.org>
Signed-off-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 194e48c755f6..54bb0398128f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -943,7 +943,7 @@ &sdmmc {
 	disable-wp;
 	pinctrl-names = "default";
 	pinctrl-0 = <&sdmmc_clk &sdmmc_cmd &sdmmc_bus4>;
-	sd-uhs-sdr104;
+	sd-uhs-sdr50;
 	vmmc-supply = <&vcc3v0_sd>;
 	vqmmc-supply = <&vcc_sdio>;
 	status = "okay";
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
