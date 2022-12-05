Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 806FFC4708E
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Dec 2022 17:24:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=62Q5xSKRr8PbDLopKE/eH/wD+dBQLK8Nq0GvwJzx8yc=; b=Mp7zhxxtWLiuVL
	Yh1UHGUgSJvQU5knT/uwP3X1NMZftbtj5QI8rG4wQ9fSFVlC7Pd5eT5nRtcZnZ5kjqMvBpD4/UJiY
	Ftxz4fvlJMeBLswuMPCwaBXe1oPYD9zQb7Q9fsHpdlWrp811DevbJSQZYZzNZGMc8Sod4KPQWjZ9q
	+qxtjLX1hThtZaoSHUlQYKb7F2YA2k333X9GUzfnHr8ATqeH579ygt1WO/8+u9NUxgQEyF2DwiYBf
	AV6rak7btzPPhoUcZWAQFlu6cdK6qrJQMhrAyHEkpsz9qdCI3BB7SieslSS+rjqN5wdMj/NwMKmLM
	f+s/uz/ufNh+yupwI3xw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2FCE-007NOV-If; Mon, 05 Dec 2022 17:24:02 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2FCC-007NLG-EE
	for linux-rockchip@lists.infradead.org; Mon, 05 Dec 2022 17:24:01 +0000
Received: from jupiter.universe (dyndsl-091-096-035-193.ewe-ip-backbone.de [91.96.35.193])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id B826266023A1;
	Mon,  5 Dec 2022 17:23:54 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1670261034;
	bh=qlnzhQ44iCK3pxL9XYC8nPs32bPPQp/Y7GvWZaFXzdk=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=TbF0Abxj1jmFaw9yhf7VPP9X7K0LkWxknlkfrdIjPR7q+fW0DDLOWlqSHBfdmVzJF
	 +7HNb1SS7zL95+VKK5tk1NC5A4Y0xPoudbih0FS3WhLFepHpe4kDHGgpT233eH2r99
	 iI26tKAqNnWytHuodjMcWMerrMCq17TNXQJHwvzresPUGB2CV7QONSzEH5vJz675hw
	 Bu1d8FQrcVPmkwd6beT+SdsMIVmBrSWvHcWqTY2I1/T4msBvQIxtFtZDoen+uLHZI4
	 dnV5xvO6xnzcjXR+biwEYABiSSgibDDElyTL/7S6Dvd13RjJ5fEOC87oJevOvdF0XH
	 A+Ge4TKhXldOA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 6B419480108; Mon,  5 Dec 2022 18:23:52 +0100 (CET)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Christopher Obbard <chris.obbard@collabora.com>,
	Benjamin Gaignard <benjamin.gaignard@collabora.com>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com,
	Rob Herring <robh@kernel.org>
Subject: [PATCHv5 1/7] dt-bindings: soc: rockchip: add initial rk3588 syscon compatibles
Date: Mon,  5 Dec 2022 18:23:44 +0100
Message-Id: <20221205172350.75234-2-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221205172350.75234-1-sebastian.reichel@collabora.com>
References: <20221205172350.75234-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_092400_663876_B187B0C2 
X-CRM114-Status: UNSURE (   7.28  )
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

Add IOC and PHP GRF syscon compatibles for RK3588.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 2ed8cca79b59..e682b407a383 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -20,6 +20,11 @@ properties:
               - rockchip,rk3568-pipe-grf
               - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
+              - rockchip,rk3588-bigcore0-grf
+              - rockchip,rk3588-bigcore1-grf
+              - rockchip,rk3588-ioc
+              - rockchip,rk3588-php-grf
+              - rockchip,rk3588-sys-grf
               - rockchip,rk3588-pcie3-phy-grf
               - rockchip,rk3588-pcie3-pipe-grf
               - rockchip,rv1108-usbgrf
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
