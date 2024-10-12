Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2BD2DD1A442
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 07:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=durKsc+n0i8ULUm31keJ8jocer/xxYx9t0cnKMI/IWc=; b=NAZq21XVaqTa46
	BNhCFOzhh5qUVO/YiYbjWYJu/z0l/gqIhFLFnnBjeh+O6v3ytEZSpCmeqDVNNRWCdrhghxCLNkBx1
	2kkyTa1QJ+QCUCojr9FMyQWNIKsFOCrsCCSzky88j8EJBOt7QJfGJ933Pim/I5S2bq8JaFb20qeBH
	+nx/tPI2+FnuhkI6VzWtjZuI7lLZiUyNZJmLSbBT0gitH9YxmFoITx1eUK6sMaX6QTU9VccKTDbo7
	feWReT7PdOnMyND8Xfj4wzL1y2+JzDUtLnIeC5mL9rfsAYGMa0VBKkmc5sEABKNpAjmzCxKXIXIya
	D31sAmFWC0iHGe3dEWJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szWWH-00000000hvb-3koq;
	Sat, 12 Oct 2024 07:26:33 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szWPr-00000000h2k-1CuC;
	Sat, 12 Oct 2024 07:19:56 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-71e52582d0bso84203b3a.3;
        Sat, 12 Oct 2024 00:19:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728717594; x=1729322394; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=97G2TijBo7TJKDwdLKVOfvTHrYI49lDUOlitVvXkVUE=;
        b=PvWM4nLRksmA2KKeYRmejHQW8hLmAlX0Pt2t2KugITsaR25vWhql0t8/OZcDTzEpzK
         RUskU9O8hY/qt5+Mv9XZlUuwqMz5xbDEiP3zReYFrJoXMM4Qq14VMM2A9VmWSnWqdrOV
         SfNoimGh22gpxLJV4v3h/EhSXX+PDshrgUOcM/3yW9JSUR3EXbBaNKAaDR3EHffYWFxV
         1cmzs25OOQhbXIkd/VI67LJuBCANsGfMjkQyPZB7kNvoK8A3+RYCVA4ooEUiJ1khjV9V
         Qpy05UXea4E6tDvGVcx3xxKC1eQmt3yTRw/zU4Mebt/gYVMhQh3/9q5N6ISHe6iqRsq8
         6A7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728717594; x=1729322394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=97G2TijBo7TJKDwdLKVOfvTHrYI49lDUOlitVvXkVUE=;
        b=gd7P8j3I7XdtB13DCUAb8xHHcKj2/oKNHQGnPqWsD6BW/NOtjwb4o73RmeJTRYQs1N
         K9yY7FtayOzyGZ2g+wX6wyGMUmkVlwjBV7cg7b2y6wDJGNF7L7Fn52FDmHzEu6WmmN6V
         sjt1niup/CTIMzIPMhqol+lT8H5YtDuounp1vkVSha0hEask29F0xLjW6mmEtQzXygBg
         n3eprKPy1H1MpR49vl5iM2ihAHBTZS0BgIMl/g6axry573YRBgveviVh/hfqo2gotexj
         4LhUVN8HPuME6pvmzabDQdZfUGFSqno/x6Ii8DJ9ldYLDa/scfg3NDe5ddi4pVSZaH0s
         47sQ==
X-Forwarded-Encrypted: i=1; AJvYcCV4QDVpITZafXHuU06xuzX0VGCflYC4YI71Q4W2JR5kiSl0HCZRPqStzTovX/ARF9m3VD8xfLC12Oc2iiAD6/k=@lists.infradead.org, AJvYcCW1ZhCw+fdr4PCL8yMIeXt0Tx/KHqjFllhvfqawCHsJYHdFFkH8pc9L+RBAmQt7W7VwlJNU9psAf6Dera03jp6i@lists.infradead.org, AJvYcCXER+oaPEpR7HUC616RLiyXe+Zecbz0kRA5dc5B1ndK5Xj0iNw6soWd7GRp/OKvNcDNnlpot2GCDNiz@lists.infradead.org
X-Gm-Message-State: AOJu0YzLGbPXGlDI2+t2lZR4ueF5MmsPs9PKxXDMy3GzA0hdRYOzYqgg
	BJ2rYdQ9DMYJBJZxelIHKIQq2bHh3G32mX+IxvUQu7E9isu3Alv+
X-Google-Smtp-Source: AGHT+IGQCNKpLK6KUs8VSkaJ0d7emmgc4XI8SJDHYeYoaej9YcBG4bftnc4g9GOFwvVQAzJ0Rkljkw==
X-Received: by 2002:a05:6a00:189a:b0:71e:4655:59ce with SMTP id d2e1a72fcca58-71e4c03044cmr3762274b3a.0.1728717594320;
        Sat, 12 Oct 2024 00:19:54 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2aaba171sm3664620b3a.161.2024.10.12.00.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 00:19:54 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-phy@lists.infradead.org (open list:GENERIC PHY FRAMEWORK),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>,
	Dan Carpenter <dan.carpenter@linaro.org>
Subject: [PATCH v3 4/6] phy: rockchip-pcie: Refactor mutex handling in rockchip_pcie_phy_power_off()
Date: Sat, 12 Oct 2024 12:49:06 +0530
Message-ID: <20241012071919.3726-5-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241012071919.3726-1-linux.amoon@gmail.com>
References: <20241012071919.3726-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_001955_346263_FADB36A6 
X-CRM114-Status: GOOD (  12.78  )
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

Refactor the mutex handling in the rockchip_pcie_phy_power_off() function
to improve code readability and maintainability. The goto statement has
been removed, and the mutex_unlock call is now directly within the
conditional block.

Return the result of reset_control_assert() function, with 0 indicating
success and an error code indicating failure

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v3: New patch.
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 26 +++++++++++-------------
 1 file changed, 12 insertions(+), 14 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index e60f24b0b363..c84a3c209315 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -132,26 +132,24 @@ static int rockchip_pcie_phy_power_off(struct phy *phy)
 				   PHY_LANE_IDLE_MASK,
 				   PHY_LANE_IDLE_A_SHIFT + inst->index));
 
-	if (--rk_phy->pwr_cnt)
-		goto err_out;
+	if (--rk_phy->pwr_cnt) {
+		mutex_unlock(&rk_phy->pcie_mutex);
+		return 0;
+	}
 
 	err = reset_control_assert(rk_phy->phy_rst);
 	if (err) {
 		dev_err(&phy->dev, "assert phy_rst err %d\n", err);
-		goto err_restore;
+		rk_phy->pwr_cnt++;
+		regmap_write(rk_phy->reg_base,
+			     rk_phy->phy_data->pcie_laneoff,
+			     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
+					   PHY_LANE_IDLE_MASK,
+					   PHY_LANE_IDLE_A_SHIFT + inst->index));
+		mutex_unlock(&rk_phy->pcie_mutex);
+		return err;
 	}
 
-err_out:
-	mutex_unlock(&rk_phy->pcie_mutex);
-	return 0;
-
-err_restore:
-	rk_phy->pwr_cnt++;
-	regmap_write(rk_phy->reg_base,
-		     rk_phy->phy_data->pcie_laneoff,
-		     HIWORD_UPDATE(!PHY_LANE_IDLE_OFF,
-				   PHY_LANE_IDLE_MASK,
-				   PHY_LANE_IDLE_A_SHIFT + inst->index));
 	mutex_unlock(&rk_phy->pcie_mutex);
 	return err;
 }
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
