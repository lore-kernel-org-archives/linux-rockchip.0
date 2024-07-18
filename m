Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 40EDDC3DA60
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Jul 2024 08:41:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g97Mq22aP/xSOOi4aEaGX6bPtqa2Wqvk5Hi4XoXlb0E=; b=ixjEYossnSTPBn
	erJi29yv2F8cmtkC+/U2yacqlUtCYO4LFRs+4YI4OVOnN2VccgIhDZyB+p1IxQmrHs2fcE48qaLhj
	LpRtREPfgnQ6IXsUV+AOCwXCqrUEleYkbEfAEHEYWg8RkT2/UJhkKXOBvr19H7b28s4zmWCaULqNu
	4GF8dYlfTx1qlX3VKy33IXyKHQkaU1c15bh30FzWGg/IRZ+vHf1Ca5KikQCiF33AgYGFdkUtPKAYz
	Ma6GP19RvvKGq8CENmRPfjN+qXqb6w69TVoNjbFVLFy8kwA/Jp7emswcTR8/1TQy5O5kHMi97zqy1
	I964zLJ8ShXIYrIFnv9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMhc-0000000GQmW-1uMU;
	Thu, 18 Jul 2024 08:41:28 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sUMgw-0000000GQTS-35c5;
	Thu, 18 Jul 2024 08:40:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721292045;
	bh=EYoYuwremqMe2y2Izc1s/Hay7S4LTF9d105e4SREN+Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=14XfDL4QLqEh36YjHC4OUphqxChLT4yNq8fL2Lw0jhG80Jfq135unpsnwyosrXJUA
	 TzQmxGhR8xouMvmk41ZehXPRY0jDnQzACbNVLI59q8Ms0v6ENAcJfosy4SbJy8lJP1
	 Q5dgVe0fV8a5nrV1+OhvHIWhI65j3UgG/a8T3/Pp+lMFNiaQo51CHG2Aw/cvah6QnS
	 4B8pTUCZa3gfezqs2PBlyQz6tlvUe4aPFa+46wlLOlEkCi9mvFaRNCBsyMoxya8aI1
	 h+Agw0M75LJp6evHeneaWA+kjZuQNhyKo9R8iXKBTVbOcZtCDlfk+mREwPtbTwE1rN
	 CFLx7rUO7iCRA==
Received: from [127.0.1.1] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id CB02A378219E;
	Thu, 18 Jul 2024 08:40:44 +0000 (UTC)
From: Christopher Obbard <chris.obbard@collabora.com>
Date: Thu, 18 Jul 2024 09:40:24 +0100
Subject: [PATCH v3 1/3] dt-bindings: arm: rockchip: Add Firefly
 Core-PX30-JD4 on baseboard
MIME-Version: 1.0
Message-Id: <20240718-rockchip-px30-firefly-v3-1-3835cdd22eae@collabora.com>
References: <20240718-rockchip-px30-firefly-v3-0-3835cdd22eae@collabora.com>
In-Reply-To: <20240718-rockchip-px30-firefly-v3-0-3835cdd22eae@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Kever Yang <kever.yang@rock-chips.com>, Dragan Simic <dsimic@manjaro.org>, 
 Collabora Kernel Mailing List <kernel@collabora.com>, 
 Christopher Obbard <chris.obbard@collabora.com>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240718_014046_937190_CC0D306C 
X-CRM114-Status: UNSURE (   8.70  )
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

Add binding for the Firefly Core-PX30-JD4 SoM when used in conjunction
with the MB-JD4-PX30 baseboard.

Signed-off-by: Christopher Obbard <chris.obbard@collabora.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf5..2ad835f4068e2 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -148,6 +148,12 @@ properties:
           - const: engicam,px30-core
           - const: rockchip,px30
 
+      - description: Firefly Core-PX30-JD4 on MB-JD4-PX30 baseboard
+        items:
+          - const: firefly,px30-jd4-core-mb
+          - const: firefly,px30-jd4-core
+          - const: rockchip,px30
+
       - description: Firefly Firefly-RK3288
         items:
           - enum:

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
