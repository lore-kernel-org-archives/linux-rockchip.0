Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 15D6CC761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:31:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arIq66AIpfc8g9425hDpPZE8IFqWNeDXWmwLEIhoYz0=; b=45fP0Uno+AcPi+
	SKbzNqp0oJTdJLdVKKB36makzrpI0oYiFp8GYvaPeS3/MUMxEKJX/fvxICZ0lUOgno/nfr+m39akK
	eoeveHNNEZrTLdw0qT/z8c3p3C78HOy8annwicXWaT5+y6izc/GLnwR9puEfy4CPT9/crZ/WI9cFS
	5fPxVV7gTRnHSDtSYFEeXEKSM42akomHJRWLdu/+49n8ir/e29BRG7VqMMxMcTZD7sKfmY/wA9hfo
	nbEfOZ+zl+U8ino1TeJhrW07K0BDSKTrsWmTXlI/qRCwLZuJXr1R/Dng5tUTEhnVV98wy1RDqGi4t
	nIK7/9VSbaEjz4qwxh5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjc1f-000U2z-1d;
	Tue, 04 Apr 2023 08:28:23 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbyU-000T0H-1T;
	Tue, 04 Apr 2023 08:25:09 +0000
Received: by mail-ed1-x52d.google.com with SMTP id eh3so127221151edb.11;
        Tue, 04 Apr 2023 01:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596706;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qF/nMCildCwyVpeyLxx9Cd+w8QDEN538lEe16wXFDCI=;
        b=KPeJeCSwfeKvH7H6E26dseatEqJ9v0MMetQzsGXM1RDW2aIoacrBH4jEo3sHessNJx
         8XdDnvbed081Vz1ZrgkMUac7Qz1MHKoI10K8XqVGoyCq9XrYj1DpCCWLgklBbXUQJvqc
         HBfoDGXfQs7tr2em8wJNnIVxET3ZqeR1a+OZv7buK7aLvmmQ69/AHNsd7NCZDeO/aYCP
         jUR5ecJOa5V5WoCcayUxAiRMAeoqpyE1vexL+/nhWMFAbcl1fDyfNaPCmVaVR+2hcfQo
         BVFWRU/FewLlwT8XgkrXo/kEFud2xIRD1W9Q7xj9tNKKbYx+87iZQrcLdDKuELlYkUBh
         GIzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596706;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qF/nMCildCwyVpeyLxx9Cd+w8QDEN538lEe16wXFDCI=;
        b=DhlCE4qmQK+SAPhYARdd6XaZDQhzCvLPvS4ecykslODi2vngloFwE3I8Ol0MGJgvUl
         zXc0M9CAo5Osd+9tUHYbQWLgLpbQQPLOznZIiFs8SDqJvEAofXFaSqkw/DOV6hlR7/Kw
         A+Fai4d4FdnuWbVMve3X/CGP5hR/S7ZnN63D80d9JquWj7izlr/S7f9ezG9LheEY0He0
         i3i296wrItn+yH4NlWUO1oXlBCaVAmZDm6LndKN32nnjUNZqzp7V6j83MbyApszqXyKd
         cUCP/XhAOanV/iRGqVPeHYGoAAqSLP2Q4CusHZAVYd7X7i78rOl3BBIiq4qc/xK2QqF2
         POpQ==
X-Gm-Message-State: AAQBX9dqGzvvDQjwIqKbkza0XjjXHsGqcx7NiImrYz5Sd7EBO4SusOBN
	0CaenHfGxQPQ8TASrLlTkWA=
X-Google-Smtp-Source: AKy350aFi0idpnoR6KANcHGZyFCEUg8xjm8eY00CHU6x5aj4QXYqdnGg9gl2X6GiX//K2aVQf/Omaw==
X-Received: by 2002:a17:907:20aa:b0:931:9cd2:c214 with SMTP id pw10-20020a17090720aa00b009319cd2c214mr1429225ejb.66.1680596705882;
        Tue, 04 Apr 2023 01:25:05 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id s5-20020a170906454500b008e54ac90de1sm5640652ejq.74.2023.04.04.01.25.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:25:05 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: damien.lemoal@opensource.wdc.com,
	xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Johan Jonker <jbx6244@gmail.com>,
	Brian Norris <briannorris@chromium.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Lin Huang <hl@rock-chips.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 03/11] PCI: rockchip: Assert PCI Configuration Enable bit after probe
Date: Tue,  4 Apr 2023 10:24:16 +0200
Message-Id: <20230404082426.3880812-4-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_012506_698446_F4EAEBF6 
X-CRM114-Status: GOOD (  12.28  )
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

Assert PCI Configuration Enable bit after probe. When this bit is left to
0 in the endpoint mode, the RK3399 PCIe endpoint core will generate
configuration request retry status (CRS) messages back to the root complex.
Assert this bit after probe to allow the RK3399 PCIe endpoint core to reply
to configuration requests from the root complex.
This is documented in section 17.5.8.1.2 of the RK3399 TRM.

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Cc: stable@vger.kernel.org
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Tested-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 9b835377bd9e..4c84e403e155 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -623,6 +623,8 @@ static int rockchip_pcie_ep_probe(struct platform_device *pdev)
 
 	ep->irq_pci_addr = ROCKCHIP_PCIE_EP_DUMMY_IRQ_ADDR;
 
+	rockchip_pcie_write(rockchip, PCIE_CLIENT_CONF_ENABLE, PCIE_CLIENT_CONFIG);
+
 	return 0;
 err_epc_mem_exit:
 	pci_epc_mem_exit(epc);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
