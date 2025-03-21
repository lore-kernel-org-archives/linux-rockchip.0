Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C0960C36001
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Mar 2025 14:43:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E224W0w+3WANbRyycOU+pIjIk2t2kmqL6/vfPn6LT54=; b=TTC9RuQKjXsaAD
	s4sx0H5KnGoQP6HNzFE+x+2nFzl60YX9bJfJ7GUoU4pgGD/3D+znXfkp6NKGl8Tfkzl55yPQUtuf7
	M7zW3uE+avdzkPOdia3UV/TOMhfTccgq+ox86bvTJyQjCiQ3c0mDbFF4HlGaeS14Q7sJ96R2neSFz
	Jc6TpjNeIIhvwI8WxDEcMncys+5XWqwPSPAfhbD5RtSMGku2TzotOh86B5zhAeeeCzEHh02wzeotV
	6cCHHkjjucwNvWMEEdrxcpeq3xUimbpwhwBiWZVU4pwraUv8akpvTE9OLk9JJAFlnnxv81R3yON6T
	PjUCmBLS8c7XL/oyQA8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tvdas-0000000FATR-35of;
	Fri, 21 Mar 2025 14:43:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvdTy-0000000F8aL-3ZGl
	for linux-rockchip@bombadil.infradead.org;
	Fri, 21 Mar 2025 14:36:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Type:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=Ra/8DYijPPPXyKfJwTLkvfoC8/C3kF5QcCpYx+TRQN4=; b=oVzpjopst71Lgs+5D37sF4Gzx6
	O1cggH+c0piW5+U/MgWjrs6HcamSAB1cSY395YJcdXQ2jXw+NiPwAyPDpkvoH84JWnsVZQb/BHA54
	q/nAH8N8g7bMMnYf9sZHhat8FovQx7KWu13KD/ZmxNDp/O3urMfqLQ4ZJmvDdgZs4EyNzleNrKr4D
	6Q4mhi/kys5kWx6QB00qVaeRgyZx0dSl4WI0WipJn6gbI3FAVlMYEHLYXZpKaXK5548DSIC04Wdb2
	ykNbu4e6Y9YFLiqvedthjlbRMzWUf+cTI34ifaDoqoV15P30XU/vMrPLxkWoGBzzU54OVpUg7i00K
	MfqsVkGA==;
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tvdTv-00000004OH0-39M2
	for linux-rockchip@lists.infradead.org;
	Fri, 21 Mar 2025 14:36:21 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-43d07ca6a80so10189165e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 21 Mar 2025 07:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1742567777; x=1743172577; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ra/8DYijPPPXyKfJwTLkvfoC8/C3kF5QcCpYx+TRQN4=;
        b=Z0NMazvr0nzcqJW/VWvxSR6atAaNkXYoKsr2eLGq3gUI5qBHXovmECwh7mQMUV7dxA
         MPBwWmvTSG2mbpQBSCmIrRjytB7n/FGi+TGkKihjpt/BGLXEM+ljk5Nz1etMNomudnfg
         zPcxaIuvLJrLJAtgq6xKe9ukmnUMEqNHk5aW+CuH6OfBQAlJqISdMtxZgvq7F3CQRAum
         6nsMt5swMY9sUxLieWNTHGegekFUlpQdm+b6ALrNeb5IBZ3V4aa7JuRfYjTA7rkVfMuw
         uFh6VAfqNIyH7Jxf/ChP6gysE3nsaNdSq1xuRnIXKwNnTAUzSWU4knvIBI+nR/VhKKUu
         uHjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742567777; x=1743172577;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ra/8DYijPPPXyKfJwTLkvfoC8/C3kF5QcCpYx+TRQN4=;
        b=RYgaf3FldjfDWYKbiDoON6O+9+HNwJ/NuZ4dbMx/ArFoku5wU2uInVfxFtIIKthBZL
         85+8TSiTmFPNGOPH7YZ4ukCT3tlahrWVy5kKDfmmlL1DSDh/Z32bFCnnhCSLbSK3yj4z
         QFnsyJGtkf6TkNZTsdEtACtTDOi/1plTBYvQjpC2z+iig/du9l5gKM3F8wqm14d27ZV1
         lo+efjtPv56/s9mHACDhv3tO6A1j/qRhV55fj1bvG/6VhHLSA9j41VXqMsF7wjz1tAA8
         11hFbh0Szj/ZhBDrBrkM3g83rGVlN9VdHJM8ft2gD4YO9ajnWkpLkCQ9u0nb3qXgY2yE
         VXJg==
X-Forwarded-Encrypted: i=1; AJvYcCUtbnDtW4jX40rNwiA3V1B8RW4qnHhgyzqpBl22i23KDl7HUHroyb/yBdN1ImAMgaf/HRaiN8Ur2fWPpG0ZoA==@lists.infradead.org
X-Gm-Message-State: AOJu0YweZa/IdEjjorl99zbSl6G/+FozHB5nT7UOt/o+Dh5VtcS3Xfvj
	4ZnaT9/CtKZX8B/QFXFs6YbAZhwCrqMIbw3YlsWNjv8dwWed4LCKD8p6PyQogoU=
X-Gm-Gg: ASbGncsqoG7B4hJ8gOUEutUhjg3tch1VGuK1NScNEuSULMZv4Jm+THALRAfBHvfaKwq
	2VxymyJ6Il/N/jWhNhTRRums8eJSJO0Z5E8zRLduL4Wl5WCkJvaP/He0SEW4bd9on9/BsSHCpfC
	oyoIEq6km4aeVqQVaf/Fg/iRMhyQ01XPT3gn8eDak9iITALg+nmpJZ7gRu7DvI3G1JDpzCyjy6I
	HM/bGF/latixkOnh5T6A9Rnf1T48mT6acjjCcaXTyI/6jGTKGhbGsm8Sb4DWCQQSpzwjgY46Oba
	lwxpA5YZRMq5NZ4p6mO4d+XX9pP/JHORcNralZTq+fqi6BKklQ==
X-Google-Smtp-Source: AGHT+IEBLRuGXXY3Hg/ewdBvYCF4zvDlD21Rbhn+1Z3hKO681e8YV9SPfJqpV9SZgDhIe4keKF4QkQ==
X-Received: by 2002:a05:600c:8719:b0:43d:53c:1ad6 with SMTP id 5b1f17b1804b1-43d50a4ae7dmr28254255e9.26.1742567776837;
        Fri, 21 Mar 2025 07:36:16 -0700 (PDT)
Received: from localhost ([196.207.164.177])
        by smtp.gmail.com with UTF8SMTPSA id 5b1f17b1804b1-43d4fceafacsm29121045e9.6.2025.03.21.07.36.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:36:16 -0700 (PDT)
Date: Fri, 21 Mar 2025 17:36:14 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Heiko Stuebner <heiko.stuebner@cherry.de>
Cc: Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org
Subject: [PATCH next] phy: rockchip-samsung-dcphy: Add missing assignment
Message-ID: <e64265a4-9543-4728-a49f-ea910fccef7c@stanley.mountain>
MIME-Version: 1.0
Content-Disposition: inline
X-Mailer: git-send-email haha only kidding
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250321_143619_807400_C9405B08 
X-CRM114-Status: UNSURE (   9.79  )
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

The "ret = " was accidentally dropped so the error handling doesn't work.

Fixes: b2a1a2ae7818 ("phy: rockchip: Add Samsung MIPI D-/C-PHY driver")
Signed-off-by: Dan Carpenter <dan.carpenter@linaro.org>
---
 drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
index 08c78c1bafc9..28a052e17366 100644
--- a/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-samsung-dcphy.c
@@ -1653,7 +1653,7 @@ static __maybe_unused int samsung_mipi_dcphy_runtime_resume(struct device *dev)
 		return ret;
 	}
 
-	clk_prepare_enable(samsung->ref_clk);
+	ret = clk_prepare_enable(samsung->ref_clk);
 	if (ret) {
 		dev_err(samsung->dev, "Failed to enable reference clock, %d\n", ret);
 		clk_disable_unprepare(samsung->pclk);
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
