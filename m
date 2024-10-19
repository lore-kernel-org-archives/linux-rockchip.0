Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A44ED3E1AD
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Oct 2024 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i8VSWFVJn98uguXkKaL7f72PBBzKCcAONGY3OvT4BTw=; b=2OH2/QAgKJpkO9
	a76NkGQt3W7OvO92hpteuV5pWjQlm3daKiUV807NaqKTBxiUQZWUCRy+KUQLDAEh6lnBd5qOThLAJ
	ayJbu3mE6BUAVTaDkCo8Nhgb57QzVFQCz3vmuRQvwHZNA2C8e9nkfUFOnezvwb7qRC/iwm+mWVfMQ
	zw0EwTO3XDYwp00AKDo6EUcMC2LxqYbQKH0WUnU6ozMVdBoHrbNtcR/K09U/4deObk+2hm8xOdRzr
	kQPgTpwoW9kdCHhvF9NukI1QSiXPzxGE5gtPWyh4Y+cvXbZCK3kU8sBOxZksYzBaz49kNZj8+5oFT
	rM0fI5YmzQ+cTaJp0o/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t22bd-00000002dmk-2WhE;
	Sat, 19 Oct 2024 06:06:29 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t22Xb-00000002dJL-1tfa;
	Sat, 19 Oct 2024 06:02:20 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-71e49ef3b2bso2083204b3a.2;
        Fri, 18 Oct 2024 23:02:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729317739; x=1729922539; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oUgasqhf2zFGDtxIVfIDzPQhIor0l5/59FEipaEvi24=;
        b=PghWSHlkT6i09RwBuMCOlDttRAt905lmUbgGnqQAtM4YIZL5pLDCZznAVfBnVYjLNW
         1B/kARD51RFYhmH7PC1Bv70TCJDnBVPNZnSYr+KNGg8PuIdluKmaL8O0L9C+JRHWn2Sx
         MOApCKl/Zefwu7NABFYounaCp+vXAvKvtdRxmoCF1n6/yVcetc/6vJof8LyfaZeC2PJc
         kKtDV0sSO/NfcWNR2uGkJceLHFspHqt5cUnk3l+mLVqd+Mv6uQCw45UQb9Te9xWjyd0P
         eo2zPEhNWwJyz9s569uhU2TeQd3bVmj0G0OmvHCiSafC6ogVScfy5K3Pwg8K9qxic8TT
         XB7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729317739; x=1729922539;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oUgasqhf2zFGDtxIVfIDzPQhIor0l5/59FEipaEvi24=;
        b=QYQTZoj7ash+DCTl4ZbTZNyG98rLy8Eza4iVoFe+bfyUJRFDsPiVHaDSYsFkOntrM+
         tfQZM28kbe6fYfcB25LEx+9VsycsDGHLZeY8qXKQiYWqoFG1kcckOmPoCBlDXIHCf5U2
         R94WdYpS40p+zjxxnbNIPnuOfwdYfF+Of1eWmV+XPZFuGXjLTJXsSlfaD+k9rjEfnllR
         HCEvm1A5cmxT4y6KCqqf2vWSWtsewRZvbkar3R+earLUhbKZW/UOFa90cti8cKptSVCO
         dL0bsqfVo7H3QWt80ws30e5KURp4D1qGOWcneMytt+xsInaPFhaWOiCZi3Mowattxgfp
         6lzQ==
X-Forwarded-Encrypted: i=1; AJvYcCW0J9f7o1KIeJ34OimzPpb65neyQFUqi/WjJO5svcQv8Lv2cEiLllcP0I5wlZ2Dm/UnEMWMn8Wy+cvqR0q+HdQ=@lists.infradead.org, AJvYcCWynnlUxX42xp0mxGVe7gqXnH+u94NGmiJXJVJLqn9ARuZFlAv0xgRSnwLtFoP+IrOtLEz1NSjXO1j1guuL+HTF@lists.infradead.org
X-Gm-Message-State: AOJu0YwY5+xUD68YMwUpVGJK5bCJmJ8bmkci3zCUroQ14jBECWbK4Rpy
	mQ9H5T4FVnHeozvCeoogdZZYfkdoKZ3qPXcIpLPRrpy8No0dQmTr
X-Google-Smtp-Source: AGHT+IGVfgnsYh18kSoCdZXX5vsBdvGIHM3mWShe7WR09Ol3ANoB0giiTsc8CKRWY3yaCsEiDTV/AQ==
X-Received: by 2002:aa7:88ca:0:b0:71e:7636:3323 with SMTP id d2e1a72fcca58-71ea31f8512mr6636737b3a.7.1729317738873;
        Fri, 18 Oct 2024 23:02:18 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.221])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71ea333e94fsm2424237b3a.69.2024.10.18.23.02.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Oct 2024 23:02:18 -0700 (PDT)
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
Subject: [PATCH v10 3/3] PCI: rockchip: Refactor rockchip_pcie_disable_clocks() function signature
Date: Sat, 19 Oct 2024 11:31:35 +0530
Message-ID: <20241019060141.2489-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20241019060141.2489-1-linux.amoon@gmail.com>
References: <20241019060141.2489-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241018_230219_518408_0DAD14DE 
X-CRM114-Status: GOOD (  14.82  )
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
v10: None
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
index c17aa8ec80b9..4d487f79a6fb 100644
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
