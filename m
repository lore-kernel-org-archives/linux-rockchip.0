Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26B24C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sun, 11 Aug 2024 14:09:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f+gyTsbM0e70R+iDtVSi8fPprZ81K32s9bGoL0c5KeE=; b=HHeYB6/dgP3QPa
	q8YR3Vn/CcgMmmThK7iEK/AUKw35V+jeEbgA087Z3geXzSzmRBf07kV0pAc+UhTZ15cZ9aD3+8+/p
	rRaqMdsdRJQ7+tITK+hXXmitvKwvfIg8/f3e1bbzJqZPbYvYXjFjuPvg5OX0B+8+YbBgcvS3IzXI/
	DTGTaM/YYpHtsmef5RP74k1tzY3fM3A4gu7TBZAN7XmeJoAdpAGSNQg7Hp9GLAscuVwZ3C4ql5Nto
	qtkVq4i8lQ+Sze0PqEZXwFlzrTlnN0m0JYc7jeI8tYWCSQTTmlMqrirOS2eo2mIgpJ66wf3/U+N8K
	ZRIDEFtBSFmWg/q7giaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sd9GJ-0000000FeEH-05yc;
	Sun, 11 Aug 2024 14:09:35 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sd9FY-0000000Fdzk-1Hao;
	Sun, 11 Aug 2024 14:08:50 +0000
Received: from localhost (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 1068840CF8;
	Sun, 11 Aug 2024 16:08:47 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
	by localhost (disroot.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id cijQeAMapwPm; Sun, 11 Aug 2024 16:08:46 +0200 (CEST)
From: Yao Zi <ziyao@disroot.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1723385326; bh=8LxrzrFhWFpCUVmO9uUCUHCbQe2VRU08Ja69nX3UYjo=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=FB/+KNGGyXKfYYd7xCyqTeV9lhIvF67RYtHr8UcBEfIoA45cReMeIjZJ4kvCTG6IF
	 qykbiNE51+Bt/fm+JyfuOnnD482jeT4c0u2ToIjLhH6jHOLyiqMyL7eXg1tRPf3TWI
	 dV+nC1Hfej6eCsZhTBHixksmStj+NHwfHcDL5TF+bvdFwm7tuP2WnNOW/mmzZecQ4w
	 2Y8KlX5xyPvJ6FTAt13Qa/pCiQ/sv8asCATTb24ElyrAF7D7+ecMmBhANOrsoWc0tu
	 Z8HxH0bYpc8fW3+PJCXxOmOw1pF4J/iF/1T938wVyDfZpnmUWyWWptNyPj8yeQk5Z4
	 oPcthvVpUnALw==
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
Cc: Celeste Liu <CoelacanthusHex@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-serial@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/4] dt-bindings: serial: snps-dw-apb-uart: Document Rockchip RK3528
Date: Sun, 11 Aug 2024 14:07:22 +0000
Message-ID: <20240811140725.64866-2-ziyao@disroot.org>
In-Reply-To: <20240811140725.64866-1-ziyao@disroot.org>
References: <20240811140725.64866-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240811_070848_498509_A661980A 
X-CRM114-Status: UNSURE (   7.61  )
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
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
