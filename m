Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 200E2CCF9EB
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Oct 2025 17:57:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=op5s419ChMn595D1Ltit+2s5v36dGk2t4Z69Q2yzq8U=; b=t2hEqr+QE+zkkx
	MKGPq7ixRkH4qr1dhNqXQp47Ac1X6WnSIhOYdr360C0kyDhP49bDS3e+L9XrxlIR8AQK02eAC1CrQ
	qwzqYU76ErTJV5qA+Xn2FoSnTIGQEF2D8CwueQb7kyPJdeUJYpPSBJ8nPVQApdDi6fIiU4+LBOzep
	xBi2B6MqXhdfkKphW9c7TJm+CpAjbEd2oouczjOV5jHWSDCHMMqscHZO4jCCTIk0ZTqtorotK3bZe
	rSQh4kQneiGPQWRdM+aaHCtbrHU8cdMNBy1yP6n1JOkuwfl2B2dQfK9t3tcTB1JKV8a0mJtOBYubM
	39+DPWKuAxAWU6QuMNDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEAQh-00000002JD9-3Tdj;
	Wed, 29 Oct 2025 17:57:51 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEAQ2-00000002ISM-14uc;
	Wed, 29 Oct 2025 17:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1761760622;
	bh=Sj6E9l8ggRXtG2Em+VZdI5iellF1+7sNiM1RAQmaPTw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=XXCp5+I6PXF4UVAUKLsMdNqcDlX1Y15pmfCL4di/rtjDZlv5Dbp4AauBsU8yxCjC+
	 k9G/WFLSf90azkG49GoXxatTaGS963C945VzxHA8ry9zA1TezMWiQ43GhxjbjTQBZG
	 AJp/n+Sj52yICZAXMLOlHufy0ZRN1IeUz0xQQK4hXjuS76PxOe5UXz0Gdl6uE7Avs8
	 wvgR+MTatQBS6x5jy7LFum+z3mt5ZmU8V5zT2+/7+srIBDj6eHgYodNbvjdJ3F58Uu
	 45LKI4TKuoh/sH9wiit/sfvVEWn1faXI6JbLEI037gp835voYPYESNK6R98l46aNUa
	 qBVIeX4Tamhlg==
Received: from jupiter.universe (dyndsl-091-248-085-053.ewe-ip-backbone.de [91.248.85.53])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id D038F17E1401;
	Wed, 29 Oct 2025 18:57:02 +0100 (CET)
Received: by jupiter.universe (Postfix, from userid 1000)
	id 224B9480064; Wed, 29 Oct 2025 18:57:02 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
Date: Wed, 29 Oct 2025 18:56:45 +0100
Subject: [PATCH v4 6/9] PCI: dw-rockchip: Add helper function for DDL
 indicator
MIME-Version: 1.0
Message-Id: <20251029-rockchip-pcie-system-suspend-v4-6-ce2e1b0692d2@collabora.com>
References: <20251029-rockchip-pcie-system-suspend-v4-0-ce2e1b0692d2@collabora.com>
In-Reply-To: <20251029-rockchip-pcie-system-suspend-v4-0-ce2e1b0692d2@collabora.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, Jingoo Han <jingoohan1@gmail.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@collabora.com, Sebastian Reichel <sebastian.reichel@collabora.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1512;
 i=sebastian.reichel@collabora.com; h=from:subject:message-id;
 bh=Sj6E9l8ggRXtG2Em+VZdI5iellF1+7sNiM1RAQmaPTw=;
 b=owJ4nAFtApL9kA0DAAoB2O7X88g7+poByyZiAGkCVW3TDDufaRZdJk/Q58o08XBna7UtrtwRR
 SE76w4VeZ5F+okCMwQAAQoAHRYhBO9mDQdGP4tyanlUE9ju1/PIO/qaBQJpAlVtAAoJENju1/PI
 O/qagAsQAIK6NH5MptM9KBuwDSeqPv9FdjgzARsqdAkGLqCux/j+bGSn5LmFVsiJNezB50uwcxJ
 iWWAA705BQzSKiIv7fJpqIYfwDt/HOazgHj9j1F2V9Ifo+ao52E9CkVFBsdfXU3FYn6ufPTY+74
 4lBZga2mHUfxYaK4A7ToaBsE6wrkdqung1doh+pD9azftJPSECuTZjr+1D9Ao4AtE2asq3HpKoN
 JpeWEsLTQv4IjdYSwmPudGqarYNoJ0UbSKRnGjkL49RoyomFwch8SrknDfWzgYgikLbxDzCL5KD
 lvJeiJcIOWVWQ1XEyEEen7B/IH2sdvcAoRyATfFPjgsC7MeeJj1AJhIwYkuUP1zxtRKd6y3pE/P
 PMtUhzW99oLrz22c3t0pSU67WlN2YtFSGIU1gw4mTcP2PTNaQEpmjcedsuGYJl6qK3Q5VV93Pif
 674ZJTXQXjIfKP1JjuwD4E8M/F4R5Zlyemvs3vw6hWf4E9nS0C87PY8q3FdpOb60ln14YhuU0k1
 AJAawp1skreZBzGSUCnln9LU20Lz5Yhl7Zla6rdFE2YG2mRLbb/edvY/ZqIXl9B9AAPk7fg6TXv
 JCeInZZNujmq5rAqseL7+vJFTW3LTtBysf453e3OG8qiAdNQ3QTDPDZp3hCTItDsdIEmQmZ/pxn
 UeALkEB3zjjLil2WAfmYm7Q==
X-Developer-Key: i=sebastian.reichel@collabora.com; a=openpgp;
 fpr=EF660D07463F8B726A795413D8EED7F3C83BFA9A
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251029_105710_481603_E317BD7C 
X-CRM114-Status: GOOD (  11.87  )
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

Remove code duplication and improve readability by introducing a new
function to setup the DLL indicator.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 5c8d30e15a44..ad4a907c991f 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -528,6 +528,15 @@ static void rockchip_pcie_set_controller_mode(struct rockchip_pcie *rockchip, u3
 	rockchip_pcie_writel_apb(rockchip, PCIE_CLIENT_SET_MODE(mode), PCIE_CLIENT_GENERAL_CON);
 }
 
+static void rockchip_pcie_unmask_dll_indicator(struct rockchip_pcie *rockchip)
+{
+	u32 val;
+
+	/* unmask DLL up/down indicator */
+	val = FIELD_PREP_WM16(PCIE_RDLH_LINK_UP_CHGED, 0);
+	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_MISC);
+}
+
 static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 				      struct rockchip_pcie *rockchip)
 {
@@ -563,9 +572,7 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 		return ret;
 	}
 
-	/* unmask DLL up/down indicator */
-	val = FIELD_PREP_WM16(PCIE_RDLH_LINK_UP_CHGED, 0);
-	rockchip_pcie_writel_apb(rockchip, val, PCIE_CLIENT_INTR_MASK_MISC);
+	rockchip_pcie_unmask_dll_indicator(rockchip);
 
 	return ret;
 }

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
