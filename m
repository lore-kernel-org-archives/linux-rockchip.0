Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7EC0C05027
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 14:49:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c+XIrlFLspyWMn4iy8Dzo9ErGn/2ZNmzoPQIV4C2RrI=; b=OnjzfnQhnAVUcw
	I7dFng+OnmXVTo6Hcw47Db8Kl3a5Zg9hcI1gAe9FstJk0/BEB0mP3AXgnMrMsi9yFuRpHvRPU/xlT
	HAJbJAgWdhlSPrR/iSWIdsK4j/WmH3rzwwR+P0YYHU5IKfBFyZ1C0jNiY7UaFrFEhK8E+QIZ56ZLT
	F6hGrBjrmrdr5LSmzk6ZtkemHBtSIbZTTqVFw49JExJAfRL7qEotekObG3yyU/eAymsp1d/1KoTM3
	11a+yKv0kn0qDIwlcMDg+u+MojO9BuDHf9Ms3ZpzqAW0ZAMMBHA7x85fC/9LF0PQrf9ztdaRhcDE7
	NmoNT0KU0HvJYw9m/LoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRwcE-002IGd-DE; Tue, 14 Feb 2023 14:49:06 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRw0g-0021Ic-4D; Tue, 14 Feb 2023 14:10:20 +0000
Received: by mail-ej1-x62e.google.com with SMTP id hx15so40322129ejc.11;
        Tue, 14 Feb 2023 06:10:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YFaCpSoOh56OQteewfZTVMaeWIQyKb2eWSuRe9wY0g4=;
        b=oawyfDtd4HUlixv3sc8fZB+y6sxxiksKZ4eU55nrdO/SmBP4kNGX255/isXuDEWjfI
         dMoeLo58pSfJRjFoOestBhkzoTulA8PDB7E3VaOp/7VSW4xhQ4lP2TdTAwT52+wxeMR5
         7AFChbur3VIZtBmRFkA1EqF9YZMwmJm0T9px+ooQXbvAKoCmtywskBQc010vH45IV4uk
         l1zM+ampBJPpo8R8JS8MGlYI+8x5dWLdrvLfiAGGsdGn/9RsIk2NnjYmXyBzHs5s5lhx
         o/XH626hiiJ2s7VjSOtc/zhNlNb/nzDqXA5JzQuea+/P5KCLxRAVfo4hkceeXdmLjpuH
         v1rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YFaCpSoOh56OQteewfZTVMaeWIQyKb2eWSuRe9wY0g4=;
        b=D2UG7f1i4gJ3zJtGTUDoDrdYNZggRqPdYFl8U4outHpJBgxTbl6v/Dc6S2dlyMc/Mk
         Imsc5AkMHr8T+RrVanZgrG3VZrikQUuSxTbJUIIH5G++WkQEhEGD4x2WRk8dxjQktuWO
         H9Hof21qq+5ZBatM2TC6YhItKAkjeILgxtYnhpScTpTNuUVRdsbMECvEoZozSvT+TzNa
         w+sbygJ74SsQ3j1x3Enlr+8Ll7eFj2DGCJ55D3JHBlq8EJYIlIymqsh1IZab59qXLzbs
         01SN9BTJ6ubFkR1cSbRumOlKEleNWOgTg2ez2M5PMl3Lo1i0kAMv9r3dzGO1G5XkCCyX
         B6pQ==
X-Gm-Message-State: AO0yUKXnQVcJn9PiAtRPtW0Q71cSMHe0w7AsGPGlqO+kBdEw9gKMUAF+
	f8lAEV7wdaoELuvO6oIy7Gs=
X-Google-Smtp-Source: AK7set9qx8i6ewx1KKF13ke9e6N7GALFeNK0DAgAP0ZyuOYAr/7qo2cNVkJA5U73LXL7dOkPQFdgNg==
X-Received: by 2002:a17:906:7c07:b0:888:7d50:33b4 with SMTP id t7-20020a1709067c0700b008887d5033b4mr3040433ejo.34.1676383817601;
        Tue, 14 Feb 2023 06:10:17 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id n11-20020a1709065e0b00b008b13814f804sm332241eju.186.2023.02.14.06.10.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 06:10:17 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
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
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH v2 9/9] PCI: rockchip: Add parameter check for RK3399 PCIe endpoint core set_msi()
Date: Tue, 14 Feb 2023 15:08:57 +0100
Message-Id: <20230214140858.1133292-10-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_061018_266882_60A5F2BB 
X-CRM114-Status: GOOD (  14.02  )
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

The RK3399 PCIe endpoint core supports only a single PCIe physcial
function (function number 0), therefore return -EINVAL if set_msi() is
called with a function number greater than 0.
The PCIe standard only allows the multi message capability (MMC) value
to be up to 0x5 (32 messages), therefore return -EINVAL if set_msi() is
called with a MMC value of over 0x5.

Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index b7865a94e..80634b690 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -294,6 +294,16 @@ static int rockchip_pcie_ep_set_msi(struct pci_epc *epc, u8 fn, u8 vfn,
 	struct rockchip_pcie *rockchip = &ep->rockchip;
 	u32 flags;
 
+	if (fn) {
+		dev_err(&epc->dev, "This endpoint controller only supports a single physical function\n");
+		return -EINVAL;
+	}
+
+	if (mmc > 0x5) {
+		dev_err(&epc->dev, "Number of MSI IRQs cannot be more than 32\n");
+		return -EINVAL;
+	}
+
 	flags = rockchip_pcie_read(rockchip,
 				   ROCKCHIP_PCIE_EP_FUNC_BASE(fn) +
 				   ROCKCHIP_PCIE_EP_MSI_CTRL_REG);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
