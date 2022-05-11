Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AD44C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 15:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/COd2nmHbpvLSElZIlCiQYTtxvuUHg4NDJ/Eg1ibIQ=; b=z4nBnOFMQ2aQcs
	q5U15m/t6am4t461jVYOFXYmUazPb2m0bFW9uQbE9z1d3mJDjIZURVMHtRJ96pRV0j+AwN6uOHz8t
	MXqEXRSHxu5xXrZcn3ycQ5bOpOAACxrRp32g2z4D1WZfy6+75RQlxmswa2wajhUBY0unPWqDXrUpX
	Kf/4X+TWTU5ii6aSIRZdmOm7QjXxjyxCOdg0NYGGx3AT618KsUhNL428Rqjs5Vz1O03fraw0qGSyB
	qyofINBHruxrPSLpC9iiTREUN9hwR/axyvCshINxtuRdeDRhDvm4oUjfeRFkFgFavjjIT6k1qIMK+
	3b/ZPNQjE507eo9cZq+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nonzN-007RkD-7z; Wed, 11 May 2022 15:10:57 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nonqB-007Nj2-Jv; Wed, 11 May 2022 15:01:30 +0000
Received: by mail-qt1-x832.google.com with SMTP id hf18so2211504qtb.0;
 Wed, 11 May 2022 08:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ehskEIe5iN8y7k3SRy7I7dQU1KrIdtzHbsW6vH/ZN2w=;
 b=p+m2+5cZMBniorHS3GIpR5fpXoDkYGG8xLXaQI5ZyZrrYVzvKJfMbWdNgfbQBW9BJm
 CWAOE/jjuSGI+LAPyHLvLjWt0tQEaOO1RNObnvOsdmBOvkXb5xVT9PZetOnv4V76kGc2
 wGImIK49xn7/XLmSs+VJ6iWiCurKjCkoN0mpiecPfvfbER99SsCfqgrREiRIrEKCtGpx
 +nqPBopag/k3Nv60vRBoHudK4tgmCOEI1lAek2gKZinwniEZiaLwlTbX3spmb8pJxoMa
 NEMbR8PK0UwFoFArz73iw4NnKeMornPM9600Fz9ksxXkA5K/dhdvwHpGNz9I2GGjYRRo
 /ylQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ehskEIe5iN8y7k3SRy7I7dQU1KrIdtzHbsW6vH/ZN2w=;
 b=zUnLVvpCmQ9z8j8nBtyRU0KTbxGnWsIenGxQduDKYViP/eWWJjYIKuvmLWIY+/zET9
 vEcrBRP0YTDC2C6YeBZ6Lfbp7GTjMkuB5Xpo6pR7d8pyJdvb0k1ZFaiA3RE9qX0hXERO
 K9ykoyfwhZz4+R8KiCHA5W2qkJqWr2QYrGzbrS3+CURSm65kl3ABYCWOAammf1JIBMdn
 AhyyqlPUBd8DqSmo4ZPk+AqcmvlKhS9V6yrzwZpfFbqfcYgmEQo6Ga24tMkLN4CwE6JU
 Z8uFLFIatxJ2BtElE37cHUyueydmp5CHL4PCpPD5p41oNbXnSnZi1QegbAn2rhrH3CSu
 5heg==
X-Gm-Message-State: AOAM532c3iQ2whnPVf4fmJ2nWsavSC9YaC4lbPhcM6XaSKas3LxoLnN2
 knruEgHMVfup/FJBifuCDi4=
X-Google-Smtp-Source: ABdhPJzBYLGJuTwDEA7mH2iU4A6z3+FF6sNsnM9AaKOzjq2Fi0ZGfMGf2i1hpmWPKX4Ry36ludi3BA==
X-Received: by 2002:ac8:5e0b:0:b0:2f3:c8c6:da87 with SMTP id
 h11-20020ac85e0b000000b002f3c8c6da87mr23035259qtx.130.1652281283131; 
 Wed, 11 May 2022 08:01:23 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 h1-20020a05620a244100b0069fc6484c06sm1487134qkn.23.2022.05.11.08.01.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 11 May 2022 08:01:22 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: [PATCH v1 3/6] arm64: dts: rockchip: rename Quartz64-A bluetooth gpios
Date: Wed, 11 May 2022 11:01:14 -0400
Message-Id: <20220511150117.113070-4-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220511150117.113070-1-pgwipeout@gmail.com>
References: <20220511150117.113070-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_080127_763545_A6E09F4B 
X-CRM114-Status: GOOD (  11.62  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The bluetooth binding for the Quartz64 Model A has incorrectly named
host-wakeup and device-wakeup gpios. Rename them to clear some dtbs_check
warnings.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index dd7f4b9b686b..ca0b92795d95 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -638,8 +638,8 @@ bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk817 1>;
 		clock-names = "lpo";
-		device-wake-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
-		host-wake-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
+		device-wakeup-gpios = <&gpio2 RK_PC1 GPIO_ACTIVE_HIGH>;
+		host-wakeup-gpios = <&gpio2 RK_PC0 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio2 RK_PB7 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&bt_host_wake_l &bt_wake_l &bt_enable_h>;
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
