Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11AA3C61DA4
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Mar 2023 17:37:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3mRXClAUPNclXbejYONWqWhi0uXok0NW1HTtBir4+XM=; b=X/9jAgVzk7cuNG
	4jcK9qPNTMH6TiB0WOppNA66PlAjVrUCjuyvb/JBIWIO/lxVyD9S2XJdS7sFtb/CqzNTGiVHYgUmj
	MIw5p/+iJLWQ9qIFqMgRNw6+y+CSCc+i+/NwxPmR9T7ckM7otQ1D/e6BOjH5WUtDAE5K9OhhyilrV
	b3/G03Boggu2S2XBNdtQ+rqcvFi0eLQ1RJzs/b1Yxrqq2IbyXEjIJUgKUOokaN1Ysf2xyamnpPkcM
	uLKUtc9bm8n7dJmtQGuu4i+ol9817bMzS7aHNMPAkUVEZ/Ph+LYQzunMZ5wXMEtDj4Qb/EP9vwzMT
	oReky8Yp5Y1P2LgB4fjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcV3r-00E9uj-1a;
	Wed, 15 Mar 2023 17:37:15 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcV3l-00E9rs-2n
	for linux-rockchip@lists.infradead.org;
	Wed, 15 Mar 2023 17:37:12 +0000
Received: by mail-ot1-x32b.google.com with SMTP id d22-20020a9d5e16000000b0069b5252ced7so828335oti.13
        for <linux-rockchip@lists.infradead.org>; Wed, 15 Mar 2023 10:37:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678901825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=x/9Vp2rjSvwwPz/8jyevs3pjUOOzExCmwYfnGqWJt1o=;
        b=DVXeSurI2s0jk03wKyF78GKCPeNlKbbH8KqxStbUCbohz5DxG2rYDV5LDCsw/A/qoM
         jHwzZJn7Uzh14SREUZvVI7+oY5Wa5SVd2c39/jb9oeoBsowrDUpJ9Kysls0Kjx71OC21
         8TUcIJ9a0zb+rzyeo7xoD9cqXnJeIeQuMgJWHNCgMwhm2+q0VnTZ2eI3wuRNnOoWhyR/
         njVj3Jb8e88WhHrgUsPhhhFmubxYDmOtykekkYfvvC1fdUJgUoJY1oufHtwrbDIvv2Tb
         HsxhywJWe964l5iLh5uE7M3VfiQ57AjvkFr4ou2GQ5eRYFsJ9F79C0+b4MNt75hkUj0F
         oJ3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678901825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=x/9Vp2rjSvwwPz/8jyevs3pjUOOzExCmwYfnGqWJt1o=;
        b=QBQb0a6JKn0XqHtC2MUrDNPDT3chNYJaZg9YRYFkMR1+FbO3nTY2hNDaiKzVpRIuZ7
         RkuLN3RipDJcz00gFCkd71HAoQxeWC89bIArIc6AjNBG0dVQxDGnQYLqTOHSdF5yY+Pf
         HmUXET0sNqWPEdPbyS54CLYKVZfc7NYJIQsa+YmJVM2omx8ZsKLgsxsvY5HcZ3iuHC1B
         rS1RynUQT3AxIrfJEXYufMVhWt8iJ4ZsRhT0vI0YB8M4cXa0+cyNDnMu/GunDHJc9XTU
         6b5cljFK3IbXTi5gijGBSa81v43zCR9M+LucWCp6roo255Yht+YqfILY4/tAmIQExwCn
         Ht3Q==
X-Gm-Message-State: AO0yUKXTvn7n+y9gGzphPM98UQI9D6tHyW+ZDXVFab8IvVznkrfyJ49d
	50SqcmAGaSia5QXdjWiQSIEBlD9Dehc=
X-Google-Smtp-Source: AK7set89mOu5hazfJAwp3mKSvz1N/coT+ZLHY4Tb4tHaZS7gYI1pxVxb711XbbZoXjSpu0zYcXR3Wg==
X-Received: by 2002:a9d:620e:0:b0:68d:6fa6:19ba with SMTP id g14-20020a9d620e000000b0068d6fa619bamr8928487otj.9.1678901825420;
        Wed, 15 Mar 2023 10:37:05 -0700 (PDT)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id a23-20020a9d3e17000000b0068abc8e786fsm2562044otd.10.2023.03.15.10.37.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Mar 2023 10:37:05 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-bluetooth@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	alistair@alistair23.me,
	anarsoul@gmail.com,
	luiz.dentz@gmail.com,
	johan.hedberg@gmail.com,
	marcel@holtmann.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/3 V5] arm64: dts: rockchip: Update compatible for bluetooth
Date: Wed, 15 Mar 2023 12:36:57 -0500
Message-Id: <20230315173657.28692-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230315173657.28692-1-macroalpha82@gmail.com>
References: <20230315173657.28692-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_103709_910979_9BEB788F 
X-CRM114-Status: GOOD (  10.42  )
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

Update the compatible for the Realtek RTL8821CS bluetooth node.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index 41262a69d33e..ad43fa199ca5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -716,7 +716,7 @@ &uart1 {
 	status = "okay";
 
 	bluetooth {
-		compatible = "realtek,rtl8821cs-bt";
+		compatible = "realtek,rtl8821cs-bt", "realtek,rtl8723bs-bt";
 		device-wake-gpios = <&gpio4 4 GPIO_ACTIVE_HIGH>;
 		enable-gpios = <&gpio4 3 GPIO_ACTIVE_HIGH>;
 		host-wake-gpios = <&gpio4 5 GPIO_ACTIVE_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
