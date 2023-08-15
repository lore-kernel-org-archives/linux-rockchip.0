Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8C85FC0015E
	for <linux-rockchip@archiver.kernel.org>; Tue, 15 Aug 2023 12:59:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/9XS/8HxnJaE15OwNWL0W7YhTEsYUeaoVXDSC4JssoU=; b=rRDemt0wVwp60A
	skeDmcgNGYJlJwdmyfYQZdUakBib6hwTN5VPff3NdReyWf8ccDzjcqmasTOkxRWnotq4Xz8RJJTTx
	6jAvAvC3W9nl5AywbLPU7qBmPxWv7/BwRvFakRjqKfoK04bedwh7sxlEK7YU5sgdcmkyT/ytjXm5O
	7+A8rCb1Gs5+rQ8IHFWiMK6u+4mOfw/tnS72IqbqgdvecEDQDMHFToOplnE3xqElabN6/tyvQEW/C
	n7yuJUNT+YH+ZeopxXT2YbNSvO3jx7a/R5YXu03vgl8W71vqlwuYnf8irHRvIRFJwfXIFiYXtRU6g
	ayJX4DYm7vHuGq36ATIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qVtdv-001eAv-3B;
	Tue, 15 Aug 2023 12:59:27 +0000
Received: from forward103b.mail.yandex.net ([2a02:6b8:c02:900:1:45:d181:d103])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qVtdr-001e9d-2N;
	Tue, 15 Aug 2023 12:59:25 +0000
Received: from mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:17a3:0:640:53a6:0])
	by forward103b.mail.yandex.net (Yandex) with ESMTP id 900576008A;
	Tue, 15 Aug 2023 15:59:14 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id 3xeYJg5Wma60-NJiIOuGT;
	Tue, 15 Aug 2023 15:59:13 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail; t=1692104354;
	bh=qVobqAw1ejIeOmOQL3G2D1I+HOKk97SjxD2o3Soufo4=;
	h=Message-ID:Date:In-Reply-To:Cc:Subject:References:To:From;
	b=TzaQnxGslyFELK2A8isOQFJlRqsl1BMGBTYnSU9v2DDDFD+92kQZDxyVdL9oZVBuf
	 m/JUeBf8nCsX1joutmBJtUrbIDTY9zut9nzcI/IuVYpTG8HCr8PdxtEYF+Tt6rCt3i
	 snm5h3JLrGSoZsGzcmZh6xQ/rguVG4YniWUOgpfg=
Authentication-Results: mail-nwsmtp-smtp-production-main-91.iva.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	sebastian.reichel@collabora.com,
	Muhammed Efe Cetin <efectn@6tel.net>
Subject: [PATCH 1/3] dt-bindings: arm: rockchip: Add Orange Pi 5 board
Date: Tue, 15 Aug 2023 15:58:59 +0300
Message-ID: <cdb5f1d686425e7dcb953c83749153f9321f9afc.1692102057.git.efectn@6tel.net>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <cover.1692102057.git.efectn@6tel.net>
References: <cover.1692102057.git.efectn@6tel.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230815_055923_986177_AF8BF7D5 
X-CRM114-Status: UNSURE (   8.36  )
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

Add Orange Pi 5 SBC from Xunlong.

Signed-off-by: Muhammed Efe Cetin <efectn@6tel.net>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index ca5389862887..b9649e27bc82 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -877,6 +877,11 @@ properties:
               - xunlong,orangepi-r1-plus-lts
           - const: rockchip,rk3328
 
+      - description: Xunlong Orange Pi 5
+        items:
+          - const: xunlong,orangepi-5
+          - const: rockchip,rk3588s
+
       - description: Zkmagic A95X Z2
         items:
           - const: zkmagic,a95x-z2
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
