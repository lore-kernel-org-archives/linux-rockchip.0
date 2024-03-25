Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32D62C54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 14:37:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DO9yMHPAOwzwJgORKVhwSs1JB0T31RUJfw/7wtSnBXk=; b=Rd6TogN0C0t+oO
	7dWyrKCyjyrybfJOoI5h5fz6rKLZcwS7AoDdaLldXkUgfnd+dJA3M1vjJTlvV9kIvNgxAlClZjCRa
	ddLXEAjbQ5l+wYF/1XjkQwzRVG+vQjV+qsUw+59UwOAYUb6WKfTkdrWnYiHm3rVGucRnBrF9gzbTS
	xoTqWvWnCwRojt0mAjhPN9CIesGermosBgFp6WgZpPNtXJAopv3UzH4mZj6RZElMFVV3xA5flSYP+
	SHgIwu25zDpWyU3uTtzIZw/R0MuckGXeTBhusN/r92czW9Okm4YY+WhBtI1ytBo1v7taYIy6rxJGc
	f6TretUKFH/L+07qio9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolSG-00000000GpA-2UdE;
	Mon, 25 Mar 2024 14:37:40 +0000
Received: from mail-oa1-x31.google.com ([2001:4860:4864:20::31])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rolSB-00000000GmY-19TR
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 14:37:36 +0000
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-22a353217c3so587527fac.1
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 07:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711377454; x=1711982254; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QNg/lAN0ji1lgkv8ICJBH5shfYt5KAq0z8UCo+AIPcY=;
        b=Z7ka8yRjL7w7eycKnbbHkJ4xmAdAZE2GmIfK4j+1bLJZOqh5J28ah5ioWYU3jOnDlu
         g+MfM06GvQWnJExGuBr12ABJr3z1e0yQd2eqV9is4Vk1dyNdhvPeR5ZFefmdJDGhQ2uY
         yxGB8/VyoJauK7SpHd1LT5NP/gVumhzap85b2DzJh5WMLRygbt79O5vZWSKHgS++2lG8
         0524fjAjHz2zNXwFeyzdI/v+yzq4wSYhUUaSfRwSg9if9SurPZJA2oPQePhRlX0qtyCc
         4pUw+KTEAgEw1ZPARqzogiTIg6YPWamjERuMbhxATTMwrVOqJ3Q2A2GDR6jTHWeGxjYR
         Vb3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711377454; x=1711982254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QNg/lAN0ji1lgkv8ICJBH5shfYt5KAq0z8UCo+AIPcY=;
        b=VRVYF4vCcGe2EzSYzHsJK8+pZ6ILJZSjypoKFP/07mHH8cN8S7/3/Oif96g+L5+G3v
         Uz8cVkQ+zTbjfMpw+XY09mT/Le70YFsiOOogyVQTdBEEOzrx1OvB1FrbcDhKmdBGPJ0w
         Bjg0QkD+rJ/WiPP9mgLnIl0Fx4HSXbs15QOLM34KMnUhXTuqSSnSHdkkkYjH47dsFz5K
         qfQMQiBQZowpOcsmJ1vzfC/0dMeGM29UYmsmq/szcKO2wRERsKtzZalZSwaZrPCpQMrw
         21Qrsc8Zgvr5iQOSD6DmakvRaYHH3CG4b3EHjLylqdxwq0DOQt1pzBIYtjMjTfATcOnm
         bbig==
X-Gm-Message-State: AOJu0Yw5P+D82Uim5umVJsRr/SSOZ5iSM/LGkSkzH2dwGW2u6ofs4tli
	hyaG+MgRjVxxmwpqKgE673biQuhbm4GrWLGvV9yQAnQctK7+TFFT94QndJjO
X-Google-Smtp-Source: AGHT+IGv5f1B1VUhDqe1XP+drjOwefd9ldyERXeymiDRfWRwlw9KWkzHtMzZZeYxxYj4oZ42RPBt6g==
X-Received: by 2002:a05:6871:31af:b0:229:800f:3ed6 with SMTP id lv47-20020a05687131af00b00229800f3ed6mr6315397oac.36.1711377454257;
        Mon, 25 Mar 2024 07:37:34 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id xb22-20020a056870cd9600b0022a0ff98f9bsm1417180oab.4.2024.03.25.07.37.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 07:37:33 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4] arm64: dts: rockchip: rgxx3: Add optional node for chasis-type
Date: Mon, 25 Mar 2024 09:37:27 -0500
Message-Id: <20240325143729.83852-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325143729.83852-1-macroalpha82@gmail.com>
References: <20240325143729.83852-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_073735_334612_8C6B0B7C 
X-CRM114-Status: GOOD (  10.39  )
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

Add optional node for chasis-type defining this device as a handset.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
index c8fdb1b817f5..233eade30f21 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-anbernic-rgxx3.dtsi
@@ -10,6 +10,8 @@
 #include "rk3566.dtsi"
 
 / {
+	chassis-type = "handset";
+
 	chosen: chosen {
 		stdout-path = "serial2:1500000n8";
 	};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
