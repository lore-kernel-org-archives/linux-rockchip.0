Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13521C5AE5A
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 15:42:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awaz3QW47EbfkDVEnn8D27ncCqt/5b7VX3gLMuz+ef4=; b=tMyRRoJXbjJLGn
	p8d3+yIQUSVD+86HEg3piwSc6tjOqtPsg65JFvdSDDNzx4NybsYD8RrbwomlDmTsBZ+B2iTLZS5/K
	zU5gjaszKL2+czlYvAxCiRBKcjQpcrH4Cbia+EDZeDM3Mwvom0Dt45wCd7CEkNcynvuIatt6AqYk/
	p/nOmFOL8iXFyXRoopoY9NmsW97IuwA/x99rEmzz2LpxxnJRk/+rjB9mC+uUSokNSe6aLnr4UKF6x
	/zym+rekj17tuW3uB7xyxwNRTUeGmiurUW7DPJEAW0SLfBCJem7qGcY/BlVIUu+ymbXrh5q2fjP64
	V0FxlU+QTvCqZu5eo64g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKoE-0000000G0yR-0cfQ;
	Wed, 28 Aug 2024 15:42:10 +0000
Received: from a7-47.smtp-out.eu-west-1.amazonses.com ([54.240.7.47])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjKK9-0000000Ftkq-0hcW;
	Wed, 28 Aug 2024 15:11:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=4232tfv5ebdrjdwkr5zzm7kytdkokgug; d=collabora.com; t=1724857861;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding;
	bh=+z4DNLofnJ+4TntmnJnx8/LI+3LWZKrJMGa2MghZgVM=;
	b=QmzhNP3PR3k7RAi3a9umg1oYoxuZ5JH9AdRqMWT0EmsfuahswvU1OkwDSual5N8Q
	gO+Qsou+vQ0s6TfS7PcDbkNb2QeFRDi+lEZdNIMQXKfnErwh2LbYre6M0zLMCwHPAMM
	IawfDLXi2Dk2LjqHgv6NnNAsj0xapMHX1ecVqVn03t41a9vqP1xxkGyZsiR6r+sHaQJ
	xYQkF57SgrCCdUFpMgUFEK1aFWy0tytwMYDXBqaEPRIIlxTLNSA8k/91kXf0BlV40cV
	WkG/9QiZ9aDYkmrmn3A/giQaOkIYH7dOfEKaO0dswBgGbsK/CIsJJ+uAYLc0IJZDKha
	kNA6Webg7w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=uku4taia5b5tsbglxyj6zym32efj7xqv; d=amazonses.com; t=1724857861;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Feedback-ID;
	bh=+z4DNLofnJ+4TntmnJnx8/LI+3LWZKrJMGa2MghZgVM=;
	b=Jw0sWklzgiWxA6Qbr8zsz+/n2UL6zTfLrL/OIi43vVND+kKoDIdVzkbOsh96V7C0
	fqiZfA+Lb1GyUbPmyK8aq47N1MmF+jJrv+DM5wx0ZyCa4MFnL3gsNsR0qt8aLoM34r3
	+/GgZ/iDKgIH9wbRBMGdsRM+zb0n3dd73cIsJJqg=
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
Subject: [PATCH v3 05/11] dt-bindings: serial: snps-dw-apb-uart: Add Rockchip RK3576
Date: Wed, 28 Aug 2024 15:11:00 +0000
Message-ID: <01020191998a4243-5da1b756-08a1-4f40-9e54-18eb91b8ad5c-000000@eu-west-1.amazonses.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240828151028.41255-1-detlev.casanova@collabora.com>
References: <20240828151028.41255-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
Feedback-ID: ::1.eu-west-1.YpP9ZbxnARFfy3Cb5pfsLd/pdsXBCNK0KEM7HforL4k=:AmazonSES
X-SES-Outgoing: 2024.08.28-54.240.7.47
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_081105_375156_30162D2B 
X-CRM114-Status: UNSURE (   8.70  )
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

Add a Rockchip RK3576 compatible.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Heiko Stuebner <heiko@sntech.de>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 4cdb0dcaccf3..cfcfd7a6b78f 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -49,6 +49,7 @@ properties:
               - rockchip,rk3368-uart
               - rockchip,rk3399-uart
               - rockchip,rk3568-uart
+              - rockchip,rk3576-uart
               - rockchip,rk3588-uart
               - rockchip,rv1108-uart
               - rockchip,rv1126-uart
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
