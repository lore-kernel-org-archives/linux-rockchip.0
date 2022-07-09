Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1BEB6C43334
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 10:30:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3UYuzhTzo7NocTVylDGOthgivEPAzfd8ebtqzPMHiZQ=; b=jXvw3jtlYHPLzM
	vkIg4fFrSvpWnopIpCD5scW8zC/qZz74G4Bxsz3nMgPTyODLi9EDpmyEJxnUnP3LLB+AdapnIoh6E
	4yJkAhaA65K7rN2PaVe/Sg+4pZU+FajQnznSHQxQ4Dc/sM+At2PLKB17Zx+XX1r+vafBa1Ue/kC7j
	yz4CAyZIwFlyj0o9gwb70fjapwhUIqE6Ou2vdd2H0VNeoqh+wFP/gq5YQfwt9mtcRSrKmzfHLFrdX
	iFZ3s8iqMfl0c/Cw1OWYqHvS0WIrC5HmIgI5pVbL71owNnZzKIANBKQXAIB4RxmwF0ZdBEn5aNHIN
	7kuNSj7b+w2zPRZel3hA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oA7jK-007fz1-W4; Sat, 09 Jul 2022 10:30:31 +0000
Received: from mail-m975.mail.163.com ([123.126.97.5])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oA7j8-007ftd-GT; Sat, 09 Jul 2022 10:30:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=qgm8L
	5GfoMjn1SLXXzkxNTtfLePSZbzN6buCz/YPB/g=; b=dYbHC6dT/YtbHBzBgHSos
	R1DYlkCB1ubszKhBzQh3wQYH9PxrI3QRHHMRDUX9pXhrzFLa+PGYe6LDoHJTELxf
	0UU7qmu4Rrx5RXBKWH0HXbyFxpSX2Zye9muUSYBxbhjD6UW+/3RkJbr/bGVBCTZ3
	A0y8SdLLQJXVTqfasJvQSo=
Received: from ProDesk.. (unknown [58.22.7.114])
	by smtp5 (Coremail) with SMTP id HdxpCgCH__aqWMli71YENQ--.601S2;
	Sat, 09 Jul 2022 18:30:07 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Cc: Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 2/3] dt-bindings: arm: rockchip: Add EAIDK-610
Date: Sat,  9 Jul 2022 18:30:01 +0800
Message-Id: <20220709103001.2753992-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220709102902.2753851-1-andyshrk@163.com>
References: <20220709102902.2753851-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: HdxpCgCH__aqWMli71YENQ--.601S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7Jr1DCFyfAF4fCw1rJFWrXwb_yoWDtrXE9w
	1xAwn8CFWFyFyYq3Z0v3WxGry5Aw1IkFnrA3WjvF1DA3s0y3y5GFZ5t34IyF1fCr17urn3
	Crs2krWUJFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRAdb1tUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0g85XmEjce7TZwAAsT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_033018_914978_3918ACC7 
X-CRM114-Status: UNSURE (   9.20  )
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

EAIDK-610 is a rk3399 based board from OPEN AI LAB
and popularly used by university students.

Specification:
- Rockchip RK3399
- LPDDR3 4GB
- TF sd scard slot
- eMMC
- AP6255 for WiFi + BT
- Gigabit ethernet
- HDMI out
- 40 pin header
- USB 2.0 x 2
- USB 3.0 x 1
- USB 3.0 Type-C x 1
- 12V DC Power supply

Signed-off-by: Andy Yan <andyshrk@163.com>
---

(no changes since v1)

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index cf9eb1e8326a..f1dd87b1544e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -470,6 +470,11 @@ properties:
           - const: netxeon,r89
           - const: rockchip,rk3288
 
+      - description: OPEN AI LAB EAIDK-610
+        items:
+          - const: openailab,eaidk-610
+          - const: rockchip,rk3399
+
       - description: Orange Pi RK3399 board
         items:
           - const: rockchip,rk3399-orangepi
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
