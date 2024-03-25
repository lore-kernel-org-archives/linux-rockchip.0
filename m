Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D08FBC54E58
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Mar 2024 17:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=woINuQ/YruEeYtzWylKn14OAU6X2cqS+SpI7SeeMWiM=; b=peL3SKgq1mOCe1
	SC3tzQ6fkZgMCXETMeLK7ycgC90tJtlteW8BruowIaHfTb+gf8PuCQt3SM9bz4HpRVe8vOO/hJi2N
	L9Is1e9kJPCfeUps7qwokM4zI5WzNPRPP4OCnC5N7LOk3HI+xkymvtNhfOqHaNDH8VcDPady0buaN
	LYR+BnyNpcdMRnJoPJ+7flDa0bxXLQcTQbop8l8E+YDR+N7bnwYXvd2dF0YTtbqyFK/Gkil2Re6Gy
	N0kLdFqtOGWpbdw0HlzE/EmCSnQ9oB4oXzklVA3OUezfayxPOl/a8VLDYgKIkuHu1YGq2M5yl2uGW
	8UaPVC40cL18kiKM0XRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooUO-000000019R1-2bAZ;
	Mon, 25 Mar 2024 17:52:04 +0000
Received: from mail-oi1-x234.google.com ([2607:f8b0:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rooU8-000000019K7-1nWl
	for linux-rockchip@lists.infradead.org;
	Mon, 25 Mar 2024 17:51:52 +0000
Received: by mail-oi1-x234.google.com with SMTP id 5614622812f47-3c3aa9ca414so3034667b6e.2
        for <linux-rockchip@lists.infradead.org>; Mon, 25 Mar 2024 10:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711389103; x=1711993903; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2CVUJ1eR+Wrr/hS2Oz4kKjT97suaSK1CX1f46zATA1o=;
        b=I4N6YJ8XaE4eK0AOAwOaEX2N0pVddoln08+YIteYteJbQBgwM7ktyvaOi+EseXIkqy
         NZtoRevhw0BaZ8vVH2TfxUlKMCjDOrLV9g2cvyHcYg766xikla9wBX0d9+b5pOG7qFHi
         7khh+1RoJ1sAiWXv9QWtYldEvHjXR3PjStK9uWZ4OVy5IsaysfAIjZsK9tB6PY7aXlim
         PzyMtQ/p8PoOB1hk3hUuXA7RkhJD0y1ZqBLlKaytn4tDTMgDw9PaRzawdkfJxgmMQpV3
         K6VTJ4u9hdi+HYFcem6v5lQy3FJejskqtTDXbE17N7S54Npa3zO/iATe6kKUfz4RHqaG
         EpIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711389103; x=1711993903;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2CVUJ1eR+Wrr/hS2Oz4kKjT97suaSK1CX1f46zATA1o=;
        b=CW5wgupdUg+h+09gRrVowU/JyW0jStXo9SibVbBHcyLlUkrQVcFRwp0ZPQI3k1rBDs
         jsBas5RrQfd/hatjKraoZeOkJbtRfU9sI0kGo/010D7qQS2a0SuCxL7ABk9pilzZE7pB
         lWWzd2Jq5ycBY6i+HJ0/ND2WYc/Zn/Dlr5fp6ykLPh/3nQkQB1yMia6AN2ZdZcd4+9+u
         G+5wsbhwlGW1buS4Oo4dSxL6Q+kcNO/pNAq+KTUdoaE0e1MuB8YjQrbU99DiDxVfwGy9
         qjcYts+CyntK+WalwF5foU4nKoTTTuFt/y4DjAUhij+V7ftRMIFhDbWmrZdbYXiUY29D
         Z27Q==
X-Gm-Message-State: AOJu0YznXdtaMBFffYadeJ51StK8Oi6HOCf0Zh52wqBmgeKkFUt+xBFc
	/3Tgsd4/OVqDlrEcl1N9xf1Ugy+HqPgXgTHuYgKoDa2DhI5OjfKFBCX1otfa
X-Google-Smtp-Source: AGHT+IGL/HY+56f7I1xwlw3H8E89U0Z4fKEqkRonTw5a+Msj146EQCCsObH7ewvc9VnSXPtz1l8fOA==
X-Received: by 2002:a05:6808:de7:b0:3c3:b84a:ca75 with SMTP id g39-20020a0568080de700b003c3b84aca75mr7693488oic.26.1711389103003;
        Mon, 25 Mar 2024 10:51:43 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id u17-20020a056808151100b003c3d3fc607csm212505oiw.26.2024.03.25.10.51.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Mar 2024 10:51:42 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	heiko@sntech.de,
	conor+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 3/4] arm64: dts: rockchip: Correct model name for Powkiddy RK3566 Devices
Date: Mon, 25 Mar 2024 12:51:32 -0500
Message-Id: <20240325175133.19393-4-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240325175133.19393-1-macroalpha82@gmail.com>
References: <20240325175133.19393-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240325_105149_568509_228D91A9 
X-CRM114-Status: GOOD (  11.94  )
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

Some Powkiddy model names begin with the company "Powkiddy" and others
simply list the model number. Make this consistent across the device
lineup by including the manufacturer in the model name.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts  | 2 +-
 arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
index f0f5ee595938..e359465eebe9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rgb30.dts
@@ -8,7 +8,7 @@
 #include "rk3566-powkiddy-rk2023.dtsi"
 
 / {
-	model = "RGB30";
+	model = "Powkiddy RGB30";
 	compatible = "powkiddy,rgb30", "rockchip,rk3566";
 };
 
diff --git a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
index 661abceaba9c..b83116c56584 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-powkiddy-rk2023.dts
@@ -8,7 +8,7 @@
 #include "rk3566-powkiddy-rk2023.dtsi"
 
 / {
-	model = "RK2023";
+	model = "Powkiddy RK2023";
 	compatible = "powkiddy,rk2023", "rockchip,rk3566";
 };
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
