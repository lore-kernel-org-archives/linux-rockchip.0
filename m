Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 73EA5C83013
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Aug 2024 09:39:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k4VG2FY+a/SVHtx6mDeTzgk8nfzJZAwoBVJIRD2SrdM=; b=LM/5zQFwHvCDCW
	CMFKYGttR4NAyBaidtsGyo9javFIUjxKdCqUHmKRhnYX2ft5TE8S9QCb7owSrjhzGk+WpGyprVgVn
	JT9BGuO7tPIU56FeZS0LsV1c5dUK6dFQMH8Y954UwrtclRlwrLsgUKVqNybbMQ1R5291c++A5sLru
	Vm8UzxDEjQnFeCtx3I6jXp9H5h0zUlO42LMPMNBW2u6lhSDYEys0V0Vr0wHcPrBot0rcTvTwn7tfu
	nSMhEH3tJBATSp7gpICuoko5CTFgCe6D+fxfysfgKAiDGsr1qlQybt0S/8yw6wrc8FxfIYeVAd76p
	KwYeDSR1zU+BJrEQazAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbcZ-00000001Oil-3H9U;
	Thu, 29 Aug 2024 09:39:15 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjbRq-00000001MHj-3qRa;
	Thu, 29 Aug 2024 09:28:12 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 9F6EF41A6C;
	Thu, 29 Aug 2024 11:28:09 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6iUDRcUzv1u4; Thu, 29 Aug 2024 11:28:09 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1724923688; bh=trcBH8zzl6PsP1oY6MIhqNhFu0NHretoyOUcqxJsYhU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=DjMjMcwz3Ra0Kmbxa/w+MBM1cJfUwQHkdSmKxX+jBFbzIra1V4SXmV/l/hdI2yLRF
	 +E/ZwPyIDKAt9qj766VeoAqoxPAZ6+8pGizSx2lLL0ysIjKlAF+8SqGuXCQ63HSJ6S
	 IvVB2N1nKS51n7ZkUXNxwflQeB5/ZnHSUTGWjbSRrYGYppP67lf6KD96BrUEy08Ze1
	 xma2MUKJGU4H0OK+oJOPYV843Lfw0ITxV8jYC1dllpbrucNpHxHIKAc2d5k6uEsQHY
	 M/36B5XpAZQbBcRePxewtflumjUL24kei1LiLZfJ7DcWRg7x4T8Kr+StDFlkEazLUi
	 ONQ8WbYD4Rdow==
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Andy Yan <andyshrk@163.com>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Ondrej Jirman <megi@xff.cz>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org
Cc: Celeste Liu <CoelacanthusHex@gmail.com>,
	Yao Zi <ziyao@disroot.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/4] dt-bindings: serial: snps-dw-apb-uart: Document Rockchip RK3528
Date: Thu, 29 Aug 2024 09:27:02 +0000
Message-ID: <20240829092705.6241-2-ziyao@disroot.org>
In-Reply-To: <20240829092705.6241-1-ziyao@disroot.org>
References: <20240829092705.6241-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240829_022811_111405_72B9390F 
X-CRM114-Status: UNSURE (   7.64  )
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

Rockchip RK3528 comes with a snps-dw-apb-uart compatible UART. Document
it in dt-bindings.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Yao Zi <ziyao@disroot.org>
---
 Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
index 4cdb0dcaccf3..4573044be189 100644
--- a/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
+++ b/Documentation/devicetree/bindings/serial/snps-dw-apb-uart.yaml
@@ -48,6 +48,7 @@ properties:
               - rockchip,rk3328-uart
               - rockchip,rk3368-uart
               - rockchip,rk3399-uart
+              - rockchip,rk3528-uart
               - rockchip,rk3568-uart
               - rockchip,rk3588-uart
               - rockchip,rv1108-uart
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
