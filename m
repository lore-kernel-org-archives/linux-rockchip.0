Return-Path: <SRS0=KyHE=L5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-18.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D746BC07E99
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 14:03:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9778761951
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 14:03:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9778761951
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a6a5e0M9kxui5fUt+kQWDghTRVG48AosnNjp1xnUlCU=; b=45r02Ja6vfSNFb
	LU0587IRwTE2BAZbPoL95b0zl2IjGWrMNyuhAJx4aChst2B74KFTFxQ3j8x+rigYuANieEAeWK4kd
	mW3npAPMXZb7SnN1eDY+BpiUiS74r0b2lnW5TDswKgH/thvurRWjZk7HGsrWHzRFFUeTOGqbrt0uC
	Z5u5MHqrUfTwjpI743/5NcLs5aehnciQ1lOpQ73lfiA2PVyuaB6KePgNmabkvIVjHIYhZGVw5OJH0
	JtH0ktQulUd6PT4yrXasgX7tGKgroVtBuBVhvfnrwrFWmCLgGhEztIP1ExRn2Ob+NKMi6aE4OPWSK
	5y1hjyy4VMWLYPUN2hDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0PCI-00940Q-LA; Mon, 05 Jul 2021 14:03:42 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0PBw-0093wp-PO; Mon, 05 Jul 2021 14:03:22 +0000
Received: from localhost.localdomain (unknown
 [IPv6:2a01:e0a:4cb:a870:e614:ab69:6d29:3012])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: benjamin.gaignard)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 707B81F42A8B;
 Mon,  5 Jul 2021 15:03:18 +0100 (BST)
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
To: hjc@rock-chips.com, heiko@sntech.de, airlied@linux.ie, daniel@ffwll.ch,
 robh+dt@kernel.org
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>
Subject: [PATCH 1/2] dt-bindings: display: rockchip: Add compatible for rk3568
 HDMI
Date: Mon,  5 Jul 2021 16:03:03 +0200
Message-Id: <20210705140304.652929-2-benjamin.gaignard@collabora.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210705140304.652929-1-benjamin.gaignard@collabora.com>
References: <20210705140304.652929-1-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_070320_995351_AC48DC1D 
X-CRM114-Status: UNSURE (   9.43  )
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

Define a new compatible for rk3568 HDMI.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
---
 .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index 75cd9c686e985..d5f4e8eb6e624 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -23,6 +23,7 @@ properties:
       - rockchip,rk3288-dw-hdmi
       - rockchip,rk3328-dw-hdmi
       - rockchip,rk3399-dw-hdmi
+      - rockchip,rk3568-dw-hdmi
 
   reg-io-width:
     const: 4
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
