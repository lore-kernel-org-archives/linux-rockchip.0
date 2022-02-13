Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87176C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Feb 2022 21:23:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UneE1wHmdoqGrS94x5+qwmKfaFSR+r7wZd27Ft7hsR4=; b=l4uyqGyiib/Os/
	pvrsIifO/tNfddAB8wvB4bi2vi3mZRwzjpn9UxviymPcTn3lVrtrXgZFbexGsDD3yRu6PQOZy7vOm
	TAop8X9e//UwG3uyAsPhYAlmfT7F+f/uyiolvdoVEbkwgGkSreTZuSsXA6kbSmEgPwft5yqzd1hXO
	D0nvQjGcEC0WW6MZ3VhAZDTlJH4lb6lqhkw5WlzTg+xoaJnEPoiQWZt4dZ4M/p8a31OzRbNdJNxpF
	+Gua6IOIkcP8PrnQUBK4mHaPMpN9ja/b2K4zzd3q5htAH77iO51sMMG0AMOhP4cEmI42z66ie/a0x
	5mrMnNHpRYKgt16baOWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nJMLL-00CYRH-1w; Sun, 13 Feb 2022 21:23:39 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nJML9-00CYOk-VC; Sun, 13 Feb 2022 21:23:29 +0000
Received: by mail-ej1-x634.google.com with SMTP id p9so10778773ejd.6;
 Sun, 13 Feb 2022 13:23:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tvhJZMzLl9R1cbQyJKyCNmNT8QYkI+65YzzrmqgCMvQ=;
 b=q2W07K1lo0yPQWOYa/c0lwF85Ts+X8XribnXEVcCj59yyRYhqJPkv1t51ihgVoIb7M
 8AQF8IUatJoywxau80eJPSDbc1sqSSmPXRjIQB2+p+6KcAs/d2SJS1t63I8HNXcGIJGK
 fEU6x1mp/pWQ0CLFYGtoYZL5tcRSw5+r4q8NVrNAmhV3DQ17WKBKEXQK/mYJpmwH6R0o
 q8rTIw+N0p9oFwm3/kTjmX6I5XsBaZflAP7EP6/FIpoR5fzHPw5pyJieIBzbOEznkZR9
 0OWwTXl3z+fA2+wqjAVvMg8krY8jNqCYCWPPSbxYzzIXque+QTJ579ZtZAq65wg1Jxps
 nYUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=tvhJZMzLl9R1cbQyJKyCNmNT8QYkI+65YzzrmqgCMvQ=;
 b=D6choI51ZY5s1Y6CemBwmkR9Wpz3Y2KcWxdgoqTukwuwHvC8evJjNXWcWivfRWu4gT
 7JBBNrweV20WrVp6eAig7d/ojXHSHWh1KR/P4AZarIOm14lVDqzi72T/K5kU39N8WLk0
 VRuawF5EQxutLJ+rpt9YD/2BY6x4Ons7D2VclIJz7VhqP/DbgyRtpo7E//2448WlE89x
 xQm+jCYdgtr6SyDeXTy9AcDUmFIUGLeXA//X6TvF+FzmelPFTfoQhoJWa9rGGXGplL/4
 fkgLR9Eb85nuM5Hs5QNR34FcX7Q6HFnwodFZXDdrIp9wPNM7unYSuMZnDZoC9qj+/7n1
 thgg==
X-Gm-Message-State: AOAM533yp/plj377AgrG/aCFURw6bh+yHkoUAsyGav7Y7f8DoIeVhKvE
 DsFi5EcfBYraFTUOPpcFAoVwoywZVuH1uA==
X-Google-Smtp-Source: ABdhPJwD+CiqmVWUoFdkHToaw0lBCqux0TIv2DCecS4O7HKPsY1yCTb4oB6fdLzzpfgtToAKFxp++Q==
X-Received: by 2002:a17:907:7b99:: with SMTP id
 ne25mr9316792ejc.161.1644787405769; 
 Sun, 13 Feb 2022 13:23:25 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w17sm13239279edd.18.2022.02.13.13.23.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Feb 2022 13:23:25 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] ARM: dts: rockchip: rk3288: remove status from crypto node
Date: Sun, 13 Feb 2022 22:23:19 +0100
Message-Id: <20220213212319.8448-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220213_132328_031180_1187A926 
X-CRM114-Status: UNSURE (   8.33  )
X-CRM114-Notice: Please train this message.
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

A node that is not disabled is standard already "okay",
so remove status from rk3288 crypto node.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3288.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index aaaa61875..85d56c63e 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -980,7 +980,6 @@
 		clock-names = "aclk", "hclk", "sclk", "apb_pclk";
 		resets = <&cru SRST_CRYPTO>;
 		reset-names = "crypto-rst";
-		status = "okay";
 	};
 
 	iep_mmu: iommu@ff900800 {
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
