Return-Path: <SRS0=vLt7=LB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3E02C47094
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:34:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 838B360FDC
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jun 2021 11:34:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 838B360FDC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DBoLrpqTUmXeYCQsnzBApsMiftV/lqxMsKyKYW+GZk4=; b=mTwpVa+Pvj6PPW
	fdiFLYzTSyiit49v/hCak57ECJowLZYeuyLi1J62FOo6ShEHxXgMVPcKWwz/Lmwbh/GjWT0pMphvJ
	zHOhs9lrOHuVH3IxWjAs9MCWp+/42p+JMszISxqRcCMrQ6PoYp3AdXTs5HtMYmXlxRNciZsMYJwDY
	uBtMNQgi5ne3QxnXLKKqJL18Mrh52nCAS3mEcOrwuSgeifK1E8rzcc2AUl+8gBOtzIl3ZfbA6WooL
	5CVNKYU6cGyWBPPJSgLFVVnnDvidKtFhW+Wwudd9XOeaqsjiLAnIrkYDmcbLNitYNN0UHG24myiP6
	Dj7a9+bstXZKy874pELQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lqDWb-003NsQ-U5; Mon, 07 Jun 2021 11:34:33 +0000
Received: from mail-pf1-f171.google.com ([209.85.210.171])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lqDSa-003MRu-Ph; Mon, 07 Jun 2021 11:30:29 +0000
Received: by mail-pf1-f171.google.com with SMTP id s14so11951227pfd.9;
 Mon, 07 Jun 2021 04:30:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=H/Yt3X2SxGHabq+c62sPHm2CdmHzwbxXy3zXvTGn4O4=;
 b=ldrUEjrnpMhEVVxmlliYmACwqqm8IvzyyrQfhmAk1A6f9Su/OdpzkQSBVsgxvFPCM5
 gmXNlbuzGrSi47sfuyW/Sr/LapMRlUXY2WO91uQL3trreQOzg6abRzKeE0U96cVl+QYL
 s9c5/UlRESxzHcXUOwydNQ1aVaIb6/ftBY5tOORuq8nvbK71LgzR76wREqMhqb6BbaIw
 1jKMRPA31xU2/FsOVSnKC+O2W6+ixL1spxhtXwuB9KucDT/Gj2bTezmRK9a+vvpEf0p4
 XEEfnvTR8CrWN7hxigRzRDpM+3vX3+TRfDVZxjPe57eErtAUAlfaondGrvJ81N63D8Yt
 2J1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=H/Yt3X2SxGHabq+c62sPHm2CdmHzwbxXy3zXvTGn4O4=;
 b=Zb0s9DWrxvQSV8H6v84Rw4ogyWP/WsyRT6FAV8EiGvLRspzonYJBo+byhdqunXXAWl
 dTCM2BnJ228tNhO4KVaiNiCvKGjeqLn/hz/PaFk6z5wCZDih7TNkPZSPYPehf77UsCp/
 lekg1Y9ExtlYvXivi/XA0Nfn0eC3hUrbgsBhuMp0vNC9/AORIEfHrBzgjC6+Rqugn4AE
 Nw5YDuuKCTW9V/ePQDDLikYsItUPxSrNyvh6hCAYqizm7YR3LO8qNKW1h4TNpG40P3fA
 zIcD8Mxpp0N0GUc9Xjl8Pd1JbSu2IEr8be87OwY2IhZ+ITp0wrQmaCD2rFPkqGN+vO9Z
 J9OQ==
X-Gm-Message-State: AOAM532j44PKAcdOYF/5uoY8FUqiqLauN+9r9Ft9hkkIIH/Zi/E/5w1H
 DONCImQ0D7kqKFWoogUu3eWUuRhUOtwHvQ==
X-Google-Smtp-Source: ABdhPJzZluhwYML3k2RzI64KyTnPU63QAHQCUn82ffdDDiH0PpVuJ0F+5G0pCsKr0rDDuVbI+qA6Yg==
X-Received: by 2002:aa7:9515:0:b029:2e9:c6f4:2c44 with SMTP id
 b21-20020aa795150000b02902e9c6f42c44mr17038239pfp.28.1623065363761; 
 Mon, 07 Jun 2021 04:29:23 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id e17sm7950720pfi.131.2021.06.07.04.29.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 07 Jun 2021 04:29:23 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: helgaas@kernel.org,
	robh+dt@kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, alexandru.elisei@arm.com, wqu@suse.com,
 robin.murphy@arm.com, pgwipeout@gmail.com, ardb@kernel.org,
 briannorris@chromium.org, shawn.lin@rock-chips.com,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v3 4/4] arm64: dts: rockchip: Update PCI host bridge window to
 32-bit address memory
Date: Mon,  7 Jun 2021 20:28:56 +0900
Message-Id: <20210607112856.3499682-5-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210607112856.3499682-1-punitagrawal@gmail.com>
References: <20210607112856.3499682-1-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210607_043024_875487_38ED68B4 
X-CRM114-Status: GOOD (  14.34  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The PCIe host bridge on RK3399 advertises a single 64-bit memory
address range even though it lies entirely below 4GB.

Previously the OF PCI range parser treated 64-bit ranges more
leniently (i.e., as 32-bit), but since commit 9d57e61bf723 ("of/pci:
Add IORESOURCE_MEM_64 to resource flags for 64-bit memory addresses")
the code takes a stricter view and treats the ranges as advertised in
the device tree (i.e, as 64-bit).

The change in behaviour causes failure when allocating bus addresses
to devices connected behind a PCI-to-PCI bridge that require
non-prefetchable memory ranges. The allocation failure was observed
for certain Samsung NVMe drives connected to RockPro64 boards.

Update the host bridge window attributes to treat it as 32-bit address
memory. This fixes the allocation failure observed since commit
9d57e61bf723.

Reported-by: Alexandru Elisei <alexandru.elisei@arm.com>
Link: https://lore.kernel.org/r/7a1e2ebc-f7d8-8431-d844-41a9c36a8911@arm.com
Suggested-by: Robin Murphy <robin.murphy@arm.com>
Signed-off-by: Punit Agrawal <punitagrawal@gmail.com>
Tested-by: Alexandru Elisei <alexandru.elisei@arm.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 634a91af8e83..4b854eb21f72 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -227,7 +227,7 @@ pcie0: pcie@f8000000 {
 		       <&pcie_phy 2>, <&pcie_phy 3>;
 		phy-names = "pcie-phy-0", "pcie-phy-1",
 			    "pcie-phy-2", "pcie-phy-3";
-		ranges = <0x83000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x1e00000>,
+		ranges = <0x82000000 0x0 0xfa000000 0x0 0xfa000000 0x0 0x1e00000>,
 			 <0x81000000 0x0 0xfbe00000 0x0 0xfbe00000 0x0 0x100000>;
 		resets = <&cru SRST_PCIE_CORE>, <&cru SRST_PCIE_MGMT>,
 			 <&cru SRST_PCIE_MGMT_STICKY>, <&cru SRST_PCIE_PIPE>,
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
