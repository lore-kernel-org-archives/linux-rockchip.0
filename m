Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53FFBC4332F
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Nov 2022 10:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=X4DBP2yi8h8qaYMC8/PjR1qK0wlB+mUJmBfFMAG0I7A=; b=ggcJ80TE6sGPh+
	vaHmPEOOeBFOU53c4aZqJrATSvIcheQ/tgq8NC5Jyo16Ku2uCwLDgMr8G0SJrCduCzzrN29zp5xZt
	jhEdB8VloUVdT50+Wa/VUrnt1evBSuV+aUNYEP6Jofil855yjF5dCSdvJ9QBd9epdkiG2syXbmjTa
	J4rLPyLtXF2On9DBOM82r1Gz4Wi0JoM4WfEvTIVsXFl83Cd2CEZAioUr5GF4ncWw5FDBpbO+ce7tZ
	GgoIlcHkE1ESDLH4EM2160Oez5ebm8G5yOSm8H2jyF37V8AZAiIxxWVc9YOYUn8eMuAtCZsQclMCV
	agGghzV1QZyRcCYgGc1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orFyQ-006IM7-4L; Sat, 05 Nov 2022 10:00:22 +0000
Received: from mail-m971.mail.163.com ([123.126.97.1])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1orFyN-006IKy-FB; Sat, 05 Nov 2022 10:00:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=Czl4q
	KbZ1P2Rm8rk7b/rYCAyJZAXrME3xp7uotq4erI=; b=jOYKfXsKJSdQVWViEGg7E
	VpYC+42acnjYe7q6wsVj8lT8KValiJrVpHU3VH2ASRRsThYOYB+4mUq9KFi5fzUv
	XU3Lg3kHRxbxa7A8qHyh9BzrT0Xx+vda9eZYS7f8So4MSapUNeLx2vPY5J9OSNIm
	zgsBZglZhu9W2o6rAAhWoo=
Received: from ProDesk.. (unknown [58.22.7.114])
	by smtp1 (Coremail) with SMTP id GdxpCgC3vKgJNGZj5MCYpw--.33829S2;
	Sat, 05 Nov 2022 17:59:41 +0800 (CST)
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
Subject: [PATCH v2 1/2] dt-bindings: rockchip: Add Rockchip rk3566 box demo board
Date: Sat,  5 Nov 2022 17:59:35 +0800
Message-Id: <20221105095935.958144-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: GdxpCgC3vKgJNGZj5MCYpw--.33829S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrtrWxAF4fAFyrWr1xKr45Wrg_yoWfAFXE9a
	4xZr45CF4rCFyY9w1jka1xGFyUtw47KFnrAF4rAF1DC34qy3ykKFZ3t347AFyxWr43urn3
	CF48XryqgFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7xRX18m7UUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiTBOwXmI0WTuK3AABsS
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221105_030019_986540_07C78F78 
X-CRM114-Status: UNSURE (   7.10  )
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

Changes in v2:
- Move it before rk3568 evb

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 244c42eaae8c..e40a3da90000 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -749,6 +749,11 @@ properties:
           - const: zkmagic,a95x-z2
           - const: rockchip,rk3318
 
+      - description: Rockchip RK3566 BOX Evaluation Demo board
+        items:
+          - const: rockchip,rk3566-box-demo
+          - const: rockchip,rk3566
+
       - description: Rockchip RK3568 Evaluation board
         items:
           - const: rockchip,rk3568-evb1-v10
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
