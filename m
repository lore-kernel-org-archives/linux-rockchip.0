Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0A87C77B77
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Apr 2023 09:27:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qXRXpyvkeDzgrbCbL2PI7dx7SUMCfUE6s6WWfv7Mkdg=; b=WyZURo+/hOpJYX
	kp1OcqsdgIR1lWENF3cqzoiLJ4KNbH/RrJa/JGYmo8hoZVLJ5bunpbMqMIfctpkygqMeabitUysrC
	/yIuOUtBma1STZAkuiDvxf5olo27OLjwsIzUXZSlwuqMELwpX3Z4tr8QFdH/aHakRiUoX7S0bdWrE
	7duEXRU4jvZWcqEbishkOuQD9uK/FQU0ZqkAC1+ET0oouLQD7fMDjlj/PksoOWSFwrDALJYIOJd33
	Ux4WCyYgVNnhjkVZI40qCcaHXEp1BnlVUhiSdb7Sf2Q/C9StFzc+weI8u9JIGMFsaPrZkGKFBu28d
	kZMhBQKDmjruQSBZCMQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8i-00FXDO-0S;
	Mon, 17 Apr 2023 09:27:12 +0000
Received: from mail-ej1-x629.google.com ([2a00:1450:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poL8Z-00FX5O-01;
	Mon, 17 Apr 2023 09:27:04 +0000
Received: by mail-ej1-x629.google.com with SMTP id xi5so62354103ejb.13;
        Mon, 17 Apr 2023 02:27:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1681723621; x=1684315621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kgHbhg3esGq56aGO/HEuNPuheQE575OxiIZl4oc8nlY=;
        b=RNrYptZWKFmRWsxaXdqW76/MXUnEG8YgJVkIPz2XIswRWoOddQSHkqRrK+IWS6crsY
         6Vt9Ea7y1y8e2gV1jHItJ+LBt5HUj3MgbHtEUYLvFWc8noeLVxQ5B8x1+EM+E4oql0SS
         ZYO4SpQeMMYZDDfbbuNPWAB7Q+IU9v3XBjfMU1cS496/Rswp7tYkaO3yuuPNW2Ck8RR1
         reCQqpxGhzRB64OhtAafre8Rqui2CVrSOFZnF8qarj35TUNEv3pr0udqhC2OEpxalL/s
         /2GKSUjvgwyZ7hXbmZf5+fQhPL5Ie0UAhm6CuerxV2kjCQ+2SSZ/tDUoeznRROi4hsE6
         RM+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681723621; x=1684315621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kgHbhg3esGq56aGO/HEuNPuheQE575OxiIZl4oc8nlY=;
        b=LT3uonmGXDbk72aIiJLhYnSr9FxuvZh5O2ciqADRokPr9sMOoAF9QbbmO9740ItOfK
         S6oQ7Wa5igDLscEmPF8Zs8qm/uHMRjevLv6miYaxjrbkf4600owIdDFwBV65NJRQ+orb
         CA7B76TWQdsB1zl9xOT3gqkXIr0Fjzwbh2KBMQJgAGTG3BsfvKKi1hVQeV1tEdIuzadu
         Ptej2jlGYH8NcNH5mj0LIDLV8UvkceVb5dFg2I4chOi0jxYzUJHhpgEBExEEuuTbf5uH
         tTo4JiGQZrNaTbQUDwF3weYViTcw0v2qm2lYNrG7jA7knq31P8SQFO0ocNSBdaw4txyy
         NOKA==
X-Gm-Message-State: AAQBX9dvS2gmmrcTN/Kvw+6CeBhUg8keADtzjiAn97ZSVNVRx95stqT9
	E7xtD/lfkZvP6LZoq4giZDE=
X-Google-Smtp-Source: AKy350ZtaT9/Ot9FlAA7mneJxaKzhVc1IKVlLT6ux5SovpbAI5g6KGB9sKEQNfomYwZ1BPms8vpRdA==
X-Received: by 2002:a17:906:408c:b0:94a:653b:ba41 with SMTP id u12-20020a170906408c00b0094a653bba41mr6729159ejj.15.1681723621512;
        Mon, 17 Apr 2023 02:27:01 -0700 (PDT)
Received: from A13PC04R.einet.ad.eivd.ch ([193.134.219.72])
        by smtp.googlemail.com with ESMTPSA id p20-20020a170906615400b0094aa087578csm6398596ejl.171.2023.04.17.02.27.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Apr 2023 02:27:01 -0700 (PDT)
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
To: alberto.dassatti@heig-vd.ch
Cc: xxm@rock-chips.com,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>,
	stable@vger.kernel.org,
	Damien Le Moal <dlemoal@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Brian Norris <briannorris@chromium.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Caleb Connolly <kc@postmarketos.org>,
	Corentin Labbe <clabbe@baylibre.com>,
	Hugh Cole-Baker <sigmaris@gmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Judy Hsiao <judyhsiao@chromium.org>,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 02/11] PCI: rockchip: Write PCI Device ID to correct register
Date: Mon, 17 Apr 2023 11:26:20 +0200
Message-Id: <20230417092631.347976-3-rick.wertenbroek@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
References: <20230417092631.347976-1-rick.wertenbroek@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230417_022703_044669_F1807CD9 
X-CRM114-Status: GOOD (  14.22  )
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
Reviewed-by: Damien Le Moal <dlemoal@kernel.org>
Tested-by: Damien Le Moal <dlemoal@kernel.org>
---
 drivers/pci/controller/pcie-rockchip-ep.c | 6 ++++--
 drivers/pci/controller/pcie-rockchip.h    | 2 ++
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/controller/pcie-rockchip-ep.c b/drivers/pci/controller/pcie-rockchip-ep.c
index d5c477020417..9b835377bd9e 100644
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
index 32c3a859c26b..51a123e5c0cf 100644
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
