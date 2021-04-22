Return-Path: <SRS0=DOys=JT=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-16.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 410BFC433ED
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 14:17:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CDC0B613C4
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Apr 2021 14:17:14 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CDC0B613C4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gCuFwcJxYgZTtDW+n5rSA0zUeUIe2WiiT83syZkSLw0=; b=RISh436ULCNme/Oev8J9ZMsM/
	/BS9twkqN3e3obQk6Fpq+C1ipgGlcLDEQqrEqEV2T68Ac9kw5N+TAxuOnU+KTF4L+YrLoIoJbESLr
	zPEqGwvabhxwVjpbyJZuG9FnAjHU4bPxtUTv8DNQ5u/SE2kvhingHcZIsWNZyxw+0DKQKZOR0F5G0
	qgccTVJyEItI3YmiCFk6o5UACmKvZIX8S87nRZi+xE2sbn/aBUeoPZqoY0jiy91Nzyftpw6IGrEub
	pQZy6cFtJ/0Msjkmul2p0if9qoTiUxh/5/leMUpaaLQDsUrHmKqPv7c66LRW5KO22EL+lfEMX2NnS
	tvNE//0MQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZa8i-00Gruu-TO; Thu, 22 Apr 2021 14:17:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZa7w-00Grle-Db; Thu, 22 Apr 2021 14:16:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=rpOIvul8MHvPqUeQ1vw5yEXDll2RGDzihUHmfjSDboE=; b=umrPVyyL2suw52e664Q6KRqA+P
 PhGOtJddDb2muNLOtlA2iakp72MI4Gk3z5TPcbY1OetTPsMDXKU8KYdQLFQeK+6Skve1/hQXC0aMF
 GsRx612lrFQyTxns9rwI5nQJ1nfBcCtLVWgnB5b0enPWtIwCOqVBYrluKYB1a73UOTTsY0/bhjpTo
 cnyxOWRwV/i5DaLfYO2qlaDrn6+2aOqetmktCgTUBrTxUgdB1+DLnOV6UKmymEFkLIpMw/4RIB8jn
 qYgUxkY/Pnn7I7l+65im9knqN8RTj1AKjLwBHXcHWxymx3ba/Rfum+0i+NfsgKuoM6JjRuc5QpP5F
 leGs4PcQ==;
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZa7r-00DkZ2-EB; Thu, 22 Apr 2021 14:16:19 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: benjamin.gaignard)
 with ESMTPSA id C3E161F4326A
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: joro@8bytes.org, will@kernel.org, robh+dt@kernel.org, heiko@sntech.de,
 xxm@rock-chips.com
Cc: iommu@lists.linux-foundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH v2 3/4] ARM: dts: rockchip: rk322x: Fix iommu-cells properties
 name
Date: Thu, 22 Apr 2021 16:16:01 +0200
Message-Id: <20210422141602.350746-4-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210422141602.350746-1-benjamin.gaignard@collabora.com>
References: <20210422141602.350746-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210422_071615_623227_58103D09 
X-CRM114-Status: UNSURE (   8.94  )
X-CRM114-Notice: Please train this message.
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

Add '#" to iommu-cells properties

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index a4dd50aaf3fc..8af2e9288029 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -564,7 +564,7 @@ vpu_mmu: iommu@20020800 {
 		interrupt-names = "vpu_mmu";
 		clocks = <&cru ACLK_VPU>, <&cru HCLK_VPU>;
 		clock-names = "aclk", "iface";
-		iommu-cells = <0>;
+		#iommu-cells = <0>;
 		status = "disabled";
 	};
 
@@ -575,7 +575,7 @@ vdec_mmu: iommu@20030480 {
 		interrupt-names = "vdec_mmu";
 		clocks = <&cru ACLK_RKVDEC>, <&cru HCLK_RKVDEC>;
 		clock-names = "aclk", "iface";
-		iommu-cells = <0>;
+		#iommu-cells = <0>;
 		status = "disabled";
 	};
 
@@ -629,7 +629,7 @@ iep_mmu: iommu@20070800 {
 		interrupt-names = "iep_mmu";
 		clocks = <&cru ACLK_IEP>, <&cru HCLK_IEP>;
 		clock-names = "aclk", "iface";
-		iommu-cells = <0>;
+		#iommu-cells = <0>;
 		status = "disabled";
 	};
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
