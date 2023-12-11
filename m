Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9C97C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 10:51:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HdWJbRkKcvaVC3mL6n3pJEdi7SReBPBpKOQ2KxUhh14=; b=TqyZdhrLRv8BVU
	fCkmQL5IIUsyBJWuKBQwoQ9SifobNTgYC4MB0DIsEIUaymHJJvJ7rTc0P+eu6UL27sDe4pm0rWbKl
	EW2pp6sBUttx6nMR/80+j4K2aiTXTUf13IgGDM3pfAwHZ+5Z0r/hVu0bwyiXuhVNZxJOAgKwUam1e
	QzaElzqdHj4hGTyoSw7TfsWQNMqRa58Afh2YPDygf7lC9unINWtVvpqmrKFQNSr+ZpDwsPIe1bs/W
	jj3VBPc/wfFX1G8taPobup+qS3OisZqdXamwyRSKhbuUb99b56TzN70aa9FTaIFUps1B5K6VoxtmV
	fR9CAcYnP9cBvwBBsXFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCdsV-004fDS-09;
	Mon, 11 Dec 2023 10:51:11 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCdsR-004fAi-0U;
	Mon, 11 Dec 2023 10:51:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=ogYeW
	q53mwvMY8/AuQ2ItH8tM58aVHFQdY1bO102rI8=; b=IaXGyWv9Z9egPL78L9ARm
	3BIh2qqjbQXm1NAet8V3MXhut+kacQiFdDNZCorTB7oTAPzYH5ZOySMhsZ/mtJKL
	XtNxzSzNg3Z89+93fLQRTFpX4efcbZi9UhTw15OOyh8QCXvJCsFv60VJBypi0ZU2
	js3UO0nPrfbZsJnRFSv7us=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-0 (Coremail) with SMTP id _____wDnjx5w6XZlKq5+FQ--.11346S2;
	Mon, 11 Dec 2023 18:50:28 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Andy Yan <andyshrk@163.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 4/5] dt-bindings: arm: rockchip: Add Cool Pi CM5 EVB
Date: Mon, 11 Dec 2023 18:50:23 +0800
Message-Id: <20231211105023.1779786-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211104915.1779476-1-andyshrk@163.com>
References: <20231211104915.1779476-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnjx5w6XZlKq5+FQ--.11346S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrZrykXrWkAF47XFWkGFWUCFg_yoWDGrXEka
	yxZw1ruF1FvF909w4qva1xGFy5tw17KFn7CF1rtF1DC3s8t393taykt34SyFyfuF13urn3
	CF4fWryDGFnxGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRAuc_UUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqBVDXmVOA40STwAAsY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_025107_608773_8C6466B4 
X-CRM114-Status: UNSURE (   7.53  )
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

Add Cool Pi CM5 EVB, a board powered by RK3588

Signed-off-by: Andy Yan <andyshrk@163.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v2)

Changes in v2:
- change board compatible from "CoolPi CM5 EVB" to "coolpi,pi-cm5-evb"

 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 11d03035f3db..4da83bbd642a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -95,6 +95,11 @@ properties:
           - const: chipspark,rayeager-px2
           - const: rockchip,rk3066a
 
+      - description: Cool Pi Compute Module 5(CM5) EVB
+        items:
+          - const: coolpi,pi-cm5-evb
+          - const: rockchip,rk3588
+
       - description: Cool Pi 4 Model B
         items:
           - const: coolpi,pi-4b
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
