Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DC8D7C6379F
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 14:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qBLAyNH4A+40z7WHj9YLQscXWx9LfFGaywgc5kxZ+nY=; b=QhrUUTrJh7lKr/
	15qlj+o858zq6hnmxDnMwNfgojANc3BrUzBzZuG7Xazrg6oS/K9OiLVvmpZoDU10W0g6++0BXeGnf
	0BoiY/OBPOcfE4dY4kzfYIDTRbrenmQuvz9OljajX1fuP0uDzTFloDdPtQ+t1gEnUpOJQE/seAZPh
	MIHcJoC+plZICD2S2kxCR9tNWKeUgGbGb442fTmyV/FS8uHJdN0dNrjRdDJegmJs4dmPppFbzYi/u
	IwAmdIDyPFZjRwvt1nECdj1jud3SolKxmM0oCvIxKEK2osUWYsdbf2YiuhdmDT/owM1XF2lYmkMsz
	VsjOv+jKIEWNMoZBmmxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRwWz-002G6x-Qz; Tue, 14 Feb 2023 14:43:41 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRw0Q-0021Ic-Pi; Tue, 14 Feb 2023 14:10:04 +0000
Received: by mail-ej1-x62e.google.com with SMTP id hx15so40319855ejc.11;
        Tue, 14 Feb 2023 06:10:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CTWPMQ5IkIsp33gvRTV303Woi805qt5LWeJY1A4m9uw=;
        b=iRlk5JA6Owj1tpws1EfuazhlcuU+rLUsxc4gTBtwVUs4Q9lo9qvpvsYcNZJlbZ/JpE
         oK21vzja6sMUmUzIodoZTYUYtdFan5EAlpeMGzSl9AcMHptN4c4s7+PViEkF29SMzUv7
         3GFX025yHPRed6vxvk84JBOK3WfyWoCaZSaG41y9VTxvCV4ani39VSJDzoa3zUjnuC8h
         RIanKdM7Z61smgWoUAhAo9bk8kFPc0zpqgH/ThekupRHUpCa8p2/Mp2LqcoLr3n+RbC5
         jQaGBc2bQEBMq61ascyWWDBrPVkdCATbE+MY6luviuG2Dkx3fvMqKiOHxaI4ubCB/eV7
         qvXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CTWPMQ5IkIsp33gvRTV303Woi805qt5LWeJY1A4m9uw=;
        b=okA7zj4oAyx9xJxx44sQ7ShJ9EH7ilL4U+z6T9z1N+zpQv8T/mqc8l6//0DR9rw0Go
         oZG4/yrNlVz2v/qxG0QCyQxPetaf2ND+JnuT3EiEmiiU311xqfjSTpUjSFVsUkuXT60o
         HXjcTDqkqG7sdD9K2tbohkyB8zoHISZU/+eW+dcZhkKprh7KB6RWplK8SyzPOPDnxAgm
         5fjDnQik2oBx9XnsLqenT5Lr1RORzhcc6lIvMl3UoGZDmx9mOCbMofG1rS5QOq5IUVE9
         WHltDOKVY/iIhMJvpCG0G6o244dr9deLcCDdT3EFlW315ZO3V2fL2DqHSAZTOEqnrlZY
         FHFg==
X-Gm-Message-State: AO0yUKW9ruaoLdTDdaJdKEPuZS5L8Xz4yk5SnAR1vsxO+yqbPgakO468
	wsNsN54s3JttE4vzXj5gHsQ=
X-Google-Smtp-Source: AK7set9KhVRcL1vkjLJPVGMyilsn5eE+TJWdC9vdzFon7EJF13hwGE1UA2zzRaRP2jZ55wjDvdPiXQ==
X-Received: by 2002:a17:906:2214:b0:8b1:304e:58a7 with SMTP id s20-20020a170906221400b008b1304e58a7mr2092828ejs.56.1676383800712;
        Tue, 14 Feb 2023 06:10:00 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id n11-20020a1709065e0b00b008b13814f804sm332241eju.186.2023.02.14.06.09.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 06:10:00 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	rick.wertenbroek@heig-vd.ch,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Jani Nikula <jani.nikula@intel.com>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH v2 3/9] PCI: rockchip: Assert PCI Configuration Enable bit after probe
Date: Tue, 14 Feb 2023 15:08:51 +0100
Message-Id: <20230214140858.1133292-4-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_061002_910051_0E724A6A 
X-CRM114-Status: GOOD (  12.98  )
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
---
 drivers/pci/controller/pcie-rockchip-ep.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 9b835377b..4c84e403e 100644
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
