Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFD73D16275
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Oct 2024 14:18:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNNIkwZWKC7phLwVw4BzJlmTyvNTRhMaaAat3cDHbEw=; b=qTDMCH7yeWEnGl
	8/G5n4JaPFoRNip2zBdmENQVstHLu3kAL2NcxkH/ypQmGfCqvEPmVHr23FLDm7rlOW39UOoESBMFi
	aPyJhJoi6G4XZq1raDBYXU51ny+86QVUKWMTvI8iTjPkNRb72ox6vKkwcX/bHJC/de5e2dlBcSbTW
	EHHMoS8s+Zal/nJuyj7oG1xXJVUB8ZdtIhYOoM9IedA0lCisEW5aMJPE5T3LLmA8573RuG47fYJhC
	6Tf2M709HfA6OkIkew1K9x1Rwdfj86JH8NpKpiQ/KysVIOT5GpR+hercXogn7y45N/914tKnpbUfr
	s6iRJ85MCqe5ZIds4bVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LuG-00000005Rhe-44ei;
	Mon, 14 Oct 2024 14:18:44 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LV7-00000005MfV-1xPW;
	Mon, 14 Oct 2024 13:52:46 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-7e9e38dd5f1so3362995a12.0;
        Mon, 14 Oct 2024 06:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1728913964; x=1729518764; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fse7R+jyfvmxQ04/zP3d7oNQrkd2ejgxhVtOLTVYKFA=;
        b=KmSwg10NJynBpGhh4T/qNzWRByr8tT9VY43Tw3yQozXRVvPDY9IeHoZUMYecWHFAtg
         3PqQ5zQvm9RKPwvep5/AAkZVKoqHxGlXVmQ6vayeSbLfK+A2hbDbXi/VTXWeWGcNlJGi
         SdmnUddvG0VFgzXANwV5o86KStKIblXEaAfxmLHbLGsCtVa7TSKAyKsAm5iCwW849ZJk
         Na72XvBjdQ3V6oImehhApoZJBtZd/g1bnXmMKhiKNJsqhzpsQdTFF2j55ASau6BSVRhq
         ZZesWBoDeO/60PFCOpXPJzfQAxWco/5rNLD4j+JW6PqWh/8UmlsXoI4thfwZHw9hwiAN
         ODNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728913964; x=1729518764;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fse7R+jyfvmxQ04/zP3d7oNQrkd2ejgxhVtOLTVYKFA=;
        b=RIfqBIyXYYy7kUucGyu52KaNiiJNJVO5hbY0M5rRnqSNSCczrxcEPbpf1KEiWWvl2C
         OCCIlvNwN6sOwvB5fOKVVRFRk54Lx7afBHJxHPFKutI0JxCjc0fVxVgeYPOP5BSBVayz
         VaOAAZDGXzdcLPpXmr+6pJBX6CrZnKUjr4Kbv90xwJdYqhK6rFXTY2B+mf7Y1J9P+C/5
         6GXxFp2z3v+PF1vCY9ByU6YRDaVBOv03scp23lnnTGziLiX/UbR+CgMvc6Wl2Z4lB13N
         2qlMQiMLfCjCpkSeez7uBDKY7Dqqzblp6J5GaBRGI4CYnV93q+jcPSrD3oLmxqL9z1mZ
         wgWg==
X-Forwarded-Encrypted: i=1; AJvYcCUaFQ4Rcu8oHn0T6zvS8mZGh2PZ1azfCkUKZV2m6ULbeatrHgo4BsnNYOKNdEjUlduq/QkW0aICVnyeSY34v10=@lists.infradead.org, AJvYcCXDnvaz2XvDsCQz9gC8Aw01WCQ2s3ewAwtqx8icOdzyAHP/6Yfe0rYIQ2SWm1rTkXAY6tEEZBtpCj+Xj2vvbms3@lists.infradead.org
X-Gm-Message-State: AOJu0Yxp1LmvZYJPXLTBPQYrOWlm5bewt60ibZLH7KKhKg/nub+WDZdt
	2IMUSCv+xEb/g1iBcNKgZUE953RgDTvtgpPNVPXoQfAPYd3UQfX2
X-Google-Smtp-Source: AGHT+IEUPGagVMOC9KCLecIWnezdM5vWHBTxQuVtaECFWLCdoXEIbPVt9GIICdlpAXiKjEaDRjzGCA==
X-Received: by 2002:a05:6a20:2d22:b0:1cf:4fd9:61db with SMTP id adf61e73a8af0-1d8bcef1217mr20431553637.8.1728913964134;
        Mon, 14 Oct 2024 06:52:44 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8c0e74d6sm66469135ad.166.2024.10.14.06.52.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Oct 2024 06:52:43 -0700 (PDT)
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
Subject: [PATCH v8 3/3] PCI: rockchip: Refactor rockchip_pcie_disable_clocks() function signature
Date: Mon, 14 Oct 2024 19:22:04 +0530
Message-ID: <20241014135210.224913-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241014135210.224913-1-linux.amoon@gmail.com>
References: <20241014135210.224913-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_065245_527815_CE93959D 
X-CRM114-Status: GOOD (  14.63  )
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
index 43d83c1f3196..eaaab7c11323 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -265,9 +265,8 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
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
