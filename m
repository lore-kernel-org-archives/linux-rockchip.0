Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B6EC4D1A431
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 07:28:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AX2FVbVSbLeDOMH9fAvpDpGuPW+93x8t0WzOVQrzh90=; b=IsJuw/iFc2xts6
	TgTJhZbQ/ls13ZrFDf65A5yfWnyzfa0dmndLJREScokRLxOjrFe13aOlKpFCK2DDiK8DgjUolE0EI
	Rk2TRDFRn+/StBD9xjH8kofwbZF9JM8KQzaW1gWiaTnD2Hngo/JiEF8sNyZoHeG5DC/QuLKaNCMqX
	pvDr/gkNxiE4+a7hFTk4t4ar4ihw+EM8SlyFIpmlWkYEp0eQeE2NdUfMf/vU4e6+LmMghmRNWoWOk
	vBuPbyzyctOZdL5cJXxZ6X1SQBAlUINCK+b2wY5jV4QNQVVJJ4wwq9mZ1iHMn/lJfd+62EtDM+Cex
	sSDeIipZ8wirctHJXh/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szWXd-00000000i8d-1ca0;
	Sat, 12 Oct 2024 07:27:57 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szWPw-00000000h4L-1GyT;
	Sat, 12 Oct 2024 07:20:01 +0000
Received: by mail-pg1-x535.google.com with SMTP id 41be03b00d2f7-7e9f8d67df9so1984272a12.1;
        Sat, 12 Oct 2024 00:19:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728717599; x=1729322399; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tveNarpSwjlEhM4Qolz0xMrvg/75/UUwTA0pqhWJ0Mw=;
        b=LL+pxCrE3cbplR7VNUitWXvjXinjz/BK7sryIsEwxJaYrLoE+Oqy+8R4jsM/RnFhX8
         876vWcieSUpDj6X8Sld4UbiU7igO+EVNwG2ZFWHS7gj4yhDKSuWQwwJe3rn8a93+J3V6
         pQDicXljzwh5+NAdiINjv05mzitBuf6xRyNUV+FGcH0tjXn/94DoOgIj8ogM44q7JqJJ
         xi9OT+CvxJARV7hKid5S+ok0cAdx/ksrUibx0zEz/IG8T1g7Lbu80twTxZSJSmjczBko
         Jq9Qjv6RiweR5fmZVgNG0DYF6+afFDZwh59GXDF45QqEuMgLHiTOZ5jpMjQ45gceCZcz
         a6Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728717599; x=1729322399;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tveNarpSwjlEhM4Qolz0xMrvg/75/UUwTA0pqhWJ0Mw=;
        b=LafPU5hMoDTvXpQJcmMITA+Rkv/pqqj55/0TO07FccE0rJ8BocJ7ym/xq+TjHy1WKv
         nn+VJJGb5LrcraUAWVIkaghgR0IJtbPkS6na7lKcnJ+hqZQWpedo+GIzEJQU/Ou9VHQG
         /1jnbm6hXUHo8elqDL0nA+OghqqF0BTLjzLaDN9HOOQ8K31Rvoc9qlxF/zIA5MNpCwI4
         GXjvHZLEiPZKwx/ER1YZSpjpwf7+OSvOLIPRHGD3lEtTzkxDF4aeKTcZekStM9tMq6eL
         kXZMeMdANDk+h2Fo0W3K50TMu9RwjvlLUyIoQwL887aklObUMns6h5rqIYlUeUPkTFni
         9+kw==
X-Forwarded-Encrypted: i=1; AJvYcCUretZNbHZDB79wgmszjX0+t6tBaUqRJu32FgYkiavrxZw5bLb/h+g7oNBgj90YDJlKpngW+Q8dd+Zk@lists.infradead.org, AJvYcCVmYoQnPOdBHrsgS8+ThBfGP95O6MiOVoTDYKqh/NYRCpLZ9Jbeh10SfDwdV3PIz+3BIkgnEGelF7w2QHlQr0xF@lists.infradead.org, AJvYcCXi1oHv4ClapYRjPZtxMdMBmkjEUllKcFt6MQxG8Ak64FBNDwBk9X1214NQaQFXoBy6vUHQO9VyJ2OpViAXb+4=@lists.infradead.org
X-Gm-Message-State: AOJu0YxD77bPNQbgVMtLO9HPlRIMsfCfTTKfMLG37w5UvB5GGw8PA895
	tpmoOR2WfhDq8+rRMVSXKEJLr3RI0hIHR8yjETZH0q4lKmHCG4Uq
X-Google-Smtp-Source: AGHT+IHa+OOul8kkfcVe5xb551ye568I+GFpxdHlOz9EhP0OrqwzuVKv5lNmoyUlXuqKze6HkNM1TQ==
X-Received: by 2002:a05:6a21:6e4b:b0:1cf:e5e4:d225 with SMTP id adf61e73a8af0-1d8bcfaa171mr6538150637.37.1728717599290;
        Sat, 12 Oct 2024 00:19:59 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e2aaba171sm3664620b3a.161.2024.10.12.00.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 00:19:59 -0700 (PDT)
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
Subject: [PATCH v3 5/6] phy: rockchip-pcie: Refactor mutex handling in rockchip_pcie_phy_power_on()
Date: Sat, 12 Oct 2024 12:49:07 +0530
Message-ID: <20241012071919.3726-6-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241012071919.3726-1-linux.amoon@gmail.com>
References: <20241012071919.3726-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_002000_362622_DE4A4C32 
X-CRM114-Status: GOOD (  13.26  )
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

Refactor the mutex handling in the rockchip_pcie_phy_power_on() function to
improve code readability and maintainability. The goto statement has
been removed, and the mutex_unlock call is now directly within the
conditional block.

Return the result of reset_control_deassert() or regmap_read_poll_timeout()
function, with 0 indicating success and an error code indicating failure.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v3: New patch.
---
 drivers/phy/rockchip/phy-rockchip-pcie.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-pcie.c b/drivers/phy/rockchip/phy-rockchip-pcie.c
index c84a3c209315..6dd014625226 100644
--- a/drivers/phy/rockchip/phy-rockchip-pcie.c
+++ b/drivers/phy/rockchip/phy-rockchip-pcie.c
@@ -163,13 +163,17 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 
 	mutex_lock(&rk_phy->pcie_mutex);
 
-	if (rk_phy->pwr_cnt++)
-		goto err_out;
+	if (rk_phy->pwr_cnt++) {
+		mutex_unlock(&rk_phy->pcie_mutex);
+		return 0;
+	}
 
 	err = reset_control_deassert(rk_phy->phy_rst);
 	if (err) {
 		dev_err(&phy->dev, "deassert phy_rst err %d\n", err);
-		goto err_pwr_cnt;
+		rk_phy->pwr_cnt--;
+		mutex_unlock(&rk_phy->pcie_mutex);
+		return err;
 	}
 
 	regmap_write(rk_phy->reg_base, rk_phy->phy_data->pcie_conf,
@@ -226,13 +230,11 @@ static int rockchip_pcie_phy_power_on(struct phy *phy)
 		goto err_pll_lock;
 	}
 
-err_out:
 	mutex_unlock(&rk_phy->pcie_mutex);
-	return 0;
+	return err;
 
 err_pll_lock:
 	reset_control_assert(rk_phy->phy_rst);
-err_pwr_cnt:
 	rk_phy->pwr_cnt--;
 	mutex_unlock(&rk_phy->pcie_mutex);
 	return err;
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
