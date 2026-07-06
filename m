Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45149C43602
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Jul 2026 19:59:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qvgcf0LX7D7Gh8Sn3LTSbjLMtnKDjPK+PJKW91/lOH4=; b=y+Xny+pTYf+BeG
	L5dHrXL7hWP3bavxIM6lfRcqb1LV7gn/p30iwPy9rdjQM8ncz6gjCynmBGrsnBbSBYnVIyRypPSlY
	uPj2McaTyUBBmagN2vAndmwHp9qE5ThSGizR8bPNAHwFRORUpPlmHHda79FIGd0zu3k7CoqQAKIS9
	JSEwvaiCqUo6OPvQ4EiH/XMZPxy2xRA3UifH4ToJfD0JE1fXOZ4ide0sYaI8YARtT8xNcpmS+13TH
	V2eAAtDNFXuWI3k1QL1t3vg/XvghD+pE5w3Kj0HnxxtSSxy9U2CZYjGv8UY1q0b1kl3PVdfUhazSB
	1r+RjW2YKQJ0kABCie8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTP-0000000DVFn-0gEW;
	Mon, 06 Jul 2026 19:59:23 +0000
Received: from mail-ot1-x335.google.com ([2607:f8b0:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wgpTJ-0000000DV9b-0Xrh
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Jul 2026 19:59:18 +0000
Received: by mail-ot1-x335.google.com with SMTP id 46e09a7af769-7e9d7464b71so996975a34.0
        for <linux-rockchip@lists.infradead.org>; Mon, 06 Jul 2026 12:59:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783367956; x=1783972756; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IuhJj+HUo5Ktaz5cJIt67wPPHXjsVKySj5VwgZdB+yw=;
        b=nXN7ZZdcG4/G1WPj4EANs4rT/v2fTLkp4h2TBa0WY9r43pfB5Ejb4iERs0ALG7YYXT
         ctg01IYqwwOXPzFGNJAKqwkyeUoFiHdHk9aUEF5l4RAt7ON3SNv1w4YWyVQsxzPzDh6m
         TRwrSjwEmaZcZhGmMEgIj9Mx9KiFiIyqnAKmQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783367956; x=1783972756;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=IuhJj+HUo5Ktaz5cJIt67wPPHXjsVKySj5VwgZdB+yw=;
        b=sngCwKfhz5y4G2tVhhGH8Xhwek4SEc4gM4iSA8CFWhTLge9PXDqRMKI7BleG2/2+tc
         6RW23Q20nYzqQsKd58wR1RDwKREqDkQmGiqbbt5szxSo7n8C4a6tgHQyNk4KgjbTdwKf
         hC1+Y2zUgAWRQ9k5W+fdnOjrABiTFemDZKOLoWakINkz0boYYXbykZL2KRq5uIWjofvc
         55N1VPZSz0WJPLMXT1MrdKChVdloSEWCNA3b6roZizEHl1H6HxsphebPTZ9+u2exDfm4
         qC2NjRRhNnVvmgbxEHM6QhkfCIdCe4bPbF89dEFwqo2tbaeoPCX/7TZTyOAgUFQBh+qt
         OyUg==
X-Gm-Message-State: AOJu0Yy5aTW/2WFdJ9HJdL6aqJqh+xXl/RdstGbkWJC+oBr1UfCFhZU7
	4HpWEeynM/aCWpAxww7v9opVA0KfIZ3ZU6eHVQ26BsdmUH7Yr+StuAid6iowYdgPLw==
X-Gm-Gg: AfdE7cnKVoaHV2vLHTTULM6r/VjNHSibiHZqBuhWQppCOrUf+lcOPG4ZB2yWv0+1yv3
	YWU260YrCmSHkl62YR+z7DpG5GUk9EdMBsOiijdVXaUXdkkHVBTeakyyF08ve8Y5eoAKWXcn60y
	k8j5ug+g2wpzdTkv/Rv29fbLgpVrR/JnMGA3CxhYGmUB80pMjWHKPC/Fu2RcJNwQLjeHzkBUqoe
	og9z46qitMqBuX8VxS6I2qZDFtPMHCNwgUz4RufencqqtWz6wqf8PAjRJLZN+c0CP0NHPpucHUU
	x0DlLqoy6o2Ic2IN0JBnYkolObjWgyz62Ae/uBS3nwUMmsn8v521VICcQqXccOkFl/JuX4JfekN
	GbLTvr6cBC6l7MJpGLN+06PvQz7kBhIXGNQZCueHYL6Fbzn/4ir/FDDNZfhhUClJe28szR0PGb5
	lg4GJh13M=
X-Received: by 2002:a05:6830:6ab4:b0:7e9:dbbe:5afc with SMTP id 46e09a7af769-7ebb23d1703mr1257460a34.32.1783367955684;
        Mon, 06 Jul 2026 12:59:15 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb542d017csm12161834a34.8.2026.07.06.12.59.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 12:59:15 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Rob Herring <robh@kernel.org>,
	huang lin <hl@rock-chips.com>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 03/12] dt-bindings: pinctrl: rockchip: Add RV1106 compatible
Date: Mon,  6 Jul 2026 13:57:59 -0600
Message-ID: <20260706195818.3906949-4-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260706195818.3906949-1-sjg@chromium.org>
References: <20260706195818.3906949-1-sjg@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260706_125917_196919_6093C916 
X-CRM114-Status: UNSURE (   8.97  )
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

Add the compatible for the pin controller of the Rockchip RV1106 and
its RV1103 package variant.

Signed-off-by: Simon Glass <sjg@chromium.org>
---

 Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
index 9b3cbeb54fed..81747bb53056 100644
--- a/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/rockchip,pinctrl.yaml
@@ -51,6 +51,7 @@ properties:
       - rockchip,rk3576-pinctrl
       - rockchip,rk3588-pinctrl
       - rockchip,rv1103b-pinctrl
+      - rockchip,rv1106-pinctrl
       - rockchip,rv1108-pinctrl
       - rockchip,rv1126-pinctrl
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
