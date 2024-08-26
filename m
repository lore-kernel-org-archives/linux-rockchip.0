Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C3549C5321E
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Aug 2024 04:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f6iQTWKgpWD7FDJY1dPSZ1GDoke/M/XBLz0AdgJ717Y=; b=L/hzfl5lYrAXs3
	jtiol8kdTYLKRjhO8Tb4eZ38HC5WD93+RUmkCPdSRIEB9dx/qEpHSYTOOtaxJ1Tm9iV6jV3TigTo9
	N4aPaUE6WmPuJwIKkt09gjfXP+cp2RP8KMNdH94HU0WC0sw9rHer2cTK0FNOhvQs/A0HyKK13T217
	MN5WrrzCI7vJ2Iwgx/36B0dDolGk1lcBorSBfIkBvh12zOF62GluXblURIzMKpxsyE7L6e7NTAZBp
	0Ige6t0c79VSFm3/2zj6edMqugDEFx5+eOXRlnWsuMoOah+ChnyH/m4jQK0++Q7cTduLROHcFJ6Us
	X3j5H/QuQeG0JNwEwVYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siRii-00000005oqI-1OJR;
	Mon, 26 Aug 2024 04:52:48 +0000
Received: from [129.204.178.38] (helo=classfun.cn)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1siRhu-00000005okZ-1hTs;
	Mon, 26 Aug 2024 04:52:01 +0000
Received: from bigfoot-server-arm-node1.classfun.cn (unknown [124.72.161.4])
	(Authenticated sender: bigfoot)
	by classfun.cn (Postfix) with ESMTPSA id EB63E78922;
	Mon, 26 Aug 2024 12:46:00 +0800 (CST)
DKIM-Filter: OpenDKIM Filter v2.11.0 classfun.cn EB63E78922
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=classfun.cn;
	s=default; t=1724647561;
	bh=fLYjuCo1RmAoQOic56outz/OhHOlYn5yO+2WrQYyZkk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=W4ZvxhUnRmGghJcOYB8eIIn/csugOoL3/G3hCdkkUfGaeAWEmIgh5VBKuQnz9Qfzp
	 8v7MdU6wHbghCTlkuGhB9mOXQAqswBd86QHJ1YJ6sYf8opK6CtXfWvZlsATye6ReWZ
	 tP0qo/JOQIQW96Ptd6P6X7WVkP6TsS+Ho/zDbsu8=
From: Junhao Xie <bigfoot@classfun.cn>
To: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Junhao Xie <bigfoot@classfun.cn>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add LCKFB Taishan Pi RK3566
Date: Mon, 26 Aug 2024 12:44:12 +0800
Message-ID: <20240826044530.726458-3-bigfoot@classfun.cn>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20240826044530.726458-1-bigfoot@classfun.cn>
References: <20240826044530.726458-1-bigfoot@classfun.cn>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240825_215158_610627_0DB6319A 
X-CRM114-Status: UNSURE (   7.58  )
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

This documents LCKFB Taishan Pi which is a SBC based on the RK3566 SoC.

Signed-off-by: Junhao Xie <bigfoot@classfun.cn>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..1fe3fbc36ced 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -622,6 +622,11 @@ properties:
           - const: leez,p710
           - const: rockchip,rk3399
 
+      - description: LCKFB Taishan Pi RK3566
+        items:
+          - const: lckfb,tspi-rk3566
+          - const: rockchip,rk3566
+
       - description: Lunzn FastRhino R66S / R68S
         items:
           - enum:
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
