Return-Path: <SRS0=V4ex=M4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C38C2C4338F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 03:01:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7BCA760560
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Aug 2021 03:01:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 7BCA760560
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C26wV544qMEkp2lvtXJ1szh3ob9dxF4bbHmPqJlEJek=; b=cosbpRFZkwqe3/
	+n3Y7EQNJ/YID8ivlS2L+dxVJrapjpv0k324UZYKMyXIWTtyXuJCN2uuvBhwAkFZ76ZOY44TaH5+w
	YcGYt2p49NEw2xupGQZX5eHOowF6LecibiuX5C0oeo6ae5ci1XfbU6apa+tm+whoBmWpJ80pg7kpA
	wbnz3S5ysfBgVj+UZTLXCaFgEaRufeP7hW+vhGGBxPxwPqtV40X83BlidzSfBvbwtULSTo3JeLm/I
	p5/NYUESNpPshBMrZbnjfDKMOIhc3hDB1N9CNS6Sy4fYCtRvnm/INGjrjARCoZFPiGVD7IePy4kkk
	0FzZC0x1V38MFcSXd3JA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mBTd3-007wlG-FV; Thu, 05 Aug 2021 03:01:05 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mBTd0-007wkW-Q6
 for linux-rockchip@lists.infradead.org; Thu, 05 Aug 2021 03:01:04 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id 6E6B41F43B34
From: Ezequiel Garcia <ezequiel@collabora.com>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Peter Geis <pgwipeout@gmail.com>, Johan Jonker <jbx6244@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH v3 1/4] dt-bindings: gpu: mali-bifrost: Allow up to two clocks
Date: Wed,  4 Aug 2021 23:59:45 -0300
Message-Id: <20210805025948.10900-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210805025948.10900-1-ezequiel@collabora.com>
References: <20210805025948.10900-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210804_200103_019924_797165A1 
X-CRM114-Status: UNSURE (   8.32  )
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

Commit b681af0bc1cc ("drm: panfrost: add optional bus_clock")
added an optional bus_clock to support Allwinner H6 T-720 GPU.
Increase the max clock items in the dt-binding to reflect this.

Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
---
 .../devicetree/bindings/gpu/arm,mali-bifrost.yaml          | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 0f73f436bea7..01532140096e 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -38,7 +38,12 @@ properties:
       - const: gpu
 
   clocks:
-    maxItems: 1
+    minItems: 1
+    maxItems: 2
+
+  clock-names:
+    minItems: 1
+    maxItems: 2
 
   mali-supply: true
 
-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
