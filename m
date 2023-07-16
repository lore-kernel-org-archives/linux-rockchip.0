Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E304EB64DA
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Jul 2023 09:31:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1K4CqtedFTN9Fyt1rtTnI0tWcQTlMJOW5Od1Te8ulD8=; b=d1L56Voagsdzlh
	3QObW7DJuWUuDymo+65UxGe/DymBq5LkZW72fvJ0PFveXCKkK62rND2cIeuTwvTbZ9HVtoR63W3zY
	1Usl2kuBs8Ib36ecUHTWUdlXD7JE+2nYH44CSI0cg44bDjx2nbWYk3O2j8fu7cAP0hONMZzutahMs
	8QkJYCYp3/BPr+afNLU/Plqf+iNvn9VsZ42QKxcsRMxUNw/euI6lR07iXrONIOY3BxeLXqtPsdFi0
	57AN2qHCQRl5qhI6rgLJu7ksyL/zROxCFR08/Q41wVOeuqu2Wrb5vlwOfWGnTOUfZYMx4RL4Bngj+
	edf9StYGXylUs2ppVFLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKy6H-00ARiQ-0s;
	Sun, 16 Jul 2023 09:31:33 +0000
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKy6C-00ARh0-0K;
	Sun, 16 Jul 2023 09:31:29 +0000
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1b890e2b9b7so19203535ad.3;
        Sun, 16 Jul 2023 02:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689499886; x=1692091886;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PAEW5pBQpGEQa8+u+L9FSRTp3sQn8Q/V86sBZoZsPWQ=;
        b=l6RwRWzaknd6B76niiuL3tAR63PuV1iQSjFKFJXxADmQb4HesnoyQ447/WNd4TUcO6
         XATKCziG9vWxMed+uSYI0nDY901HvvRQdJlAETW6bwI+GaFGfsR6yJpEQqdJ+U0ay0+W
         0CwrvCc3JTkBzqTM/gPZOgHYYgVf/TnJDOCxKIXFO3EgW5HKFXKYnrDdPkP3tN//SC5o
         rE7IIgz7ANUGNYdgbKHmLhxbJj5Hg+Q+Ai9AvZ2m/qLmj8HfNj5ddXWulXeOSXHc/WGU
         os6aCBAz8ugrM3R+5w/KlXe2yoPjQ2jOpjxBoiy8/BIdbvRnBCBsk4ab5hfJVly6J/wV
         R8gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689499886; x=1692091886;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PAEW5pBQpGEQa8+u+L9FSRTp3sQn8Q/V86sBZoZsPWQ=;
        b=kS21+qx0Z05vO3eLniUITG0qbc1J+FEcAk8F5HFPyRS4OzYZ9AJCGPxZsIFQtS3h5B
         IQHu3tH2Q/abli6WWHwDsMIt3lug3FuGyKkGujulAONEWVQWSptpd5V78NO112hLqEBH
         gwpJgoNJ8bVr+qZpzGH3E33sAymVTplILz17Ja24W/Ya/mbMIOOUUmKts34AjQJr/GEc
         O10joQV9SzGnKn+eLA3e4GIN1gW8RDfbe610u9iHQRPgUVIajEGWCrRitowXO8PLJDxn
         8zuIyDXb/tkuWe2GJbSDElxz01QaVj9qrQbM5AwDKuvHwhlgHvgE3c9vOfmUTbfS1ORQ
         8dSQ==
X-Gm-Message-State: ABy/qLYGOLR7Mq6XCI59XLWNNNgY3C0+CJ+IdSRrNAb5c7LmgJCUzZMP
	olCqFNgM9CatXJuq9r0L+cHbmpARR4U=
X-Google-Smtp-Source: APBJJlF/U3P4PPfKm/yTvfoD3FH7ic/HtRrlLwsE4DFcJwxy9JLajQ6TfObSOFUhHXjL9WuuDR2T7g==
X-Received: by 2002:a17:902:ec88:b0:1b7:fef7:d578 with SMTP id x8-20020a170902ec8800b001b7fef7d578mr7533075plg.41.1689499885772;
        Sun, 16 Jul 2023 02:31:25 -0700 (PDT)
Received: from zephyrusG14 ([103.251.210.195])
        by smtp.gmail.com with ESMTPSA id q9-20020a170902dac900b001b89f6550d1sm10662211plx.16.2023.07.16.02.31.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Jul 2023 02:31:25 -0700 (PDT)
Date: Sun, 16 Jul 2023 15:01:19 +0530
From: Yogesh Hegde <yogi.kernel@gmail.com>
To: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Cc: linux-kernel-mentees@lists.linuxfoundation.org,
	skhan@linuxfoundation.org, ivan.orlov0322@gmail.com
Subject: [PATCH] arm64: dts: rockchip: Fix Wifi/Bluetooth on ROCK Pi 4 boards
Message-ID: <ZLO450xOIQ29VoBT@zephyrusG14>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230716_023128_172943_9BAA4ACF 
X-CRM114-Status: GOOD (  14.02  )
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

This patch fixes an issue affecting the Wifi/Bluetooth connectivity on
ROCK Pi 4 boards. Commit f471b1b2db08 ("arm64: dts: rockchip: Fix Bluetooth
on ROCK Pi 4 boards") introduced a problem with the clock configuration.
Specifically, the clock-names property of the sdio-pwrseq node was not
updated to 'lpo', causing the driver to wait indefinitely for the wrong clock
signal 'ext_clock' instead of the expected one 'lpo'. This prevented the proper
initialization of Wifi/Bluetooth chip on ROCK Pi 4 boards.

To address this, this patch updates the clock-names property of the
sdio-pwrseq node to "lpo" to align with the changes made to the bluetooth node.

This patch has been tested on ROCK Pi 4B.

Signed-off-by: Yogesh Hegde <yogi.kernel@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 907071d4fe80..795a70948d9a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -45,7 +45,7 @@ led-0 {
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_enable_h>;
 		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
