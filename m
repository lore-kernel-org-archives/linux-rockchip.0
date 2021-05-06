Return-Path: <SRS0=3OfA=KB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B469BC433ED
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 17:55:55 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5FC3F610F7
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 May 2021 17:55:55 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5FC3F610F7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PXkRf6ND2SNfGnsLmPPtDaKCMkh1I6a7HF+SZqD24fI=; b=k7YBYsz3ujGp0q6rCfWus1MM7
	PFoq4H0eViRQpnRo4R80W9B4go2BdkWht03ZsjTDo4TbjrpTb7xqZ1fi61gWII2c5EFDHwQdyKFGz
	+B/mxDKKBkz8eioiG9Mb30vc1tvCilDjKneRRnWe1SZHCb5mbEkrDU+i00d3ltqOYw6aWdQ0ZO+Bx
	xG8PE67lN0H0SPeRp5/8jBXZmKAE4orlTtwi9vn2wDOomWUL2bvcnWKWKwvRyjYneOpIeFXIwlaet
	Ei7xkz6jvi8eNjeLjA02FBUjwN7uTk3F8U8tjkuJ0w/eocC6O6vSju0DDkPG3jEKaOfzRlB//zC7U
	bC5T4zm0A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leiDz-004zGq-Vg; Thu, 06 May 2021 17:55:48 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leiDx-004zGh-T0
 for linux-rockchip@desiato.infradead.org; Thu, 06 May 2021 17:55:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=ukMUny25yC8LH7NZl3OesqMCUugDR6+r6RAZ4rP9rQE=; b=Gg2nGcsZjGMiwJJeWOd4/Yl53v
 J3O9BM9YTydhJHamKdjxL0wGcuGxgb8AlLjwJ88pJg0w9WlhIgP20ZRGy4vQAM/OW//Dnz3EMuZpe
 UGYzlMSY04vDEOVuP5wu5YF+KuHvCU3F5Xmh2gO8X5mAuO7JmP+CO6xlyOKDDfQ8ppipCgDhcQhmS
 D+L66sXFVHCBRBiRsPsqEWiiV23NQvDmQ0fMwkP37p6cbdrK06gvl0zR4lp7SPcfJYNXg/Yq2wABo
 9fLvAxNkpRpVy3fFLd4n00v/F+ugOuaSohL6fhinwItpXC9FjU06NjTtIVHFUe5LwXODDojkwl2AX
 qxh8EN+w==;
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leiDv-006GhR-FH
 for linux-rockchip@lists.infradead.org; Thu, 06 May 2021 17:55:44 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 1700C1F43B7E
From: Ezequiel Garcia <ezequiel@collabora.com>
To: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Finley Xiao <finley.xiao@rock-chips.com>,
 Zhang Rui <rui.zhang@intel.com>, Ezequiel Garcia <ezequiel@collabora.com>,
 kernel@collabora.com
Subject: [PATCH v2 1/4] ARM: dts: rockchip: Fix thermal sensor cells
Date: Thu,  6 May 2021 14:55:11 -0300
Message-Id: <20210506175514.168365-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210506175514.168365-1-ezequiel@collabora.com>
References: <20210506175514.168365-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_105543_656033_4BEB7019 
X-CRM114-Status: GOOD (  10.21  )
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

The number of cells to be used with a thermal sensor specifier
must be "1". Fix this.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 arch/arm/boot/dts/rk322x.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 208f21245095..9f02ba7a0cc2 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -517,7 +517,7 @@ tsadc: tsadc@11150000 {
 		pinctrl-0 = <&otp_pin>;
 		pinctrl-1 = <&otp_out>;
 		pinctrl-2 = <&otp_pin>;
-		#thermal-sensor-cells = <0>;
+		#thermal-sensor-cells = <1>;
 		rockchip,hw-tshut-temp = <95000>;
 		status = "disabled";
 	};
-- 
2.30.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
