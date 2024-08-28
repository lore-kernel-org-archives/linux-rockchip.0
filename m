Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83DDDC5B54A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlzNTey89ZMQBnegDsJLrY/gwWEcUiGB0LVvjcYrHMg=; b=QrPNudhZAjQvyp
	gSOxxDKA2PXKKIWGG4h+9c2YOKK2Akf9QW6k8NARZ8SOzGlMOTJgU17MFjD4mMR717MJvrLKVw30D
	fYkg6gsw5uFJIpeuXL6rrTFXN0kNxoW2DA+q5ZSF09EkDV73aT7IXuzGVtJQXivOWzS8WnKCusAuQ
	JHbSWhtfnQhjVSPPnSjiebSZU78PbjMEefi/ahbvgSvd+79SUNknfSG7RE1ReEcTbzczMhl71Tve4
	LX/z2875NlTH9t1STGHdfRxFNnvMuaRzL21s5spZ+mZvJxxQfyCr7xJzNO9wnPge3Q9xrIerLbqVH
	LSKuUnsi6nrKm7c1Sbug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKMF-0000000FuVc-3eRz;
	Wed, 28 Aug 2024 15:13:15 +0000
Received: from a7-39.smtp-out.eu-west-1.amazonses.com ([54.240.7.39])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKJu-0000000Ftdv-49AZ;
	Wed, 28 Aug 2024 15:10:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724857846;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=IyIiAOZwHngz0sn8kGrxdHkaHK6p3xqpx6CKa/ulcSM=;
	b=QlfvOkPVy0KuXiYeHlBm28+ywYF5rQbLoYUfdk2JIHuSKgaUslSdN25eBP+1L+FK
	9ECp5rZvyrOHOEtK4PKnM98y3hT7yiiftkp5Nt/bGCdhxgwYA+3LRhvCJb5H6FaLugG
	6Ur5GsaFKiulMAInfYMyeWTTtWaagEf63e8VDaj5sA+xulBkgtJhVyBG+R+RYlU4kPZ
	rMoL4vfTBa4LqnHk0dR1ZMEUdG/8XfLOjxWMlOy8gqdX9q1hMHYO4f9F+gh5aLgFAjU
	Ls9raPsPnaN4TDKXa8FEzaYj+Agc4glxtpQkSg7KPSyXTsdebY7us/qC4FgVqp18duI
	0UZBj6V/gg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724857846;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=IyIiAOZwHngz0sn8kGrxdHkaHK6p3xqpx6CKa/ulcSM=;
	b=UjWt2XV2jTy21TDQrOiog0+5MIj64XuGW0PDfuGFHrmAuEnVF0KpgM51Q5kwsIln
	Mk+brKUf8XqkR4tHQbJ3m3J4DEqPKZLCjIAJSADqo6DO8caruH1fYqxFNaUDvlpgcic
	MazD18RUezRAB8R8ZrpgMXqaKrj6EQdFjdnIugQM=
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
Subject: [PATCH v3 02/11] dt-bindings: arm: rockchip: Add rk3576 compatible string to pmu.yaml
Date: Wed, 28 Aug 2024 15:10:46 +0000
Message-ID: <01020191998a0a28-80397901-7846-43c8-8593-7521bffcdcf6-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240828151028.41255-1-detlev.casanova@collabora.com>
References: <20240828151028.41255-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.28-54.240.7.39
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_081051_190372_AB0852F6 
X-CRM114-Status: UNSURE (   9.65  )
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

Add the compatible for the pmu mfd on rk3576.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index b79c81cd9f0e..932f981265cc 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -26,6 +26,7 @@ select:
           - rockchip,rk3368-pmu
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
+          - rockchip,rk3576-pmu
           - rockchip,rk3588-pmu
           - rockchip,rv1126-pmu
 
@@ -43,6 +44,7 @@ properties:
           - rockchip,rk3368-pmu
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
+          - rockchip,rk3576-pmu
           - rockchip,rk3588-pmu
           - rockchip,rv1126-pmu
       - const: syscon
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
