Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8816DC761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:30:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q/SypuktlkofmfvNk9L4eSv9tPgeH20BoqCluLJEk6U=; b=gmlI2oClb0+LEj
	0ILf+eGLh7KLWiuW8Cjj/f+HxiZr1CoCdx98Zdw5fHgjXH0asNofWcYq4sYmfbJljO06IxuC5gJED
	y24bAkOWqtveiXPGwPXzxNNH/25GmsPuiw7XhbRWNojocMJuV24rvVyEyho2x/geMqHvGXyIAK/4Q
	csD31eIFGL8xC4CaySVdIVUJPyCV+ZIVKWUH+YTgG2sCrllgrek/GVG/jAB4N+vpASbtvlg5ILSXb
	nOa+2OPFzBOo3h1H9bS/Up/ZS8rDv1yVPqTKmyYkQu8SqvEei6x1tdO3war3iUktcxcXAzrtLG7YR
	9DwX5hzsuw+ILXvLQpmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjc1Z-000Txg-2j;
	Tue, 04 Apr 2023 08:28:17 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbyS-000T3N-2V;
	Tue, 04 Apr 2023 08:25:06 +0000
Received: by mail-ed1-x533.google.com with SMTP id b20so127283671edd.1;
        Tue, 04 Apr 2023 01:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596703;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=H9JMZo+h1Q4ZjhPYRd6OF+eR14aI4rNR3ktfkwOViXk=;
        b=eKcMH3SCK/MbvXuG3s2Ev/t/hq1VBjng1BsNbovjdYDzWxmh5EvfFbpoGhQSkIs7zd
         KM9qQGv9dmQ07lGLewPyudXrdyFruzXwvpI2vGdfLjgflmsAhE9oNVznVCB9CjjkQo+X
         Mvl6VslYs4Yysi7O6tvayCT3OHbAor2EBVaajWAaOf5G7tIlXK9aR69Q9HIkROmcmszi
         7zzlVzO+JIbwT4BvHoDFDugx8swq7vYbahcdtmjJ5bjKKkisKjwDcLnCpGfx8mUN6AKH
         tkoUdxWjKem1Qh8D9bT9a0O9XjT60QV/3PfPJ/36oYkEJ4TQpRYO7tupUgtXLySFhlPU
         PcNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596703;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=H9JMZo+h1Q4ZjhPYRd6OF+eR14aI4rNR3ktfkwOViXk=;
        b=H+d8c5yTypYPIfam61OxoXVrcQcDYSIIVCm5hlpoZsmiezA8WIBYNZNK87lUPKmGrv
         BvI2jnu4Llv2b8L3Jn9du2SIY7R85XMGN8n+kuCPfiqUsFMTYtd57knMAgXg+3jHnsKB
         hHKrgc5seERm9vgpp6T9GLblX+GTY1yxrX9R/XIlAwoDM2/DMYsIDDbnWcGh+E/ua6Ch
         reRM9MPcSqGtcISXP+v9chUpKSe5mHvt3LzfjBh+LagDKuXZ4a7RBU8vexnrT6q/Luqd
         NWpbGhfqVQ30M3s6kkuNvxWo2nJKoEB18joFRLdBbO/6y1C2VYKlwIu2JsmQeCu6Uv9r
         b5eQ==
X-Gm-Message-State: AAQBX9dNqG51kFnF5CqBgIg2TcfdwnLx1D9pkp7Xrj90EWxO991maOWq
	2TivYHoAlnUQD4a4Txg1ysM=
X-Google-Smtp-Source: AKy350Ys42q5uri8bicxqR0N3cA43deEBD9IDcrI3QZ/WfiFn0XzrsmaOfX3iP+K1xydrcXYHOvJtg==
X-Received: by 2002:a17:906:f29a:b0:933:816c:abb9 with SMTP id gu26-20020a170906f29a00b00933816cabb9mr18076043ejb.36.1680596703038;
        Tue, 04 Apr 2023 01:25:03 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id s5-20020a170906454500b008e54ac90de1sm5640652ejq.74.2023.04.04.01.25.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:25:02 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: damien.lemoal@opensource.wdc.com,
	xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Lin Huang <hl@rock-chips.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 02/11] PCI: rockchip: Write PCI Device ID to correct register
Date: Tue,  4 Apr 2023 10:24:15 +0200
Message-Id: <20230404082426.3880812-3-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_012504_862207_CE4EB88D 
X-CRM114-Status: GOOD (  14.91  )
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

Write PCI Device ID (DID) to the correct register. The Device ID was not
updated through the correct register. Device ID was written to a read-only
register and therefore did not work. The Device ID is now set through the
correct register. This is documented in the RK3399 TRM section 17.6.6.1.1

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Cc: stable@vger.kernel.org
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Tested-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 6 ++++--
 drivers/pci/controller/pcie-rockchip.h    | 2 ++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d5c477020417..9b835377bd9e 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -115,6 +115,7 @@ static void rockchip_pcie_prog_ep_ob_atu(struct rockchip_pcie *rockchip, u8 fn,
 static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
 					 struct pci_epf_header *hdr)
 {
+	u32 reg;
 	struct rockchip_pcie_ep *ep = epc_get_drvdata(epc);
 	struct rockchip_pcie *rockchip = &ep->rockchip;
 
@@ -127,8 +128,9 @@ static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
 				    PCIE_CORE_CONFIG_VENDOR);
 	}
 
-	rockchip_pcie_write(rockchip, hdr->deviceid << 16,
-			    ROCKCHIP_PCIE_EP_FUNC_BASE(fn) + PCI_VENDOR_ID);
+	reg = rockchip_pcie_read(rockchip, PCIE_EP_CONFIG_DID_VID);
+	reg = (reg & 0xFFFF) | (hdr->deviceid << 16);
+	rockchip_pcie_write(rockchip, reg, PCIE_EP_CONFIG_DID_VID);
 
 	rockchip_pcie_write(rockchip,
 			    hdr->revid |
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 32c3a859c26b..51a123e5c0cf 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -133,6 +133,8 @@
 #define PCIE_RC_RP_ATS_BASE		0x400000
 #define PCIE_RC_CONFIG_NORMAL_BASE	0x800000
 #define PCIE_RC_CONFIG_BASE		0xa00000
+#define PCIE_EP_CONFIG_BASE		0xa00000
+#define PCIE_EP_CONFIG_DID_VID		(PCIE_EP_CONFIG_BASE + 0x00)
 #define PCIE_RC_CONFIG_RID_CCR		(PCIE_RC_CONFIG_BASE + 0x08)
 #define PCIE_RC_CONFIG_DCR		(PCIE_RC_CONFIG_BASE + 0xc4)
 #define   PCIE_RC_CONFIG_DCR_CSPL_SHIFT		18
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
