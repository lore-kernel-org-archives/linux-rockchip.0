Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6E74FC05027
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Feb 2023 14:42:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2rAfOXlJIoTKroJR5G/82pAJZc1rO8ixFxplEwWSNRk=; b=mmpNzeBBCuWnUd
	T0QMkiBpfUL9ZHM8oSbzqOU4sFlvSnaD3nbSF/vb4CQ5ta8GNGObir+VHXFVywQLOfQZLduloM7Ef
	9qh4LftXUA8yIXr6vjD6+ht3WH+mP2yfMoZ/UT5/FcmQPd+MM9FeAayADB1dkDRrRKtM7zYkgBJWd
	UROlAO/wDDXNaaCEUlVLUjBw3RatEiJyfGiMbN6Ul5VFRaPA4W+ehLYKvJA4BbGtDp6Kr2uAyTk2w
	xD/ktX9vdTvtpdRysCNylBvc8KGsHS0hyKWV+KJDNnBAm9n0zQVB5jTQ8cNih8DexGUvW7C5aFJsL
	cA0Fiis8RmaqF0hcQsjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRwVw-002Fir-6A; Tue, 14 Feb 2023 14:42:36 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pRw0N-0021Go-Nj; Tue, 14 Feb 2023 14:10:01 +0000
Received: by mail-ej1-x62f.google.com with SMTP id mc25so3022696ejb.13;
        Tue, 14 Feb 2023 06:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oJTwPyCQKw5xBpJ8wEGHmbNEVhauYC4jLoYSRftpEKg=;
        b=kkFxkofTxxdGhjgj3REYIMX9GeLMAeendKxgveM/SC4TYLmR+K165wntSVZkcT61W4
         h6B6VVvZZFu8+tLVlu7t7atlSqNdbPm8OskYI1ZFZ7TJvgEFqyZcXpM3lghFOty+18e6
         vuLSNm6c4lEJ4xuPF3HOZ8n84/CVGect/6JMku3YXYtOdC0JXl2GvRqNdDzbaVN9oeUR
         V8emS1cvyF5+pvlZlmvYD3QIlNVe7JqrO60fsOkjHTQvBatJogE9FB3U/EpsvX4gxNqY
         1brOKk5Pv6t4Z+oRztT9NU6zThbDpdShToPEiL0DsRtUfRs8P4OTNUwrbx+SCdYcEmBi
         w0ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oJTwPyCQKw5xBpJ8wEGHmbNEVhauYC4jLoYSRftpEKg=;
        b=jVaWC92QXf0nSb+boXQkaWRPf02gYwcPN7q0eqkhf6wocq5Vo5RVDMcx3luocv3A4q
         ZyK0FGSl0ljEdRiGsT2/c6siEKd/Sl0EFiSNMREb9SFTV4vb87PKq4/Qw6CNXrhnl0CX
         /q3TeyTqsC9l1wN+l6g5Tcyze0SxDu0pjlj04uOz5QKTiUuesdtfBSrMftmHg6XIimph
         IL5V6KSSXIckbAql7s06Rn5WVq+CiwlOWHga4a79hY0Zq6N0MQ6FZpXy50NKYkyvLpPT
         XgxD3aPQOZi0X46x/46UyXBhEyTaLlMzBUR0rLnlVdxpnDwCQhsOesLSkdxKMOyD5kd9
         kIAA==
X-Gm-Message-State: AO0yUKXnE+k4i5Vs9Tewv4ts/iik6FibBqQJf2P70O9uybPfBY+tRP33
	wx+B6B8ucZctSBMNb0CEFjs=
X-Google-Smtp-Source: AK7set/c5lGyAwr4OVJk7RpIJxVAqoq2U13GK1o+yKE8UmSYOwLhqX6RvdpoS/x46llDlPwkZ1J+AQ==
X-Received: by 2002:a17:907:7d8a:b0:8aa:b526:36b3 with SMTP id oz10-20020a1709077d8a00b008aab52636b3mr4107755ejc.14.1676383797839;
        Tue, 14 Feb 2023 06:09:57 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id n11-20020a1709065e0b00b008b13814f804sm332241eju.186.2023.02.14.06.09.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Feb 2023 06:09:57 -0800 (PST)
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
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH v2 2/9] PCI: rockchip: Write PCI Device ID to correct register
Date: Tue, 14 Feb 2023 15:08:50 +0100
Message-Id: <20230214140858.1133292-3-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230214_060959_812247_80710BA9 
X-CRM114-Status: GOOD (  15.39  )
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
---
 drivers/pci/controller/pcie-rockchip-ep.c | 6 ++++--
 drivers/pci/controller/pcie-rockchip.h    | 2 ++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d5c477020..9b835377b 100644
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
index 32c3a859c..51a123e5c 100644
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
