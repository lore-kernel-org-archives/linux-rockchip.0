Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8EDE9C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sat,  3 Aug 2024 12:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U98rMUFEEnQRc+yhnd3BtCvZa+Kqm+VzzHXPwOedQo4=; b=R45s14qq8fqKdC
	Ucw5xqkYzytUU+OJ5WpH71AxhKRov7S5a2dgcYZdkh7A0XPkbbQn96oZfnQP8+TuJY9plR/2JViJ4
	KdB6rZriN2MKPfsoL0yZSjhIu3LevsHzHpfmZKNHQ5FDqujWdWVZo2kV4ynU7JgdC8k9vVKWg+S1U
	nf9b5He8ieo1EbW6rntKSI3kQn4qu7mVF1Qpg5fGo18hb6S4R9GeBw2AUWtnkHn2alswoojE8glR3
	g/OtcpYN1RY/40UhPYcwNALQywOscmf6N1AQEt1+Fb1191msqpPtilZkoHzcGKcmukZHUx4rXq/12
	aA1+FNqSfmgTYKVFcq3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saEK6-0000000BQx3-23Ix;
	Sat, 03 Aug 2024 12:57:26 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saEJB-0000000BQdw-2GWy;
	Sat, 03 Aug 2024 12:56:30 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 5FED641A06;
	Sat,  3 Aug 2024 14:56:28 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vDqRDkXKTiKr; Sat,  3 Aug 2024 14:56:27 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1722689787; bh=GGZ4YI6RLLHoGKa4s40NjWmL8ucXD8DGFawgO4lCUkc=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=gpbJ6hBHJjCadUT0/SMskCBTbgaxNpOBiwnKaLNxC6IZeFuKTOiWo7+iQ6svTegYY
	 WYo16Pd2tU+rSHNPnQDjV2vJYdl2e9Mtn7uiLcvAO/0vl+evnq07tiLzcDvyv5ORhT
	 t0/sgIpo5G2ewM32S6qtHaTGb1uA8eomuFtL4vAesmUFs1n/Hq2rDt5H6b6c4TtCk8
	 FGwkhYoDHAFFkf5Jy7G1EHnxA7BF1Om4xUaweH22An+u9rn+iljDLqWCJRuaxHttAE
	 F51IajaaH28K6tIoNZw3Ju8rEBT5Ig3Cb88HgRuJyo040Uxao7nDPDeI3x9/ILzJgG
	 0U0MClD/Ske/A==
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
	Ondrej Jirman <megi@xff.cz>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>
Subject: [PATCH 1/4] dt-bindings: serial: snps-dw-apb-uart: Document Rockchip RK3528
Date: Sat,  3 Aug 2024 12:55:08 +0000
Message-ID: <20240803125510.4699-3-ziyao@disroot.org>
In-Reply-To: <20240803125510.4699-2-ziyao@disroot.org>
References: <20240803125510.4699-2-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240803_055629_733434_493AB8A7 
X-CRM114-Status: UNSURE (   7.94  )
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
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
