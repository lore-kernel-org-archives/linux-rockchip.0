Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83965CDE002
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Jun 2026 18:32:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YyfhIgq5jjz2IljX8p//ebQ/8S0/R3ZWsOPHvvbmgKo=; b=qWYqYoP/dNWFid
	XUakKgxcmiPQp0P1qFKqG6ZVmrohKuoIcoGfC3r76SULanCuau66AbS3DJ/3AfNRoqBtWNgXpubXf
	pq7FB8OeYNqz/cbjpX+1vuBZ7gUi6Dlx3qvobveI7Ahrd03OuppZug8s2WbIA5L47SCoYLrOzlrhJ
	KGyrr8K4n0r4cEapyjjkcivQcaTk5XY9FYLDczEIvxh0ByhBc3z7S3G/TtrCN8vI2UZhWhUx/bMnG
	9xNQ+T/4x1sG9wToc+yYDqb1avJ64meJLeVGftlK2iuy7sKoNxEK1DbzkjkaVpQwmE4htqKft5fPE
	4z5KBGDbwZYAmfm6AM8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcSP6-00000008DVD-3sVl;
	Wed, 24 Jun 2026 18:32:52 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wcSP4-00000008DTL-1yZd
	for linux-rockchip@lists.infradead.org;
	Wed, 24 Jun 2026 18:32:51 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-4471c2ae049so970412fac.2
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Jun 2026 11:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782325969; x=1782930769; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AG46e6wh0vfo+H1QfKvpne8/nrh3wipAUO48FCP+P1g=;
        b=mIYS8SJdrD1mGRcOJTAGLkigT0TsoR1pjmCKOblZWYFCkP0i4j/QdSP99/tq8Ksgqh
         IdNGY6lXFay+BUoPih2J/MmusoBYCjyplRVz1l2jejPR7g5ppuhSumzSxE6spsu4T2m4
         icK8LytiNN8EkVNFTK5j4hkIOiKQUSxPe5oN9VEGaBzk2Z7fBtpWKYS8WHk6HwjI5R/y
         Kz575P8FfLrRxYGGWqcCxpmZfVc47t9P1/NXzS3O57af2XoBfXrIkqSjlJCa97xVlj92
         IO2CKXXlw4KX96hWeYvHx0RablMc8qVf1NTQ8doMfjm+GagioJyLlmPYzQ1i7VoUZOOm
         v/pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782325969; x=1782930769;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=AG46e6wh0vfo+H1QfKvpne8/nrh3wipAUO48FCP+P1g=;
        b=FN0jAyX8a+Q79X350zZ1dc19tKfJBkqnroEfuiJWUXFOCTcZUD8kyxwnxdcHWXlGHw
         Gr/NFlx4dQW+e2tNLNmDyn7n8GLrS2lRR7XYVDJWUwyVcHAqdW81K/jBGLC1vl7TN+/K
         a8Ot7fo7BpA6IfigQ8pgla9bm49y/k4eWkxA/njQFreGQZ/MwiqD3u1kAWXgYvQ5UJKT
         hPaGZwAQ9ZyzFDVcgpGXDtWsZC0IM+QWZxDBrLlEhoQVdKWsfwh5bM0+pQBU9tskGDsx
         e0OWFyGOhUKB73fd52Xzg8DXmjQ0RyNDArJ1OPomWHChRLZZYGAdnqXL+eD37Z1t97v7
         vLyA==
X-Forwarded-Encrypted: i=1; AHgh+RqRK9Ba00ufE081daKn6eeKnmawQWabNNz5roWN6Fv3V/lG19t/b8Js3+BtGrDA47pmAoYdSk4cwV2Ik5fUqw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzbkYmh3wnwxwPXgNlEYlnGApApqeHcFSEg5y3N0rSeLshSMcxT
	mRZAuqbKDb5vWDTlKkk+rPyLfYKNV9jfqoTC8vtVCQ/bh0rbDaSdqUgc
X-Gm-Gg: AfdE7clTyTYjMKr1maN8csPcjuD6UxslFNlJlg5ivporLl0IyETiryXY5LhcEBK7mnN
	oDN+fFVVp2tzei3JXejFJksTxS2D3Vn/5OJ1TSoYKd62xJ4CkXXSLPaQiCOtWyUnsMCws0f1fwE
	95/eD+i9uktHMZcnGbXtj9Esjsg05PRfB0av+nwcshmwGJYy16H2TRrcWI8FfCEnvTXSMGGIkR0
	yZxkMUyOnBwS1IYy2Pgt9HVX2mM5pB23xaAyW35tugYtxAh9SBzWgOHQEZQUNTMMQIhtnVKjIfz
	x/QWROyRbB50ffP9oqIheGX1v+++C5VHRrzgUok1CgXan/L3vqFPvUzvXIJkZonNBDy4q7l3lrx
	OPMBxhNbK9QgkPWfLsV6zs5AI7RlBnwlEn216gemK3dzIILcD7kRmruwZ55rtHmSfJUv1pR+UqC
	7IVwCcd1dmeKg=
X-Received: by 2002:a05:6870:2c86:b0:440:67b1:cd2e with SMTP id 586e51a60fabf-447325604a4mr16071643fac.33.1782325969008;
        Wed, 24 Jun 2026 11:32:49 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0::54])
        by smtp.gmail.com with ESMTPSA id 586e51a60fabf-4472f042517sm9968060fac.13.2026.06.24.11.32.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2026 11:32:48 -0700 (PDT)
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
Subject: [PATCH V14 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Wed, 24 Jun 2026 13:23:41 -0500
Message-ID: <20260624182350.50467-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260624182350.50467-1-macroalpha82@gmail.com>
References: <20260624182350.50467-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260624_113250_516889_EFD5C98D 
X-CRM114-Status: UNSURE (   9.08  )
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

Add the ICM42607 and ICM42607P inertial measurement unit.

This device is functionally very similar to the icm42600 series with a
very different register layout. The driver does not require an
interrupt for these specific chip revisions.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 .../bindings/iio/imu/invensense,icm42600.yaml  | 18 +++++++++++++++++-
 1 file changed, 17 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
index 9b2af104f186..81b6e85decd5 100644
--- a/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
+++ b/Documentation/devicetree/bindings/iio/imu/invensense,icm42600.yaml
@@ -30,6 +30,8 @@ properties:
       - invensense,icm42600
       - invensense,icm42602
       - invensense,icm42605
+      - invensense,icm42607
+      - invensense,icm42607p
       - invensense,icm42622
       - invensense,icm42631
       - invensense,icm42686
@@ -67,10 +69,24 @@ properties:
 required:
   - compatible
   - reg
-  - interrupts
 
 allOf:
   - $ref: /schemas/spi/spi-peripheral-props.yaml#
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - invensense,icm42600
+              - invensense,icm42602
+              - invensense,icm42605
+              - invensense,icm42622
+              - invensense,icm42631
+              - invensense,icm42686
+              - invensense,icm42688
+    then:
+      required:
+        - interrupts
 
 unevaluatedProperties: false
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
