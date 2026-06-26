Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE288C44500
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jun 2026 16:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=C3FkXbJ1gQ92z3
	Qm2K7weW0tI2KUp9MEV4qtgq+WESHOXpvBhu8vUlfdZ3gJnW8emew6s7bJmymql0pzPQe5AjO5zwv
	ELwMPq7O4MWV3SxhuwZEPEcaAYNKC2g+uaPW9qn4KaF31CQrGfHMeZaoWTBIrqTqI1XN3I2601fqS
	tNJzETMcQZHZIA7WGgoOMm6N9AygmRH8IIQ4ruJipOBVKJG6oFEA/yxfLd7cX3DDgmrSZ7fwh+e7Y
	JroH4eySxSbmZLrogs+KjmLLtjysSaCNsT1hZ+eWdeek33ZhqAoLJV2ldHnVDhV2DwU7Get/M89ZA
	EAzyscVV4azgHBLLghkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9Cj-0000000Bbbr-2FSV;
	Fri, 26 Jun 2026 16:14:57 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9Ch-0000000BbaP-0orp
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jun 2026 16:14:56 +0000
Received: by mail-ot1-x32e.google.com with SMTP id 46e09a7af769-7e6e41cf7aeso502237a34.0
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Jun 2026 09:14:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782490494; x=1783095294; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=CfSMz1kXP0XW4hTk/D1vwe0x70Sy1HuwMKVwLUR2+bA0ojX+vtpI4HyfJfMlIYQYmP
         Jx8GEm0PdUiUcx8KGXOdKoeGoAZGZJSd5TO7hScpP1WCHl5rdTWvqymdRyLwDHK+NxfY
         nWUWt6Mozzs6Ag5F+GyjJxice4c6zS6stJxm3Jq1g8NiGZ1ZC/oHmGVlnePQzl/Upkfw
         nyYJCAZ7aVe5alPDQ7aiO/UJDQp/5dUdH4PI18kDd8cm/RLbVhlwEVce236hmoTy8PW/
         vyf20aEfoQxJp6kvQDqFWbj3HG6hGrKpcmj1AkwnMgyBCemmLthL2gTsDpuJuevokOKR
         Jv4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782490494; x=1783095294;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=C+xZ5pChLS6AeWx6YMt+J1rM75ouhGvMUxUX2HTMk9VfSfhYVF0OYVJnRzf+gM5eEm
         0bqZQ6Qrex6ddvzb3cVnccVAU/gzocN6jyyg9lovMbW6ZJh0MtoR/+sbf5Rsm5qwbd9K
         wawbDW8inbawg4ZqXaykkXSNmEMEsGBQF8C76qJgttfFpS0ODEta6BdF34jOqkJv4HB2
         LSm30iE60wPMxI+RIQqTLjrAYVegJ8dRCfP0+al+BAWWn0vtaLngr1/bFiPL+L5aAMUg
         bl1XGxxqR3t+dqMXqxSfdvfYYr0W3+mI22vsbF1+yW89eh85XML00X6FwD+pt9V7ocJ2
         zOGg==
X-Forwarded-Encrypted: i=1; AFNElJ+f1c2I9t2ejb9OYB+4ADfZQCB56wHYj7X4rS8Q6xGbRcwuzVbfak3vCK1bxDiv3ydwhnxYC6UhbBqsX8095Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YykLLrqizTZBhVKASZ4XSz5mFYBtQNJVrcB108dcI8m1CRnxTle
	km/tWfYM6UsOpMbzAkXIgQzxyaC0nHUL5XqdCQiaxxgVzuvHn6SgG32+
X-Gm-Gg: AfdE7cn1/FsSFQ6aWrGo34G87Y9lOkW1hSO7UnQ4sNiuDkY1BsH257+Cnz7O5XJc14A
	00QbQ2n8TVxeWYnDj8BfKyuKCHBNzdOyV+jiym/V5QtsD0gySGDlcozaPPJ8eTXXnpM2Bq3dv1K
	mF11DiSh6wek0hnuZGB5aWxblLdapAe9C/1DOs/eaHuKTerrhG9Xrk5QheAi/CbE+p+BEwy5+8Z
	ITrm0C9GDQgdB+57KM3PCTVYaNGZMMPICQWXDUI/qT4/S+nEMRUPvaa+M3DFHBVYhhQjSxy3AcA
	JELWHkrHbuEgEnaplPkGoxS9m01Pm8eQm5VxQcNy97V3X3Y3JkiXdwfpKaUPztWeyKNvRKfkcba
	jETQ/+Zy8zSNkjD4qD4ulvNWH1UOYWe0UABRHJesm6SfxEdIHwO4hkFoYhGAACsPXaxF7QSbDQS
	KI5xiZmHlPlMr/YtBhXZHIyQ==
X-Received: by 2002:a05:6830:6619:b0:7e9:b4cf:683f with SMTP id 46e09a7af769-7e9b4cf6aaamr670407a34.31.1782490494196;
        Fri, 26 Jun 2026 09:14:54 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7e9aa579235sm1970211a34.1.2026.06.26.09.14.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Jun 2026 09:14:53 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-iio@vger.kernel.org
Cc: andy@kernel.org,
	nuno.sa@analog.com,
	dlechner@baylibre.com,
	jic23@kernel.org,
	jean-baptiste.maneyrol@tdk.com,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzk+dt@kernel.org,
	robh@kernel.org,
	andriy.shevchenko@intel.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Subject: [PATCH V15 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix
Date: Fri, 26 Jun 2026 11:12:22 -0500
Message-ID: <20260626161230.93069-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260626161230.93069-1-macroalpha82@gmail.com>
References: <20260626161230.93069-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_091455_253648_7DDAE0B3 
X-CRM114-Status: UNSURE (   8.24  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Add mount-matrix attribute to schema. This attribute has been supported
since the first revision of this driver, but was not documented.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../devicetree/bindings/iio/imu/invensense,icm42600.yaml        | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 119e28a833fd..9b2af104f186 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -53,6 +53,8 @@ properties:
   drive-open-drain:
     type: boolean
 
+  mount-matrix: true
+
   vdd-supply:
     description: Regulator that provides power to the sensor
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
