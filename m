Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4824BC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 19:57:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ID5rUjQ/6KqD4T69n7Ur5EzEHdbUbF+/bhGnlopPC8Q=; b=g3/E0IiHfazd5s
	jkE5/bnecmG3wS31uP3amtRsaTOSJDxrUc1G5MF4mdzipqe8iY9KieWBAB+X+oNzUD6xIe/l+K0T+
	6GIO6DLKfqNCVsyWfoCYPaM0hJ0T79MqHK6skx1lEhSppQsbBWz4r0gX/H37GT8n/PwZwEXvTMzs3
	ojThjCAMHH4Tpp9DIWn4hk2A+O1MG7BkNNZPVsg2ORdpDF4s+7B/YeBc+2N4dndjbcyri2/Q/Iqnr
	+A/oJygcoRUzl2hC7+rTPO0Z4nDYomaeNTb+s3X8v8H2agfpQvLLYyFysyCeMGaRhvnLxXj1RjFQ9
	J+UvFgxd9p5rhe4N/lUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDwB-0000000EAEz-1sTB;
	Thu, 22 Aug 2024 19:57:39 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDw7-0000000EACk-23iK;
	Thu, 22 Aug 2024 19:57:36 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724356646; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TusZiq+pKSWqrFSwmo41BCEsYdF8+HQBg1ojnW8kzguF03WjPklgFCkEqqLV+/7ZSN1ncJkVfz4uWtHAC3XsuhXmExINWtyv9lhazqqpmCp6HPL7UG2xP7AuDn9deaE0Rpj/F5UopCJqgMW59dPHM4yfVP6b32j3UmwZhTO/Kg0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724356646; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=wsECUNMxH0Y8aucCQY3cxPX9gTcDFvZ5IvRT4ZS+ya0=; 
	b=FZEmOpEZfhLfJx/X/lXFk/gV1rtTySEKnEY35n5soxI4oIZQdjayvFG3QzSEsomkkr8MGriqIoMLAoE89mEfQPaWP788c3/ECqf8/6GB2c4gyUJLMamjx2rblBnKFSKEbIw8PV6tWX5WQeuoq2Gr/dUp96tnTo7n5khRQveDIGc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724356646;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=wsECUNMxH0Y8aucCQY3cxPX9gTcDFvZ5IvRT4ZS+ya0=;
	b=P3o21FUrHxtGiINAGDyYkl6/FUteNLCok9D+UYDo9+9BoaZr8/5cHPiMEp/yvl1n
	isZjcQ9YC6ncI7XbjTlq2NWK55iVd1NuorJnQ7G+/1EHi0HAvjt7+XjHUvya7h259UX
	UoPOfQDVXuxI1G2P7l5j5tgLIIs4ad6vn8jobNMM=
Received: by mx.zohomail.com with SMTPS id 1724356644803998.6297720730971;
	Thu, 22 Aug 2024 12:57:24 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 3/4] dt-bindings: pinctrl: Add rk3576 pinctrl support
Date: Thu, 22 Aug 2024 15:53:38 -0400
Message-ID: <20240822195706.920567-4-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240822195706.920567-1-detlev.casanova@collabora.com>
References: <20240822195706.920567-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_125735_612769_E2393DFB 
X-CRM114-Status: UNSURE (   9.03  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Linus Walleij <linus.walleij@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Add the compatible string for the rk3576 SoC.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 20e806dce1ec..6a23d845f1f2 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -45,6 +45,7 @@ properties:
       - rockchip,rk3368-pinctrl
       - rockchip,rk3399-pinctrl
       - rockchip,rk3568-pinctrl
+      - rockchip,rk3576-pinctrl
       - rockchip,rk3588-pinctrl
       - rockchip,rv1108-pinctrl
       - rockchip,rv1126-pinctrl
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
