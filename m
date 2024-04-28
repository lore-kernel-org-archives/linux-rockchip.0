Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6F87BC4345F
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Apr 2024 12:37:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltYFl37sOWXRlcD8SQD0q0e4Fvn/0ZYKgrbTo1+QqD0=; b=lZmO1SSJhjz/Ei
	aJQa6m6TmuynvKanDAOPPearuPogjYFZckLjZVjMPVLuCs92dc2RQALenw59AWaoFWCp9p70aD4eL
	n2RG69PsKEDcnbCl7Q9uySfhZwFhMZaK6GpZC0WmC3qQm6MRHdZu1TlB4Yj+3MCHouF+6pKaOE/Lm
	6LoobYcv24WYg78N0W5/YTxJSvJbqIW5SjfaXbae/WVA9HobA9Cj67ZMtsB5x9lq49LuiO7uL7bOr
	dUQ2pd0tFp8mnUMy9FTacFWhW9FnQ5iiFMLzXtmq/j66adheQmRb825QqXq5p5AEQnT/8Vzq0iavj
	+1D0WRbghnDhXdD5nLOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s13mM-0000000HXUf-3YNJ;
	Sun, 28 Apr 2024 12:37:14 +0000
Received: from mail-m17240.xmail.ntesmail.com ([45.195.17.240])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s13mI-0000000HXSa-1cCa;
	Sun, 28 Apr 2024 12:37:13 +0000
Received: from amadeus-Vostro-3710.lan (unknown [IPV6:240e:3b3:2c00:6c50:87d:6be4:19e8:d47])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 72D4A7E012E;
	Sun, 28 Apr 2024 20:36:46 +0800 (CST)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Krzysztof Kozlowski <krzk@kernel.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: add Radxa ROCK 3C
Date: Sun, 28 Apr 2024 20:36:17 +0800
Message-Id: <20240428123618.72170-2-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20240428123618.72170-1-amadeus@jmu.edu.cn>
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGE5KVkpDT00YGUtPSkgZSFUTARMWGhIXJBQOD1
	lXWRgSC1lBWUlPSx5BSBlIQUkYS0tBTRhOS0FDTB9BTRkeT0FKQh5DQR9PTFlXWRYaDxIVHRRZQV
	lPS0hVSkpLSEpDVUpLS1VLWQY+
X-HM-Tid: 0a8f24b535ee03a2kunm72d4a7e012e
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PjI6Dhw5TzNRPi4dPDwSOEwZ
	KRoKCSpVSlVKTEpPSEtMQ0tMS0tJVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUlP
	Sx5BSBlIQUkYS0tBTRhOS0FDTB9BTRkeT0FKQh5DQR9PTFlXWQgBWUFJSE1KNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240428_053710_670164_467F9523 
X-CRM114-Status: UNSURE (   6.43  )
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

The Radxa ROCK 3C is a similar board to the
Radxa ROCK 3A with the Rockchip RK3566 SoC.
Add devicetree binding documentation for it.

Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1bbbaf81134b..e04c213a0dee 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -799,6 +799,11 @@ properties:
           - const: radxa,rock3a
           - const: rockchip,rk3568
 
+      - description: Radxa ROCK 3C
+        items:
+          - const: radxa,rock-3c
+          - const: rockchip,rk3566
+
       - description: Radxa ROCK 5A
         items:
           - const: radxa,rock-5a
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
