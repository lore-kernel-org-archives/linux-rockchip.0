Return-Path: <SRS0=Ct0Y=KW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09B73C4707F
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 16:28:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C616D613C0
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 May 2021 16:28:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C616D613C0
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a7/LiXw7fqBV4KPHSZs7oTDT7Y2snwow+6CEnSTTvQ0=; b=Rdjt5e4DS8oLeT
	NnRw1xqH7aPMrajYJdZybDUplyaMHtywO3pFnGtrhL3c1XCvLZYLyJYzn2/CgxpYID5GQO1Q8nEkg
	5EQH7q1c/3zDXK+ReBWGYhtra3D7F1EetOkJKLyZL+Kc13nuadTUJDrwmJmzUiZWPSgaNvCTs9JUv
	l21Z4c2ckvAxY1ztv4x4tv7MNJAFWhvYR1UmIlpDensnvsapKrCNkSsQFfsBjAjDNvHgS+ExdBJ13
	mj8DEX9KywJRyKsDPihVxUnyQLOfioftZh7jr4S+dD9svf7nv5HNo3b+H/xbmIbm1sM7M88ujSCf8
	XHOZsDJywBf4fXdXF7lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmIrw-007cUR-Ps; Thu, 27 May 2021 16:28:24 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmHbI-0072R1-QH; Thu, 27 May 2021 15:07:10 +0000
Received: by mail-pj1-x1033.google.com with SMTP id g24so616225pji.4;
 Thu, 27 May 2021 08:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=A93D3Jz/qTgixftb1ASsD8T5vX2ZHOxs7SEr20+q3E4=;
 b=MMSdCu4bncyrpLvqO7+fLJ6ChGKSZ5Ya1+Xd4ofCq3UiwKYE+KO+bOl9v8i84CLqC9
 TbLSMWZLbSjywtbwyd37YAUmEn08KrG5xBOS0+P+9r9TrEpulg4E44QJ/XeQ98e0wNoM
 SThgxcuVH5J0CUUz/QKg/8AQ15DK5HiRNZz7EGYH5KcoCF7EV+XicDXTZmHGbs3NWOrY
 3sULIZxK/fnlEV8zdDiTt3r/lIj/z8m4/v02Jj6Q45sp4aWMr599psEF3y5La/XElZ7k
 X4j5yel/B4Vk9rYcViRqDf5QzMc4fWPK095yJXuPRsptKJ9jw65w7AYQgJdf2goMpURa
 NRAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=A93D3Jz/qTgixftb1ASsD8T5vX2ZHOxs7SEr20+q3E4=;
 b=ubxzZpsia1SX9swT0WTMiejbJMZGYjHAOfsHYrjqb8yNbJIuZeIWGwT2jM+fDN4Hqk
 gBv8KeZ1fjG623c4CqaXLgQZHK/sEtNHQ7adDWI0juCHfluD6sCcPR2zoIkM+covp/Gb
 VdfOGENF2d5zGvrN5Ln8IyW/fn7SVWA2cD4IwkqHURTDg8sBwXT71/fwwwTtO2iUigvf
 a7xSD2JLrpIq1XOhiGoLXA3JcbXVcaZrH5jpyuVRTuVOyM/FfJMjQ8j69VJ/20JG2cKK
 rz3wtI+90wuEw/nAD2jhh1yHHE+5t+QO5/FNtaSucsea3riGmJZAgQFXT+ueI11JKEQw
 On/Q==
X-Gm-Message-State: AOAM533BCEQXyLGAe/PH1NTRF+DLt5gdDhMjGiPL2lOVhtcbEcIOJUfA
 CoxxGdYg6g0s3Y2g1tuVX74IZPZXy19yiQ==
X-Google-Smtp-Source: ABdhPJy0RolUbT16u5ASs6Qv4vTKJXckg5XvCboep7q0O8magnGUidJHGWe4kmXXIVxjYqFf+MFpPw==
X-Received: by 2002:a17:90a:ac12:: with SMTP id
 o18mr9969025pjq.65.1622128027426; 
 Thu, 27 May 2021 08:07:07 -0700 (PDT)
Received: from localhost (122x211x248x161.ap122.ftth.ucom.ne.jp.
 [122.211.248.161])
 by smtp.gmail.com with ESMTPSA id t12sm2255790pjw.57.2021.05.27.08.07.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 May 2021 08:07:06 -0700 (PDT)
From: Punit Agrawal <punitagrawal@gmail.com>
To: linux-rockchip@lists.infradead.org,
	linux-pci@vger.kernel.org
Cc: Punit Agrawal <punitagrawal@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 alexandru.elisei@arm.com, wqu@suse.com, robin.murphy@arm.com,
 pgwipeout@gmail.com, ardb@kernel.org, briannorris@chromium.org,
 shawn.lin@rock-chips.com, helgaas@kernel.org, robh+dt@kernel.org,
 Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH 2/2] arm64: dts: rockchip: Update PCI host bridge window to
 32-bit address memory
Date: Fri, 28 May 2021 00:05:42 +0900
Message-Id: <20210527150541.3130505-3-punitagrawal@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210527150541.3130505-1-punitagrawal@gmail.com>
References: <20210527150541.3130505-1-punitagrawal@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210527_080708_932233_242197BD 
X-CRM114-Status: GOOD (  14.41  )
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
