Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 670CCC5B557
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8UuJiP7xXw8Ce66Cxlt6GYWY6lk410tkqJchZK2U6Z8=; b=34hyLjIkMKKfqq
	/ersFBBfPC5GbdK1SLH1+V4kktvY56JD1nCuiso+aDk+TM+cF2a1ql3W2Oi1srLbmab6QOVl0UUd8
	6RcBKP6bibh8uq7+Ic3kfHaGktjOJLdGdnBztcug64WdtswHJtdpCaAwyd6cXYRrg8z3H0IKq46Ub
	i2Rc6m484aQwCemztRNM1KegnN4u0thRQTgbn55lsf2+f3YHmFa0AwmQK/wFhMYD+d4BzBATOPbPn
	K9PMgIMS8L9rBwFHDEc/XZrXVO70zRQMQWhlmUlSj1IHxzQXyOg38Yx2MX7thQQD7uqXspXtbVwnu
	HXsw/m1Qik4pF8FhAhuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKoF-0000000G0yn-46LB;
	Wed, 28 Aug 2024 15:42:11 +0000
Received: from a7-48.smtp-out.eu-west-1.amazonses.com ([54.240.7.48])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKKI-0000000Ftpc-3HIn;
	Wed, 28 Aug 2024 15:11:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724857870;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=eroRuymFGct5tFtXZVXe7idGbNt35wDtyZN4XFBz5uE=;
	b=W3yqJkwJwHPHVL4GSI7k6IHF7UJYmSc3oVEA7RdN+O802iM2xjDQTxX3D4pJBKVc
	/vIKxNIuz9qj+TCBRYQprFI0o2WywIo2v5UYuCwMWvYEVSngnNg8+5oC019N93fXmKv
	wO/T0dLVzEU4Ws0tNu44SoNoJspBfMF8RQf6mYmwNvoLpWhYqcr6jOI+7ZKCydOus38
	FfqM4QLRGa6lYEzQOMwfyGj/rgV46IotyPMYgL0KWmIxD6LPSTm9NS182URK0Z9+QFk
	2Z49fu+z7UhjY5DyIaUhS/zkWbnfG16/9VgFmRPMsfJmm3z4JZa9AeUSNSgK0aoPGzr
	sa/cfjVzdQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724857870;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=eroRuymFGct5tFtXZVXe7idGbNt35wDtyZN4XFBz5uE=;
	b=Qqhp2RHbMKQXAHR/mfAKEC39MC5TYvkszk/xEhU1lHT9DU3TPkgorOJvVJwNQ9Hc
	nVrEIVy8I4m86OaV0QKnYXBp60QJiNZejzY9/pVcS7fV2+TDc6yyd+Ghpxujldqg22B
	TEEkxXF+gouDasw8wlusRgBe3NDvRiGoBMjA3iTI=
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
Subject: [PATCH v3 07/11] dt-bindings: gpu: Add rockchip,rk3576-mali compatible
Date: Wed, 28 Aug 2024 15:11:10 +0000
Message-ID: <01020191998a6891-a1f28a77-c585-472d-b42b-32a878679304-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240828151028.41255-1-detlev.casanova@collabora.com>
References: <20240828151028.41255-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.28-54.240.7.48
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_081114_979475_F9F3C059 
X-CRM114-Status: UNSURE (   9.38  )
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

The rk3576 SoC has an ARM Mali G52 MC3 GPU, that is compatible with
arm,mali-bifrost.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
index 278399adc550..735c7f06c24e 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
@@ -26,6 +26,7 @@ properties:
               - renesas,r9a07g054-mali
               - rockchip,px30-mali
               - rockchip,rk3568-mali
+              - rockchip,rk3576-mali
           - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
       - items:
           - enum:
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
