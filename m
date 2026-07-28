Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE80DC54F51
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 22:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=vU0kI+P5WArq62
	TxNum5iFm63vIvFT0RgVtYSypd9xdS79ZhBdajMzyVWtgypUR3jN3Wf9B1/781rQKMUtB/Lu5AWUC
	6yptlfsD61b7ODYbpIb3NOWfeobAKHi9zNFmLGDiRrat72g11DpgtK7khvYih1Exph7bF5SOy8U9a
	arNu/SVMFhQ46mSOsfB9cTvBdYbFqb/mKp1sqmHIFhfbeVWs7HIL7Dlr3whaMB5HvLzJiQaBN3dJJ
	suLuK1SAk8IRt4cRlHeG5YBpDAahPCG4cW/N4D1olEypo8h7VUmuoN2mj6DlJYmtX9KRUuwz5yuir
	xzWMocN03n4MkMN31Djg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woqkT-00000006Rqe-1SU6;
	Tue, 28 Jul 2026 22:58:09 +0000
Received: from mail-oo1-xc29.google.com ([2607:f8b0:4864:20::c29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woqkR-00000006RpP-0ivI
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 22:58:08 +0000
Received: by mail-oo1-xc29.google.com with SMTP id 006d021491bc7-6ab04bbcc8fso269632eaf.1
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Jul 2026 15:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785279486; x=1785884286; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=WxqHxPUa9L2NZw56x5rjpnMUEgtzHtU12VwEmNtWQoHZ4n2mARlCwVl1Y3cg68NK+X
         45yGK/f/JHys6ZSkJO17MCpXc3LKcXn5TAM/97rHTEj37aYZcUAevAdJamGxDcKA82+N
         epg7Fz6aZzGtT5gpbN0nCugD9gq3OnY0BIDsZywmKiq1xtFx5SStdwkEU11t8HGiIpBJ
         e50Jnk1IdvsuSnX7u7cpHHn9MFHx2zJm7pkx9ZTLfWrUift+2vT1ZlJiZlDzuZIvQl/3
         +bL09SqdpgiKabVALbCsCoZqMD2pEBixU5mb7bprev35beJ0kF5VGinQkVtkgUtvwJ79
         jaog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785279486; x=1785884286;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=NNAh7KWrzRy8ROiFJ95oQzwBJCgchwpbcnlUO6AMrenaG/UTnWHGwCQsKRv142VNCg
         aQo0fwpAQIl21oGbo8nWlkTrxdI/gfn+KE7OeUo8CwjTbhUM7y6hKtsdsYsyrywa0bC2
         HN8b/243k4Q10Ow0taRWFnLJX9rGSX0OO9WsrBCPsvBBTNF3Txza+jSDoqTXpKX1wtyr
         ZGZhv95s/t43w2FoAUupGKpqANPB2B0yUiLqSLEr39PRglz1mwH3ZqVjQ9MJQNR3JpiI
         tKZt4X6ZE153c0jkqG9QtlO5l+LnHxWXfQ/SwKblhgD+feiToT8gWvWVU6crVWOoVKaw
         Ykbw==
X-Forwarded-Encrypted: i=1; AHgh+Rq8KoM1Y+5cSdxsGkEOSUfdtZp8rIb+S6F6Xxcp9CoQBVBSodTTskAdcVyt2GonEVcXX3jIUAGEG+yI4ynLVQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwQ51dJ51dWW7FwhYitr8NUfkLwm49XUahkL7im8QKo5X/tmcb0
	Jer01E4DNLIQ0mB4k/4hOKWy0DsSPS1Xf6JMkilchwNqvBj5Pe5l3MwT
X-Gm-Gg: AR+sD12/SnJ07/aMT1MOaMM0l0iJoRJ5X56o8g4PKh+jPeNdyDxn6aW15jzZm9+CucA
	+zg9supG+LXbgsIzA4tum+8WkXPOoSwRJBbySPlWg3Ks4eqyA5ZCw/1IJ691ncCiaPsUy4ilFEb
	DE4iSy3w1eiI7ADoJGGtMm9ZHW4Rg1nakQu3MqmDYUj0A4yTF+v71vBvJqFlSzN7utpYNNoMXqH
	N/yFeJPsxmx/C9UTVizY6DUA3N25VqPmRka3PfZxqihm2BeJ0nMsqJ1JBdgNQuH51PtmDAV4YPa
	LyjUha1CWWZJBH1ytPuQoZJDrByeCGjWJQVT/sgZM16p2emK/OOJYjZnbIZYFRyO4mKaFRfmq8W
	7yxSDQmLVbIuUHzzo4+humxhF1zOmqqt6NoD1W2392XrA9xAaISDYiPu2LkPdfB5ZwQEyRkJQcM
	+Mvor40RUr1mq5Zidpw962nA==
X-Received: by 2002:a05:6820:818b:b0:6aa:f2f9:b3ee with SMTP id 006d021491bc7-6ac969c2ebcmr2480939eaf.6.1785279486135;
        Tue, 28 Jul 2026 15:58:06 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:9162:e42b:cb94:2d55])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4588646ade0sm990277fac.5.2026.07.28.15.58.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jul 2026 15:58:05 -0700 (PDT)
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
Subject: [PATCH V21 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix
Date: Tue, 28 Jul 2026 17:55:32 -0500
Message-ID: <20260728225542.174825-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260728225542.174825-1-macroalpha82@gmail.com>
References: <20260728225542.174825-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260728_155807_225299_001CC710 
X-CRM114-Status: UNSURE (   8.79  )
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
