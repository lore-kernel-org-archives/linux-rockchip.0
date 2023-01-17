Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F77DC3DA78
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 10:56:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SHOZOh3tCt8tR5t+H0Q0/Pzod9SfoVvUGU713UV8jKc=; b=xBgpix7q01p9aD
	SWoNyKkVNMA0+d8FScFEpSuFb8hAx9AkIrj4BnFWX5uriswyNDYI+0ylE1tGwVYlFvlaJ78HsVFFm
	4/BLcobEmQI681KqJvTkVUxH/iOTTSav2LGyQCMiVcLqNPGwrQ5Pf5IS8BZNQ0O4zXmiYalw9+2kc
	p+REuIP4IbeA+3izIKVm+oi03o7b9t5xgFm7clVK70qT9QnLaRsl9CO7WmBrDVn3bVZ7InwM4iKlg
	/4DKRyAJXdNBMijuVr9MZwWgzTHnOkozn1F+0M8OlLUXs+FLiw4A3l1mhev33fUu/5APAiuFRn56F
	yASdlyxll7Sh8s5/LskA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjdM-00DsCs-B0; Tue, 17 Jan 2023 10:56:04 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjcq-00Drvs-Bq
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 10:55:33 +0000
Received: by mail-pg1-x52d.google.com with SMTP id q9so21646089pgq.5
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 02:55:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jdJOc6HmPoDjd/7V0dPuhrTlxhOueTXLQLGnwbV08gU=;
        b=UJfOAbjo/SviBm6fQ+/Vv6qQAtLAxZYsQ3sy0EzbA5CjQxx1KD0nfPyNLhVyONvIec
         4jIFsE46Nrh14tYR98YtTwA4Usxs1vRfa5sCH+UzDCTL3vUd0/IUa+hzw8K6+m8H3TqP
         sAbSC2TGtsjcoz4pMczGJ3U2F6DfbzdfROKfw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jdJOc6HmPoDjd/7V0dPuhrTlxhOueTXLQLGnwbV08gU=;
        b=qaAz/USXmTQzzzzmdxkkC1kz35LZeUby0HAbLrlCbghVKMv2CK9peijDjpmrvZkkxx
         mQnjUwR65rEyWM8EK0Ts6OG8LkoYE9JF3CKXcP9ki1Qsyy8TCc2Qu4/UbgGL3xDMvUZo
         rj6V5sCltpvWzIdn6g5eCdqzuQrQpJmOLkXbPcYp+Tf1nLHu+ppDcdMWfI7gMyMNdKpx
         Aq+7mqGFXhfDPKV6Yp47IaxvLNkSqocV9fysjAk+OYxW9VPO88rkBgO/ECawYEpGwWJ1
         nNkTfbGAWZpLurgKg2I/n6B8CSSWsksMYQgKQEJLgMDmB8VkKRL1fBKVHX1LQWKoBJdJ
         ucHw==
X-Gm-Message-State: AFqh2kqFIoJS2P+Qwp587hNgfCKrqjE7QlsHzx+r83RvqL0D+pOWJtaN
	LJGpUAeWZ0KvRybf75S8UusuVw==
X-Google-Smtp-Source: AMrXdXu33Ja/XnAn0PBA98EgnuNi0Z24u9Km2ZUY11zOLBU0mcHpF6cB39J5Msmh0iMQEv2NcknUoA==
X-Received: by 2002:aa7:8a0e:0:b0:58d:9850:d55f with SMTP id m14-20020aa78a0e000000b0058d9850d55fmr3003182pfa.21.1673952930589;
        Tue, 17 Jan 2023 02:55:30 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:30 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 4/7] arm64: dts: rockchip: Fix compatible and model for Radxa CM3i
Date: Tue, 17 Jan 2023 16:25:01 +0530
Message-Id: <20230117105504.18296-4-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_025532_425676_81DF1F6A 
X-CRM114-Status: GOOD (  13.27  )
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

Fix the model name and compatible strings for Radxa CM3i SoM
and Carrier board based on Radxa recommendation.

Fixes: 2bf2f4d9f673 ("arm64: dts: rockchip: Add Radxa CM3I E25")
Cc: Chukun Pan <amadeus@jmu.edu.cn>
Reported-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi | 2 +-
 arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts   | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
index 225dbbe4955d..0c9a918b809a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-cm3i.dtsi
@@ -7,7 +7,7 @@
 
 / {
 	model = "Radxa CM3 Industrial Board";
-	compatible = "radxa,cm3i", "rockchip,rk3568";
+	compatible = "radxa,radxa-cm3i", "rockchip,rk3568";
 
 	aliases {
 		mmc0 = &sdhci;
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
index a4c33310ca42..8ca15b723799 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
@@ -4,8 +4,8 @@
 #include "rk3568-radxa-cm3i.dtsi"
 
 / {
-	model = "Radxa E25";
-	compatible = "radxa,e25", "radxa,cm3i", "rockchip,rk3568";
+	model = "Radxa E25 Carrier Board";
+	compatible = "radxa,radxa-e25", "radxa,radxa-cm3i", "rockchip,rk3568";
 
 	aliases {
 		mmc0 = &sdmmc0;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
