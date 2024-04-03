Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4CE08CD128A
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Apr 2024 14:45:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KS92/ofUv0kIkG14vaoGNeTO9+hg7R0rFmv7fxkrYng=; b=SUEo30hDqmjQ5a
	4jypGRF6LInfHEKtgITVtzxkkFQrI0TW8ygbDO47KLy84eUMhWCYppFSHxTF8pvwNbovB3A+/JCOI
	2IvkiBsFKy+F6L20NTopMOmDLb17hMpJalwrII41kDtnMWnE2uU1DpevbW/EePypeHGzkAn4z2Vay
	F8zhPjWdjp2AfluNxpWBq3UkDr/XSElXGBHuelLEGIdif1awkipWxOx34JfjLO9QjV4B90TgvifUc
	NUDbPJ4uzMJLTXVXVpg3A+rM/VeYchIRWWebl3owK+jNeAdg0EKY33BD92pX6pfn8498xeHAAo+ER
	FSdwehPQY7BpwhiS3SjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs1rw-0000000GXfc-3GuJ;
	Wed, 03 Apr 2024 14:45:40 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rs1rs-0000000GXdb-2vNI;
	Wed, 03 Apr 2024 14:45:38 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a44665605f3so741529466b.2;
        Wed, 03 Apr 2024 07:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1712155531; x=1712760331; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s3Pkic51g7rrTopzQNi+VbYIAqH2ghyU0XlcWsnfQ8s=;
        b=heGmzgOWIWSYObsRLS8htv9ep4urZ87zI9dfzwsQ99vbwASefsELIxc5dUDPY1VB2Z
         ReCl9olqdOk1jAAFHCoKM7bkqSQu5FJDDbfRGocs1scbOlciVZpWo+Do+PZAXl4I5EPD
         9AUqs+CJEv5rcB2SgrYl6cQ0e7OR6Hbko4P4i2vof3zB+cH6xWoL0tvjVR6A3ljqFmjD
         xKtqjfXKPg9uF5z2nQZEwPkJo1vpZRl8FPELYpmlPCwBm3OiM48t5stKoDaK0bIRFiek
         k+NRxW6UUzYOqbKWPnxD06fBTBS/MQC+oV/mHLfDxTwxQTlO46Y8e3PpTdA4iGF5WLEW
         8MSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1712155531; x=1712760331;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s3Pkic51g7rrTopzQNi+VbYIAqH2ghyU0XlcWsnfQ8s=;
        b=UE733/Z/LgbmsahTInDY01Dbb+FDjSir05yosg5gEDdnecpde2IUWqkE4zzW0bJrIJ
         Hz0sgVSc7lC3hAU05vL1Qwr64Yq+IwMIiZN3MvqDefPh5BfRswzY14yZwDNBbh9TG476
         Jo1Jzg6P9yW8F8xpQk17RiDUKWZ2fZzv8OUjmHo1O8Prsm/seJm4KFfJhL51uy2a83tg
         6Zr0F4U7Pk7dMTzAsPPMHjSRIzYFYqpqNwfVguTH7O/W5KuIXd45+PzZbScTwAJ4prw2
         BBdy93GVsg4Gw3pzfsTi24SrVYs0sdGSjrP4MVzh1KrjEdPYpmNAyrfuC1R1jJfG/s5c
         FwHA==
X-Forwarded-Encrypted: i=1; AJvYcCUvZP/pxrl2wgR4xozrH+wTEhypokAe5jt0mlBa4Ki5HzFEgyFEBOo/uVf4BbBUxI9oC/CroU2g1G+F4/OsrHOzZ4mm+QeJ6J8wof7tit+1g4TggDKqhzd6V+YrVib+19+G1hpoq9DHMy0aOBAourk1E6GLIn7Yz8g=
X-Gm-Message-State: AOJu0Yz96yic5AH2D2ajk3Jt/vLPV6xkixKXimp1x7JCbov82/fyUTq2
	R01tRUFAh6N0zIpZCc9X7Fd++0YZkGVIvrR5vPrMp3Uh/gCm2wWo
X-Google-Smtp-Source: AGHT+IGUKnmalWHmdHqzQg31S41xmoGwv8cZpjceJSBvGia7muB7V+oQVkfF70cW8QCJGV1MPIMf1A==
X-Received: by 2002:a17:906:da8e:b0:a4e:379b:753f with SMTP id xh14-20020a170906da8e00b00a4e379b753fmr11844116ejb.23.1712155530775;
        Wed, 03 Apr 2024 07:45:30 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id s26-20020a1709066c9a00b00a46e92e583bsm7921536ejr.149.2024.04.03.07.45.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Apr 2024 07:45:30 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: rick.wertenbroek@heig-vd.ch
Cc: dlemoal@kernel.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] PCI: rockchip-ep: Remove wrong mask on subsys_vendor_id
Date: Wed,  3 Apr 2024 16:45:08 +0200
Message-Id: <20240403144508.489835-1-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_074536_763173_6F71D64C 
X-CRM114-Status: GOOD (  11.79  )
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

Remove wrong mask on subsys_vendor_id. Both the Vendor ID and Subsystem
Vendor ID are u16 variables and are written to a u32 register of the
controller. The Subsystem Vendor ID was always 0 because the u16 value
was masked incorrectly with GENMASK(31,16) resulting in all lower 16
bits being set to 0 prior to the shift.

Remove both masks as they are unnecessary and set the register correctly
i.e., the lower 16-bits are the Vendor ID and the upper 16-bits are the
Subsystem Vendor ID.

This is documented in the RK3399 TRM section 17.6.7.1.17

Fixes: cf590b078391 ("PCI: rockchip: Add EP driver for Rockchip PCIe controller")
Signed-off-by: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Cc: stable@vger.kernel.org
---
 drivers/pci/controller/pcie-rockchip-ep.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index c9046e97a1d2..37d4bcb8bd5b 100644
--- a/drivers/pci/controller/pcie-rockchip-ep.c
+++ b/drivers/pci/controller/pcie-rockchip-ep.c
@@ -98,10 +98,9 @@ static int rockchip_pcie_ep_write_header(struct pci_epc *epc, u8 fn, u8 vfn,
 
 	/* All functions share the same vendor ID with function 0 */
 	if (fn == 0) {
-		u32 vid_regs = (hdr->vendorid & GENMASK(15, 0)) |
-			       (hdr->subsys_vendor_id & GENMASK(31, 16)) << 16;
-
-		rockchip_pcie_write(rockchip, vid_regs,
+		rockchip_pcie_write(rockchip,
+				    hdr->vendorid |
+				    hdr->subsys_vendor_id << 16,
 				    PCIE_CORE_CONFIG_VENDOR);
 	}
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
