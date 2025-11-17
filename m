Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C211CEACEF
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Nov 2025 18:10:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JGNM7TFcSET8fPEwEgs0rEMiqaTouB99n+kjsLdUjTU=; b=eFDnWHt1Ipd0Ox
	yziGxO4hOmQRt+lN9Pp5/gMvlFbFintEw9Up7n2WY3acvxckC2hccuF57WqRsiBkieGiW8weUNkqG
	LzGNzLQupbzQBdMSf8qe3VeqAZ/uhoxEUWWmA/5oFVMIojirZMssSpOqW2QplVVJtsEmqgw/29ZJ3
	g6RKURL8Yotmx007wlSRzbq3CTCu+vt+FX0IWs0SuKmbuQ9E/TIh9zeddb9kBytzwwUNPsos3JxGR
	bbaqG6UcwPcSclO1X7T1WEPLqU8fe+TCs1borPpQge19/eJ8vvpHCuUlPHlIVmUXAxZaCh1tO6WMo
	eN8O4ZnOLNVwFByLLPug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3gb-0000000Gao8-1Hpu;
	Mon, 17 Nov 2025 18:10:45 +0000
Received: from mail-pl1-x62e.google.com ([2607:f8b0:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vL3gZ-0000000GamV-0Nby
	for linux-rockchip@lists.infradead.org;
	Mon, 17 Nov 2025 18:10:44 +0000
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-297d4ac44fbso41675905ad.0
        for <linux-rockchip@lists.infradead.org>; Mon, 17 Nov 2025 10:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763403042; x=1764007842; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HiyfD9o81mhFVe2IXX22fSEtB3j8hw+9RtRzlWaHF9U=;
        b=J62k45Zv71nYGUjf5p5+RKBE4/ZVJKX93KbOlCrVCZHZZjEQN5V1eq+4avgakzF6be
         kboxvVNbqibrD714l9kb2GZhQW6+A81cBgBvrJO+hFO5QxY/N4daW7zIgJmEYE+zP5kq
         3BBqEVm/FGAyS/72o5csJk8zNkNiVqs5FjWiXK+Yzj8p9VcCvtWo0QxaNCROWZnmN+xT
         q17mG3ZU4ka2G4Zk9LYfyy3buFMPQYx1hQ+L4DhUF1kwbHcK/106+LnFIQV9Dn6MOeR9
         nqHGJiNJkdE0rio5fo/CKSJdMF5wyXtgkXnkab58KL/X2g5IsIzfVVwc4VTHWLYHBG4q
         4JDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763403042; x=1764007842;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HiyfD9o81mhFVe2IXX22fSEtB3j8hw+9RtRzlWaHF9U=;
        b=qiKZGyCVCZ8opDDF1qaXsWJ8JoYLV0995fxZQL7ohVRpn8/uh5YwORANtIg7IShuvq
         ga54N1MtGRBRM7VfaM1QBfiw8bUJyf6agzb1hQwEvX73VOz/f49GwmirssWnt3pSGUlC
         7CoxeciNLV81YjXcsy1LsX9hIuv46LW4RH+loW4emaIJWMZEKChiXctgH31Gguccpvzy
         nwI/Nq6n0u0zBGeE0/Vhl68DnVrifUdKcZ7TXTlAp+psjb4bEqdPu3TE3xhTkgLulrXy
         y+KLDd32D+Nsz4TLlp2H99h7ayNdgZlLJQK71rexoauKGeIc2TKImwpu/C5WMkQmCh5L
         F3iQ==
X-Forwarded-Encrypted: i=1; AJvYcCVpZXqSXUCP6NNcakX01VKm+9E3PnfrPEIOOpAEV6Yf5k8k2j2yk0ApijEt38JcZuzvbC48XwKQ8bEqRlUHng==@lists.infradead.org
X-Gm-Message-State: AOJu0YyU8Jp8mUSvWoHl9f9DJ0vUeg300BhG7GnJe5I8b1mZviOJj6QM
	IQ94sZUNxQ/wpe2F4+YlKpokQQ21wHCnxMdwjZSPfu1yHrtpERmU7Qw8
X-Gm-Gg: ASbGncuUD3GSfzBu1eq0kN9Wt0iVteBDrGspIRsBQhAz389y5J3mSkyrWzndakUCXIu
	+mViQ/mlA+QiPYqqV44JkaQpYI8NeruDMfQM6HEi2+WYtTCyPpHLK1s33li22J29UBhkASTi1h0
	lVDPR6dodhgthhkEXqhBbsprnbpTezzfgeaAQNvSRxXa1QtgJc8RnAcDVJZMbKKG49U1CMgZTxh
	xfosNKxW1NJvZK24LPkKc3U8dhWSGAKG/vBN6drZ3xZuuIs360oq1F2pQxBaQ/JITAXSaQR8xAi
	364Ce6dEdF6QNWSGC9D8aVkFxZXQYS6aFQySlGM6c5+3OehzgqGhp772oHaF3uEhDGwWyIaZM6b
	C9kV+AryJQZs2HdfItcP9wt8Paqg+W6atwNSIVVNjviy9ogR5/D6yy34EIanXx/SVIKMc02kHR5
	A88QufT2+s
X-Google-Smtp-Source: AGHT+IEuH/QkCta7rSFSTx6mLuh1Na7bJwzHG+M7fE+y1+6A8oUVr+VmAtfVcXC0t4C1FaCf1X60/g==
X-Received: by 2002:a17:903:4b30:b0:25c:43f7:7e40 with SMTP id d9443c01a7336-299f5512becmr2969585ad.10.1763403042469;
        Mon, 17 Nov 2025 10:10:42 -0800 (PST)
Received: from rockpi-5b ([45.112.0.172])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2985c245ecdsm147237955ad.32.2025.11.17.10.10.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Nov 2025 10:10:41 -0800 (PST)
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
Subject: [RFC v1 2/5] PCI: rockchip: Fix Device Control register offset for Max payload size
Date: Mon, 17 Nov 2025 23:40:10 +0530
Message-ID: <20251117181023.482138-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
In-Reply-To: <20251117181023.482138-1-linux.amoon@gmail.com>
References: <20251117181023.482138-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251117_101043_133136_D0A63FBA 
X-CRM114-Status: GOOD (  13.63  )
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

As per 17.6.6.1.29 PCI Express Device Capabilities Register
(PCIE_RC_CONFIG_DC) reside at offset 0xc8 within the Root Complex (RC)
configuration space, not at the offset of the PCI Express Capability
List (0xc0). Following changes corrects the register offset to use
PCIE_RC_CONFIG_DC (0xc8) to configure Max Payload Size.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-host.c | 4 ++--
 drivers/pci/controller/pcie-rockchip.h      | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-host.c b/drivers/pci/controller/pcie-rockchip-host.c
index f0de5b2590c4..d51780f4a254 100644
--- a/drivers/pci/controller/pcie-rockchip-host.c
+++ b/drivers/pci/controller/pcie-rockchip-host.c
@@ -382,10 +382,10 @@ static int rockchip_pcie_host_init_port(struct rockchip_pcie *rockchip)
 		rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_LNKCAP);
 	}
 
-	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_CR + PCI_EXP_DEVCTL);
+	status = rockchip_pcie_read(rockchip, PCIE_RC_CONFIG_DC + PCI_EXP_DEVCTL);
 	status &= ~PCI_EXP_DEVCTL_PAYLOAD;
 	status |= PCI_EXP_DEVCTL_PAYLOAD_256B;
-	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_CR + PCI_EXP_DEVCTL);
+	rockchip_pcie_write(rockchip, status, PCIE_RC_CONFIG_DC + PCI_EXP_DEVCTL);
 
 	return 0;
 err_power_off_phy:
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 5d8a3ae38599..c0ec6c32ea16 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -157,6 +157,7 @@
 #define PCIE_EP_CONFIG_LCS		(PCIE_EP_CONFIG_BASE + 0xd0)
 #define PCIE_RC_CONFIG_RID_CCR		(PCIE_RC_CONFIG_BASE + 0x08)
 #define PCIE_RC_CONFIG_CR		(PCIE_RC_CONFIG_BASE + 0xc0)
+#define PCIE_RC_CONFIG_DC		(PCIE_RC_CONFIG_BASE + 0xc8)
 #define PCIE_RC_CONFIG_LC		(PCIE_RC_CONFIG_BASE + 0xd0)
 #define PCIE_RC_CONFIG_L1_SUBSTATE_CTRL2 (PCIE_RC_CONFIG_BASE + 0x90c)
 #define PCIE_RC_CONFIG_THP_CAP		(PCIE_RC_CONFIG_BASE + 0x274)
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
