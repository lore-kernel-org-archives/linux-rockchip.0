Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8A3DCE8D6B
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 18:10:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nnfW6f92qUZ3tBB5JwKBJnvh194Gmg0LtsX4nC4CQQc=; b=E8q7l68Qa3NLC3
	Zz3lc3q/s5cOoIv7SkM0pFEHtEKTtc2wdA+JQMwfJa2SjUI3i3d+KNlu8OdDqtBcxuLD7UrKElUbc
	cXFkRVPz6JYw5CKA1E3twMEzVtfUnAy5C7XpLS9aK1HyR3pbj+cxqphBYryISr7xP8eC99+5C1YrW
	qEbIrYq+H5rTxbCOdhpRPx9q3hiSF3TpvMeMkIxc9qVfTkBVhiYUZ/jBd0ZfNz7ah+MVJnFS1NuDB
	B9wEe/Prt0n7bkbDF2CzjIr66jImHqiaPwSEjVOi+bQfKbIrXqas9D1QjxxGPK//+PSefbKpckD3p
	fojrnG9+fbws0790hSOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3gV-0000000GakA-2KFW;
	Mon, 17 Nov 2025 18:10:39 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3gT-0000000GaiX-17hU
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 18:10:38 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-2980d9b7df5so47841505ad.3
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 10:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763403036; x=1764007836; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9+EKY9tXpDqbosng82pC4u0rmGAubkf6qXRrqvdwmlY=;
        b=Z/vildnQMZSskoskDrvZIzT+NZEWfKzESmPAE045sG4nH1Mq4ZvGHDDWSmMtRJySwS
         EgSRNj3Nvw9bM8+iwOaBwZJ74AQsfgc9KnvNW6tjByJvKbJI1+xaPAYeNXSV0YVKvK9i
         9kcCu49T+Z/elgr6ST+gDsQE+iEQLq3y7PBmDjZsBmCS+kEL38E15g9QXwcLyja5n3X8
         3WREvstivhjTnhuWP4/y7MKTUCzOlWXtF/k0lb43CCX8OBiVEClDJX7Ivx6yRrqCQD09
         EazTO27cPpUWQqKYhhB8N3nfnew60C8wua3YOl44hQWW5M+tFQnEKwbPCFbvyfhpULdn
         U3VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763403036; x=1764007836;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=9+EKY9tXpDqbosng82pC4u0rmGAubkf6qXRrqvdwmlY=;
        b=u1WEMprZV86Gid6cZG1RFUYB1SzMt+6IfPfnx501BXNSfSUMScUj+KzwZs42xhy412
         5xJmh660wGBfYydwZJ6jD1TyKU3+Lv+UXcEkxDmxwXdij2e12hR2IcthCH2UFMfGPUM/
         4GjZhPODDokkqLWJnFwTTuR+l4kv9Ez/KRnDxnaRDjicSBKcIUO26zMS+FAqWcUNKBrY
         ozfvC/DgMw6ljRgKWchcgOKR5xx4qDelCqKN5me+KRZ9rlINeHdK4Ppf6Ed/5BXZGEx2
         e+Gr2EvwrQz4M+YNgj1ChQDz8+sKWcQVSC8KmbpAMKx9ydmq0jNEekhkw79jlDlZfIGx
         2ADw==
X-Forwarded-Encrypted: i=1; AJvYcCVWHofpUo8omMSDQEj8gt46xKBdeW9N1gQ5gJ5eW4BX6uFxp/0drAvOKXj3XmwDG8GNZMw+9hdScJM42mLDxA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy2TB4fkjZC3ZwgJ2/d/FtH/KP7KqhD1bIbsacuRoWxFcWUKqhy
	61WGS2KSgsSgAO+q9Gc73CQ1gv4KJdZX8YpXdxMTLyYYPDACBykBpvYn2CpK5A==
X-Gm-Gg: ASbGncu0fWDb1w6Nk/liW66q8Dj2PGoIlYF/718KIhkEApup+A3J4UrpBfDKGGNT3sA
	jrwjtIuclwkXYt7eL6jKbvFataDGP3nOtnEkE3CC4LHFqdTZYl3EQcY+pU+SZbGjGuYeTXvDpyP
	RVJ0RbZsXO6aSaStS8nUKlMPSVhmJHBqfMzwxDWDGXpQ/5ULayfUAZBp3Jfaraxtg2SOoNKEN4G
	Wyt2K6ittGGZX9r0mXBxlFzY9TPckhY5c8oUa/CWdfG1xegPHPseV5mCK9IkWVB/Y5cCGugQl2J
	PnSKklUqtn5wNiOb793KtnAivyl97x/pl7hhsxBduVPozwhhFLwqTZV0eYKBQ1bgnyRgCCzYMai
	NiYNyfID0CAIKTSBBHekjjBxAPmRYXraaALkpBEMvVyIrzwdD3YBPDov+wFr3o8brdl6HLPdm9v
	hyhNas8mVG
X-Google-Smtp-Source: AGHT+IGeyCwjL8jXeUnUvtXTHW7ITleNa0lMicopabeVmB9BMPeOlb78pEgF+ubGgNHai/Yz0yRVgQ==
X-Received: by 2002:a17:902:cf0e:b0:27e:ef96:c153 with SMTP id d9443c01a7336-2986a6d5195mr152554635ad.19.1763403036292;
        Mon, 17 Nov 2025 10:10:36 -0800 (PST)
Received: from rockpi-5b ([45.112.0.172])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245ecdsm147237955ad.32.2025.11.17.10.10.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 10:10:35 -0800 (PST)
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
Subject: [RFC v1 1/5] PCI: rockchip: Fix Link Control register offset and enable ASPM/CLKREQ
Date: Mon, 17 Nov 2025 23:40:09 +0530
Message-ID: <20251117181023.482138-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251117181023.482138-1-linux.amoon@gmail.com>
References: <20251117181023.482138-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_101037_326552_CBCA4CDE 
X-CRM114-Status: GOOD (  13.11  )
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

As per the RK3399 TRM (Part 2, 17.6.6.1.31), the Link Control register
(RC_CONFIG_LC) resides at an offset of 0xd0 within the Root Complex (RC)
configuration space, not at the offset of the PCI Express Capability List
(0xc0). Following changes correct the register offset to use
PCIE_RC_CONFIG_LC (0xd0) to configure link control.

Additionally, this commit explicitly enables ASPM (Active State Power
Management) control and the CLKREQ# (Clock Request) mechanism as part of
the Link Control register programming when enabling bandwidth
notifications.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 15 ++++++++-------
 drivers/pci/controller/pcie-rockchip.h      |  1 +
 2 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index ee1822ca01db..f0de5b2590c4 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -32,18 +32,19 @@ static void rockchip_pcie_enable_bw_int(struct rockchip_pcie *rockchip)
 {
 	u32 status;
 
-	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
-	status |= (PCI_EXP_LNKCTL_LBMIE | PCI_EXP_LNKCTL_LABIE);
-	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
+	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_LC + PCI_EXP_LNKCTL);
+	status |= (PCI_EXP_LNKCTL_LBMIE | PCI_EXP_LNKCTL_LABIE |
+		   PCI_EXP_LNKCTL_ASPMC | PCI_EXP_LNKCTL_CLKREQ_EN);
+	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LC + PCI_EXP_LNKCTL);
 }
 
 static void rockchip_pcie_clr_bw_int(struct rockchip_pcie *rockchip)
 {
 	u32 status;
 
-	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
+	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_LC + PCI_EXP_LNKCTL);
 	status |= (PCI_EXP_LNKSTA_LBMS | PCI_EXP_LNKSTA_LABS) << 16;
-	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
+	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LC + PCI_EXP_LNKCTL);
 }
 
 static void rockchip_pcie_update_txcredit_mui(struct rockchip_pcie *rockchip)
@@ -306,9 +307,9 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
 
 	/* Set RC's RCB to 128 */
-	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
+	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_LC + PCI_EXP_LNKCTL);
 	status |= PCI_EXP_LNKCTL_RCB;
-	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
+	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LC + PCI_EXP_LNKCTL);
 
 	/* Enable Gen1 training */
 	rockchip_pcie_write(rockchip, PCIE_CLIENT_LINK_TRAIN_ENABLE,
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 3e82a69b9c00..5d8a3ae38599 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -157,6 +157,7 @@
 #define PCIE_EP_CONFIG_LCS		(PCIE_EP_CONFIG_BASE + 0xd0)
 #define PCIE_RC_CONFIG_RID_CCR		(PCIE_RC_CONFIG_BASE + 0x08)
 #define PCIE_RC_CONFIG_CR		(PCIE_RC_CONFIG_BASE + 0xc0)
+#define PCIE_RC_CONFIG_LC		(PCIE_RC_CONFIG_BASE + 0xd0)
 #define PCIE_RC_CONFIG_L1_SUBSTATE_CTRL2 (PCIE_RC_CONFIG_BASE + 0x90c)
 #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
 #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
