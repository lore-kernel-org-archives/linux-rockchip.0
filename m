Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63475D1AD4B
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Oct 2024 11:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XaPsls8Apfn6SinGkXzIKx9zC8GFkphtUCwIEdT/8I8=; b=I8Mpd38Bz0zehA
	wrWD7Sbh/4N5k6JHpwWP+pZK6/IhoopyfmqtnvttQDslIFeCZwplNNPYJE6RBzQr8VCN7z7lrvv8a
	ofuRJ6uCr+cMU3utydoaZS7HxScknBrP6RUMaRavMuwjUtkaBrWBSeFeN+ANQHcGOkxceXJU4oKMt
	8mU38jcs6FRV9jKoI7CLpC42zpVTY+RK0cIJ0KNayraXklWmngVSMUO+2MBn0b+T1eyB9pCSY+V/4
	CbbFFDPqH854blchc7cXXdT3y4WKMeZwb6HRtV5eGsr+NvVC4PtQKEuMVJjfCcBHxflBq6p9CppbG
	oMzeR41NIdOjlWIOMJEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t12bH-0000000BeMp-3VWc;
	Wed, 16 Oct 2024 11:53:59 +0000
Received: from mail-pf1-x433.google.com ([2607:f8b0:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t12XK-0000000BdKS-48Rk;
	Wed, 16 Oct 2024 11:49:56 +0000
Received: by mail-pf1-x433.google.com with SMTP id d2e1a72fcca58-71e579abb99so2700097b3a.2;
        Wed, 16 Oct 2024 04:49:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729079394; x=1729684194; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3IKPNbzzOzACLwecoRTNKGUBWVTmnx/6aags3CaPxhw=;
        b=ip8wc49CILQMVzFYKIvuyuYfahFh1xk8j8yzTXYDBYW5MWCGGg20rXTet7n5aDyUl4
         O3PixTam/x787cYdEQvlpPBuuotqye0oS4V82c55EbRWEms/7uYH6jPgLKvGTmL2yhpe
         5Q/mMt96f4JwpwMjCUBsQrtkqGH2pyjIFQur+L05HVpTMbpvlmWyynonXCX4e+kqDkZ9
         V5Pp4xcM+eC1fYSIhqK4XJy8nKw5b3QPTn3zGngskeAbV0ccXfkTUs0KG5boj16L+Gb6
         iLlvK/wraEm2/qaNzfPQtDK4xVuxo+NDnC37Ui+09EWUoNSnJSX6cQ83E/SgecuBv2IZ
         rNHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729079394; x=1729684194;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3IKPNbzzOzACLwecoRTNKGUBWVTmnx/6aags3CaPxhw=;
        b=t61Cq0bvHA9qpGwTnncYnqaYbyrxauOhJYTrffJN7Gyx2tR/QXvPQfwGoqry9dNm84
         KPRTVKzE5bpR+0c+XeXVeiLGWNZpZZAyKFJdAHU4aTKqeGuUbyO+sSsvzDJMwt3an3hr
         22eIsVMtPTy7LF47zdFM+1bbtYNpaVcs/L0WhEqT7YP7bhcyYLTBlvnu4yBcmi5F41qF
         gTT/HMcU9aa7CSMVE+MiaVXZbvHixhRbC/HywxQj5hf7N1asI4bGIhtBPEGiCG6Y8dTW
         ensufyzOT6eQ595IAgjHtjqoQt5BKwCdQTBZVg8b5WcqpLDeAmfb+fqlMypzaO3jHPGp
         3RkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVd+fm1rLsQyKt3X8ci9d1Xu6744g4w2e1RYWLiceXctDabmFZljcBZe7vsin6O89RF499tgIVindO3ZK8GjpU=@lists.infradead.org, AJvYcCWHLeboZ18EDTVS7HckSYTBsRVU0u8i6FoxidYjn3kb9R8PlLWNW0Gp/hcUZCCHAatNWSdlM+WSe2dXVr3ElgRT@lists.infradead.org
X-Gm-Message-State: AOJu0YxmfaI6GmpDIMp0+Pj5SETfvCi+B4Qtg7ey0jGdaf0IAP0P7fyj
	PxVuTq1rviuvLPM6tC+/9nwNi7tC6zzPAmLCdvV6CVplvEVJuywIeNUiFA==
X-Google-Smtp-Source: AGHT+IE2qVMWnRPLQLqcOC6ylNqm3GYoppiBrMY+Prai1dF6sxCkqO1q2WQEqjwW+zdMIX0ac6ZO+w==
X-Received: by 2002:a05:6a00:91ce:b0:71e:55e2:2c54 with SMTP id d2e1a72fcca58-71e7da37396mr4891602b3a.12.1729079393982;
        Wed, 16 Oct 2024 04:49:53 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71e773ea9f2sm2968702b3a.95.2024.10.16.04.49.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Oct 2024 04:49:53 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	linux-pci@vger.kernel.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [PATCH v9 3/3] PCI: rockchip: Refactor rockchip_pcie_disable_clocks() function signature
Date: Wed, 16 Oct 2024 17:19:08 +0530
Message-ID: <20241016114915.2823-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241016114915.2823-1-linux.amoon@gmail.com>
References: <20241016114915.2823-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_044955_044793_38D1F433 
X-CRM114-Status: GOOD (  14.95  )
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

Refactor the rockchip_pcie_disable_clocks() function to accept a
struct rockchip_pcie pointer instead of a void pointer. This change
improves type safety and code readability by explicitly specifying
the expected data type.

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v9: None
v8: add add the missing () in the function name.
v7: None
v6: Fix the subject, add the missing () in the function name.
v5: Fix the commit message and add r-b Manivannan.
v4: None
v3: None
v2: No
---
 drivers/pci/controller/pcie-rockchip.c | 3 +--
 drivers/pci/controller/pcie-rockchip.h | 2 +-
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index adf11208cc82..1699d49d24f2 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -264,9 +264,8 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_enable_clocks);
 
-void rockchip_pcie_disable_clocks(void *data)
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip)
 {
-	struct rockchip_pcie *rockchip = data;
 
 	clk_bulk_disable_unprepare(rockchip->num_clks, rockchip->clks);
 }
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index cc667c73d42f..3c63166fdc17 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -347,7 +347,7 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip);
 int rockchip_pcie_get_phys(struct rockchip_pcie *rockchip);
 void rockchip_pcie_deinit_phys(struct rockchip_pcie *rockchip);
 int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip);
-void rockchip_pcie_disable_clocks(void *data);
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip);
 void rockchip_pcie_cfg_configuration_accesses(
 		struct rockchip_pcie *rockchip, u32 type);
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
