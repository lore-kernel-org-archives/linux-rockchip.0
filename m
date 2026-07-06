Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 81472C43458
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 19:59:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JivH6I2WHpxuaOAPxnE/fKeKRNRCbW5yqo90tVtfwag=; b=Ffxl6WsnisksZU
	p/dovUMkUMeF6NagChO2Tt7rbuLzHFmIaZjBPoSKpZvF+x/qENfWQsE6QA6ealQ4IYWG+tUxGBUCh
	8N/AHRDAT2+c9YMojV1+iY1bVmbsR3OoeC9BbdWYMlRhS3uQrgiUgva7L59Z7brk4gJQ+IRBQlnkO
	MaP1+j9ZN/67NTGlAOm+pJmQ6kasVFWZX53z/Csn8+aeBd3gVFtCHNhF/z5T6Ekpgl3ChZHwN2azQ
	RN7p5WxLGGe6z+t1mUB73rUE2cV1DLfg72gTmNY9VMn1+mv8qmEOeSZw1cy4GB3By0UPrJU6CGpiL
	Kb2jBJrzSVGCLZLbI53A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTk-0000000DVk4-3gL6;
	Mon, 06 Jul 2026 19:59:45 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTZ-0000000DVRp-3YVF
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 19:59:37 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-7e9eaf04bfaso773620a34.1
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 12:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783367972; x=1783972772; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HTEktTiHYW7+Tdn5y54ehrrNgsnN/rsQeRiANrKwqEE=;
        b=lJZASyqDD9IaVqFSM14rTbd1hBo6rlcN0IpvBtAcIxnYi6u3j9iujnHWxRhgaKPXV/
         J5Xjflw513u6PspUdUFe/vi/TYB/ozrIrdwz9RWFuGMpBmFyVt2j8YIHod4lnUuaHGrl
         UX5EVqak7jAXOdkPdIoLx1Rl4EXuEB9KjxbAo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783367972; x=1783972772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=HTEktTiHYW7+Tdn5y54ehrrNgsnN/rsQeRiANrKwqEE=;
        b=Ov69erMkIQpbmH/OhS5uFRhJGVnBBMx4KJPWPcvYbcMGCGQOnfJezYCZVTuK8YtXog
         8AHwuIHwMVVaFElf/h5z6usdRuP5nHKHNZ17IBdoGikrB177aJbWhO/BCt2gSwblbdlV
         TvzwuM8jYGnm/ID/inae5LsASA63QHGxuRIf6EyRr+qRDFBnm5+8iAfxIKmF55byI53j
         MCb68jxCrmTmD3LvG2Tm5Vvxr3nuaWRISqzD4R6GdUYzvneWX3lFHjzK0Zyn8/J1Ymuj
         81hYmasL+ynwViESzB2E3+ysWL9+RKJ6H0zDuV+ZE7W7gP/obLny10NSCxCNFLxc45j+
         6u3g==
X-Gm-Message-State: AOJu0Yzmx26khiDsLuSV98FL0Srlg2z7cNp+2+VFAvDb9ASIKX/Y00xl
	vRGHz1PpQU1FQHB/f8i5E8OpwDdUlUUy0QeteQPtZcoMAIID+72mI5Sfxg9anBEnQw==
X-Gm-Gg: AfdE7cn9ivdI4wlrvc62wM3DN1Yy5rJv7GZtby3MTMQW0wiwT5sNAj4yAAR9Katel6y
	EUZosyOUFLqREGRc5VstDoOzBI/y4jMLNbQfSvkBj4E5LgsQ5TRoBe04gcD6TSvu934c9mGYdmm
	vEW3BFY20lausEEhni4/3HJke+87acJDnBWQqu1lilH+8NVTY5JXbnWKrob9vWQ8kYRDw6tTv22
	6huxdD1Gqr1fprJ1DzpEEbNfjG0PpLPxQj26cOG400lOO5M6pEDfb8pEmmUaA0GZElWvnBeFAw9
	O0CNEkDNGpQqEU6RmTJtBlmRde5MFV57T/ZcWJWeqGeXahhHmZJyO1wpP7z1PO7qzXI1646rUZE
	dxPRCkjqnaicRKk4myCQ5iz/8H0KYd5EsJQri/4pKLdEHi5TJ7UzasYEV9XdOBXB23JrRftxuHH
	Yq/6scp8uE6eRtAa28fQ==
X-Received: by 2002:a05:6830:2588:b0:7e9:2d33:87eb with SMTP id 46e09a7af769-7ebb22625bfmr1361922a34.12.1783367972711;
        Mon, 06 Jul 2026 12:59:32 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb542d017csm12161834a34.8.2026.07.06.12.59.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 12:59:31 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Andy Shevchenko <andy@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 09/12] dt-bindings: iio: adc: rockchip-saradc: Add RV1106 compatible
Date: Mon,  6 Jul 2026 13:58:05 -0600
Message-ID: <20260706195818.3906949-10-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260706195818.3906949-1-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_125933_904266_195836E0 
X-CRM114-Status: UNSURE (   9.11  )
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

Add the compatible for the SARADC of the Rockchip RV1106, which is
compatible with the RK3588 variant.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
index 6769d679c907..c3bb03dc4853 100644
--- a/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
+++ b/Documentation/devicetree/bindings/iio/adc/rockchip-saradc.yaml
@@ -24,6 +24,9 @@ properties:
       - items:
           - const: rockchip,rk3576-saradc
           - const: rockchip,rk3588-saradc
+      - items:
+          - const: rockchip,rv1106-saradc
+          - const: rockchip,rk3588-saradc
       - items:
           - enum:
               - rockchip,px30-saradc
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
