Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41475C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 May 2023 07:11:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJ93DOikY66z0zzI9TqoYx3Szq1gXewTnwGDa+zDn7s=; b=ULuy0VDM7t2rMZ
	Pae9mUzjsSZx0DBZIljZw6HQURLBGx1hWwIdLVxfFYBK5NUyBe+rVC1htzMJjfES8CXxf5qhJDQ/6
	JzFU6r6XYyZLmOSSiYP/FCwS4JBhkoIP98zMVhhEHPDJwXVBXp3LTIH3EVdy5gXtS8GEiIHZajt31
	MyQO6S/Pm/wdtv3Jn70XkN+AM1L8BLrr6/tqYemuktdpGvCqUi/VMa7rW1PcpJ9wqgPhdpVxrpdxU
	oHGDYXwlEHmc7y5ToMEQkY0RLzN+60lDhR7WXO+ISY/2CSd0tLEuJTtj0VWQ5Oe/u8OjSrspcmqoi
	d9vbS+ndCgrJpIiATR7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pzBK2-008cZG-0F;
	Wed, 17 May 2023 07:11:42 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pzBJz-008cWp-23
	for linux-rockchip@lists.infradead.org;
	Wed, 17 May 2023 07:11:40 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-64384274895so261296b3a.2
        for <linux-rockchip@lists.infradead.org>; Wed, 17 May 2023 00:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684307496; x=1686899496;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=S2FvWeddjbo08d+v/70plSWsuqOmHaGfl7ylNtEdVaA=;
        b=AHuvVeXMsetKMgxQ1LjLNafI3kxKsDYDb6vRA8Arpe350pudpo0OVnN6EG93LVYXZh
         Y/asSdkkwF9FlXS9dOlsCCfW8EyjCWmOnZ4SXjFMt52ynqO8cvuNuGX01oeyQBO1N74z
         q7403Tmx6vdCMa5kUOzOkjPU+ggYHTynGANKCy0X1n1O7GzGC/j+3ozl3BCFvY+2MEXE
         D3P7HLQu7ZyahWmg5t8uZ7ORoxBVxRnuAHi2qW4vVh04tlILcdZz8dN5XbWYh2sRS/++
         oAQxmLJai0uWupzHUUql6lhBMIQyJk0+kMJcP9I3wIgksHZ1TDvyLHT5fbwGpDi9zvL+
         duJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684307496; x=1686899496;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=S2FvWeddjbo08d+v/70plSWsuqOmHaGfl7ylNtEdVaA=;
        b=RDsbl+yy/OENVNtvZNyXa9UQeePWObzCsICa00v3zqH9panbMBOZ5T1/tlyv3yJLVk
         ZLgHYhaCSNc8l6SoNffu/1ELYufMO73uKFg8Qy0JqUKM0macgQM3E5k4eyh43un6Ua/D
         GGqAjc+ep7BFOZgIUW8ouWm3F9JdXPeE/goC6ETdh/MxdQYCrWKUYC5nLHkG4WMfBydU
         2o8cs/BC+PEdIQqF9NbQtWGQTGG3vDHC+H32UM7G0wbkWa/Nsrej1YfvpV/doEj3rc1e
         I4E0wp6R7oAeVlq76miQ1dHFTzJNrqQX6NQz/NbgNnQLwsV5KMmnPzI78/PtiTOer+zK
         +5aw==
X-Gm-Message-State: AC+VfDyocBZlXm5dh9e4BVrZDAxmP9OfEQFe9CPt3cfZ223Fgf2WBrgA
	Sg9tb9kvkiBDqao8c/9wzbKYHd0cHigKhw==
X-Google-Smtp-Source: ACHHUZ44NxEVTXHmdQeZla9tusC9tAdDAbucnPrPgBV0L3Y1ruLcehyx92Vs2/NG4agv3E7DVhrHBw==
X-Received: by 2002:a05:6a00:134b:b0:643:b263:404 with SMTP id k11-20020a056a00134b00b00643b2630404mr52145991pfu.33.1684307495537;
        Wed, 17 May 2023 00:11:35 -0700 (PDT)
Received: from galactos.. ([2405:201:200d:90f4:9e80:3fd5:760d:6730])
        by smtp.gmail.com with ESMTPSA id j19-20020a62e913000000b0063b7c42a070sm14459527pfh.68.2023.05.17.00.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 00:11:35 -0700 (PDT)
From: UtsavBalar1231 <utsavbalar1231@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: UtsavBalar1231 <utsavbalar1231@gmail.com>
Subject: [PATCH 2/2] ARM64: dts: rk3399: Fix missing PCI reg property warning
Date: Wed, 17 May 2023 12:41:16 +0530
Message-Id: <20230517071116.1743679-2-utsavbalar1231@gmail.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230517071116.1743679-1-utsavbalar1231@gmail.com>
References: <20230517071116.1743679-1-utsavbalar1231@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230517_001139_677534_877FFF2F 
X-CRM114-Status: UNSURE (   8.36  )
X-CRM114-Notice: Please train this message.
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

DTC complains about missing PCI reg property on the
rk3399 PCIe interrupt-controller.

This fixes following warning:
Warning (pci_device_reg): Node /pcie@f8000000/interrupt-controller missing PCI reg property

Fixes: 85aaa5745952 ("arm64: dts: rockchip: add the PCIe controller support for RK3399")

Signed-off-by: UtsavBalar1231 <utsavbalar1231@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index bae257fa957a..14273aee42a8 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -237,6 +237,7 @@ pcie0: pcie@f8000000 {
 			     <GIC_SPI 50 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH 0>;
 		interrupt-names = "sys", "legacy", "client";
+		interrupt-parent = <&gic>;
 		interrupt-map-mask = <0 0 0 7>;
 		interrupt-map = <0 0 0 1 &pcie0_intc 0>,
 				<0 0 0 2 &pcie0_intc 1>,
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
