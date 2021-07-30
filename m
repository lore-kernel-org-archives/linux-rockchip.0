Return-Path: <SRS0=KZfN=MW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,UNPARSEABLE_RELAY,
	URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3E876C4320E
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 16:45:58 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F27FF60462
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Jul 2021 16:45:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F27FF60462
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C26wV544qMEkp2lvtXJ1szh3ob9dxF4bbHmPqJlEJek=; b=dt42dFZqm5wyyr
	miBm/cQudgHNS1uJcnGhjwGzhFF4Egg/4s18xW+j7+yzKjPaQDAJpH7JuXKCAw5heaT3DJ6BEXtI0
	JptooV62Bh6d9J89u2gCv/3x8MYG/WmYdyoDAgb/GkFsKl6BnRzTvch9VbW908Th+Pbw4mZOYk4VG
	UdtDhRVck/c4PAPgWc6SVjIDi4nJzvo/ge0/SIUZr/Zlu+9rcrsF2GmnHP0SDYiM+3eYA1DluihYf
	54mM9XG2OreQb28UzRW44vq1Qw03IW/Cxn2OiTlmsjsdLbc0ngvGFcAssnC/bggdFD0JfLJFkPU0c
	CsTcAkqqRHqGrLcRcWwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m9Vdy-009XaK-8s; Fri, 30 Jul 2021 16:45:54 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m9Vdv-009XYw-Gc
 for linux-rockchip@lists.infradead.org; Fri, 30 Jul 2021 16:45:52 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: ezequiel) with ESMTPSA id DADCD1F44BE7
From: Ezequiel Garcia <ezequiel@collabora.com>
To: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kever Yang <kever.yang@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>,
 Peter Geis <pgwipeout@gmail.com>, Ezequiel Garcia <ezequiel@collabora.com>
Subject: [PATCH 1/4] dt-bindings: gpu: mali-bifrost: Allow up to two clocks
Date: Fri, 30 Jul 2021 13:45:12 -0300
Message-Id: <20210730164515.83044-2-ezequiel@collabora.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210730164515.83044-1-ezequiel@collabora.com>
References: <20210730164515.83044-1-ezequiel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210730_094551_723085_6FA171FF 
X-CRM114-Status: UNSURE (   8.34  )
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
