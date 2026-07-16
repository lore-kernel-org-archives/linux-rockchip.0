Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 027C4C44515
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Jul 2026 18:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7UlIqkfsBlheCSHoOKgvSDWn/YQ9FB4iCyH900/hvpw=; b=ss/iksGDR06WhU
	KkjJj3p4MmAzDGL0OrlK1XjFjJNuTJ14pcs2GfDN1HDdLseF1NOXVj/8A9+hKLrMzz4ITAkNCsgoT
	mLj8Q5thbt5gk/WgCwbdp4F2lyfgQNUm/e1f0fz1nqk1f+bDUejFMhHl1YfWqNNIQWikX0ZkA1Sv6
	gQsp4pbUqv2Hpm7UNTFZcMxOQmaYvr0xfZ8ZiQGw0B0Z92gC6YVz55eDQ5it45ujBtHTKke8EDwzR
	P8npeEfNf5dh0YZOLsdyDR5qoVG881OkK8uySZi04yHN738VtIsAVBJdx/M46ZR+5tWq52fdiOvdV
	1cohLvLF1xLWN+QUKpRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQpU-00000000O5z-1qo5;
	Thu, 16 Jul 2026 18:29:04 +0000
Received: from mail-ot1-x330.google.com ([2607:f8b0:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wkQpS-00000000O4y-0KKe
	for linux-rockchip@lists.infradead.org;
	Thu, 16 Jul 2026 18:29:03 +0000
Received: by mail-ot1-x330.google.com with SMTP id 46e09a7af769-7e9ecb1e13cso5287568a34.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jul 2026 11:29:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784226541; x=1784831341; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=qb0E+DAo27c+42Sr32IA+ZQ4ok3xQSi8q9vnRPT8Nuh24zRPCMijj19BVhjyNJ92UJ
         +uIi1jsLwCN0Uijj9LqQpzcoVlCpTbKaLfudNOS+0AHHpSVlpvYtLXMv9+oAfltJfWlf
         wZ6Xv/wgsGoiugZDkVNt7IIPibCv7f2o0tJVChe3annmemTkCkYBcKh71oeaFtYaVcRu
         9cP2NGEoyvvRA5WuqzRN/roIeGDUZ2uJjuNHL+VAurYN33oJI4Dt8AkhI6uAAYLEvjHx
         egLTcgHLpqDggd0nw+3V7ocXONdrvxhir6vKy+/UNmLv1X7i4OMeoUjqEBFB38c9c17E
         DkZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784226541; x=1784831341;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=KaUmQ9JpbnpkUCaTH5UXy4GKoNzMoHaVL3LWpQbAxts=;
        b=UH9x9UylUQpGO4IvL77qcNERhxIoHfV9MmGnjSSQlH2TBMuHnnfQKqEncgrKnsPl5Q
         QboCzG4ci5ie5UVlaqBqCt4XfOKoBMErNHXJemqaIb3CZoN2Qer8DznYmQFmg9gTeE39
         hfnOrANyzfoFI6biswsRgS+oQYcwEZuMtKoL2PIftW3PC4yiaC2xgI+3go7sgZViev2t
         kqH80NgXfl0ZRrsUm03F3imK8jMnVvPUoanQlfnQUAPgn9FJwPZT/DbJEPNTt0HAAEk0
         Z6uzIcgsaSJlNaIVbrhd5qmmlCs1Y06aMtSfETHUoTQGF5Aa97uz1gQNpC3ipvy4QgGz
         espg==
X-Forwarded-Encrypted: i=1; AHgh+RpkCUyR1rU6KnoY9HJ9qdzJBz0OPuyVHbWiFaq92UFG35FehEUfDdj7+Fl0c25IGbcYysGVp6J659FvVvP9qQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzURzRDzN1/w5EHhDYYI+grADj8RkhefX6RrGp71b0D96oMPV5i
	DtXSqBPkE8EbOc4YpMeuHhjxMZ9/n2we7ApOo4J6JsshSxjlEraAhDqe
X-Gm-Gg: AfdE7cn+JETmGvDx9KSQXZWPFFYWmj49nOQT0VCrmPKa4NxYa2DnjC/8jl/QS7DLCB5
	xxcWk+Yel58cEntC10meKFyQb9m8e1TKezdAKLn43W4GkpNeVAKdvT5FvLlv1SAryJJ9pUBlR63
	4EFRwYwOCriM6/2PXUahlMCfScDFrFKDe1vuXjZc1+Au9jZMpGGSrZ9Ed6fbFf/LoHZImu5bx4i
	m1NlJztRdZTKpPsBx79nCd7Vj6I2pvFoMnjCzm6dOxEBSwuai7CoCl/IgGlywOjYClbqtGJjHpb
	WNLWjaB9UXyBL4/o0aIBUkJGO7lzgVzAbIopQYTPTEUiEOrvWR3xzAPAoIWj0fZ6VgupaOVLJEM
	PEo/GrgTBxEF56A28BBepn3ACYD2pZMLmvqTpsnKgwoCU1u3PyvCi0p1YCwvOuOWMQ8w0w6Oqrs
	H5
X-Received: by 2002:a05:6830:6416:b0:7e6:f582:955e with SMTP id 46e09a7af769-7ec59baf6d2mr5210296a34.10.1784226541322;
        Thu, 16 Jul 2026 11:29:01 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcb3f6826sm19939993a34.27.2026.07.16.11.29.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jul 2026 11:29:00 -0700 (PDT)
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
Subject: [PATCH V17 1/9] dt-bindings: iio: imu: icm42600: Add mount-matrix
Date: Thu, 16 Jul 2026 13:26:28 -0500
Message-ID: <20260716182637.24310-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260716182637.24310-1-macroalpha82@gmail.com>
References: <20260716182637.24310-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260716_112902_121159_65FE9C4B 
X-CRM114-Status: UNSURE (   8.59  )
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
