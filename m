Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93DDFC4332F
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Oct 2022 21:34:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8U0YzK3wg4Q9VrGJnRvzjNdGXwzNZs122JmdAImYHI4=; b=lS95sMO9I2vW55
	7gksQ/uuFY26abidYyu53hDSOskBQ7UTO4IN2BB8QLtRv6FRKM9n1kZ5eUHM5RmoJxIcVpFyjaMne
	xucT1+o9edjve9mv1Q01mSxbMrwZ2/muL6TwWMNz9OYhwf9DsJk1VI/vxDhMEZS7migHwnJlkGKVu
	cSIfz7mZ08cG56p0WkqUTv4T2CdyX2VULNFSf95WlSLpMYqiex3DgXVzIVXbbAW6uCgP7y16hQzMJ
	v8ByhvH9gwYvUGQk0POp+1wJTyluOUIhqFUfi2qv6FkdV9M19jKU2QgqrBqjLGWPJ3tX/3NymJv0K
	uKD/1pxiPMI4icUcj+wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj5q9-00CzWo-MT; Thu, 13 Oct 2022 21:34:05 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oj5q6-00CzVN-0V
	for linux-rockchip@lists.infradead.org; Thu, 13 Oct 2022 21:34:04 +0000
Received: by mail-pl1-x632.google.com with SMTP id d24so2989685pls.4
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Oct 2022 14:33:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FxtCO/sTBsdvIbx9K15nNXMqkXqCe3muvorIeT/Gp0Y=;
        b=PQxgHbVW7gAjBNkJ0m4EistDNiE8uzyqSLr+wXnsfrQqr0iqW5Nv08TbMCsYysfj1n
         6NkTZD+iOCPC50AvK3V5UdElwqJY/bqyff9ak+AdhI75oU98fdVWo5iW0B+/tOXLQPiN
         hOp7vn/NbwLW7fGbHHfR/50F6GTF1adhVk7io=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FxtCO/sTBsdvIbx9K15nNXMqkXqCe3muvorIeT/Gp0Y=;
        b=5Fav2zzOoI+GrlVxAE9Z/MahWcWSlNM8V334Yd8wnkNdY6ctftQmnsJpHIKQ4Nt0lA
         0R+P57rq9CBVh+WJG8QFoDgKPZhFyhT0ghs4R+Yk1z+gz2ozTu/td9NdnHElIhG9IW4f
         b2s6z5ZXeuzHLQBRAJ0OSn5zzu/8gfailJ5fwqEZ7E/ErSYW0DbemImH8IwTT+ka+Qqq
         QZ5Davms9RH6+r7WSUVkgKNjVo9Dic46+JTqKoTbRChfOeZfNL3o7UoECy50BA/gY5S5
         suGQ2xg3aUv2ykBIGb3ohnzLbQAl5dwN5UYyBfVrK45w9Gkt2De44LW1OnVEWAJyzND7
         9I0A==
X-Gm-Message-State: ACrzQf1+rnQMShB9A1QFvvzce8HSEiCLFbwL3aC/0T8ZBSdDd11v036v
	+dEnqkG2t9p+XeQyWuGXMTY18w==
X-Google-Smtp-Source: AMsMyM5uCtOl2nxnKKMH5S50IdGA9ftWMvOziGDreMSFoMg0ribeqEJscEi9o8kO8lYmUUEMsVcqew==
X-Received: by 2002:a17:902:e846:b0:185:2f:c4a with SMTP id t6-20020a170902e84600b00185002f0c4amr1763888plg.110.1665696838557;
        Thu, 13 Oct 2022 14:33:58 -0700 (PDT)
Received: from localhost ([2620:15c:9d:2:e1c4:e063:3947:c870])
        by smtp.gmail.com with UTF8SMTPSA id 64-20020a620543000000b005632c49693asm139737pff.202.2022.10.13.14.33.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 Oct 2022 14:33:58 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Brian Norris <briannorris@chromium.org>
Subject: [PATCH] arm64: dts: rockchip: Drop Scarlet's repeated ec_ap_int_l definition
Date: Thu, 13 Oct 2022 14:33:35 -0700
Message-Id: <20221013213336.1779917-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.38.0.413.g74048e4d9e-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221013_143402_085197_4BC7D5E3 
X-CRM114-Status: UNSURE (   8.99  )
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

This is repeated a few lines down.

Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
index ed3348b558f8..a47d9f758611 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-scarlet.dtsi
@@ -734,10 +734,6 @@ qca_bt: bluetooth@1 {
 };
 
 /* PINCTRL OVERRIDES */
-&ec_ap_int_l {
-	rockchip,pins = <1 RK_PC2 RK_FUNC_GPIO &pcfg_pull_up>;
-};
-
 &ap_fw_wp {
 	rockchip,pins = <0 RK_PB5 RK_FUNC_GPIO &pcfg_pull_none>;
 };
-- 
2.38.0.413.g74048e4d9e-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
