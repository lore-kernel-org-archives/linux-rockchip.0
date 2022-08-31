Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8512CECAAD3
	for <linux-rockchip@archiver.kernel.org>; Wed, 31 Aug 2022 18:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mRviuQDv5IIqL8nScFO5+uQXavLiKiu0EIayNAHy2Yk=; b=WqQES8F1sI7DHN
	aweZ3zUBuNRVDaVMw/DqxBFcb/WdqanmSsCUH3W3Bt7Qw6DnP2/oZHFAf1oXcdKY+7M1XkcLRpWtk
	TCutOOXFOQgXQzM7PDRqVm8iE8lNiBu3NBDTLmd5ZEMEWzXjeaTnENlXPps/c0vrxTV9+KMHjATdZ
	LqnAgtMM/I+Trg829RR4YZ/ub2kpFbCP4vEmn8foHqA1Ox7dR/9zK12/PQnsV1eln2VzlsynRURyh
	cB8LKEPEKvPmJwbY6O5HTqjVv0g/PTrbt7kjudxfxzHMxaXFjYIjulOOiiISa9N9jF5NlxvrFo6rk
	bPCY4Nhbm5ySI4fvmWUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTSQS-007YjR-FD; Wed, 31 Aug 2022 18:26:56 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTSQE-007YbS-3e; Wed, 31 Aug 2022 18:26:43 +0000
Received: from jupiter.universe (dyndsl-091-096-057-024.ewe-ip-backbone.de [91.96.57.24])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 34FEA6601DEE;
	Wed, 31 Aug 2022 19:26:38 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1661970398;
	bh=ozbZAR/ZPaFIawh+7c7nCegPwLLDEJxqWGRcV6jl+cM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=GX7cYYgVdfh0bjYVa/1f4LT2Y4QsV/SS1pGparNCeFUQIFLki2BmD40K2Vs0gdaFq
	 yavVEYh+oa3yxaoilaGqCp8dsjTBzyn5cuxKuYT5TwWQZ5D1i/3jweLxto5+hx4yO3
	 qX1yxMl29pvnkRmz49UrFR1tUXrhrVsLB8M84qgbQ9Qg3ZxC9YJMIGmI4xepy7AN2a
	 ZLZeH5fDEdpHSxGqAcDSH66UD1mw6WH3ICo8jFkt8YujZXM/xKVmhGIxvBAUKVmWrJ
	 CjNsSOw1WJl1n1o52cCVgIg0jnFW2WKrroKM1Fujzx9A/x5Pa1Qw4qnsrwYitBwRfr
	 pKxTMz/+7e3Nw==
Received: by jupiter.universe (Postfix, from userid 1000)
	id C03AD48015E; Wed, 31 Aug 2022 20:26:35 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH 1/6] dt-bindings: arm: rockchip: add rk5388 compatible string to pmu.yaml
Date: Wed, 31 Aug 2022 20:26:24 +0200
Message-Id: <20220831182629.79255-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220831182629.79255-1-sebastian.reichel@collabora.com>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220831_112642_373922_836C6CED 
X-CRM114-Status: GOOD (  10.31  )
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

Add the compatible for the pmu mfd on rk3588.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 5ece38065e54..4c645049c15b 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -25,6 +25,7 @@ select:
           - rockchip,rk3368-pmu
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
+          - rockchip,rk3588-pmu
 
   required:
     - compatible
@@ -39,6 +40,7 @@ properties:
           - rockchip,rk3368-pmu
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
+          - rockchip,rk3588-pmu
       - const: syscon
       - const: simple-mfd
 
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
