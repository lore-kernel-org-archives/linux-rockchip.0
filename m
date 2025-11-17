Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40277CE8D6B
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 18:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Za3YX7HsR5WsTELzLVkAf5CS2HjarGQxzpAGz8B3gA8=; b=riSzO7evyGZ1jI
	K0vEcLNBxnXPJXXoz4cfSLneXV+WAVws7LmVZmbPyOd6KqpPJe5Qj9vGed7w8nZBrcctfxhaz3jIg
	fr1SzSGxpkdlN03vksKOyi5JV9Wc3zWw+CD5HwM+uBrzanywmqJe5cY0YTROc8y8vn0sstkZT4OlQ
	uop5K4B36JEXyNNWznATS6qp/Rxvd41/U0A4vbMSjfgbEdxZhAEymvvvP7qghWad5hFfUAK6Q3gRH
	U2DuyKFW0e9hjhF3ZXJKAJE/7CBMw4IYKRr3Tdru7Ruv3FGu74xPMLHU4r1pKfPx70B+YVffS9hVn
	KVkWFipvTD9bTOmfP5Lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3gu-0000000Gb4U-19vI;
	Mon, 17 Nov 2025 18:11:04 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3gq-0000000Gb0V-35bf
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 18:11:02 +0000
Received: by mail-pl1-x636.google.com with SMTP id d9443c01a7336-29555b384acso47459645ad.1
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 10:11:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763403060; x=1764007860; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gazcyDKCqVDM4NaE88dT10YpQkqHH5/XsZTj015pVas=;
        b=CRcYmBOdgZsQxpuG0C2L38zuuDvivbdLuX4Q4MUmjlFB6DpN1Bmx4TtPcc1Xdksg8P
         M16nTcx18TARGCqJgnVmHQ82i1D5dGZo/FeOq0bAYiHcI8V2GMT58OMy4idse0M/rQoZ
         XzA8xD5eHFnaCvIsBLQ8987u5fTywvb9YEFxbaIN5kJqU4oIYAivIn1oBzBsxIyMArrQ
         TKS8/y9gsWqfq33Rsdi/8VDtcws5GqFIT+laKnSl0Mm1JjBQ/RAvVqsTj1dUbsrvo+8T
         BRcPGrrsnhJ8PpUFlwEFpVEuRjOvvDi5dYYAfYU5VcsU74xyvgPZ0vdaIJeQtLpt/W/O
         t8mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763403060; x=1764007860;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gazcyDKCqVDM4NaE88dT10YpQkqHH5/XsZTj015pVas=;
        b=PMCerqb+mW2TcR0VVPiSEQZc4adGdWO/8VP9EE3R8Ll6vp2dI1VuF56vLYCY3hNpfV
         S1vs3oozVQKThu7GyP+z8Q9JpVtaGW6r78s/L1UOdfO3NUERj3K/YOGIZnPDY728s1La
         cP3olmeOO71h5mEBN8A2+GeSHAmDbjIYaw/pGgkNguFzdMBDSQ+UvjHKctlQUH0lcZ11
         iuEFabjjMawSaUWgDKPbJf7DHf3J+auoEQLDeRTnKxRnibriKvD0TlbbyF/SOKUAxR+g
         EejCIhobaaSEZINih5oPfc78rxIBwSczo9APMSua5I1BfAlOOyKXvFk4eFLA6CkBif1e
         hT6w==
X-Forwarded-Encrypted: i=1; AJvYcCVef512wyCTxRusX34T8DkGHHW/LlbMOw8QgaQaTVEqChpA0yyT3+++a+qh/18/nBXpteC7w6kOIWiwToEUgw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxaAggKt5i8guIJO8DitCo1DHidBxK+3mQP835bbdDAMZRRb97E
	RqKSbRLlk3ojguHrWdEpp3aILVJin7XjWXaOtH8czT8AGrw36zgESnfuc3/pmg==
X-Gm-Gg: ASbGncsi41cbhMcXJrh5OseAkrraFu/Y7eQOV7DFW17rU2ybHRi8L+UNZ31+KF1Alo/
	wDlsfisecb4aF4+hmL3/IgHikMt6JhbTIdZgjwnIeLPS9MHRF7mq8zyUA8bivWtdZE7XPnZM6Ey
	s6Cy2lHcsWMwEOs7LIsdLMoaGJcS1LN2fL7QRpMuTxEOBB4gRn5ogDjh84duRaI6/p18vBgnPml
	C+cHeK2AJRmZWWHxzXhG8Vl1cGI5TiCYWERECV3aO/6KNxEEzmbWPLK+PfvHI1lefGNBjtwgKWW
	jIHZYYjBhwkbJF976fW3RQmGcgMklx5r+talRRbR2mA0H8SRg/6MOMvo9/Yd+G8FcNJZxfpDB2X
	NGarVnKSYjcmeT9aXlgzZlwboOJkJJdVu68OlLf7RALZBx8ZWe0qe/Mj17k+npIOgyDqpFxFG0C
	+6l1WeshzAwwqbvOs7/J4=
X-Google-Smtp-Source: AGHT+IEH430mBOahI/CtVHCqRSIqCGq9hYMzLu8e8nwRDN0slBe2X4NbiY309RgQgf9w07IlP9p0SA==
X-Received: by 2002:a17:903:ac7:b0:295:557e:746a with SMTP id d9443c01a7336-2986a6d04femr131798225ad.13.1763403059763;
        Mon, 17 Nov 2025 10:10:59 -0800 (PST)
Received: from rockpi-5b ([45.112.0.172])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245ecdsm147237955ad.32.2025.11.17.10.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 10:10:59 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-rockchip@lists.infradead.org (open list:PCIE DRIVER FOR ROCKCHIP),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>
Subject: [RFC v1 5/5] PCI: rockchip: Fix Linkwidth Control Register offset for Retrain Link
Date: Mon, 17 Nov 2025 23:40:13 +0530
Message-ID: <20251117181023.482138-6-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251117181023.482138-1-linux.amoon@gmail.com>
References: <20251117181023.482138-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_101100_779960_A8D49BC3 
X-CRM114-Status: GOOD (  13.95  )
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

As per 17.6.7.1.21 Linkwidth Control Register (PCIE_RC_CONFIG_LWC) reside
at offset 0x50 within the Root Complex (RC) configuration space, not at
the offset of the PCI Express Capability List (0xc0). Following changes
corrects the register offset to use PCIE_RC_CONFIG_LWC (0x50) to configure
Retrain link.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 4 ++--
 drivers/pci/controller/pcie-rockchip.h      | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index b3c9b9cbeb8d..aae3def64bf0 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -338,9 +338,9 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 		status &= ~PCI_EXP_LNKCTL2_TLS;
 		status |= PCI_EXP_LNKCTL2_TLS_5_0GT;
 		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LC2 + PCI_EXP_LNKCTL2);
-		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
+		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_LWC + PCI_EXP_LNKCTL);
 		status |= PCI_EXP_LNKCTL_RL;
-		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
+		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LWC + PCI_EXP_LNKCTL);
 
 		err = readl_poll_timeout(rockchip->apb_base + PCIE_CORE_CTRL,
 					 status, PCIE_LINK_IS_GEN2(status), 20,
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index a83ce7787466..5bcaef7bba4c 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -160,6 +160,7 @@
 #define PCIE_RC_CONFIG_DC		(PCIE_RC_CONFIG_BASE + 0xc8)
 #define PCIE_RC_CONFIG_LC		(PCIE_RC_CONFIG_BASE + 0xd0)
 #define PCIE_RC_CONFIG_SR		(PCIE_RC_CONFIG_BASE + 0xd4)
+#define PCIE_RC_CONFIG_LWC		(PCIE_RC_CONFIG_BASE + 0x50)
 #define PCIE_RC_CONFIG_LC2		(PCIE_RC_CONFIG_BASE + 0xf0)
 #define PCIE_RC_CONFIG_L1_SUBSTATE_CTRL2 (PCIE_RC_CONFIG_BASE + 0x90c)
 #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
