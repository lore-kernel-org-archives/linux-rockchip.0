Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A3E5C54F4C
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 16:50:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ND77o7qXfBtAXnWTrh7vZRB34jPgq40lBbm4SOW7qA=; b=tDKp/MhqKyhywV
	twGO5Y0HqjhpCvur2ES5CgPa9ufoMnl/OHXSFcbFAdvr5f7FRVygi7tmVDyxF0tM4GNdnyomVBLMA
	lDtafYCdcZC8sO4ahyOMQwrr3h+z5QLNIX31iTpxxaJN1ggV3SAHVzeClmTkdzxsCrl6awToeOB59
	oxCy+2pjOJn71LxmuQG4tmR/e5us4UFWkdqGPWzBIuB4jM7dhQKzp64oRA25BGVvbpUSgbr4P0l9v
	BMmKsv+66kQI9Qd24LkQz5t33dthzyd35ZTRBYLoBqnFRf++NwepcZOu/Gb5wic0Csynwn5+vgqsU
	h6ndUwmhbzBzvircVASQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woOXQ-00000003RbW-3x4K;
	Mon, 27 Jul 2026 16:50:48 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woOXN-00000003RZV-0qvo
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 16:50:46 +0000
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-7eb6573bd52so1853757a34.3
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 09:50:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785171044; x=1785775844; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=GK+FG51ApM0c5ceijH9gfcRis3iTLtG8+LrJylpTuMY=;
        b=G2OCFbn2wKjiB4yk1cpZvH+42PBhOcLgT4UfQTGtzqipjZ+uNtayWuGAdoEEZTMf8q
         u++Sf54X0ZDc1qdk/FLX3i4f5i6G2NehatYX7kSwvo4HFsBLOBqfoOAuCeXHflDgJnmA
         wC1T7uSFJy6Jba/xsIQhNAYFcY6xgseBca+c2jEQGzk5JNstYS9VxxK/BvcLBG1ljas6
         mb7u+ZvhCkOw0hJJ/rOdkKDxL0xytMzJ3oqpVeE9xUkClOZhDG/2ERYqwEnVNrYNm6Ft
         y0BfIGwatfGETR6Da8yQZgMbBbvRAyCIIH73wSh7MV5gQ33gMnlOrF4w4zVxOkJ+10o9
         n9iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785171044; x=1785775844;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=GK+FG51ApM0c5ceijH9gfcRis3iTLtG8+LrJylpTuMY=;
        b=USXzaGyXmiqDJt5RQBxK5lmfWkvLJz6A9t0fZLkSb3k6qp/ddOpnMbzU/UFJ8KPeK8
         Q0mwf2eLG8UbPSd5lFz/fRAyMOTHQYObJ4bJJhBw3CWO4d3yzodKCBJF1XS8kle5F96O
         Z2V/Fs5M2nVmM09jRzbHiQUS0KoQP4zp1ybQY420MpsmI7bHxHBy5cS8jY9WqtrHFGjr
         Wjivg0wiln7kkdk/ykqbbZDKV2IRkwtDIGpY8YJalmPRJQuV1NY/JwiUDE2EZ/AzQMyc
         C0xWPV5Nx+1ZhAmGC7eLZP1FM/DKLSdpzV7WwjRucO5p6/F5nQFu7ppsTGSm2wfUU+eN
         hKjA==
X-Forwarded-Encrypted: i=1; AHgh+Rr/CM1AfnCpiUMXHkaMWONWD5IK65xoRaL2JSqkg6YwoLXGG3njj5ZekfYcQZuUwecvXUlmMjfkItiWHty6Tw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yw/JpAU/aw7MlLE223eiaUTlM/tvuTCz2HiDKDn2wEFK2cdiA4r
	MuorOaA9ZGhQM09XsSH6KGejpG5H+HrD3wWFH7B1iOMKU7aItHlAWuFy
X-Gm-Gg: AR+sD10U/05STG2kPW+FKL6ZNJ2QXpOnKP9+4H9JJ0dmWEht2aFsui1x5OqVeiuvOZM
	HTECZnqi99ULWyPELL3r5uUKQkH8p5s5TL08ZVkmDi3Zbi8H4GXrIqTCnHOpbFRPoqEH5MWcxcq
	0oHBVFQ2HE3En1BmsahgGh80qN7WAUL71cgUOqnhZyiwlFDOX9MvRxRITGtRcxGw9M6SqHy0P+E
	XhQbqRUMH8khS2pBROKTva5+iOjB+6XUIg7mGiWnpe5oHExA07xOG7Askkmy5BCRZsyPqf2vo7W
	+gxoxpPIdUTzXpLN2kXXLEZJM5nwN33D5n1NmBG77ylRgPKkDFzhTmfzKy8NKFybIaozh0YvH+U
	AYntD8RYaJwipm3u6gu0M2sZBpUekOrHk7JnJAoNfDYJM93W33E8HAsTlf3BbFOEbB/SlREoyIW
	qh5mVBtWDyYZmqIuS60mSd
X-Received: by 2002:a05:6808:144a:b0:4a3:58a6:8a2f with SMTP id 5614622812f47-4ad5606006dmr28744b6e.33.1785171044009;
        Mon, 27 Jul 2026 09:50:44 -0700 (PDT)
Received: from localhost.localdomain ([2600:1700:fb0:1bc0:30e7:7cd7:b59:5863])
        by smtp.gmail.com with ESMTPSA id 5614622812f47-4ab0c7a1912sm11395050b6e.2.2026.07.27.09.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 09:50:43 -0700 (PDT)
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
Subject: [PATCH V20 2/9] dt-bindings: iio: imu: icm42600: Add icm42607
Date: Mon, 27 Jul 2026 11:48:06 -0500
Message-ID: <20260727164815.65190-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260727164815.65190-1-macroalpha82@gmail.com>
References: <20260727164815.65190-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_095045_245942_8A573921 
X-CRM114-Status: GOOD (  10.17  )
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
very different register layout. The icm42607 currently does not use an
interrupt because wake on movement and buffers are not supported, and
cannot be implemented on my test device which lacks an interrupt line.

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
