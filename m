Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E81DE77188
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jan 2025 08:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zzat14cdpw95pp83lkq3ZI5MgoeKrkNskXAOEQQhOOE=; b=gE/MYJBk7eyCtt
	dQk3cmBGNUsd7RheFnW24yV7BXTDMdqkCgmIEp94XHzG98xUZr4Ymd0nohMQ6S6jdc6zYDaaBZLYh
	vHXACR+/Of+SD2UCc+n+CEliEAklz+6uXUasomqo9ylEZNLrvwdhmXFxZVSVKV91hJ2xe1b7cjlbD
	CVPIHW9jCdmMa0CiuM0koVsgWQkZ+pnKe1FxxBOUxWLIoF3A/VvlbzPqlj7du/UjW0I2lGkrYIW1r
	zhk++l1QAqEmVpJheqX+REjpaoG6uCmLAPCMSCsMHYJW8D5MpAUFEvSMmuGs4MQeBZpf4ttZC7g8t
	SrtaVAY+QitdAHNcfvsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUiFm-00000000TwC-0ZCV;
	Mon, 06 Jan 2025 08:14:26 +0000
Received: from mailgw.kylinos.cn ([124.126.103.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUiFi-00000000Tvj-3NGP;
	Mon, 06 Jan 2025 08:14:24 +0000
X-UUID: 348413d4cc0611efa216b1d71e6e1362-20250106
X-CTIC-Tags: HR_CC_COUNT, HR_CC_DOMAIN_COUNT, HR_CC_NAME, HR_CTE_8B, HR_CTT_MISS
	HR_DATE_H, HR_DATE_WKD, HR_DATE_ZONE, HR_FROM_DIGIT_LEN, HR_FROM_NAME
	HR_SJ_DIGIT_LEN, HR_SJ_LANG, HR_SJ_LEN, HR_SJ_LETTER, HR_SJ_NOR_SYM
	HR_SJ_PHRASE, HR_SJ_PHRASE_LEN, HR_SJ_WS, HR_TO_COUNT, HR_TO_DOMAIN_COUNT
	HR_TO_NO_NAME, IP_TRUSTED, SRC_TRUSTED, DN_TRUSTED, SA_TRUSTED
	SA_EXISTED, SN_TRUSTED, SN_EXISTED, SPF_NOPASS, DKIM_NOPASS
	DMARC_NOPASS, UD_TRUSTED, CIE_BAD, CIE_GOOD_SPF, GTI_FG_BS
	GTI_C_CI, GTI_FG_IT, GTI_RG_INFO, GTI_C_BU, AMN_T1
	AMN_GOOD, AMN_C_TI, AMN_C_BU
X-CID-P-RULE: Release_Ham
X-CID-O-INFO: VERSION:1.1.41,REQID:7a82ddf6-4da1-428c-8044-c9bc72a79176,IP:0,U
	RL:0,TC:0,Content:-25,EDM:25,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACT
	ION:release,TS:-5
X-CID-INFO: VERSION:1.1.41,REQID:7a82ddf6-4da1-428c-8044-c9bc72a79176,IP:0,URL
	:0,TC:0,Content:-25,EDM:25,RT:0,SF:-5,FILE:0,BULK:0,RULE:Release_Ham,ACTIO
	N:release,TS:-5
X-CID-META: VersionHash:6dc6a47,CLOUDID:2c634ab6da7ceb7438c12f5ff6cecb99,BulkI
	D:2501061614104SMT9FIQ,BulkQuantity:0,Recheck:0,SF:17|19|38|66|78|102,TC:n
	il,Content:0|50,EDM:5,IP:nil,URL:1,File:nil,RT:nil,Bulk:nil,QS:nil,BEC:nil
	,COL:0,OSI:0,OSA:0,AV:0,LES:1,SPR:NO,DKR:0,DKP:0,BRR:0,BRE:0,ARC:0
X-CID-BVR: 0
X-CID-BAS: 0,_,0,_
X-CID-FACTOR: TF_CID_SPAM_SNR,TF_CID_SPAM_FAS,TF_CID_SPAM_FSD,TF_CID_SPAM_ULS
X-UUID: 348413d4cc0611efa216b1d71e6e1362-20250106
X-User: xiaopei01@kylinos.cn
Received: from localhost.localdomain [(10.44.16.150)] by mailgw.kylinos.cn
	(envelope-from <xiaopei01@kylinos.cn>)
	(Generic MTA with TLSv1.3 TLS_AES_256_GCM_SHA384 256/256)
	with ESMTP id 313021004; Mon, 06 Jan 2025 16:14:09 +0800
From: Pei Xiao <xiaopei01@kylinos.cn>
To: linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	cassel@kernel.org,
	lpieralisi@kernel.org,
	kw@linux.com,
	heiko@sntech.de
Cc: Pei Xiao <xiaopei01@kylinos.cn>,
	kernel test robot <lkp@intel.com>
Subject: [PATCH v2] PCI: dw-rockchip: remove redundant dev_err
Date: Mon,  6 Jan 2025 16:14:04 +0800
Message-Id: <327718207d3cd72847c079ff9d56eb246744c182.1736126067.git.xiaopei01@kylinos.cn>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_001423_187823_571A2C9C 
X-CRM114-Status: UNSURE (   8.51  )
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

dev_err is redundant because platform_get_irq_byname() already prints an
error.

cocci warnings:
	drivers/pci/controller/dwc/pcie-dw-rockchip.c:454:2-9:line 454 is
redundant because platform_get_irq() already prints an error

so remove redundant dev_err.

Fixes: 8719dbc54668 ("PCI: dw-rockchip: Enumerate endpoints based on dll_link_up irq in the combined sys irq")
Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202412312343.najrW1Db-lkp@intel.com/
Signed-off-by: Pei Xiao <xiaopei01@kylinos.cn>
---
V2:add to pci list
---
 drivers/pci/controller/dwc/pcie-dw-rockchip.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index ce4b511bff9b..a9795866e915 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -458,10 +458,8 @@ static int rockchip_pcie_configure_rc(struct platform_device *pdev,
 		return -ENODEV;
 
 	irq = platform_get_irq_byname(pdev, "sys");
-	if (irq < 0) {
-		dev_err(dev, "missing sys IRQ resource\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	ret = devm_request_threaded_irq(dev, irq, NULL,
 					rockchip_pcie_rc_sys_irq_thread,
@@ -504,10 +502,8 @@ static int rockchip_pcie_configure_ep(struct platform_device *pdev,
 		return -ENODEV;
 
 	irq = platform_get_irq_byname(pdev, "sys");
-	if (irq < 0) {
-		dev_err(dev, "missing sys IRQ resource\n");
+	if (irq < 0)
 		return irq;
-	}
 
 	ret = devm_request_threaded_irq(dev, irq, NULL,
 					rockchip_pcie_ep_sys_irq_thread,
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
