Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBDC4C2BBCA
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jun 2024 10:41:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9HxmkBoVg0P3icnT22rMmkUgY02iQP8y/uWpUcHuXlc=; b=Qn6zbTHbUb4iFq
	VfLoLB17eT/t2a1lVYA67tS3eAyRbWkmwcYxEckcAPyfxOiBt5HOjqq8w8lO4GTI+Knyck6DxThhT
	Nv9J89jCxi+djYtMxKaFUZw+CjGnxcQ4hgj/W6iX16ydNLbCySzgcq02yzyLHhcl4WAIi0Ejt+XfW
	33nnJErRz7egmCDs7SB8q7Dpflfu4+rlPYMV0yqzojcKmzcL4/El6UXUamLFnOGLR561YHfGkjxzC
	4SdzIedLv2GXRATD7TeQwcILi+ED4krlS/RdYXM2ax8BW78+SLHEY+Q27loUvHCUdFNAGi28eqTbz
	txROEVWGNEVto62/0eOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM3bw-00000002R1P-4BNm;
	Tue, 25 Jun 2024 10:41:17 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sM3bn-00000002QwN-07dS;
	Tue, 25 Jun 2024 10:41:08 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-71816f36d4dso2418280a12.2;
        Tue, 25 Jun 2024 03:41:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719312066; x=1719916866; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DLjqg6PN+pm75Wv6a0EOHeiThsk5WjokRwaAIzJCByg=;
        b=IjYtV9dvL8U1pIPXbBbRbO2DrIvDpxtUhuv+jB7RLFYsGcoI8ROnfCpXinnjKWTDlQ
         0NahfdfZ7F4+3j3OII/JVF3NDKstqn15DYuiTvueCH24OVKVstgmepkxC7hMwMQgwP4f
         R+CVe1ydaqCosER5mNT+KjCF6wWGB9GyeZREMsyGCzIwTh3VtZeK7cB7hABnxDsQCfXO
         4gOI/URAEeLPyhrjnQ1ix+Zvx8Heyp2MgnRX+g5QCvdvaOYyQ5jc2nFbjYAgIT0EK7Du
         r6s50Gb9UbYa3VbkiXImpBwrvVlQ/IRD2GJjPracS30BCcl15s4q2q6exWiaMGoxJL86
         Go5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719312066; x=1719916866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DLjqg6PN+pm75Wv6a0EOHeiThsk5WjokRwaAIzJCByg=;
        b=uze3ugSq2qTtyIotviYr2+tyZjT/mv03bRWaE1Q2jFXNQIOHp49PfRklTASkg3H0TX
         QdFSenphEu7om21Pgq/OTHElzzX93CLs1pr5wen5mS9Q8cFt1IzLA3IvAzpXBktaY6kp
         B9/0pYV22Azam3a5ic2MD0++HKHwx+2/HY70szwF+Q93nqfufjMueafR3MXrcKUcMb92
         q/uXrSNl9f4R7zQampbE37Z/zOULuiBFiEb3goF3KAxwSwzhIvZ5dju+jtursA0E2tuv
         vw6qAiLnSyLla9lA7WTmqiPJzcE1/vWLB2mcMsoIrGCu0qN4ISdJsdJfhIoHPqtoM3nh
         fgfw==
X-Forwarded-Encrypted: i=1; AJvYcCXhhHVq/I3f9pstDxBBGW4dZBwtCQOnlkTO8es05QAmLx9JP7O33GgxJRTWlvvIsSyzsSdHLWG1SnInCrt6L7nGLG/xlrO80O2JcWN8Ytjty3IW4Nm7EPhkkzuH3FHL9LxOXYhfNSwwarwZs9KIRWrCh7HRxN/orJ8=
X-Gm-Message-State: AOJu0YyTvYhyp0BlfqsaH9gCxwkMeZuTq/wNArUXa6mD4YUGQAer2hge
	Tn8XQ3rPV9jkH8oNsu34zAzKSnuqClYfUT2hVdxodV77PBnlotkF
X-Google-Smtp-Source: AGHT+IFYqQAjhwv2qL8UMHq2EMQeLwd7dv1oCSDvlSzxNm5PLh3wAj2R2zDMEP7eB9VfYrxJy3yGBA==
X-Received: by 2002:a05:6a20:da90:b0:1b4:da55:e1be with SMTP id adf61e73a8af0-1bcf7e75050mr9502228637.14.1719312065906;
        Tue, 25 Jun 2024 03:41:05 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7065e2c103bsm6943684b3a.92.2024.06.25.03.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jun 2024 03:41:05 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/3] PCI: rockchip: Refactor rockchip_pcie_disable_clocks function signature
Date: Tue, 25 Jun 2024 16:10:34 +0530
Message-ID: <20240625104039.48311-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240625104039.48311-1-linux.amoon@gmail.com>
References: <20240625104039.48311-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240625_034107_138988_3D939F92 
X-CRM114-Status: GOOD (  12.77  )
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

Updated rockchip_pcie_disable_clocks function to accept
a struct rockchip pointer instead of a void pointer.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v4: None
v3: None
v2: None
---
 drivers/pci/controller/pcie-rockchip.c | 4 +---
 drivers/pci/controller/pcie-rockchip.h | 2 +-
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index 024308bb6ac8..81deb7fc6882 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -272,10 +272,8 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_enable_clocks);
 
-void rockchip_pcie_disable_clocks(void *data)
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip)
 {
-	struct rockchip_pcie *rockchip = data;
-
 	clk_bulk_disable_unprepare(ROCKCHIP_NUM_CLKS, rockchip->clks);
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_disable_clocks);
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 27e951b41b80..3330b1e55dcd 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -354,7 +354,7 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip);
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
