Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CF86C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:52:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l6oY0vxrUXG6fgNnMs9VPDax0/cLK+jU8hllJO594MY=; b=kK1hVgPjKnTD3c
	m38/Pnd2s7stwc0wk0e80a0v3ye7a1FesKTByLXlpJ1ZbUeMqFztCnBbguiDfi6rUzJ+A9IkEHWBo
	igfNNGuoRN0qvG+EjDr2p7pqND98rOnRc/+ysnaO3IDsnoa+zzodaPlghby0vEDtNW9yypjmZcqVN
	CqkqVT79to2Ekyb+qSvH15WpOKOkhrl4XoXiUBj5KcMB/BZW6lMVW7m8AOPicsy14XwfvSAcw4WLb
	apb5wrYYOoUevj8vz7Irzv9k8AHfLK5fw0FM0HBnQXIFT0SkuABFspt22J7LYhxYYoX+qnirJykDg
	q47ffjSZLMq/5miWI7IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM6p-007Cv2-V2; Sat, 23 Jul 2022 20:52:24 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLzf-0078jR-Im
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:45:00 +0000
Received: by mail-pg1-x532.google.com with SMTP id e132so7077288pgc.5
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:44:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=7eM4jUkfktuT5M1WMi6xPgusq5fBgvijCriihADNRlU=;
        b=XNgux7NibW6l+k+soMUxRk1449I89tQesJuUCeKUQyJ9eyRDLcaRW5BjqBcvmqJ/Ea
         8lwgjQqckmmQAWN1s+Nuz5vhOOPdH8VypcPyHmn6hWt2XxeRzVYEsUVBKRhDPe8QxB0Q
         cQx2ymo910wmu/NY/mM8ddsIWd8z5t3Q0lNeWmhwn60DsNfOVS/CgafaIBkrULMZmcXY
         1AE9cfi+Q0TX46sI+I1pwBxwU79FAqJU2LmiVkOFoikciOYF4/WOPX5WpSlU0vNZxh+2
         dXnwczfChXp7IPzCBXTEJIo02xOP8WUGeyEsN8ccVVFpEMZHm6zHa1tjvonnyomgCkQo
         Nwbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7eM4jUkfktuT5M1WMi6xPgusq5fBgvijCriihADNRlU=;
        b=yuBLhcFZkjikX3r9sDcPm/Pq8ft/EehzuEEP30+PZsVaDBUy9WPFS+UZH6Fbr+cyZz
         sg3jWbSHKnL0ZeOGyylh2v6vWod72EhlWBmjHxOEOYK49+11gWLcN5173kzGaUcMXiNG
         c1+WlB/p7yZrzr8SjME2mAHO13NAa4NUqwSDk/UnvU6my4ssWKZ8YRxHJ/c2AaIMGJWa
         /CipvRVemCPgRIiBXIvwfpjqlE8RR5XEaxsRr101DqqjvuX8PzP4mfBI0SkI+NGGDXne
         n/n36YIYrTVjPDJjWcJgxkbr9o+7tLzzaLTmBsQJ6Rwno+6blwLXqeeDI2+Z2TyB3I5L
         jROw==
X-Gm-Message-State: AJIora8ejg8VbunQCGTqFrlNDFVTBTJQwR6CT/w/QiUrSg/+UcFXZHe7
	Rj95sSu/hXK4iS6vcCFtnd7Q5A==
X-Google-Smtp-Source: AGRyM1ueXm2pxfwiKc+qxbMnUUopd/zRMsPaSqHr6H9jJQXOsji2e/Lzx82z/R7NeBX661YP0niB/w==
X-Received: by 2002:a05:6a00:b4d:b0:52b:1eb1:218e with SMTP id p13-20020a056a000b4d00b0052b1eb1218emr6027702pfo.33.1658609097752;
        Sat, 23 Jul 2022 13:44:57 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:57 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	linux-i2c@vger.kernel.org
Subject: [PATCH 13/22] dt-bindings: i2c: i2c-rk3x: Document Rockchip RV1126
Date: Sun, 24 Jul 2022 02:13:26 +0530
Message-Id: <20220723204335.750095-14-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134459_640351_67DA3FAC 
X-CRM114-Status: UNSURE (   8.82  )
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

Document compatible string for Rockchip RV1126 SoC.

Cc: linux-i2c@vger.kernel.org
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
index 5339dd4fc370..f350b7a0b991 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-rk3x.yaml
@@ -37,6 +37,7 @@ properties:
               - rockchip,rk3308-i2c
               - rockchip,rk3328-i2c
               - rockchip,rk3568-i2c
+              - rockchip,rv1126-i2c
           - const: rockchip,rk3399-i2c
 
   reg:
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
