Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AAD95C433F5
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Mar 2022 21:58:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IcV3wSEmmCjDr2mrtWjtdn+Et7p8+v6XeGHeCgIHL/s=; b=fUNws0KtCV1+7m
	6pNDUiQ+f0LhvlHudza0fdgTMbY56qL+byvLprkg6oXKUID4mJlbJKnTCPwy8Le7E38gH1PuHxGdd
	psQInup2cQdlagqmhS7zWtlsaLBeI/Bf1uxiGblXyb4hKt9z8CnGiskylQXdftnR4ELIWkx7vu4HC
	h6QY/nSO/c+8zFNMUSGLlImtqWaD9wFlzB9/5TAvuQNpAJGySKs8+wU9d8UDGG2GvVAo53tpIDLWm
	XqrBLaB6Q4McRphIkSORuY5hbVILowiAKLeGcNgyrWCwUOZWxXhtkka0iIlYs50dSu41XKwycyg1Y
	72oznf2KFKF31DBfmFhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nQcQR-00DtER-Oj; Sat, 05 Mar 2022 21:58:55 +0000
Received: from mail-qk1-x732.google.com ([2607:f8b0:4864:20::732])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nQcQF-00Dt8p-R7; Sat, 05 Mar 2022 21:58:45 +0000
Received: by mail-qk1-x732.google.com with SMTP id 85so1063129qkm.9;
 Sat, 05 Mar 2022 13:58:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bA6COhkxqJULw1J6YY+ycVS3dSCISRuj2zyilCuPjTI=;
 b=BXZW4KqpbIUC7e+zCk9eKL18jIJ0xZDUM3QtLst9hKoIqWVpoDyleq8wSY2l5TncMf
 JQk2xtn64KZmU1Ia3GSEU6RIMKWAGnrVYFoHUoI2RhJSOit01nr0AibQupeN8cW08iHC
 RDYBX6rgSbkNCwhalIT+DRyn1Gbr/XWUyswf8JXXuhL9gyPJ6zlQexrG+xA6/BSn0g0B
 skCYIBmAmproF0AygsVLr6LeZBsjJkbCkYF7zkkea53wpfy42+0yUB6rY9VY4apC7SzL
 xwf5LMUJyZKnmUL0YucmXeOny0+opvohkONeP7QKsY/f8na36oD8KkMEjI5GAXEhuUh5
 1H4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bA6COhkxqJULw1J6YY+ycVS3dSCISRuj2zyilCuPjTI=;
 b=rls6V63C2AXmCK/I7T3fS21mUlI3b2JBFe5AyW2i0e7zySLIbj4YDDNRp02s+JCTAv
 6HhJ5D3rHDEFxFGEpVY4W0Uf0iIR/nmtww75ESjYs547MNycyJRjcf+P4tvf5r70zA0B
 7f3d4tavgWxBTjjoVFwKd/Yp0WKFWhaqMUQGv23fScPtNSu6FQH3vCLgangrJN3jPuaJ
 rB2HX5roqUZ2EJoCtW0jFBlhhRToDjjHqMKdlftTje2YvphL4ypAqXr5A9/r3ETKJa8w
 rSVgkFFeXnPyeA3Y+4XQ8BFMDDoG5efhOBrq6dj/rWf13nUVUZzbdLqESDVZ70tQW5Pp
 4erA==
X-Gm-Message-State: AOAM533a3qaAKfylrC0h1Rhk/mmxGVfzHe0OS/aK0sDqVpBZAw9kO5mV
 EHW7ORZbYSWBNhTNjWHcbQg=
X-Google-Smtp-Source: ABdhPJw4vJOzmKSTMCO2ApCNqa91/MVS9ULXJohkxDqioQVkTER3QFf0T9/hF/IJnPH+tAoyzM+xew==
X-Received: by 2002:a05:620a:4307:b0:507:d5b1:f65e with SMTP id
 u7-20020a05620a430700b00507d5b1f65emr2924851qko.363.1646517522746; 
 Sat, 05 Mar 2022 13:58:42 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 h188-20020a376cc5000000b00648d7e2a36bsm4230067qkc.117.2022.03.05.13.58.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 05 Mar 2022 13:58:42 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Jaehoon Chung <jh80.chung@samsung.com>,
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: robin.murphy@arm.com, linux-rockchip@lists.infradead.org,
 Peter Geis <pgwipeout@gmail.com>, linux-mmc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] mmc: host: dw-mmc-rockchip: fix handling invalid clock
 rates
Date: Sat,  5 Mar 2022 16:58:35 -0500
Message-Id: <20220305215835.2210388-3-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220305215835.2210388-1-pgwipeout@gmail.com>
References: <20220305215835.2210388-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220305_135843_899406_3420B651 
X-CRM114-Status: GOOD (  20.77  )
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

The Rockchip rk356x ciu clock cannot be set as low as the dw-mmc
hardware supports. This leads to a situation during card initialization
where the clock is set lower than the clock driver can support. The
dw-mmc-rockchip driver spews errors when this happens.
For normal operation this only happens a few times during boot, but when
cd-broken is enabled (in cases such as the SoQuartz module) this fires
multiple times each poll cycle.

Fix this by testing the lowest possible frequency that the clock driver
can support which is within the mmc specification. Divide that rate by
the internal divider and set f_min to this.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 27 +++++++++++++++++++++++----
 1 file changed, 23 insertions(+), 4 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 95d0ec0f5f3a..f825487aa739 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -15,7 +15,9 @@
 #include "dw_mmc.h"
 #include "dw_mmc-pltfm.h"
 
-#define RK3288_CLKGEN_DIV       2
+#define RK3288_CLKGEN_DIV	2
+
+static const unsigned int freqs[] = { 100000, 200000, 300000, 400000 };
 
 struct dw_mci_rockchip_priv_data {
 	struct clk		*drv_clk;
@@ -51,7 +53,7 @@ static void dw_mci_rk3288_set_ios(struct dw_mci *host, struct mmc_ios *ios)
 
 	ret = clk_set_rate(host->ciu_clk, cclkin);
 	if (ret)
-		dev_warn(host->dev, "failed to set rate %uHz\n", ios->clock);
+		dev_warn(host->dev, "failed to set rate %uHz err: %d\n", cclkin, ret);
 
 	bus_hz = clk_get_rate(host->ciu_clk) / RK3288_CLKGEN_DIV;
 	if (bus_hz != host->bus_hz) {
@@ -290,13 +292,30 @@ static int dw_mci_rk3288_parse_dt(struct dw_mci *host)
 
 static int dw_mci_rockchip_init(struct dw_mci *host)
 {
+	int ret, i;
+
 	/* It is slot 8 on Rockchip SoCs */
 	host->sdio_id0 = 8;
 
-	if (of_device_is_compatible(host->dev->of_node,
-				    "rockchip,rk3288-dw-mshc"))
+	if (of_device_is_compatible(host->dev->of_node, "rockchip,rk3288-dw-mshc")) {
 		host->bus_hz /= RK3288_CLKGEN_DIV;
 
+		/* clock driver will fail if the clock is less than the lowest source clock
+		 * divided by the internal clock divider. Test for the lowest available
+		 * clock and set the minimum freq to clock / clock divider.
+		 */
+
+		for (i = 0; i < ARRAY_SIZE(freqs); i++) {
+			ret = clk_round_rate(host->ciu_clk, freqs[i] * RK3288_CLKGEN_DIV);
+			if (ret > 0) {
+				host->minimum_speed = ret / RK3288_CLKGEN_DIV;
+				break;
+			}
+		}
+		if (ret < 0)
+			dev_warn(host->dev, "no valid minimum freq: %d\n", ret);
+	}
+
 	return 0;
 }
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
