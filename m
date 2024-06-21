Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64A6EC27C4F
	for <linux-rockchip@archiver.kernel.org>; Fri, 21 Jun 2024 06:45:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BvPTt/wu+rrUOW33osTVsS7J5LG6sJELQNz81euSU9c=; b=Sm+yZ0jyvPNKUH
	vdN3ka9CSRCYbMP/CWCh536IzhBnNv5Eng3Fj4egKTwrsvLLC94O7SBDbih7s/60xvLhpOlA0sbo+
	oeZCbQo0OyNyRCYPGHIUbEug7M+LD96Kc2tbDFPnVXiNy+uodNXXiVXcyOLgCCkb0udKy/AYJtfuh
	8FIl0RxaZNfh8if4eXo2o4szuzn9/Zl9lHUBAvgY99Dvzh5uu5LrK1koINN33ZN4osgHEbD67npvg
	zfYrhBjkFUCYtdjNVQ+tzNNRmSY2mGSVUdH02w/TudWNrvMPFZ+M55h82ZC6OZazlGNUBHUUGL/IX
	gbN09z6m7Pep0ErnnkgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKY1P-0000000823p-2Koz;
	Fri, 21 Jun 2024 06:45:19 +0000
Received: from mail-oi1-x233.google.com ([2607:f8b0:4864:20::233])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKY1J-000000081yk-06KF;
	Fri, 21 Jun 2024 06:45:15 +0000
Received: by mail-oi1-x233.google.com with SMTP id 5614622812f47-3d23a0a32afso822148b6e.3;
        Thu, 20 Jun 2024 23:45:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718952312; x=1719557112; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7c3IUUghQlxYHrHfw3/LC7ZyAugPVzJNu5s/S2BsRTI=;
        b=QVJsBfw/6EM9HQ1HOsuG+oAM0yum6IMC0SpsYougG/h/+YYBqgfIXkJt6emdeHF+41
         b8bFRMMNG9+L5wSHAnLLBEYqqH+RpimoRYCYzmbXF4xlYZNhJlSPU4VcHHxQXlhnmlen
         GxAqdhti1vkscGjsDN2C1rt4nEsX1qWU/mxUOHlCN/uk4+GfFMmqBTLi2w1gcKekYD2i
         luBpHQZJu90POAeqgW2mYhSuNYitD4ToK43ur5CB1LVgShy2kRPRaGA05FRbBZn85T2B
         cf2ppUPTpGEaawsZ0XrzhHRZtgRavUQrK0qKo/yz2taNk+NVFFB7vrEpco2mpjfIhuYM
         7vcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718952312; x=1719557112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7c3IUUghQlxYHrHfw3/LC7ZyAugPVzJNu5s/S2BsRTI=;
        b=M/022OPat7bOYr7iYrr8hmAvDUG5uJLL2ep1nVU6G2RxtR76cQ95Z1RAGknFSeuPAz
         xw71mWUqKPD0wTFP9meTiN8a0jSQt+uUbzUXBJIlZC5kNx0ILw3Hm7LaJN/6ukcxCepO
         q0omLT9FV6vLdNeY0hlwx3bKDMTemm7e1tcgojA2ZI0/Q3PgZ9877zudle7mh7DJpto2
         qF+dslA+pI8Wktpq29CefdIgqhpjjCr9ByEhoE9myRJ/BLhYFLCgn3JKf4Wf1tyWZ0TR
         o3/XUVEjOm3UHy/uil+z0DHmzjq3B8j2uqr7O46xhCP+YZ3DxXP6/2VXc+HJSomZLl8c
         Qhyg==
X-Forwarded-Encrypted: i=1; AJvYcCUECbvL2/G5MzBKyu2xKl7IHR86EpY/ltDmNz89BBKjjWfrB20l209mjpPP8f/DOwU5uRUcI+mYB7kcerIWVtr8taWhTIpU8A3NjGDdpPiuHDsgQRWS8I4/GlpROV9b33i6OQmnagRcDGgp+OIb/AN+h4xsJtHqnlw=
X-Gm-Message-State: AOJu0YyTmdmUJqw/TdYqPqRfK1tSTqL/A/Bw1wa5qoUVlZMv8xlASvRu
	Biq84Igdp+c85xplCnHoIYja7KiSJRizS0n7nUwbam/8BgrvPLfP
X-Google-Smtp-Source: AGHT+IHfpgCmiN4yKZxh9cbTOz2of+YIvMIYN9KZ2/R2f4ckpehIvdm8HVeXkx9Mi7blW/ux8nM4Ow==
X-Received: by 2002:a05:6808:1784:b0:3d2:2512:5a5c with SMTP id 5614622812f47-3d51bb0f078mr8378774b6e.53.1718952311934;
        Thu, 20 Jun 2024 23:45:11 -0700 (PDT)
Received: from localhost.localdomain ([113.30.217.222])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-70651194776sm683117b3a.67.2024.06.20.23.45.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 23:45:11 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] PCI: rockchip: Refactor rockchip_pcie_disable_clocks function signature
Date: Fri, 21 Jun 2024 12:14:22 +0530
Message-ID: <20240621064426.282048-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <20240621064426.282048-1-linux.amoon@gmail.com>
References: <20240621064426.282048-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_234513_588525_EF944AE3 
X-CRM114-Status: GOOD (  12.64  )
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

Updated rockchip_pcie_disable_clocks function to accept
a struct rockchip pointer instead of a void pointer.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/pci/controller/pcie-rockchip.c | 4 +---
 drivers/pci/controller/pcie-rockchip.h | 2 +-
 2 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip.c b/drivers/pci/controller/pcie-rockchip.c
index f79e2b0a965b..da210cd96d98 100644
--- a/drivers/pci/controller/pcie-rockchip.c
+++ b/drivers/pci/controller/pcie-rockchip.c
@@ -284,10 +284,8 @@ int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip)
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_enable_clocks);
 
-void rockchip_pcie_disable_clocks(void *data)
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip)
 {
-	struct rockchip_pcie *rockchip = data;
-
 	clk_bulk_disable_unprepare(ROCKCHIP_NUM_CLKS, rockchip->clks);
 }
 EXPORT_SYMBOL_GPL(rockchip_pcie_disable_clocks);
diff --git a/drivers/pci/controller/pcie-rockchip.h b/drivers/pci/controller/pcie-rockchip.h
index 27e951b41b80..3330b1e55dcd 100644
--- a/drivers/pci/controller/pcie-rockchip.h
+++ b/drivers/pci/controller/pcie-rockchip.h
@@ -354,7 +354,7 @@ int rockchip_pcie_init_port(struct rockchip_pcie *rockchip);
 int rockchip_pcie_get_phys(struct rockchip_pcie *rockchip);
 void rockchip_pcie_deinit_phys(struct rockchip_pcie *rockchip);
 int rockchip_pcie_enable_clocks(struct rockchip_pcie *rockchip);
-void rockchip_pcie_disable_clocks(void *data);
+void rockchip_pcie_disable_clocks(struct rockchip_pcie *rockchip);
 void rockchip_pcie_cfg_configuration_accesses(
 		struct rockchip_pcie *rockchip, u32 type);
 
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
