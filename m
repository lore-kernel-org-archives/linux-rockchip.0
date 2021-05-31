Return-Path: <SRS0=B2S1=K2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9A43C47080
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 22:12:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B3AD260FF1
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 May 2021 22:12:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B3AD260FF1
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7/LiXw7fqBV4KPHSZs7oTDT7Y2snwow+6CEnSTTvQ0=; b=vhdAYt1xjqvEp8
	d9mRcnwd89g07nlEjnDoYoEm9kfc0fEmf2HCNC3XYUn5F/oQLTmDm/cFMpB1Q7Gya5LmhXTD8tO7v
	evZgv5nBj1hnGlZKugMpxFlYgxseelQyYutLFr5eiTcXNkmoYuBgGMUKwM4+n7EbgW9V2UlBsTMI6
	DiTBGeYkMqOurLb2louc68coUYmSH2MpOP0Reh4IigP+iQUHjYUjRPpV5TcuhsC78Q44K1QDuuScn
	2A+pV8Fzt6Q5mA6AIy28lUYLoQnPS+2vVY+qJF48j1VxglZDMeCoTo1PrwEYFM9pCPGh+K8M6fKRn
	AAY4gMnSQCmzDLubI5MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lnq9X-00DcHi-HJ; Mon, 31 May 2021 22:12:55 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lnq8w-00Dbcm-Rw; Mon, 31 May 2021 22:12:20 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 27so9233875pgy.3;
 Mon, 31 May 2021 15:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A93D3Jz/qTgixftb1ASsD8T5vX2ZHOxs7SEr20+q3E4=;
 b=HTLnK1XWJOcuYF3R+7sQnyXy23CUZ3FTl9vIaAzRylyOyYuZ/pHaPGo0oSyZ04i3uT
 bNqPOfNvw1vDI9q1dl7wGhCESH0zbF8BtGH7F36YPlA7Bh8mC8Xl5fpilxoR1y6IAgYC
 m7deMyiiwJQ5+2uL0oXn5OHWNrfnFxEsi2m2OsqtuGMZmFcCutR/SVl7/P+3LVbNotGe
 CmeD1YEQRaOPbRWSAyYYZ9WT3t37qmLwd1WHClkNBgG95xqMSzx5ylaY7rIucgruhb7l
 XX5FA+vgcdxRAEO2w8rMx5IoA7vJKSPE9yHDysSSnromn/hn7Vk5VDKJKwlXRFq6dH8o
 tBLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A93D3Jz/qTgixftb1ASsD8T5vX2ZHOxs7SEr20+q3E4=;
 b=pGO38poLHbI8qSCreDUIujwy9LkriM4Ea6//p1ow6QCaSuSlPNNoGi4aZtemJAN6Pi
 KvsT3xgcE1lW4nApF8JYnyYjNBuIS3pmJ3wP5HFz+J2GdbIvwmVXRgXOs8Wco2m/l7Kr
 Bnbplt+LNmpENzyPl1kT33e9h29wumzknwCZluZTnfvgAa4JRh7WY+upujrmbNaAwfAG
 7/ATwfjibTpIEJMH8hEpqe4IJAFutH766xjEAuSXcks0pRPUE+bMLypEKy8Ar1HrPJyl
 0NAxrHaGtPlh34ln3uT0CDmvJIYrQiyoUjjm+EFf6bMgm1IksYeFK6DDpL93C9UIRrwO
 l5fg==
X-Gm-Message-State: AOAM531DvQzxO6+c5ZBG/4CYyCTDXgJ91jEU0EoRvCl7sqNrPHEoHb5i
 Ix0wdZd5pUntR65P0iMwS/G4kB8Mo5iv6A==
X-Google-Smtp-Source: ABdhPJzaxMK1rdEP8xfRiv9p/10iq31iiVonl5FIBWNHvWwP4NcZfSugseh8JaT+fbY0SyaMDE5SGg==
X-Received: by 2002:a63:5a19:: with SMTP id o25mr24462502pgb.122.1622499137637; 
 Mon, 31 May 2021 15:12:17 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id j3sm11949637pfe.98.2021.05.31.15.12.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 31 May 2021 15:12:17 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 alexandru.elisei@arm.com, wqu@suse.com, robin.murphy@arm.com,
 pgwipeout@gmail.com, ardb@kernel.org, briannorris@chromium.org,
 shawn.lin@rock-chips.com, helgaas@kernel.org, robh+dt@kernel.org,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH v2 4/4] arm64: dts: rockchip: Update PCI host bridge window to
 32-bit address memory
Date: Tue,  1 Jun 2021 07:10:57 +0900
Message-Id: <20210531221057.3406958-5-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210531221057.3406958-1-punitagrawal@gmail.com>
References: <20210531221057.3406958-1-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_151218_958762_BD00FF1C 
X-CRM114-Status: GOOD (  14.93  )
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
