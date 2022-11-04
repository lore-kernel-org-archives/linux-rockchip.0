Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9794BC433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Nov 2022 12:39:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KF5Ijb6n5ItNbRDTIgwnNn8ZtNLXT3DSVTiiCBnZL8k=; b=yI5qm43a25gNHo
	eGYg34zluCbtPzeTLiaGsxJOLWQw4oOyGT7ZepXa5KlIhvQILh2cpn16Im3jsoRR+orgsa++GD8kV
	e/a/uKUBBxOqnkc3+IMCDgYktPnDuT0320DKY6MJOUdD7YX8hrNvlY6OzQsQqzzqsKwmtL+RqrQqK
	yMfHHNSri0eN0CE8CqElC1uS0QSp78zoVB9/oOsxoFrjSzhEMqclJaF8tIvW6Vwio66KxH2oWtcmm
	h2J937rKrkYa1egbZTuIvmO6skuqd7D+V/g3lYm0ZFLYyNDEsc3UfSNljibXMCT4qJ8Bwz27d8xfs
	aBDYDWSrVOzwurGx9yVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqvyG-003TwD-9r; Fri, 04 Nov 2022 12:38:52 +0000
Received: from mail-m974.mail.163.com ([123.126.97.4])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oqvyD-003Tux-7l; Fri, 04 Nov 2022 12:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=cFqUD
	lfwiLgi5JaL4lWh07zL/as/VAx2pOsopS0dn9A=; b=OPgdPQdErABZ1xHz93n+b
	XgwcTi0Gbfr0JPcgyAMcbdwmhEe0XRWvRNb4/fC+18AgGpxiMjtx3p6bCDs8thv5
	iSxpRKw4Ce0EyBW1CSLOeE/wElLw6G2dfWbVU+nEI4BLUx2Xs9VVA9GwhxLmGYGa
	xFYhXVccE1gwIH6tQ1a7M8=
Received: from ProDesk.. (unknown [58.22.7.114])
	by smtp4 (Coremail) with SMTP id HNxpCgCXXyetB2Vjm7K0qA--.37423S2;
	Fri, 04 Nov 2022 20:38:09 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Cc: krzysztof.kozlowski+dt@linaro.org,
	pgwipeout@gmail.com,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH 1/2] dt-bindings: rockchip: Add Rockchip rk3566 box demo board
Date: Fri,  4 Nov 2022 20:38:04 +0800
Message-Id: <20221104123804.484109-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: HNxpCgCXXyetB2Vjm7K0qA--.37423S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrtrWxuw1xGFy5XrWfZrWfGrg_yoWfXrcE9a
	4xZr4UCF4FyFyY9w1UCa97GFy5tw17KFnrAF4rAF1DC34qy395tFZ3t342yFyxWr13urn3
	CF40qry7KFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRJKsj7UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEhGvXmI0U2Dd9wAAs9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221104_053849_720803_B0EB1770 
X-CRM114-Status: UNSURE (   7.03  )
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

Add device tree binding for Rockchip rk3566 box demo board.

Signed-off-by: Andy Yan <andyshrk@163.com>
---

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 244c42eaae8c..618c78fb9d5e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -754,6 +754,11 @@ properties:
           - const: rockchip,rk3568-evb1-v10
           - const: rockchip,rk3568
 
+      - description: Rockchip RK3566 BOX Evaluation Demo board
+        items:
+          - const: rockchip,rk3566-box-demo
+          - const: rockchip,rk3566
+
       - description: Rockchip RK3568 Banana Pi R2 Pro
         items:
           - const: rockchip,rk3568-bpi-r2pro
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
