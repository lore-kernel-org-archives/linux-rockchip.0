Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5F940C2BA18
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Jun 2024 20:46:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cgGVB49xSXPQBIPJPocnOHbEDSzTBP0BxjRZumtv03I=; b=z7qtp9ppreA0Qp
	GVnIhluJ+0onNwJrYGqFaHPSj6kMqITE8kLWaCix5kp5QJBwN8P3jEVbAfqon/5y9GUqhYnUAyOYL
	Lrlvgo9zwPYSjU0C75UPnw7qfHDXd6L/1NKAtErnuOuntEz+T0WtAp1+DvZbMwtxbPsmYHBZ3U1el
	D8cMth/yRb1E9AJwUDdsNsbIAh19qFxV5igDo/Wy2srMBEaZZQpYK8jW8snxewxHOPcO6VktHnsCi
	rGJOSFS/ZRGXgtdAkgiGeckkWYkiEIplgrYEhPzeBfLpEMtR2jDBFpiGD6yHPHzGbldDKugXVtxOy
	Uueg7SkyTU1TLwJPfkjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLU6U-0000000EmFI-18v6;
	Sun, 23 Jun 2024 20:46:26 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLU6P-0000000EmEM-17YU;
	Sun, 23 Jun 2024 20:46:22 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-421cd1e5f93so27838895e9.0;
        Sun, 23 Jun 2024 13:46:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719175579; x=1719780379; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3cWv67Fg8mTdK4Pi+joek/Kmr7BwxnfWI5aRVKACCFA=;
        b=PX4EO4YUmKjUlkR/NG5DNmOqxbTj4W2ejXEy8sA7v4f69swqRl/6e/VzS7YB8wNCP8
         YCZ8ieCUTtiHhZppVUtfy+8s4Ubo14MemDFYrIF47m+EStzrdHABgoxWsLGxTk7IHrQ2
         E/ChdAg2NBW0MwPbUSx4xl+8ev5SGZIBbVBP2o/azH9r0iIyXz4fO3qM37OhAttk69L9
         O6QI52d4VfhUiRoSf6XkGcscCG/xQKDl/t/onMEmAmgpIXdCLNV8En6SKV2o0qTFzoyy
         QlvHA+g8BPZVUjKNnFf/kCW3/Yw2cKVEgNyEMAyOgJ3YrG6upJOBDmandufoxWrb7YgQ
         SUrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719175579; x=1719780379;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3cWv67Fg8mTdK4Pi+joek/Kmr7BwxnfWI5aRVKACCFA=;
        b=BGhM8rEdS4PEJoB75G59WKgnUGlpdh77EgwHPC11bwQbPgd85LSlV6Qq8ZVESfl2Km
         2b/Sb+FtboDpH+QZI4vxAD1/UdBiVhRxt5RKqBnjsYMlStYNPu0/9PNho6GaKhuuv8Xt
         UC1vlodu5Mj1u1/BcyA8CNQ6Icy0AzkBLGPW/q+KzhVfP+XM/KrtDMhUf5HDtrHqETYQ
         +0vco4hpQ90APkpZlK2xDHbfpDK0ICBGV5JbfVW5wG9KtLf9r4BmPeWQYZDch8FBx9Mc
         A8yPE3l3Z7d+xU2fbjXpeeuL0+KIOAlvP9DjCvyT+2AU9R/QDFSxah8ET3cryvUPtWkf
         txwA==
X-Forwarded-Encrypted: i=1; AJvYcCWM5Mc0UZR3tpvRfTmC2GHQ0hSeQlkM1Yk7llwFCfhdT0cEldzZbWWNSSPgk06m9gAvcngYYdJqFOVOLltWuqaANMpjCJ7w91zZGqKPYyGxfIPe71WVnnv/Af06xhM1oFnzyg9fsUEax+Kx47LWQjLOEQ4hzeo/sEg=
X-Gm-Message-State: AOJu0Yy4s5sVIc1PVo7pwQngyLpZFGCnlHJ1IVnoSeVwAUJCwfR+wBsD
	22kG2MBHp2LSRyB9wSMwNQ5L0NUxWZ5y73BGIHrTWjj3bFNLNfdNmQmCog==
X-Google-Smtp-Source: AGHT+IHFcjdr/OYVzPkcIcOVBQ6TmReEze0gUrgCk8erGXGnk5uVw07TO7/v8XAMCIzLW20RtL7LUA==
X-Received: by 2002:a05:600c:4451:b0:422:615f:649e with SMTP id 5b1f17b1804b1-4248cc593d5mr21346275e9.27.1719175579132;
        Sun, 23 Jun 2024 13:46:19 -0700 (PDT)
Received: from morpheus.home.roving-it.com (8.c.1.0.0.0.0.0.0.0.0.0.0.0.0.0.1.8.6.2.1.1.b.f.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:fb11:2681::1c8])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-4247101aac6sm138567635e9.0.2024.06.23.13.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Jun 2024 13:46:18 -0700 (PDT)
From: Peter Robinson <pbrobinson@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Peter Robinson <pbrobinson@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Enable SPI flash on PinePhone Pro
Date: Sun, 23 Jun 2024 21:46:14 +0100
Message-ID: <20240623204616.1344806-1-pbrobinson@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240623_134621_427445_BCA2CCD4 
X-CRM114-Status: UNSURE (   9.91  )
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

The PinePhone Pro as SPI flash on board so enable the SPI
interface and the flash.

Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
index 8c2a4aaa635d0..e94656dd64238 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinephone-pro.dts
@@ -629,6 +629,16 @@ &sdhci {
 	status = "okay";
 };
 
+&spi1 {
+	status = "okay";
+
+	flash@0 {
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <10000000>;
+	};
+};
+
 &tsadc {
 	rockchip,hw-tshut-mode = <1>;
 	rockchip,hw-tshut-polarity = <1>;
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
