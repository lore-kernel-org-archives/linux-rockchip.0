Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9632DC05027
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 13:53:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pNGBOcl26/VPkhPo9A6nU8NIqS+NO4ZpuWmEXu09SmY=; b=cT4Q4SL6wQUafE
	SsWlX56mAhAqLhuKowvn1pebmUDyU6qpIt0ZYrBAtVC5g94e/qyLZhDPT7XgovUGmJ8gdP6hmI43G
	DoQK6tCYbjesMhq1xMLW8IcXoj1dDItDB7tLh5VclYQ/vkgC1v1eqzu0zy7+frMvRO1brDCBPSg7s
	jAeP6eq2LI7Y0k3cFdwp9GSMV9sLTajyhSlJBw3jz9mjCsBnovodOMNAwV3+LGWJnuH3lezBWrwuY
	KXC6gLoe3MlpyVAliuAnCUbqGp7pVANcufYHj7nmZm3iCLAZzl+tLcRmtUkWep0UiLcpByI8nfDTw
	YzDA4hwjXDrJMMDRJ8Xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2h7-00B2jV-S7; Thu, 26 Jan 2023 13:53:37 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL2g5-00B2Eu-Te; Thu, 26 Jan 2023 13:52:35 +0000
Received: by mail-ej1-x633.google.com with SMTP id lc27so2727396ejc.1;
        Thu, 26 Jan 2023 05:52:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VLWjnSTFLXfe6SVbC8tZ0mAHrHhhFAe2dhJdqThxnA4=;
        b=ph+9bieDcGdbUODWJAui93a4TFqfJENFBgCWB3Mxt62PM+Sq30A6MGoSyq8/3fVTu6
         R6DdherzSoVU8qSRE4x0lduB20NZaywWNgopH4zVM8Xrpn1dMUIPgtPke7Nu0c3JLj7R
         mzL86HEu6ei8FyNmT+Kxh8OMdUrERvie1iSXyhn2WzGbLvuAmQpQW//V+zLA6tUVOU6E
         4YYVgCkdWLu6HO3ETuGYW83Oa4ELOCmarBZMgqs8O4WahyuOLb3wtZC+Y7chsU87p922
         Tq7IY1VkQSJ1A7ciytSopbqgpq9dm5aNznibks33KaBJ9vbU2/uNHoYJMGVDSp2EV1Bd
         iVIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VLWjnSTFLXfe6SVbC8tZ0mAHrHhhFAe2dhJdqThxnA4=;
        b=iqmEc7ezew5ZEJKcVQOI2/LKKJ81pjaZXWJmafvoY4RlBMCVZTeqVKOqB6dvw9BYYY
         w4lt38ObgB3SILu3P92im2pS0B4DtlUHy7RsIPDzMB55nuz4iwA5o/0pUfU2qK1HZsLc
         R2iyEB4sIKQg6ebB/6z1vmtxKJ9XjVowWZYVGgjMlmzRwP57J1aiyOhiLH0LKwdlIX9m
         Hz0/2OcFqTvvMMkCv9KVyyF9BUfDE93pVYUs8Ffa+FbksQSGSKuyO0EKXLOZrVoXCKgh
         ASPjImpI7ILFE8LXrdvgBHiyC0DjAv2/Y+GIgDwlkz41io1oc0MYrDTBWO0ioYm2/D5v
         cXKQ==
X-Gm-Message-State: AFqh2kpPiOzffrnDC2b0GDJVJyIB3pvuEhIsbuOFs3lk6uy2mYh8OvQ7
	3Ibd1FjoG94BMVByvot1jXs=
X-Google-Smtp-Source: AMrXdXuTqvOwOguF+cFIH6I5/XrlifUMviSrlMs5CiT3D+atDlneE42KEVRBQXqTBNmhhg+LB76r8g==
X-Received: by 2002:a17:906:6a81:b0:82d:e2a6:4b0d with SMTP id p1-20020a1709066a8100b0082de2a64b0dmr33593928ejr.18.1674741150020;
        Thu, 26 Jan 2023 05:52:30 -0800 (PST)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id t15-20020a508d4f000000b004a0e2fe619esm591611edt.39.2023.01.26.05.52.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Jan 2023 05:52:29 -0800 (PST)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	wenrui.li@rock-chips.com,
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
	Rodrigo Vivi <rodrigo.vivi@intel.com>,
	Mikko Kovanen <mikko.kovanen@aavamobile.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org
Subject: [PATCH 2/8] PCI: rockchip: Fixed setup of Device ID
Date: Thu, 26 Jan 2023 14:50:42 +0100
Message-Id: <20230126135049.708524-3-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_055233_986338_407173C7 
X-CRM114-Status: GOOD (  14.24  )
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

Device ID was written to a read-only register and therefore did not work.
The Device ID is now updated through the correct register.
This is documented in the RK3399 TRM section 17.6.6.1.1

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
