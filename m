Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCD05CFB440
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Oct 2024 04:01:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JuZxpaYQATTuOajnsE7+bszP6tvzR0wioLHGgxdv8fA=; b=4TR/3bpcdlcEn5
	CjQ74sFBOMzbQvrqSRLITWCxCt2vuqdcN3HfZn0Rn+StwAJtvzJCpoBAd0lNUSRFAVymRLN742cUQ
	JN/pz5vuqzHDF3rNBoHLqf4SfBpRtvcXLzMT9IaDvjwFIOLHojnvbNTjE1z5PSYht7y7qG/3wk7sW
	rBPCMzxpEGbNDO5ChUt9jeQfu+KkEBdt4Kf8ENqQYWsCpodJq6GK4Trj3dIVbPx5ygMSUVyqF7BJe
	7slhfC8m4GsDIXJJvdNAziy/07oDNleBUeTCG7fRCAK+IBel1YEAfnan5vesabDeOJZrLOYGmIWEp
	NEvY9FbfYeW+uWz1SqVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1sxewM-00000001CAz-2X8D;
	Mon, 07 Oct 2024 04:01:46 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1sxerT-00000001BUD-0RHJ;
	Mon, 07 Oct 2024 03:56:45 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 3f1490d57ef6-e288efeb4feso3126389276.3;
        Sun, 06 Oct 2024 20:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728273402; x=1728878202; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=G6eSRE8PNh/DxA4RdaK3Wt2RcDD9+iNYAeS9X6qJVfI=;
        b=XgTBlPLefLGzf0fI0lC/X2PmTgFKDyHEP7LpG8/zdOCtInXAtmPmQvKSfcooUzFdOG
         WuN/+GprQM3qT7CC1vJTPkt9+oeS0chv2pqbkRUhxH6Iq4d1WGeoQxE3FUs9ASfo7Wa0
         TqFqDZ3mbTZ0nyZUVvOBtrL4mAW8k/0ScfrD7PagrYTHGDKQYf4vFqUjT//VzhIiZP9t
         razOGka9Ogk49l1tl3Ny4X8bOjLM9OpwWklQQs4LeHmFO5XePat4ZbByaMG9tIEGR4/E
         NcsiTkcViySoDoGbCuE7pAS/yoFEBHl4nA7h7JIuqnFptX3nu37s1qsDmSZSza/XWDAy
         N40A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728273402; x=1728878202;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G6eSRE8PNh/DxA4RdaK3Wt2RcDD9+iNYAeS9X6qJVfI=;
        b=tirZyvviGWjP34TqBEmZxPvH/fWbXkfkq+70mHBPnIsucAHd5n7Jdcw32lTqACyoJ7
         lBmM7yg1MET1fnEXCZ2AFVWr1L9tUF/QxZZFFp8WGgx7uguJ099RIOuds7nO6/+B4GYD
         uQXjKesHVhMOEZEmRORNNWD1LeDv0BrrW0TWfqkb9MvTh3Dnl4KYgSUzIu7x+RoF9l/R
         9UWa0JAmVvg5/48Vuqijtkjtc1tT02NPXcSizumqoP9SFmu6KcOjqxwASKQvMqSxIhRH
         Hg/CWP32NYqZ5DE+bIjmxaunNzelFWg99wR6FMSvy6CrjZLWwXx9VHCzadFWPj55ecpJ
         0Gcw==
X-Forwarded-Encrypted: i=1; AJvYcCWdLd8x3ZH0H6Nju1PDHxj3IuXiz2PQW+UHFGnb4GCCD+/lpc/8c09C4iWFw84n282e2b9jKqypqeRU@lists.infradead.org, AJvYcCWdeTvrQZKPnX2rCJxMpbOeHTuOLR+tiRO+u4KHwkOQ+xXx61GMPWZiRGqRI9JF6gBPJWvIcXxAeSgESnAp3mY=@lists.infradead.org, AJvYcCXV646AO081k3qQidmz7O/ISPxNlqUzH2g6qOahQ3/nIwGnHNMd6zenCUBDobBaYiFWy7SRgxxJNLP3FfBS6ZcU@lists.infradead.org
X-Gm-Message-State: AOJu0Yx3G69LZB2/y5LtD385UwvBQxqKExVkxIaGIDDqu4QKfRbj2Zqt
	D5sNaPgtkyFUa2M/Ql5gapCDh2JC7r4gLyfPyNSjxsSfM1uCrMCm
X-Google-Smtp-Source: AGHT+IHNeJw7Y38Do9bLCUY+sRwFyUhcdw/O9uY3zyz1MoVfAXMmNmgLF8VUGm8KzFOE0Mg1zPkztg==
X-Received: by 2002:a05:6902:2192:b0:e28:68e8:ccc0 with SMTP id 3f1490d57ef6-e28936c62e1mr7534463276.11.1728273401633;
        Sun, 06 Oct 2024 20:56:41 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71df0cbbac6sm3451322b3a.39.2024.10.06.20.56.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2024 20:56:41 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v2 2/3] phy: rockchip-pcie: Use devm_clk_get_enabled() helper
Date: Mon,  7 Oct 2024 09:26:10 +0530
Message-ID: <20241007035616.2701-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241007035616.2701-1-linux.amoon@gmail.com>
References: <20241007035616.2701-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241006_205643_174287_9BA1A505 
X-CRM114-Status: GOOD (  15.58  )
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

Use devm_clk_get_enabled() instead of devm_clk_get() to make the code
cleaner and avoid calling clk_disable_unprepare(), as this is exactly
what this function does. Use the dev_err_probe() helper to simplify
error handling during probe.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v2: Change the subject drop: Change to use/Use
v1: New patch in this series
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 25 ++++++------------------
 1 file changed, 6 insertions(+), 19 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index 51e636a1ce33..a1b4b0323e9d 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -277,26 +277,16 @@ static int rockchip_pcie_phy_init(struct phy *phy)
 	if (rk_phy->init_cnt++)
 		goto err_out;
 
-	err = clk_prepare_enable(rk_phy->clk_pciephy_ref);
-	if (err) {
-		dev_err(&phy->dev, "Fail to enable pcie ref clock.\n");
-		goto err_refclk;
-	}
-
 	err = reset_control_assert(rk_phy->phy_rst);
 	if (err) {
 		dev_err(&phy->dev, "assert phy_rst err %d\n", err);
-		goto err_reset;
+		goto err_out;
 	}
 
-err_out:
 	mutex_unlock(&rk_phy->pcie_mutex);
 	return 0;
 
-err_reset:
-
-	clk_disable_unprepare(rk_phy->clk_pciephy_ref);
-err_refclk:
+err_out:
 	rk_phy->init_cnt--;
 	mutex_unlock(&rk_phy->pcie_mutex);
 	return err;
@@ -312,8 +302,6 @@ static int rockchip_pcie_phy_exit(struct phy *phy)
 	if (--rk_phy->init_cnt)
 		goto err_init_cnt;
 
-	clk_disable_unprepare(rk_phy->clk_pciephy_ref);
-
 err_init_cnt:
 	mutex_unlock(&rk_phy->pcie_mutex);
 	return 0;
@@ -375,11 +363,10 @@ static int rockchip_pcie_phy_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, PTR_ERR(rk_phy->phy_rst),
 				     "missing phy property for reset controller\n");
 
-	rk_phy->clk_pciephy_ref = devm_clk_get(dev, "refclk");
-	if (IS_ERR(rk_phy->clk_pciephy_ref)) {
-		dev_err(dev, "refclk not found.\n");
-		return PTR_ERR(rk_phy->clk_pciephy_ref);
-	}
+	rk_phy->clk_pciephy_ref = devm_clk_get_enabled(dev, "refclk");
+	if (IS_ERR(rk_phy->clk_pciephy_ref))
+		return dev_err_probe(&pdev->dev, PTR_ERR(rk_phy->clk_pciephy_ref),
+				     "failed to get phyclk\n");
 
 	/* parse #phy-cells to see if it's legacy PHY model */
 	if (of_property_read_u32(dev->of_node, "#phy-cells", &phy_num))
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
