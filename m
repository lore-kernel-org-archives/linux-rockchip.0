Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31816CD5BB1
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 10:03:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D0PyFBwL6Z3bdyqpcVQnFMf0MtEPX9BJbTejbloOQZs=; b=24Y70r8MTwG97N
	WEtChD6PZE8SQ5AVMNVhoU2frdpLvZceNvBFF+PZw22yY5JHm1Nb54kkmFbZwzr5020nS2iNe4p2q
	e5kqMXO3h6eMozxxdVhpBLW4pUYhuQtmOVg+kB8kJTqwPQ8FBwudes1cqDAf6jj56+sD1TnPrxXH8
	jPu3KJkNGWZmXJmFZwBu5TFYHRF4zD9OBtYpN3nhO57hbUONNMudhxwy/UjyGHntBAiX47QAJUO14
	Nlg43DkSvhP+PkyPMVTpPxapMBEk7FI2UNdjTBAdyGU+s7H2E3U5u8ekVBV+r4GH1RLWFXXLatLSG
	MEogFuJfhgODnzb5X2ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQMjT-0000000AQgR-14Vk;
	Fri, 22 May 2026 10:03:55 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQMjQ-0000000AQd5-30cZ
	for linux-rockchip@lists.infradead.org;
	Fri, 22 May 2026 10:03:53 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-2ba6485d219so53878945ad.3
        for <linux-rockchip@lists.infradead.org>; Fri, 22 May 2026 03:03:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779444232; x=1780049032; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ieAL7FXG9N2pPYlycZklbhAMC0pexNuJqkqoSDsbdHQ=;
        b=AHroY5c6l/AlhZAKhimXAeW4VSIFt8SE6DUIFDn8gmpde0gEQ0lczwanmdOwYFD1ET
         xzI+i6bpohhIJFl1VKT/9z5z7CmdJNJXnXxwSRjOd5Ok3t+q3DR2QKK4LJhLLBXCRTgE
         UPhotq6pTeP9I/Er5DqZGcKIk0tppH+622Lfgm/Kg4PNVK3KkxyURpGhDiqc+vRMUQkC
         cSGc+8/g//I1io/k4XC3p+80DYc1qc+0n6TOXEuWsow7i3Y5kQlRbcH7tSBg9eLYCTuT
         VD5r+IyzOyRoyqV+mvRxlmKiGAX9+AGKuWCRMw1NNa766lENPMq0tr9QNigUwBRhXAdm
         4uFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779444232; x=1780049032;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ieAL7FXG9N2pPYlycZklbhAMC0pexNuJqkqoSDsbdHQ=;
        b=ewEOhZd5nGkTw4UMDexwFxjiDmWVhy2wIZDuter0wyPWIZzbM/9H8TYYGD2aB/CU/M
         V99fqCp2X3S228JtETnf5t7dumyOvH88sy3DCReexon7sMPCeN5/H7FBtEmBrO0Lq/AH
         kQugFir6+WwpX1yuLKFinfh8zws80KmQiGd+gGyNK55vBASrgFD58kEEFbtpBr/EzPZU
         uT9yxIuETav9QVIiK8aGYWSGnxStBuyT/Gg3KvC3fEmxJd6kNaeZEcLwuksc9peehLBa
         af4JIBLwSBNWHiGl/Uo5huB0CSSqLNC3+HNBdr0ZZfmYjjj7b8gX/2ZJ4r9Nea0uWsxE
         5gUQ==
X-Forwarded-Encrypted: i=1; AFNElJ/fAZXT/Y7V80MRk47ikt2OlmUw9JMpXuXmmLcDk0PrnzyUBDBNCm+MH429vSGixi+bBQ1hVEVa9DzTiNkRAw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxEYJAwLjnWB/zyOhT52e9CFT8cTaorC5maK7VIuWYXv7KpPPcJ
	vEafrXfC1TSg316YvCiOo8qPUpK+42ERhvtclkXAdnZr6CJUv/liEbfO
X-Gm-Gg: Acq92OHhCaRKS75hd1/mYCQDEgQFpDP9IsQ80rVICVspS+in+EqZQ4uqJj2BZq50S18
	6Av/K3JBzr3a0wMVjW4x66SJ3vicR5WK8XRR0KBI3yt23ph8S3oNFoDJadClTPohWQ76x6+/Q0Q
	7ZMKQ8iol2p+WiIPUVvLRpA6A6TnbCCnfUgQLWiFcqUoI3H5QafMCLUyv5remzPWlX9N6agYRdK
	zCJ12K22+yB5eTzs6Y1mpet52QuLHSqhFODezdsoe5K6C+nMhoea5B4PzAUCtd1HKUz52UipUk3
	8r8iW4j/rXBtVTwpxLZyh+PSSrlA59ekYmkFBDGiMIBsbarXFZTHbJWTNqPy/Sh/8/MXcWQG5oB
	IsTioP7fjIitatUQEADx9koU43kpw7DbHmsvaUz8rCwbGEPzuovGi6VJfnyM4mBkAwBO1XiB2az
	c9PyMNHQ6yrJmmCPLmpljZ//FGyTukVZuSFEW30lwDzMVrEoE7Kljc6IEXYg==
X-Received: by 2002:a17:903:24c:b0:2bc:9f51:2922 with SMTP id d9443c01a7336-2beb06c45e1mr28671585ad.41.1779444232060;
        Fri, 22 May 2026 03:03:52 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2beb56f4343sm18683455ad.36.2026.05.22.03.03.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 May 2026 03:03:51 -0700 (PDT)
From: phucduc.bui@gmail.com
To: broonie@kernel.org
Cc: lgirdwood@gmail.com,
	perex@perex.cz,
	tiwai@suse.com,
	heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH 3/3] ASoC: rockchip: rockchip_pdm: Reorder clock enable sequence
Date: Fri, 22 May 2026 17:03:18 +0700
Message-ID: <20260522100318.73474-4-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260522100318.73474-1-phucduc.bui@gmail.com>
References: <20260522100318.73474-1-phucduc.bui@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260522_030352_768170_59288B1B 
X-CRM114-Status: GOOD (  10.17  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

Enable the 'hclk' bus clock before the 'clk' controller
clock during runtime resume.
The bus clock provides the register access interface and
should be enabled before the controller clock.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---
 sound/soc/rockchip/rockchip_pdm.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_pdm.c b/sound/soc/rockchip/rockchip_pdm.c
index c69cdd6f2499..8f78f7bc1806 100644
--- a/sound/soc/rockchip/rockchip_pdm.c
+++ b/sound/soc/rockchip/rockchip_pdm.c
@@ -422,16 +422,16 @@ static int rockchip_pdm_runtime_resume(struct device *dev)
 	struct rk_pdm_dev *pdm = dev_get_drvdata(dev);
 	int ret;
 
-	ret = clk_prepare_enable(pdm->clk);
+	ret = clk_prepare_enable(pdm->hclk);
 	if (ret) {
-		dev_err(pdm->dev, "clock enable failed %d\n", ret);
+		dev_err(pdm->dev, "hclock enable failed %d\n", ret);
 		return ret;
 	}
 
-	ret = clk_prepare_enable(pdm->hclk);
+	ret = clk_prepare_enable(pdm->clk);
 	if (ret) {
-		clk_disable_unprepare(pdm->clk);
-		dev_err(pdm->dev, "hclock enable failed %d\n", ret);
+		clk_disable_unprepare(pdm->hclk);
+		dev_err(pdm->dev, "clock enable failed %d\n", ret);
 		return ret;
 	}
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
