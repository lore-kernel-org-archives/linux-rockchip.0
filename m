Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F09E1C3ABD8
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 May 2025 22:56:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+EFS8+Js3J5Z4YOan01wbol0jmO1ZQlRE9A0CeeIJrI=; b=e8hI0wvS61G45/
	QwJ8y68Z38oNORw2fDx5NNY3hZGjjbxyRhbnctlV50sDe/kgnOXQxRi4hzmNfz4Ma2X3/sCinR/ZG
	N/yCucCYewT1dbV8kebNVsLRKgcI9X63omNftRllqfcT1VcbQJdi/fX/XNMQlPZX5M+wLOHauCNxD
	T6pHZhsXkmnHoIZ2HOb+/tWZA69xksZOVghKm/rJ9szmsZVVZJQkJ4NxZsbxddYAf0UyQcZS7O4tp
	OnL04Zba3GVxYxTac0C6duOxuu1M/YCPHVYevYE4/hwA7Sd6qg4fsJpknE0oN/OoclaqOqu9CkOmm
	jfWL+PAuJyCbb6QmxE4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmw0-00000007fdN-3oF8;
	Sun, 18 May 2025 22:56:44 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGmu4-00000007fRA-29Lz
	for linux-rockchip@lists.infradead.org;
	Sun, 18 May 2025 22:54:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1747608884; bh=VnllxYvJ8y+xBCgppgUdhper3bPIjDGyHOTBW41WvLw=;
 b=x8XgrCo3dfhcsMLL5BAisjiHZrLo8I5k7K3LqR34YFKwoRu7JCeGGDsHK9YEk0DnUp/BHm4s9
 DecSPupRxcXG3UVrE/XB3Nr5oqQVg7YX8kk5pZ3PXFSHajmrz4OH9mu/uaCR4FaQwezI3TR3+Ks
 Gxk7pYRYL9B8GQsos5Lc3gFryietqus2Q7xvKbnfgfPmYuvT1SuAmn0B3+PKkh/cvj64+3fVe8k
 Tf4zZ9ymIEBhvZZ1c6LGiVhYRZNLkd0MEEO0Jxb3icszmhtiTxaSZrJBynpmpDe7CWpLauHyQAL
 u8llM91ZRc6sXxPh9dSJKkLo7PW8wQKdeJMa2Dwna6Ow==
X-Forward-Email-ID: 682a652edb63046e3392f2ae
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Cc: Yao Zi <ziyao@disroot.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: gpu: mali-utgard: Add Rockchip RK3528 compatible
Date: Sun, 18 May 2025 22:54:11 +0000
Message-ID: <20250518225418.682182-2-jonas@kwiboo.se>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250518225418.682182-1-jonas@kwiboo.se>
References: <20250518225418.682182-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250518_155444_587155_3CD5EA23 
X-CRM114-Status: UNSURE (   7.32  )
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

Rockchip RK3528 SoC has a Mali-450 MP2. Add a compatible for it.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
index 9318817ea135..c8d0d9192d92 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.yaml
@@ -47,6 +47,7 @@ properties:
               - hisilicon,hi6220-mali
               - mediatek,mt7623-mali
               - rockchip,rk3328-mali
+              - rockchip,rk3528-mali
           - const: arm,mali-450
 
       # "arm,mali-300"
@@ -148,6 +149,7 @@ allOf:
               - rockchip,rk3188-mali
               - rockchip,rk3228-mali
               - rockchip,rk3328-mali
+              - rockchip,rk3528-mali
     then:
       required:
         - resets
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
