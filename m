Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9DB7EFC592F
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Feb 2026 11:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5jrNDvSVLq+i2A13LNjeuhPS0ZXpgODSzJ+90gKIE9I=; b=UPZeY1k5A9wh3J
	gtgOyNGdFODTXRFOLGSyRm4PfJZCsceJdRMRrSv1GNb9wmEm2f8TXI1MgRA+uWyyFs8+m5CR+Ma6w
	1GHcgEyK9xaL1upcanF97+3SJFyxQX+HKEAiL+MCVLxK5aqtX8XccrH61Jm4dBxWro0S/YodRkMZd
	GJELFem9nSp12k4JqHHBkXpKVewe6ewK9KXdkfRDsZaffc3jshriT5YFRYfpF857gQpYUmnUTo0LL
	FTZy+nZDxKLEz6OoFFqIEAaS7h24aEzse2u04I5HFkeVNA0nstjx6OezqtLdhWAr+dFlfnS7Ki2/l
	PbJrfyrnakwDeQshddGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYKc-00000005rJg-1R4Y;
	Thu, 26 Feb 2026 10:10:54 +0000
Received: from mail-pf1-x431.google.com ([2607:f8b0:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vvYKU-00000005rI5-3Xgk
	for linux-rockchip@lists.infradead.org;
	Thu, 26 Feb 2026 10:10:53 +0000
Received: by mail-pf1-x431.google.com with SMTP id d2e1a72fcca58-824c9da9928so407384b3a.3
        for <linux-rockchip@lists.infradead.org>; Thu, 26 Feb 2026 02:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1772100644; x=1772705444; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=gkELXJ9KhXHMT5a1efTvXnueLkeN4tzHP27QeEGUl9c=;
        b=bEETp4FXE5Y9lqUGA+23vKDNIltflaJpvoLQHPeUSvqVmV86JwzFJ9ssvGLb+R8hrr
         qnu88/Hb1PmEgcpbYGRuGZE/6sny3RM24IYLMhUu8uY0zD78bMgoy4NbCWtLVsf5TBmU
         qNvoLeUEFr96rfe5nE95bkXyVw3LhI0sXv6ut6MfPJBIuYGT9WvzbjTq51hMMfw483uJ
         +lifg8B7qm97kUcDOsNlTHgzsxDO4NNuSwC7wi4EeTkafNLvIxrCuj3n/aPEQxORUuk/
         RuZBm5SyFvuyG2seWLhnnD568CLf8RntFT0JTOlZmBCCqxT+/qfNfkcMSofCLO8SE165
         vW1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772100644; x=1772705444;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gkELXJ9KhXHMT5a1efTvXnueLkeN4tzHP27QeEGUl9c=;
        b=E2Wan8cHS0OHg513MOmGQD0fHwKjfdkVknoDIqttSLfDcChqeCTM5FMLuDUXU5VCkA
         9nQL3JdhPAsK7/ksykAdysOJ4WwcCumX4VFwl+awNmIP3TqHEu7KGdlXxLVTTAbqt3cQ
         JXWuBXCfMh5YTPec2UxwSSUUr1x1kDJ7x42sXGR1gyevkfGGE4QZH9IfNyLkO/G3/8ZY
         i7Aojj73f2/SykvZXvKEdP1iPNzn8z+KgXlW5Psx+16S2fIy87AttoUvjcVvjYreQf7i
         zH4t8eUtq9y7NuP4DvmFztAdjjX8fOZM4aNhzxEeTgInQONz7XC/EITAUrHr1OMhgD93
         aBxQ==
X-Forwarded-Encrypted: i=1; AJvYcCVCWx55TCSuqB2ry4NHV4iCR2P3kpMWCAWC05vR4YdHb9LBj/3vuPNN4SHkWGWYlOV5Mkj6jTJ7Mvy4ApeL0w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy4FUQkDAfA7bbZzebBX9beLRatbdAc+7Sj62ew85jdaHYaoK9Z
	xbuVf89XKrw0ZsVQHzeB69m8gmu5E8QoewvSDMeND/KMM1iwoeez8Nr4
X-Gm-Gg: ATEYQzwe+BcVrcr3YdV8Prp5zoimHckw6Mynj6VvGIqOE+tu2E81wjpPnrBVt+VpPuv
	br1EBesRMdMsiG0UP+DgxhZKPXkQLDRXuITRug4ZIF9E3HTO+tYuuvR6XyRk4NLmOW7wwJL7eVj
	VkEi/HwUNHEKy/h9fR57PvaUfcB+9Dni4uJOTbE+n5YPSbTM+EUAm+fnj2p4k8b9A573Kg1QhFQ
	zgP3Dohh9ZRHUjb1Bft1NIB28XEx1f0hKmcZPz0tbk8VKsirRht0NSeMX6HPW1HA4TwUJtrwVPT
	n1FP6lUePGM/LwqKnkzVKOd2CqXtk1szBRdX8OpUeF8WxTUTcjfx+NONBgXtaRg9z0Xh1qw24vk
	3neJSDoZRrzz0nRi256Y5sv6/PzHOy3OC82/WE6FI3r1HCZ+kkG7WRzBoNd/WkQeRDgrseOc7o9
	WSqrJdHb282Eiaa8HgUKs=
X-Received: by 2002:a05:6a00:748d:b0:81f:4943:b853 with SMTP id d2e1a72fcca58-826daa0cdc6mr13672752b3a.38.1772100643876;
        Thu, 26 Feb 2026 02:10:43 -0800 (PST)
Received: from rockpi-5b ([45.112.0.78])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-82739dabd43sm2252704b3a.25.2026.02.26.02.10.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Feb 2026 02:10:43 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Niklas Cassel <cassel@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Hans Zhang <18255117159@163.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Wilfred Mallawa <wilfred.mallawa@wdc.com>,
	linux-pci@vger.kernel.org (open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support),
	linux-kernel@vger.kernel.org (open list)
Cc: Anand Moon <linux.amoon@gmail.com>,
	Grimmauld <grimmauld@grimmauld.de>
Subject: [PATCH v3] PCI: dw-rockchip: Enable async probe by default
Date: Thu, 26 Feb 2026 15:40:23 +0530
Message-ID: <20260226101032.1042-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.50.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260226_021046_904160_905832FC 
X-CRM114-Status: GOOD (  12.72  )
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

Rockchip DWC PCIe driver currently performs synchronous link training for
combo PHYs (PCIe 3.0/2.0 and SATA 3.0) during boot. This process waits for
the link to be fully established, adding several milliseconds to the boot
sequence. To optimize boot time, this change enables asynchronous probing,
allowing link establishment to proceed in the background while the kernel
continues probing other devices.

Cc: Grimmauld <grimmauld@grimmauld.de>
Cc: Niklas Cassel <cassel@kernel.org>
Tested-by: Grimmauld <grimmauld@grimmauld.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
v3: update the commit message to describe the changs.
    added tested by Grimmauld.
    https://lore.kernel.org/all/20240809073610.2517-1-linux.amoon@gmail.com/
v2: update the commit message to describe the changs.
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index 5b17da63151d5..c31e0e9848327 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -746,6 +746,7 @@ static struct platform_driver rockchip_pcie_driver = {
 		.name	= "rockchip-dw-pcie",
 		.of_match_table = rockchip_pcie_of_match,
 		.suppress_bind_attrs = true,
+		.probe_type = PROBE_PREFER_ASYNCHRONOUS,
 	},
 	.probe = rockchip_pcie_probe,
 };

base-commit: f4d0ec0aa20d49f09dc01d82894ce80d72de0560
-- 
2.50.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
