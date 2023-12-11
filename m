Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 951F4C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Dec 2023 10:50:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h5+9biPeorlqsTYFWDDCu5I+4fWsO64a5VkY0PDyhu0=; b=cpZxQXdPp+wpEp
	G6vSG9vuj9cWw/eXxzbTnr5O3053NDI4R0OaFhYhYeHTIX8Y8vmuOg7BZAZeI5N4Kqb6QXiKAO+pZ
	hK4SeGyp36gpK6PSWC5Ht7Cvvai70I6WOAuBYB9/L8D68mTnzAXmdgKW100+7ijfRKC+HUd4L++iy
	gAfAeGnj4jh8/lEGh4Ohm9ps3he4jcd+CmNT1dvwypJsM03FVUvNKd4WB1CW2E+JqWjF2Lp04o8e7
	zn/1lIV3bGrlmiesoPJIvLQcp52SB4fVU5YeIqbiSO/jzyJWIuKwhdDDKG8axAbkpB/+/ALkWm/UX
	x4HUUjjKnAcQ49yzqE7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCdrl-004emO-1t;
	Mon, 11 Dec 2023 10:50:25 +0000
Received: from m12.mail.163.com ([220.181.12.215])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rCdrg-004ejH-1T;
	Mon, 11 Dec 2023 10:50:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=nNmAy
	t5R/FqSzYRKUKMJgqk+9Njbt4i+66funeH8Iu4=; b=OFFeQj3G/4k7sOcimvwFN
	TcyQ/ibqBV9CZb1xnFBhRWrloTK3oN+97l0yLf/52T1i8QT4jv2ije2MPetT2KMV
	mILc/TdPfSTXZ1NZrSXqSPOOrToLwq0zR+MwcAd73TnULMZMKefeI+7dUyyP7KW6
	40mK0enb6tKlGzbJgbTFwI=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g5-2 (Coremail) with SMTP id _____wCXXxpC6XZldAV8FQ--.8760S2;
	Mon, 11 Dec 2023 18:49:41 +0800 (CST)
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
Subject: [PATCH v3 1/5] dt-bindings: vendor-prefixes: Add Cool Pi
Date: Mon, 11 Dec 2023 18:49:37 +0800
Message-Id: <20231211104937.1779595-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231211104915.1779476-1-andyshrk@163.com>
References: <20231211104915.1779476-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCXXxpC6XZldAV8FQ--.8760S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7JF13Jr1Uuw4UWr1rWF15Jwb_yoWfArb_Xa
	1xAw1DZF43JF4Fgw4vyF4xG345Aw12kr9ru3WrtayDCF12yrZrGa97t345Zw1xCF43uas8
	Crs3GrWDGrnrGjkaLaAFLSUrUUUUUb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRA4SrUUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEhJDXmVOA4yoWwABsL
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231211_025021_088370_5F54E1A4 
X-CRM114-Status: UNSURE (   7.23  )
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

Add vendor prefix for Cool Pi(https://cool-pi.com/)

Signed-off-by: Andy Yan <andyshrk@163.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

(no changes since v1)

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 309b94c328c8..ddbba46fcbad 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -294,6 +294,8 @@ patternProperties:
     description: CompuLab Ltd.
   "^congatec,.*":
     description: congatec GmbH
+  "^coolpi,.*":
+    description: cool-pi.com
   "^coreriver,.*":
     description: CORERIVER Semiconductor Co.,Ltd.
   "^corpro,.*":
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
