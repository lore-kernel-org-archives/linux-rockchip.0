Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D639FC38145
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 21:03:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hZ4rDEiRCt4bNxxN3JrubolbbL6/x+iyPbc5jS3VPzg=; b=kLEosT+zsQs/mN
	BzTivOSW+jEaO+Ycj40k5Vd2owimf+/CDeEZ76YEXEb2YlxOpaDL6zPYH7yP9yBlicMLqgyGkcuFz
	+9eZPGG92JNDiH9cj/M94NghOuVWNEuJWYTh1Kb983P+pvRmJAjcO93OGUB5nmiW/Fc9g+WR7PMcT
	418u2QQs2uhIZ7/6SlXRhcKC/4ffJHYZjHI63o75Jv4JMHJrMkeWRZnjnOQybjpuSI9yb8RAsxjc2
	faDmzOyF7wj9CP4bwp867ObtGY9kga0R1HZAu25y8/9019TNoJ+RqzanmUV0OIo64JMYSN2zZ9bYy
	CV11AEBfGHkO9JbIfONw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVfjM-00HLv1-Kc; Tue, 06 Sep 2022 21:03:36 +0000
Received: from mail-oa1-x35.google.com ([2001:4860:4864:20::35])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVfjG-00HLrL-Pg
	for linux-rockchip@lists.infradead.org; Tue, 06 Sep 2022 21:03:32 +0000
Received: by mail-oa1-x35.google.com with SMTP id 586e51a60fabf-11e9a7135easo31271132fac.6
        for <linux-rockchip@lists.infradead.org>; Tue, 06 Sep 2022 14:03:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=qU0hBg0k575Y0eMQn5Xm+FCoXjQNs8jpsAvRZNdQ/pY=;
        b=GprUKii7nck3JfoU2MPSdK1ZFVnRwfniPYXocued7FCLe0G+Lt+ZOy7xAfExTrXV+h
         WWLgIF0NpWskIu8mHacibNp+Mt/jbcMKOiyYl0GZUdsmpevF+J7ntIdPL+Xu++Czdz2z
         naFlg4i7UH0KjoP8yvI72b7266HTJCK15LO+O5uvC1xwzMiC2umFk1Sqoi3O3r8h9yE2
         YUEgbhrI5YwX9eAkg2S0IP9tfAmJT5smylte628lGYWGipJM+lbZR+AKX8NPo2Y2yP8x
         yJi+NY8kOXMGe6deAH7+6P5SPxDHwuDbeYMrkJv5VjCrYIIuOGgoZv53e4H7vZMj3R6Q
         g/1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=qU0hBg0k575Y0eMQn5Xm+FCoXjQNs8jpsAvRZNdQ/pY=;
        b=5ou5z09KEfOWn8ERngo0RZcGwSr/Owz+Ga/6W89jSZjIgZOypHAHGgNclT8xPPJJ9w
         souVtEZXmssDj3iQN0MuhufgY0IQ0AbqatV1oGjP2B0Y4WTxCUtibjitPsvVqJ7LRYR4
         7kEJdUB8ueaw6zyGL7AqivJmS+4YeDnONkKIo9utQ/bOqDHGaYfcqpYbnxYH3djFkfJ5
         3KXLljqcp4gVQR7SzlXCQtXXp3f5oIYBh/JZl4CFkJactItxyqfS4ZN78SichSBXGAB7
         p6tjYMtFvQjEFoeiTTTjvMHAMijKpUwL+o0xnU7eNh+P3ZFLAcUjndSZnTmBvKSu5Y4n
         Y6iQ==
X-Gm-Message-State: ACgBeo0Ro5Q8dmn418SIG7rY5/faW8LUDOpHYCV4kAAIYLgEQqU5aW6h
	cyFoAq7aI31ijaawTbAeSOU=
X-Google-Smtp-Source: AA6agR5HJnm+BvvsbPSslAiII0/C6HxcTiL6cf9vJI5k75sqwEVk1QkgHUSSUTGDdRbutE5xhfUtrw==
X-Received: by 2002:aca:aa44:0:b0:33a:bcb6:8f21 with SMTP id t65-20020acaaa44000000b0033abcb68f21mr119487oie.208.1662498210004;
        Tue, 06 Sep 2022 14:03:30 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id t8-20020a4ad0a8000000b004357ccfc8bfsm4482846oor.7.2022.09.06.14.03.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 14:03:29 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: devicetree@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	pgwipeout@gmail.com,
	cphealy@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Anbernic RG353P and RG503
Date: Tue,  6 Sep 2022 16:03:23 -0500
Message-Id: <20220906210324.28986-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906210324.28986-1-macroalpha82@gmail.com>
References: <20220906210324.28986-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_140331_538452_C0423D60 
X-CRM114-Status: UNSURE (   8.30  )
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

Add entry for the Anbernic RG353P and RG503 handheld devices.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 7811ba64149c..5d947a2de739 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -30,6 +30,16 @@ properties:
           - const: amarula,vyasa-rk3288
           - const: rockchip,rk3288
 
+      - description: Anbernic RG353P
+        items:
+          - const: anbernic,rg353p
+          - const: rockchip,rk3566
+
+      - description: Anbernic RG503
+        items:
+          - const: anbernic,rg503
+          - const: rockchip,rk3566
+
       - description: Asus Tinker board
         items:
           - const: asus,rk3288-tinker
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
