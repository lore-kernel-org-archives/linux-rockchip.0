Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 779AFC3DA64
	for <linux-rockchip@archiver.kernel.org>; Sun, 28 Jul 2024 08:21:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tA0hQR4m6rEtwKTjPLggi3crvC0Lfo1HgZU0LRAcA8w=; b=pX9SPco6NdYyjX
	SjMexJRWfkUGBzYjhAdvQFrvhrUR46D5zy1/x1ZiOyTjwc1JzRl9UTKv30PLvdXtjPIoh+r/Orvbe
	7Ju3z324Yt9sMEuG1+7PyDfI8Tw3kXMIxPqd5tQ1SejhDiWublikqYLIoU5el9d7oo6nC0F+HZjY2
	z1kd5qZY3tho9kAdbQMDsjbeGfHRCzHxzDLwMvrM9p6MV6JvTuNCbzbVADEw39d2NXUkZJyG+zzjx
	p3eEk/MS+rglbCabA6MVZBWqQroeuuFS+PCBOzk7bE129iuKAo3PIkuaLGzWEX533UKj+KDh3szNQ
	WNP14bVwaTmxiw9I5aUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXz9f-000000088EL-0Umm;
	Sun, 28 Jul 2024 08:21:23 +0000
Received: from m16.mail.163.com ([220.197.31.3])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXz8q-0000000885h-3Ees;
	Sun, 28 Jul 2024 08:20:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=t5vLD
	tWEMifZZfpDT+3oLY3w2bvWuIp/6iTxRMQ+2f4=; b=j1TpHLGLYNNYWHZrb47w8
	V4/5jXmnSBs2xL6C6noyqqOxYTT+Z9vBe/1F1AeMtoW224wotDQdeOIX8uCfWRsT
	MWEeMSb0aSU6CCOBdQLkDKssMQwq906i2UgHioaa77fsVqg6jhYx7yNWJ5Uydyh1
	slXWkCIg4O1Yu731ZU/HpI=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g2-4 (Coremail) with SMTP id _____wCnb242_6VmJZF9Bw--.37149S3;
	Sun, 28 Jul 2024 16:20:11 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: dsimic@manjaro.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andyshrk@163.com>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Add Cool Pi CM5 GenBook
Date: Sun, 28 Jul 2024 16:20:03 +0800
Message-Id: <20240728082004.36575-2-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240728082004.36575-1-andyshrk@163.com>
References: <20240728082004.36575-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCnb242_6VmJZF9Bw--.37149S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrtryrur4UZry3WFy5Cr4rKrg_yoWfZrgEka
	4xZrWkGF4rtF1F93Wjyay8Gry5Aw42kF97C3W5JF4DAwn8J39xtFykt34SkFy8uF17urn3
	Ca1rXrWDWFnxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRANVyUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQYqXmVOBz4pYwAAsD
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240728_012033_154916_10D3D78C 
X-CRM114-Status: UNSURE (   8.09  )
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

Add Cool Pi CM5 GenBook, a laptop powered by RK3588.

Cool Pi GenBook works with a carrier board connect
with CM5.

Signed-off-by: Andy Yan <andyshrk@163.com>

---

Changes in v2:
- Descripte it as Cool Pi CM5 GenBook

 Documentation/devicetree/bindings/arm/rockchip.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..a9bfb87e69f5 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -96,6 +96,14 @@ properties:
           - const: coolpi,pi-cm5
           - const: rockchip,rk3588
 
+      - description: Cool Pi CM5 GenBook
+        items:
+          - enum:
+              - coolpi,genbook
+          - const: coolpi,pi-cm5
+          - const: rockchip,rk3588
+
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
