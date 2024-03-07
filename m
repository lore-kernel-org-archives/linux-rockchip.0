Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DBE1C54E55
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Mar 2024 09:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tBEeyn1xq46NvuaKj0vdE+l461YNzOAUGoyPOcJ9FqI=; b=wdlNhWlUGBxbhj
	pD/wDSu+n2P3LhMNbnQBJmSx63jWrZVmIUV6uGBGHVQ/8t2hI2PY4Q8kv9ahKAXRNKzMjnUr4zvYO
	1OclgeEnbCvubMZZ1+F/tSysDr9x9kaZxoiY1fyLDw+FL8qAn3id9EnX2CrwpcxTZUOuU4IEbGq99
	RJlj65+hL7UJy7s4v0YGnmzbEnvn6suE4CcUjWsVXsse0qTSR7cq75wya/iv3LCo5XmB/iFHhRxX1
	x2hLFKuhlxcoBV9NjrovI7ujVd5psV2iinrY5p2Cj4029QGa0OGQWd9nUBCMX1fxYw3GG1Uk683Zt
	s5pLkvz42SptaWMbfKEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riAS4-00000003wS7-4BDP;
	Thu, 07 Mar 2024 09:54:13 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riAS1-00000003wPm-02B0;
	Thu, 07 Mar 2024 09:54:10 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5645960cd56so902285a12.1;
        Thu, 07 Mar 2024 01:54:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709805247; x=1710410047; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=I3DIVgIQtbxBFgHYdrkm8qDZTG2wrsK4cDuPuZWRLf8=;
        b=Ga5lVUaEHdAgujszLcm1GZO3ULExzg6V6O7sm5LtAJBYLqNKcHnLIUr+k34yEb2Sl/
         8USg64qxd88vAyshy/HefKNAggAA6GjmBSpZNF21v3xdWu0cGoBrV/9rGLRwGvvrXONK
         J0e2JmC5yCBjznYVex41oScapYs7A4XZ8iyoP+xfgWC6K5zH2cYzGJCDkOguPYN4y9jX
         ZypmdaJFFfFfYAjabq/h7cI5O5Nf/sbCLN8ntE24/3qI9f9XH0WEaXDW0+Qmyjv6pbGD
         nYHrGXmLgNii6M70t6F6CKA2cIj7+hdXiQYufHtMMXdG7v6Es/cOPhDcKSuXD1fzLoEH
         1c4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709805247; x=1710410047;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I3DIVgIQtbxBFgHYdrkm8qDZTG2wrsK4cDuPuZWRLf8=;
        b=v+/TpdzfxpA9HXckQeALMgxvEOkZnl5VeU2PA87+LCwDLyua/2+Ihr+IKZ7JDN8zfS
         5/rsHF73EnAoqBW3v8dM+us9q9Yc1R9zGaxJPn+4ozg8/ycEJlJ9TFzDbKaon48Mn0Hc
         9Whh96Ip8P53qWqW72kyinbaBPqceYlaeuVQApJJnERXII+U7i+TKR+qJEG8DFP/NFTf
         weAyWiVDVw+ylZtcJXtMdu7xzZNNt7/U56E3EXIaOdnQyI8K4eHq+9/LCTsDk3UPq3i5
         yssiFK4MQ/HIIqYmeqxKj2uGHFT1iW0a8801uaTdqCciYdozPkdJ+LHlqqC7ulq/89Zb
         FpdQ==
X-Forwarded-Encrypted: i=1; AJvYcCUi5bu4LvDZ9+RwicHHFTfn+03iJ20sRJAm+oHKeapQd4zLSfPiIiEfsky2WUudE+HTwg+nR9kP0EbbHR5i3IV2SBCUe6mPMa6DnqoBguZiAimIZ8B6Z8v+SvTt4z/rLolZeT4vb3Ep4rbZ2Pd87uXGh2AmJRIsDrZ8iknDJUSEQKgvmEx9EVTX0Nrz7vMSH3laEZDUESLL
X-Gm-Message-State: AOJu0Yweo71kDYi4JShxO8Pl8YOuEi557XIGely7O0dlx0LM/MkR51FQ
	DS+evFoFOrjLuHSLr/LyrTCWgKiWJH+Y+gqq2YjFLMHxa7qgNtlf
X-Google-Smtp-Source: AGHT+IFDJOZS/zcttQ6vcsVUUH0Zmr5rEjPzF+lqN6Lwja3v7FlWo2VmnQhf4hz0lp0IoV7IsGnq4w==
X-Received: by 2002:a05:6402:1d8f:b0:566:ac71:97c5 with SMTP id dk15-20020a0564021d8f00b00566ac7197c5mr10655634edb.18.1709805246915;
        Thu, 07 Mar 2024 01:54:06 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id d17-20020a056402517100b005671100145dsm5686202ede.55.2024.03.07.01.54.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Mar 2024 01:54:06 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: rick.wertenbroek@heig-vd.ch
Cc: Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: rockchip: Fix typo in function names
Date: Thu,  7 Mar 2024 10:53:18 +0100
Message-Id: <20240307095318.3651498-1-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240307_015409_066328_1919933D 
X-CRM114-Status: GOOD (  12.33  )
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

Several functions had "rochchip" instead of "rockchip" in their name.
Replace "rochchip" by "rockchip".

Signed-off-By: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c |  4 ++--
 drivers/phy/rockchip/phy-rockchip-snps-pcie3.c     | 12 ++++++------
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 76b9cf417591..35d5c18661a3 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -245,7 +245,7 @@ static int rockchip_combphy_exit(struct phy *phy)
 	return 0;
 }
 
-static const struct phy_ops rochchip_combphy_ops = {
+static const struct phy_ops rockchip_combphy_ops = {
 	.init = rockchip_combphy_init,
 	.exit = rockchip_combphy_exit,
 	.owner = THIS_MODULE,
@@ -352,7 +352,7 @@ static int rockchip_combphy_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	priv->phy = devm_phy_create(dev, NULL, &rochchip_combphy_ops);
+	priv->phy = devm_phy_create(dev, NULL, &rockchip_combphy_ops);
 	if (IS_ERR(priv->phy)) {
 		dev_err(dev, "failed to create combphy\n");
 		return PTR_ERR(priv->phy);
diff --git a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
index 121e5961ce11..3cdc7625b308 100644
--- a/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
+++ b/drivers/phy/rockchip/phy-rockchip-snps-pcie3.c
@@ -187,7 +187,7 @@ static const struct rockchip_p3phy_ops rk3588_ops = {
 	.phy_init = rockchip_p3phy_rk3588_init,
 };
 
-static int rochchip_p3phy_init(struct phy *phy)
+static int rockchip_p3phy_init(struct phy *phy)
 {
 	struct rockchip_p3phy_priv *priv = phy_get_drvdata(phy);
 	int ret;
@@ -210,7 +210,7 @@ static int rochchip_p3phy_init(struct phy *phy)
 	return ret;
 }
 
-static int rochchip_p3phy_exit(struct phy *phy)
+static int rockchip_p3phy_exit(struct phy *phy)
 {
 	struct rockchip_p3phy_priv *priv = phy_get_drvdata(phy);
 
@@ -219,9 +219,9 @@ static int rochchip_p3phy_exit(struct phy *phy)
 	return 0;
 }
 
-static const struct phy_ops rochchip_p3phy_ops = {
-	.init = rochchip_p3phy_init,
-	.exit = rochchip_p3phy_exit,
+static const struct phy_ops rockchip_p3phy_ops = {
+	.init = rockchip_p3phy_init,
+	.exit = rockchip_p3phy_exit,
 	.set_mode = rockchip_p3phy_set_mode,
 	.owner = THIS_MODULE,
 };
@@ -280,7 +280,7 @@ static int rockchip_p3phy_probe(struct platform_device *pdev)
 		return priv->num_lanes;
 	}
 
-	priv->phy = devm_phy_create(dev, NULL, &rochchip_p3phy_ops);
+	priv->phy = devm_phy_create(dev, NULL, &rockchip_p3phy_ops);
 	if (IS_ERR(priv->phy)) {
 		dev_err(dev, "failed to create combphy\n");
 		return PTR_ERR(priv->phy);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
