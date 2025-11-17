Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB8A1CEACEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 18:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oaEBF2ZAs4IFP2drLburXsbpJ6OJ+WJoLjOHjJNdQ+4=; b=uUYr0PWNSxyRYc
	wEiaMKZzza1TQ1jh2HY4lwdPOZVCDCGyfDZQnuJYufN9fCb0SIdsCFmlaEUY2BtBJrdcBeh1AgHD3
	gstk/yBeAGKyLwevXFM6NRWBETIC+qtiyiJbN4HPt3YhH6Ip2Cqv0SU6W3ciyNoVT+SvdySgkWGyy
	HnonOWQHDG5OwqsO6iAjuq4A0PVUOqLA3aTOSpE+Qi1nWTV6drL3ZxeZBF8Nfa3iLtjrFRAG1Gumc
	02ZdH3Btob3qdOl1YCaoviOCdb/epI9y632P0gxHV2UcJtgPvrJHNY0wLgJLtSYbHDAJaFaUrDTxY
	cxn1/B84QUOewS/L6O0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3go-0000000Gayi-0z65;
	Mon, 17 Nov 2025 18:10:58 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3gl-0000000Gavd-06Uh
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 18:10:56 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-297e264528aso46474525ad.2
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 10:10:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763403054; x=1764007854; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ec1PASGse1c+caWp4ium+eJ62vTRL+jpVdDXW6vSJlU=;
        b=Lx/KLRxWJVMPqKlMb8ZakbAXH1hv5fJhIFn7oMBxiWSy7hiDDM6RkLyYmkUhrV1eAn
         LcTF0kXvl896UzCGZy8J+ylF+ovgSCxdPEMYBTYWr6+CornonP0Dvu6ZHEb4HIFerDq+
         LGklvP5s/SienMOhPEZdqxd5+ixcjNgdKQiRWFGI14fcIM9R8BtZCjDTzRHK9sHl7C2j
         2i7apTyrYRiS3wmOSlvxOgJoJVYci34TH0iB3tiHc1rtvQop+mkW7/TFhhHVdeDWlxMb
         i/hkq5SZXhHjW2kRoDKhKbJvFDvd34Pjpj2rS/sjW8hjUmqh2IUDjaIfvKAnWgqvR/Ir
         /2CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763403054; x=1764007854;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Ec1PASGse1c+caWp4ium+eJ62vTRL+jpVdDXW6vSJlU=;
        b=uqdGmd5yzvIiOWwsZD09cC5GSD/uEIyGbaSdcHMz0FuaSis9/jaMRsZia0CJjrWkbk
         0JSIdjTw1UkEYDPwkPH40nSiPdPYZm1i4o/43m8P17Z2FO/iDnI2toWxh8cPhDclp4pD
         bZ8U9kkf63lsxjT9RPCNA4ip6mP5Jod1zAlwRWK1NbhcvA7JaGFdtOmCSEg0+80SHROD
         +QGGRTLo3pGpKV/YxEW3ltCkfD3T3dITJWNvma2awDIV3QsLeNzsQOxX4J77Ak2SlyeG
         QPIgcjl8eore4/u8nzXA4MH9Ul/lSRUQmhJ0fEQhRLv8zb0UJ8fOVgEZA8qLKhuf1YNS
         wseg==
X-Forwarded-Encrypted: i=1; AJvYcCX5G2bDwk06FkTIWbgbeSnvfiFJia68T5wS+bZDey6rHnvdPbLjbTtDbGjthFYvvTjCnoCcC8OJuz9zU/8WPQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YyiBle22RJkxoAef6+zwVY6Ed9wvlmCnwsRSakiiUxmBrzZougX
	8k+36oqpJa1d35WflTFRPb4Nip0jwKN588BRCw66lBxTaP1CORI1Nr9l
X-Gm-Gg: ASbGncu/3QSjL6HSUIG7blw+ztUMvFfYToxv56/KJXEt2QB0XsAJtd/dQIs7JChVmt+
	kBWjGKHTKSxP0eduBxR1+jZMIvPLqr48KdE+y6pdTQvZNBKUd9TLFM6dJ5IMBgEGGCqUqJbwWj8
	ICutOaMDn2jGy8SuDTdwb8JRP6roLfxS1ct04MZflf4b/qvhsOC5FOr673+FFPMpE0ut0Wxd3VJ
	5muyHqp5sI/5GcWKOyqKZqyTSUFV/5ljaO82KE2Ja2lACU9mMnf61UZBX5Oyh7pmlvM507FNPOH
	ZTX++zfjX/vdBhEUbD6+cSmWxjzTEsOyrVpaz5S8C3kXRIPXKKFAneNti6Ax1AxVLmskQ9z/ed5
	sb/Hb0s0mPV9B5AU8PFvkJ2QkFUk6fH/k040AsgA4ydjjN+D/4mc42l4UbZpJdWh6OX2B9DDOEN
	QG/9x05HM+gpYb+Ag/LAo=
X-Google-Smtp-Source: AGHT+IEUX7gdiNGyBxK7nkjr4GlpB56cu5CyrGhTV6Ssy/ycoKGnwri45m/PO64RRMTu5afoMBqkIg==
X-Received: by 2002:a17:902:f792:b0:299:e041:ecf6 with SMTP id d9443c01a7336-299e041f532mr74992515ad.40.1763403054096;
        Mon, 17 Nov 2025 10:10:54 -0800 (PST)
Received: from rockpi-5b ([45.112.0.172])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245ecdsm147237955ad.32.2025.11.17.10.10.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 10:10:53 -0800 (PST)
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
Subject: [RFC v1 4/5] PCI: rockchip: Fix Link Control and Status Register 2 for target link speed
Date: Mon, 17 Nov 2025 23:40:12 +0530
Message-ID: <20251117181023.482138-5-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251117181023.482138-1-linux.amoon@gmail.com>
References: <20251117181023.482138-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_101055_060465_310756F8 
X-CRM114-Status: GOOD (  13.85  )
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

As per 17.6.4.5.11 Link Control and Status Register 2 (PCIE_RC_CONFIG_LC2)
reside at offset 0xf0 within the Root Complex (RC) configuration space, not
at the offset of the PCI Express Capability List (0xc0). Following changes
corrects the register offset to use PCIE_RC_CONFIG_LC2 (0xf0) to configure
target like speed.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 4 ++--
 drivers/pci/controller/pcie-rockchip.h      | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index d77403bbb81d..b3c9b9cbeb8d 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -334,10 +334,10 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 		 * Enable retrain for gen2. This should be configured only after
 		 * gen1 finished.
 		 */
-		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
+		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_LC2 + PCI_EXP_LNKCTL2);
 		status &= ~PCI_EXP_LNKCTL2_TLS;
 		status |= PCI_EXP_LNKCTL2_TLS_5_0GT;
-		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL2);
+		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_LC2 + PCI_EXP_LNKCTL2);
 		status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
 		status |= PCI_EXP_LNKCTL_RL;
 		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCTL);
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 4ba07ff3a3cf..a83ce7787466 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -160,6 +160,7 @@
 #define PCIE_RC_CONFIG_DC		(PCIE_RC_CONFIG_BASE + 0xc8)
 #define PCIE_RC_CONFIG_LC		(PCIE_RC_CONFIG_BASE + 0xd0)
 #define PCIE_RC_CONFIG_SR		(PCIE_RC_CONFIG_BASE + 0xd4)
+#define PCIE_RC_CONFIG_LC2		(PCIE_RC_CONFIG_BASE + 0xf0)
 #define PCIE_RC_CONFIG_L1_SUBSTATE_CTRL2 (PCIE_RC_CONFIG_BASE + 0x90c)
 #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
 #define   PCIE_RC_CONFIG_THP_CAP_NEXT_MASK	GENMASK(31, 20)
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
