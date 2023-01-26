Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AE65BC05027
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:56:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i3+t9AAa34N5Cwc4IvvjN80qh0y9fv54qPrgaKI913Q=; b=0lTBevALQ8/lcS
	w2/HHmrZcsaGdw+yC/+Dk/hrvU6KrkUf9XHPLhU5MYSwnD+u1cKkBpruzGzbaZFj+QWaxhGdo3iFk
	Re0kCGTEKpSLSQdBVJwXGowr7zcB1FubBNeyWqlk9EYHZTe9CvqpGqn72eDNtxTlc/vnJkhOPPrnW
	F79Rp1CqaFO+Crt4G960Vz5y0sGATiWdUzKWIQGH8aDIXbbB4h/WZWUULfl1+iZvlLXlOirn1RDws
	MuarGW5i7beWnUPyv+FOo53GPfw71B2Hv3Uwu385Jd4F0HoBrdhUhCEFSgdMyj9v5jyM7AE6+UyOf
	z+D8wlem8RzjloNrGYSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2k2-00B4Ah-HF; Thu, 26 Jan 2023 13:56:38 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2gO-00B2Lx-Ib; Thu, 26 Jan 2023 13:52:54 +0000
Received: by mail-ed1-x52a.google.com with SMTP id w11so1966485edv.0;
        Thu, 26 Jan 2023 05:52:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g4Up5XfBWF4wg+xg2q3Fh3iyg/w/TGxjAj9syTghA+E=;
        b=pMrED9HNKx+1axCuqflfcTCvirmhpDISklTl5je2GxqER7TVq2i+r/Xuea2HgcjMXC
         Yizb8ZOx4ifXVdLSH8UT5zXXMzt2/SrzjE++YehELClmaZ99zRHoGLp6PP6Teljo9Zlc
         OqhUM9KbpoxiDAyFM6TpkZ3WS8CzMLHEHW1rdZO7AiW2a1B06Qys5GR4t4vWstmKTrN5
         /b/hgQ0/0ZHKo4BncvXU4bd/+oTZg9vX7Ph6ZAoLnGJDZxnNLPZaaXI1hxIO9wjQNjtX
         OTr3YBDuDb0zOXB9oFhTWvnUYtghcN8D5cEizHVwGHFUvHJ8QsJ6kXzwezthW4BRPtvD
         MFtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g4Up5XfBWF4wg+xg2q3Fh3iyg/w/TGxjAj9syTghA+E=;
        b=qxJ1itRRRhPD1SHWc0KaNCzVvoVhLRdx2SymfXCF4rHuRrljYBD7NHfjxYlJJbtVCG
         IHcBa0YwzzLwCMDkscElr4mQd11yyFk5HvY9hzE5cof6sq6qQtoZ1o23h3jN2HUSFShF
         5Su8LzbAetVqQMG1R3DpaxAKOKhfkZITuLd1UbqhzEWCqFTgaCqBkbdU0l+uhy8zwMbO
         4QUOAnSn+iyX7LLaGVfgr5kWw2od37AnGjf9+Aya6jx0oxDyvVBmFzoyij3XVXMP8PRB
         GRWE6qcN0+YZ+I+Mg62ihZCN9qrYYUTTkL1CYk4quHr0EUFe9tSQWC5S3pVWESWJ/sOX
         au+Q==
X-Gm-Message-State: AFqh2kpbDwIZM57uXRirqAzzuTo0DMtF9flfRhYt/9ER5R6nQZMTxcao
	j/LzJUpqS0h80/y+OxuWxbs=
X-Google-Smtp-Source: AMrXdXtwZrTuC4jFb2Q+J2Foddd4TAtc+LwgUKY+rLhGzQxs5qGFLf8gt6fItOd0sT2Qn4cv6iqp1A==
X-Received: by 2002:a05:6402:3214:b0:49d:bc8c:c3eb with SMTP id g20-20020a056402321400b0049dbc8cc3ebmr44360890eda.15.1674741165477;
        Thu, 26 Jan 2023 05:52:45 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id t15-20020a508d4f000000b004a0e2fe619esm591611edt.39.2023.01.26.05.52.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:52:45 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	wenrui.li@rock-chips.com,
	rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH 7/8] PCI: rockchip: Fixed legacy IRQ generation for endpoint
Date: Thu, 26 Jan 2023 14:50:47 +0100
Message-Id: <20230126135049.708524-8-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055252_654422_877A5708 
X-CRM114-Status: GOOD (  15.14  )
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

Added generation of legacy IRQ (INTx) for the RK3399 SoC PCIe EP core.
The generation of the legacy interrupt was validated with the PCIe EP
test driver. Generation of IRQ through the core is documented in the
TRM and is done through the PCIE_CLIENT_LEGACY_INT_CTRL register of
the core.

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 32 ++++++-----------------
 drivers/pci/controller/pcie-rockchip.h    |  6 +++++
 2 files changed, 14 insertions(+), 24 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index a682a941d..a58c9d56b 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -333,15 +333,6 @@ static void rockchip_pcie_ep_assert_intx(struct rockchip_pcie_ep *ep, u8 fn,
 	u32 status;
 	u8 msg_code;
 
-	if (unlikely(ep->irq_pci_addr != ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR ||
-		     ep->irq_pci_fn != fn)) {
-		rockchip_pcie_prog_ep_ob_atu(rockchip, fn, r,
-					     AXI_WRAPPER_NOR_MSG,
-					     ep->irq_phys_addr, 0, 0);
-		ep->irq_pci_addr = ROCKCHIP_PCIE_EP_PCI_LEGACY_IRQ_ADDR;
-		ep->irq_pci_fn = fn;
-	}
-
 	intx &= 3;
 	if (is_asserted) {
 		ep->irq_pending |= BIT(intx);
@@ -351,22 +342,15 @@ static void rockchip_pcie_ep_assert_intx(struct rockchip_pcie_ep *ep, u8 fn,
 		msg_code = ROCKCHIP_PCIE_MSG_CODE_DEASSERT_INTA + intx;
 	}
 
-	status = rockchip_pcie_read(rockchip,
-				    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
-				    ROCKCHIP_PCIE_EP_CMD_STATUS);
-	status &= ROCKCHIP_PCIE_EP_CMD_STATUS_IS;
-
-	if ((status != 0) ^ (ep->irq_pending != 0)) {
-		status ^= ROCKCHIP_PCIE_EP_CMD_STATUS_IS;
-		rockchip_pcie_write(rockchip, status,
-				    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
-				    ROCKCHIP_PCIE_EP_CMD_STATUS);
+	if (is_asserted) {
+		rockchip_pcie_write(&ep->rockchip,
+			PCIE_CLIENT_INT_IN_ASSERT | PCIE_CLIENT_INT_PEND_ST_PEND,
+			PCIE_CLIENT_LEGACY_INT_CTRL);
+	} else {
+		rockchip_pcie_write(&ep->rockchip,
+			PCIE_CLIENT_INT_IN_DEASSERT | PCIE_CLIENT_INT_PEND_ST_NORMAL,
+			PCIE_CLIENT_LEGACY_INT_CTRL);
 	}
-
-	offset =
-	   ROCKCHIP_PCIE_MSG_ROUTING(ROCKCHIP_PCIE_MSG_ROUTING_LOCAL_INTX) |
-	   ROCKCHIP_PCIE_MSG_CODE(msg_code) | ROCKCHIP_PCIE_MSG_NO_DATA;
-	writel(0, ep->irq_cpu_addr + offset);
 }
 
 static int rockchip_pcie_ep_send_legacy_irq(struct rockchip_pcie_ep *ep, u8 fn,
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 72e427a0f..e90c2a2b8 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -39,6 +39,12 @@
 #define   PCIE_CLIENT_GEN_SEL_1		  HIWORD_UPDATE(0x0080, 0)
 #define   PCIE_CLIENT_GEN_SEL_2		  HIWORD_UPDATE_BIT(0x0080)
 #define PCIE_CLIENT_SIDE_BAND_STATUS	(PCIE_CLIENT_BASE + 0x20)
+#define PCIE_CLIENT_LEGACY_INT_CTRL		(PCIE_CLIENT_BASE + 0x0c)
+#define   PCIE_CLIENT_INT_IN_ASSERT		HIWORD_UPDATE_BIT(0x0002)
+#define   PCIE_CLIENT_INT_IN_DEASSERT	HIWORD_UPDATE(0x0002, 0)
+#define   PCIE_CLIENT_INT_PEND_ST_PEND	HIWORD_UPDATE_BIT(0x0001)
+#define   PCIE_CLIENT_INT_PEND_ST_NORMAL	HIWORD_UPDATE(0x0001, 0)
+#define PCIE_CLIENT_SIDE_BAND_STATUS	(PCIE_CLIENT_BASE + 0x20)
 #define   PCIE_CLIENT_PHY_ST			BIT(12)
 #define PCIE_CLIENT_DEBUG_OUT_0		(PCIE_CLIENT_BASE + 0x3c)
 #define   PCIE_CLIENT_DEBUG_LTSSM_MASK		GENMASK(5, 0)
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
