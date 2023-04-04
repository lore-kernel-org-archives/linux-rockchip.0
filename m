Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9D1A4C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:33:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mW5LVD/7ni5qJzBUxnMt3PfA6GIOk7onrlYUBtQCpcQ=; b=xBsm9r6gcZh2jN
	8xf0tvchW6LVNtms56P7rsTJ3q/zTq/N1Ngds4isOuUnfkD609bIHpWdGKkGAMemPvme1ZLyVxubg
	Gc+jbihmdOBFSWXZTuctncFZJV9HNiLzUs/dK0jMl4Mrll5+4rZEWZo6+IUKEbbwiN0FqQMoIkVp0
	07F2/C+5+YJtaT0tD+AYxYeXF/OQ4jBOw9wCOARtm1xxlRStGstLTRlYc+NWt3I+pByGU1iyETUOD
	HU/6ilC+MOyvqHTuf2+9AZoQYYpBNHAhxMYVfrHGsz1Et0HkqNDJ7ZNMAo1VddHoSPKI9y6br+q1C
	xPJcKNY4ygA6BJI9zl7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjc5t-000VFf-0p;
	Tue, 04 Apr 2023 08:32:52 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbyq-000SyN-2X;
	Tue, 04 Apr 2023 08:25:39 +0000
Received: by mail-ed1-x52d.google.com with SMTP id w9so127288992edc.3;
        Tue, 04 Apr 2023 01:25:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680596728;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8XUQa3tTZYrqLB8ZmeHcjq7vHYuWTZQrN0dXU7k9lqI=;
        b=fD2qTEJx7JiveSjrGAiMG5AGWZGPxK1lg4ePRaP1pYnBfj7kfz+yfUUU2hKx0to43N
         zZvp2Sl8D638krQfJjWs0ah7bJ+27ECGaIo/V2VdPjiYKwoVLVbUnd4l9AK6tsW7RIx9
         G9BFmUYndLsfJz918OTi0TEgEwRuEsj79fgtHoXQ+PDmBzNby1OEHWp0fa8TZXVPnwZD
         KVq1jysdS/uMIKBsOry/tBGp1SQZm6vFFCdj12qmWULu9Qs5XtAsQBNxpgHC4ggHZDFz
         2u6IDiNoKXSAFjLf6dEDfYTFKQyspQKEMgQCVX08x0Fqd7ho0Zrfv0RNqd2byjp2my2d
         Gn2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680596728;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8XUQa3tTZYrqLB8ZmeHcjq7vHYuWTZQrN0dXU7k9lqI=;
        b=Bm9rLTQ8hOaEGYfffixFEu4O0h1aHLYbCpT9AiNSKuU6zrHPTIPfintHy0r0i1n999
         PT7Q0/sf4OHFJ0yQyizlEOGWQDnVDPHs/UclSg6i2bH8HRtUUg4FbNxcE1rSfzhhUoDk
         hduGEePYNnbrtlwAMSuF/vvAot2bROxoZABQNPhxKjsgIOBkpEuXirbngmUZKIPB1hHB
         uGeREOnsXlnWyTmkDm/0LdvPdjbNpp1x7sspCS09jJmcGi4BPhSh+YPDaCEbSwgteAgU
         AFuSaM0Inj025VfeTwXgGdgj7m2WGfWVuRWjBxPTV1rXO6ayg2VAjJ2xJIVLgl481Y9i
         xvHQ==
X-Gm-Message-State: AAQBX9eSGTCUOKuqTOydNXqlNJgnjgbhxW927uaNbCOjh1EZdLthb0Xf
	q9HNgrK9RaaxTl8qiGVSf0g=
X-Google-Smtp-Source: AKy350ZQz1lJo+m3TubIFZX0lfv6+qAeDNkvwtqQyFwmKtUazwtEsAnttwdalMXfJeFOkG4raYmxmw==
X-Received: by 2002:a17:907:d689:b0:8af:2a97:91d4 with SMTP id wf9-20020a170907d68900b008af2a9791d4mr1491773ejc.14.1680596728271;
        Tue, 04 Apr 2023 01:25:28 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id s5-20020a170906454500b008e54ac90de1sm5640652ejq.74.2023.04.04.01.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 01:25:28 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: damien.lemoal@opensource.wdc.com,
	xxm@rock-chips.com,
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
	Lin Huang <hl@rock-chips.com>,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 11/11] PCI: rockchip: Set address alignment for endpoint mode
Date: Tue,  4 Apr 2023 10:24:24 +0200
Message-Id: <20230404082426.3880812-12-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
References: <20230404082426.3880812-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_012536_495694_6B75E6EA 
X-CRM114-Status: GOOD (  12.31  )
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

From: Damien Le Moal <damien.lemoal@opensource.wdc.com>

The address translation unit of the rockchip EP controller does not use
the lower 8 bits of a PCIe-space address to map local memory. Thus we
must set the align feature field to 256 to let the user know about this
constraint.

Signed-off-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index 20c768287870..b79382c1938a 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -445,6 +445,7 @@ static const struct pci_epc_features rockchip_pcie_epc_features = {
 	.linkup_notifier = false,
 	.msi_capable = true,
 	.msix_capable = false,
+	.align = 256,
 };
 
 static const struct pci_epc_features*
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
