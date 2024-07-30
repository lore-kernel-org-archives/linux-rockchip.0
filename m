Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F24A2C3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Jul 2024 10:41:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v6cLPprC7mAZhNotQYYFgA0V97+Z92GtSSbUv6R14ZI=; b=C6pyk8FIVy9sBI
	t9/XcDB/k760Kg4EOeB99QhtwuYmcLhGcd5+ef1D4eB6viPjHWLB2n+S16/hf9VycfrXL/fCWmE/a
	Tk4YKAKp4MM5S41LZWzpJ9peSaJ+RCIKJ+Di9Cr1Iznbyqyn129M4zZYZQY+ZLdpcu/9Jo54R6SV8
	7EaD55IFQKhQZ9xOAV2Gt68OuOgxHV9UhVQQy+PU2UwX+QE+UTMrX5/elnoKrzBPickPvibAPqSzG
	Ogm+Hxf++LADmJevb9yyFlY+IEwFpjhFB7tGbCDop4viDAIdQj8UkSSeI/ZVkaukkUmbGBzma5ruX
	9pbUMikwsohwyDhtOCGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkId-0000000EmE3-0evY;
	Tue, 30 Jul 2024 10:41:47 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYkHy-0000000ElyE-23Ww;
	Tue, 30 Jul 2024 10:41:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=m/8GT
	GsNRYMgI37cG9UOkJiw2XcJBGDdiSUAQ2dlerk=; b=VNta/Rpncid69i+rYTTCO
	swE2nBhcdGyTVYfizl9cSqu225+cPi/9trU2xjiolhNoW8j8zcfS5NtJRDU6LbC5
	Ly+Epm6YZcRllrN9ANCXkjoj/iA2Ej1FXbtsokZazZHFZv5gsXPAFtSzYH4BtQJq
	F1nvHrQlES2sCKmRhkumfI=
Received: from ProDesk.. (unknown [58.22.7.114])
	by gzga-smtp-mta-g0-3 (Coremail) with SMTP id _____wD3f_div6hmxPMCFA--.50877S3;
	Tue, 30 Jul 2024 18:24:38 +0800 (CST)
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
Subject: [PATCH v3 1/2] dt-bindings: arm: rockchip: Add Cool Pi CM5 GenBook
Date: Tue, 30 Jul 2024 18:24:32 +0800
Message-Id: <20240730102433.540260-2-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240730102433.540260-1-andyshrk@163.com>
References: <20240730102433.540260-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3f_div6hmxPMCFA--.50877S3
X-Coremail-Antispam: 1Uf129KBjvdXoWrtryruw4DCw1fXw45ur4xCrg_yoWkJrXEka
	4xA3ykGF4FqF1Y93Wjyay8Gry5Aw42kFn7AF45JF4DAwn8JwsrtF95J3sayF15ua13urn3
	Ca1rJryDXFnxGjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7sRJMa8UUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0ggsXmWXzXvc-gAAsO
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_034106_979830_E53D3930 
X-CRM114-Status: UNSURE (   8.67  )
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

Cool Pi GenBook works with a carrier board connect with CM5.

Signed-off-by: Andy Yan <andyshrk@163.com>

---

Changes in v3:
- Wrap commit message by a maximum 75 chars per line
- Remove the superfluous blank line
- Use "coolpi,pi-cm5-genbook" instead of "coolpi,genbook"

Changes in v2:
- Descripte it as Cool Pi CM5 GenBook

 Documentation/devicetree/bindings/arm/rockchip.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 2ad835f4068e..18ea4160e3e2 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -96,6 +96,13 @@ properties:
           - const: coolpi,pi-cm5
           - const: rockchip,rk3588
 
+      - description: Cool Pi CM5 GenBook
+        items:
+          - enum:
+              - coolpi,pi-cm5-genbook
+          - const: coolpi,pi-cm5
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
