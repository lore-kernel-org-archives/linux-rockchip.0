Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 22968C636D6
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Feb 2023 14:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SqTv7Xa6lgK2ai0XTSrnBt0JLFfb9cdwqAOLq13qVUI=; b=cYW9rhP6q9RapP
	vGvUE4fvkNBivYeYd8uviGKS2Ndpp7qzxlJng0txekBzEr7V0VkpymzjH6cYTJWSrlpHKR/Uujefy
	S5HiMu47tlFCnkSeqdG2OvYwDhSHXfbYC7GgTVPy41OplfpLx0dDtGb3BLzXABy4vNbotbP2M/5e6
	X0Z3KsuTq+XWWsdsc587Np27PFSRPG3Zl00c4Bj5Gy8wEDowljRX2WBlN+33cD7O50CzS1S1nf5kc
	a6q/XOLeKV2SzrsRmvgodgr1LFHp+gF4/XQCDyHcCsAqp1rPAg8fbHvRp/IdqNTSL1D1dp0QPuzX4
	ZkymqKdRWk/QFZWu3QBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVC9H-00GhVr-F8; Thu, 23 Feb 2023 14:00:39 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pVC8S-00Gh0N-4O
	for linux-rockchip@lists.infradead.org; Thu, 23 Feb 2023 13:59:49 +0000
Received: by mail-pj1-x102d.google.com with SMTP id k21-20020a17090aaa1500b002376652e160so1836438pjq.0
        for <linux-rockchip@lists.infradead.org>; Thu, 23 Feb 2023 05:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pKbPe0qn2Vz5Al+uUREMLlJZwdQXc51MRqcYD0knitM=;
        b=P72BnL87wvAyRLWGbrRiYNH54LMwbePDAqAldB8svhn3vMhH1xpWW9+IGv6UAmpgB7
         48viQqLVJFie8rNQ/78ju2Q4f/8aEfwq68BsGi5uqz72w6x+yE5QMQ0SFm/Rk3q7o+cP
         gXIV5v8orVcPPTrPW28V6PIdwoP/2IoebhvzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pKbPe0qn2Vz5Al+uUREMLlJZwdQXc51MRqcYD0knitM=;
        b=DQn8SebXGxhS0FkgM2xBkE2HXrNiJKhz71C0YpK3550Fa7fhyjEDLrXmjWNqcKJFDv
         xa4r/5xRpKXerwGBnYNxIZbMYupI6VuNBTJIHlJOJsMFqLomSKrduxwmY2oXqtNF0kiy
         iVZK4jdUBxq+pPYJVJxU3ftuOWaE9HRsevwKEblnMyZSavwu31AMYSjQYSOy4/GK0gEh
         TewT3IzcsXOL5AX2OK8jh8o0vCufepfZPPAAnQXStgrwRQh/TrP28bRGlbEFppfONHNI
         zGkSnsKy46QPtEcCM7UZn40Qt444L0z5MH0Jvenh3anOgJGPL2OEcPo+d8dd3353uvAp
         mEjg==
X-Gm-Message-State: AO0yUKVTPaG0+qzj46BtHW7ciPtWpFa4xtP5JfBAe8drkE+nCYkk6OlO
	34T3/p/C3A58MGOuqyIaTi84Hg==
X-Google-Smtp-Source: AK7set9Zm+tZQZNLJtZ2UkRzvizUpquOwQslb0CEIGkNuDi8/cw3hBypVmLfp6MV8m4YRH7C8QSmQA==
X-Received: by 2002:a17:90b:3145:b0:237:50b6:9843 with SMTP id ip5-20020a17090b314500b0023750b69843mr4240014pjb.0.1677160782728;
        Thu, 23 Feb 2023 05:59:42 -0800 (PST)
Received: from localhost.localdomain ([2409:4070:4895:2597:b534:32c:72d3:662])
        by smtp.gmail.com with ESMTPSA id q22-20020a170902bd9600b001932a9e4f2csm6468088pls.255.2023.02.23.05.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 05:59:42 -0800 (PST)
From: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-amarula@amarulasolutions.com,
	linux-arm-kernel@lists.infradead.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	inux-kernel@vger.kernel.org,
	Manoj Sai <abbaraju.manojsai@amarulasolutions.com>,
	Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH] arm64: dts: rockchip: rk3566: Enable USB OTG for Radxa CM3
Date: Thu, 23 Feb 2023 19:29:29 +0530
Message-Id: <20230223135929.630787-1-abbaraju.manojsai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230223_055948_196730_8294C253 
X-CRM114-Status: UNSURE (   9.85  )
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

Enable USB OTG support for Radxa Compute Module 3 IO Board

Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index d89d5263cb5e..5e4236af4fcb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -254,6 +254,14 @@ &usb_host1_xhci {
 	status = "okay";
 };
 
+&usb2phy0_otg {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	status = "okay";
+};
+
 &vop {
 	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
 	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
