Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44E5CC05027
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Jan 2023 09:15:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NEF3bcy2ZU8I0bV1Pq/dMh7zyrl8LQIYlQyIxCRAbkg=; b=XU8vdzG3UGBJMS
	DcUGrT9KOexEC/6VSATBCDb7DdKJ2f0ldx568u0T+8yUosMgaxPG5Gob0aUjQ1d+yEaweQlQ8XgUr
	513B25gousT3Jf5p42U4gFxkMbnZh1M7MN9ZtLZU0ZGBgUPRpi5wRH1r+seM8ErxKi0ERBR5lUGOp
	udUkJ8elja3S6RQaj+yePdkmZ/mHQv78b8AsWWG41hdYv/0aTJMUYU0B2KGktptwE+/nEqYfNWwcG
	OqE8vRr/TOOiGM6sTAK/UXkZEzQUYSrbLQrFSnjRZMBWG7nG/YD0swQ+QFuY1YNixoD/IC1mxuA5u
	ACJR/JLLDfubyuObGxUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pInUd-009GyY-9M; Fri, 20 Jan 2023 09:15:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pInTr-009GZ7-0z
	for linux-rockchip@lists.infradead.org; Fri, 20 Jan 2023 09:14:41 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1pInTf-0001QK-8T; Fri, 20 Jan 2023 10:14:27 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH RESEND 0/2] media: rockchip: rga: Add rk3568 support
Date: Fri, 20 Jan 2023 10:14:21 +0100
Message-Id: <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAG1bymMC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2MDQ0NL3aJsY1MzC92i9ETdFMMkg2QgME+yMFICakhKLE7VTSpKzEvOAGnJ
 TSwuSS0CSRQUpaZlVoBtiVYKcg129XNRiq2tBQC8oywVfQAAAA==
To: Jacob Chen <jacob-chen@iotwrt.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.11.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:1101:1d::54
X-SA-Exim-Mail-From: m.tretter@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230120_011439_196962_59CC1819 
X-CRM114-Status: GOOD (  11.86  )
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

The RGA2 on the Rockchip rk3568 is the same core as the RGA2 on the Rockchip
rk3288.

This series adds the necessary device tree binding and node in the device tree
to enable the RGA2 on the Rockchip rk3568.

I tested the driver with the GStreamer v4l2convert element on a Rock3 Model A
board.

This is a RESEND including the linux-media list, as Heiko asked for an
Acked-by from someone from media.

Michael

To: Jacob Chen <jacob-chen@iotwrt.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
To: Mauro Carvalho Chehab <mchehab@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-media@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>

---
Michael Tretter (2):
      media: dt-bindings: media: rockchip-rga: add rockchip,rk3568-rga
      arm64: dts: rockchip: Add RGA2 support to rk356x

 Documentation/devicetree/bindings/media/rockchip-rga.yaml |  4 +++-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi                  | 11 +++++++++++
 2 files changed, 14 insertions(+), 1 deletion(-)
---
base-commit: 5dc4c995db9eb45f6373a956eb1f69460e69e6d4
change-id: 20230119-rk3568-rga-d1b0cccc7b82

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
