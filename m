Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBEEEC5B557
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k8wM/0HEn5NJK2QpIgzNisaH622MD00ErEPYgJwqyHo=; b=jQuO3LHtrUYrJz
	/du5kBcxhhZM1uzFZZKMFD+YbSQFqK2PMWQwTz3bcqgTHXSy+Az+oFxdaMlfEbgyZRMcaP42ExEIh
	I1qwGe2sRUAuw/phy/pbPCgW+dU+NAi5YlOKB/934rq7xocO6vHuz/lCfSiiIUbgBbiehVV9FMk9C
	yJ20aPjnSaEU+h97IK3X45683KpfGXcVTnvh8DRyW0hK8WIiNr0JsdiDJYMa5bVUgZPC5zJYLCEBY
	AROlmMFS6usUskmrFXIcXnt1EUG3z66+1DceCrH0sq1g04kNDmo2KoMmyP0b2G/eDzOML+vdKpY96
	mXvoagucS+QfjRpYgy/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKNv-0000000FvB7-3Qbg;
	Wed, 28 Aug 2024 15:14:59 +0000
Received: from a7-33.smtp-out.eu-west-1.amazonses.com ([54.240.7.33])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKK3-0000000FthH-2NJ9;
	Wed, 28 Aug 2024 15:11:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724857856;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=Fc+oP+745L0Ley8/lOLIn/gb6Yv4bpuntQ1Lm4ZSg+A=;
	b=kUbiSyjSsWwaIHaHae6VgmgWN/0ccko7Prq7nVUyDV8P8aWI1YFUIMRAG7fGLF7R
	XWasngw05Shp0XMCWA8Hq5+PHff2Rx2Wac6svFNT8zi4BAMCY2lUt11EhwE97Mu9RFE
	LKfZsZDV18BBL8zs+6Tv7Pbd60fRBdjbYSgGTqOLP3nFVOtKu+EnA4jokGi3Z2/8ImE
	pUmRg+wQYVcZq5+LCt8bPWzM/+sBd119LTnPlHY92P1IGGwIbmH7GHibjvaGODLnuYj
	HaMvfxcfVwEIlomlt7jJdgSfIWd+zIF0Sa/0LP1SJV6Yndol5tixvNORBL6MHfXTMVZ
	p7DQmXJLww==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724857856;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=Fc+oP+745L0Ley8/lOLIn/gb6Yv4bpuntQ1Lm4ZSg+A=;
	b=K2udBhiL2XeLPPHQ0QvS4HkZcDfhC9kTcu+1ysL2v7hw55zT8o29Req9nEmVtz1S
	BsDCppzm6rEcJntBhLR7vmSz1LE9R6l5PTDrwXbruMeERhykIvJxOHrshJ6Y+jJ4xh+
	OAQvMVU6BOMBViQ/yxR7TDWMuYNsBDMBU0fl8WRE=
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, 
	Andi Shyti <andi.shyti@kernel.org>, Lee Jones <lee@kernel.org>, 
	Ulf Hansson <ulf.hansson@linaro.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Jiri Slaby <jirislaby@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Wim Van Sebroeck <wim@linux-watchdog.org>, 
	Guenter Roeck <linux@roeck-us.net>, 
	Chris Morgan <macromorgan@hotmail.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Tim Lunn <tim@feathertop.org>, 
	Chukun Pan <amadeus@jmu.edu.cn>, 
	Muhammed Efe Cetin <efectn@protonmail.com>, 
	Andy Yan <andyshrk@163.com>, Jagan Teki <jagan@edgeble.ai>, 
	Dragan Simic <dsimic@manjaro.org>, 
	Detlev Casanova <detlev.casanova@collabora.com>, 
	Ondrej Jirman <megi@xff.cz>, Jimmy Hon <honyuenkwun@gmail.com>, 
	Elon Zhang <zhangzj@rock-chips.com>, 
	Finley Xiao <finley.xiao@rock-chips.com>, 
	Elaine Zhang <zhangqing@rock-chips.com>, 
	Liang Chen <cl@rock-chips.com>, 
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
	Jisheng Zhang <jszhang@kernel.org>, Jamie Iles <jamie@jamieiles.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, 
	linux-i2c@vger.kernel.org, linux-mmc@vger.kernel.org, 
	linux-serial@vger.kernel.org, linux-spi@vger.kernel.org, 
	linux-watchdog@vger.kernel.org, kernel@collabora.com, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 04/11] dt-bindings: mfd: syscon: Add rk3576 QoS register compatible
Date: Wed, 28 Aug 2024 15:10:55 +0000
Message-ID: <01020191998a2fd4-4d7b091c-9c4c-4067-b8d9-fe7482074d6d-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240828151028.41255-1-detlev.casanova@collabora.com>
References: <20240828151028.41255-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.28-54.240.7.33
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_081059_797531_34478E18 
X-CRM114-Status: UNSURE (   8.98  )
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

Document rk3576 compatible for QoS registers.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 9dc594ea3654..ce5eed77b3c8 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -103,6 +103,7 @@ select:
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
           - rockchip,rk3568-qos
+          - rockchip,rk3576-qos
           - rockchip,rk3588-qos
           - rockchip,rv1126-qos
           - st,spear1340-misc
@@ -198,6 +199,7 @@ properties:
           - rockchip,rk3368-qos
           - rockchip,rk3399-qos
           - rockchip,rk3568-qos
+          - rockchip,rk3576-qos
           - rockchip,rk3588-qos
           - rockchip,rv1126-qos
           - st,spear1340-misc
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
