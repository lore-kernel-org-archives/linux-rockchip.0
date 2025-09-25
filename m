Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 63935CAC5B1
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Sep 2025 05:59:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JdSv26IpKWWTwT7hGrMuMb7rJKsOrNWGMZBXJwIxtoA=; b=Vubqg2UpsIFWen
	W8KSvua4fCHKmxCV1OYDqh6aLETYX+NO4lGIlRfCvn3cUDJCOUS+f/hHe9WKJSDPmddWlZidqD2eS
	3KjVnuG+VkiCmAche7h40VLGfsXpT+OpPa6RMpB70pRY4XRcoIHyovZF8LKLHBK9sxcCPyhcy0ltE
	G9eXbhnDXpCbtMnAUw/2p9fYp6cyDdVpK8hooU3YtGSVi4XMmMowIV4gMxsT6q3QRFqZyz5Tgl5BJ
	Xz0YrEdmi6C2uppRVgf8X/Tl2C9lJuwFTNQoMnBka6HsWaNKIvIUnfWj4sCMLd2cAkJwSNOPVg2Gq
	x0SMuBqpucny+RyFHy3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1f0n-000000064Ze-3ENo;
	Thu, 25 Sep 2025 05:59:25 +0000
Received: from mail-pf1-x436.google.com ([2607:f8b0:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1f0k-000000064Wd-3SDD
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Sep 2025 05:59:23 +0000
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-77f67ba775aso794569b3a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Sep 2025 22:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758779962; x=1759384762; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=S0nkrzOeGwkjXWLgm1HjIj/69SFLBVlUEmGFask5ung3EaZYjx+MHM3h8QfY/U2jRT
         k9Aj8WizjKCevkRHnftT3B5bPv4inpDTsGw0iYGeURrAfTqLtWDOuAQeKCdXVTpyOGhu
         l65dRjWM11G7Y7O6LLtvbd6hy3m+2SckM0ILbXUN9pl3zmkXayQfGVFMmPmLlM2mfcwg
         zkS9X95MFHJdPtsG+x00HfP8FL/kNfKtpNGAvcEL2Ol7Jv1A+wDSN+gYtRwqCi+R+TRf
         F1LV9kI9Ufk8x/9gL2di6rWAmQ0AJdJ9WNgd73RKeuHiU5avMNk/QZmH8AJb8Qrcl5f3
         g2zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758779962; x=1759384762;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/i3lJ5UnNUwnZHcBsmIKwojuviTql3djQ9HFxU9mOWY=;
        b=laLTe72l+V8O1fIFnWkw9vTuO2TICejJ7ImafuH/SddfvatbQ2wik7HCIwxN/YT2Ho
         hB60Gi8QEm85660Zd8HT8PIMv8vMmIS7Xm9qgvF4mDzpJz4Ed1h+fxZChs3pf9nGumfT
         CyDWWN6nuI/U82FVlnCbmiRqsVtukk6aVI1nRrxZod1h9UQGDFFrbgd5ZKg6bcybursI
         PfOc2R6+iOCyqZErufQIeDIkJ0p7tFee6WJtEwH7L8RmEc2pVfw4frzab5ZC3/kheMgt
         GGY+lvPaTXbB8xWUHIJ1NCxACJC/73OtIp+qsbSBBEQaYepdQU3J9NPZl4Br1ue4ZoPg
         45vg==
X-Forwarded-Encrypted: i=1; AJvYcCVYqOniHMnmJoCtO8vy5e4ldhKawgOYp6ycMMtY/g7xGyGjKWYvtEOjGRDiCWz1Aj95aH4p9VGraqG06l76Wg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyhRjCARFX7UoXfXu95M0zHiOb4v5fRw5ad04U5WutNWxGmc4Cw
	xXpgJKFUB6j24IQmaJVZ7CVwGfdWbhUOyl3JDuEmywdP4Jyi8pIYkkJV
X-Gm-Gg: ASbGncv1mgZJ9XBbkYY/muEHH7tkTpRJJhFPRpdh3mVqyfLEIXKjGW3odYRkSdyM42Z
	6AH0ONm1P7fOUWOY+VObkym/vU3gEMLdsI3FALsOKtwZE+URRo+zUnXspMKFPlxgyhVEymMM4C8
	BvnYmS93a4a6ss+Cg8bU5H1RXTN6gP94fsoajK/zdO3ZJF+DViXh3NIx/x232AWigijiV80wWrB
	5Z1ErLusWiY5l7Hb2+CEsQScnBVsdjcsBbrgdUPpF1XV49EVtbntVooXPYEwrOB1QzTKLzTQw5A
	yCGsKZmTWvjobemfG8vK9ecrW9nV2Twn7/8nMRqEe8T1QZoox7hwVcY5IL5Is96YrlEsTFA/Pd7
	LX1zod2/EfTiiKXFptnAb
X-Google-Smtp-Source: AGHT+IHlvw/vIjDHerdRohHiGD9BIjPGY+j7pBYk4Xdz3WGpTzu3diB6e3NShLvW+IeqM97exMFnag==
X-Received: by 2002:a05:6a20:2448:b0:2db:f868:22a with SMTP id adf61e73a8af0-2e7d9da085dmr2751475637.52.1758779962022;
        Wed, 24 Sep 2025 22:59:22 -0700 (PDT)
Received: from localhost.localdomain ([2a09:bac5:3981:16dc::247:77])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102b231ebsm866478b3a.52.2025.09.24.22.59.16
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Wed, 24 Sep 2025 22:59:21 -0700 (PDT)
From: Liangbin Lian <jjm2473@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de,
	quentin.schulz@cherry.de,
	kever.yang@rock-chips.com,
	naoki@radxa.com,
	honyuenkwun@gmail.com,
	inindev@gmail.com,
	ivan8215145640@gmail.com,
	neil.armstrong@linaro.org,
	mani@kernel.org,
	dsimic@manjaro.org,
	pbrobinson@gmail.com,
	alchark@gmail.com,
	didi.debian@cknow.org,
	jjm2473@gmail.com,
	jbx6244@gmail.com
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] dt-bindings: arm: rockchip: Add LinkEase EasePi R1
Date: Thu, 25 Sep 2025 13:59:05 +0800
Message-ID: <20250925055906.83375-2-jjm2473@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250925055906.83375-1-jjm2473@gmail.com>
References: <20250925055906.83375-1-jjm2473@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250924_225922_877338_0E013B00 
X-CRM114-Status: UNSURE (   8.70  )
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

LinkEase EasePi R1 is a high-performance mini router based on RK3568.

Signed-off-by: Liangbin Lian <jjm2473@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 28db6bd6aa5b..ec2271cfb7e1 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -726,6 +726,11 @@ properties:
           - const: lckfb,tspi-rk3566
           - const: rockchip,rk3566
 
+      - description: LinkEase EasePi R1
+        items:
+          - const: linkease,easepi-r1
+          - const: rockchip,rk3568
+
       - description: Luckfox Core3576 Module based boards
         items:
           - enum:
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
