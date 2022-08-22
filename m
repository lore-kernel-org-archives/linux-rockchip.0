Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 486FAC28D13
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 07:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7g05k3JM1bEEDrKfsz/XtZOY0M3ouWS6HvAms4UAbmo=; b=FSi803/dBg0c5o
	7+WGgTv5pl843S4v0CuL2wi6YFwPeAZsjtDlpN1p6ID3XhbkzfcQJI5q8tuInWVnNGyE7WpkioWiD
	DB+PUQ3+Fg8djPp+Ad2xr+C9ga5U7U8E4IUrcYXuHcEtK/mED0GPnNS2zvanR2azYF2nYvk3go4fB
	6KFDYKE2iloV0VCwepEzzq9LJ2S6LyLjtRxiyNzj3uqoG+ZwMgEZKPkVyIh4q7yGMbzqr4srRtx6E
	7V40F/0dtSZAmgpPTzyvSnj0mhOee4jPwGd4mWxEK7SyQFdabEqb5GZfvHzLzHUTdMbBn8ELQnfPn
	UWNJrcVF0lLqqeFQOF0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ24k-0063Q6-OO; Mon, 22 Aug 2022 07:42:22 +0000
Received: from mail-pl1-x62f.google.com ([2607:f8b0:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQ24f-0063Kw-0X
	for linux-rockchip@lists.infradead.org; Mon, 22 Aug 2022 07:42:19 +0000
Received: by mail-pl1-x62f.google.com with SMTP id p18so9170738plr.8
        for <linux-rockchip@lists.infradead.org>; Mon, 22 Aug 2022 00:42:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=friendlyarm-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=7QyUas+FLnoDjvpQTXVOSCYRlddQJ/V4Mg+5MhKdl9Q=;
        b=QPO//93mdKVvWHp2CKcq0d+X658L9tym1FpekTAlU2DNGlkkPpdqsqEOBCqdEC4SVj
         utYuG74InxUGt9KzeUDvA6XbZTGQBy+Z/19vOVnrl+8udG84eiZKN2qCYycA4FZRrvgT
         CUDkkUzrPy04StLWUM+kH/uDVUlAnmiS2NH4Jywu1V1MovqJVwzSWGdoWlAdwxNXOmcV
         BcyDOn3W74jFZlyglbXGywdLgkwQPoHBXWgniop+2bn3wrYNftabqNPAK+vmJh5/HZ82
         o3wgmP7+n1OuyDam+Tzcsx2saB6boTlqIS5J1ZVdo/jr8Q4tXTbNYwMJXcdL+Vo2TtZ1
         VJ7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=7QyUas+FLnoDjvpQTXVOSCYRlddQJ/V4Mg+5MhKdl9Q=;
        b=qWRouW/6YXzYc7/Wm8d8WJEElhc5wLSNgO7quZaJTX/qHI5Ozr7eBy3uOKf3T5B1Sf
         TJMtgUHSbLQd3zfFJNtNhsv/oiS0FkogGygFeZYKXOY8lXwgolOxYGfBag+JFuHCdu88
         8WXPGnXiI7Ddo+bb1iYdlkFq8ZxMbJweicI+QWXVqL52i4eehOBW4Sc06Yib07S/AJpq
         r0rMWyVdFa1OgLgpzoRoBKPjPbVsL/mkN30H6YEJzYqTfa4ixJxeGP3zWSFuq+Otpxk7
         buuegg29mtxclbcZlTrNK07Eb76jSPqT6+52OlRJzlPqjqN3Xph911euKQjNNELR3vop
         tOFQ==
X-Gm-Message-State: ACgBeo3UirUgZVka1ZbKdeC1QkUiZEak5vEgqAOPa7U+KSKxs1gYJp9x
	pKwdNuVcj+yTZEpZvKhgP4UYuD9ktJTxIQYxX3QGkN+l
X-Google-Smtp-Source: AA6agR5IRJNG091ZHau7uJZbUp8ZOq74fSoZSXgaKeNT8eQQ7nf9J+rsRcnPQS/9g+Rnrr3t8QcdqA==
X-Received: by 2002:a17:902:ba96:b0:170:9f15:b997 with SMTP id k22-20020a170902ba9600b001709f15b997mr18513567pls.34.1661154134357;
        Mon, 22 Aug 2022 00:42:14 -0700 (PDT)
Received: from jensen.next ([113.109.76.237])
        by smtp.gmail.com with ESMTPSA id s21-20020a170903201500b0016bf5557690sm2936254pla.4.2022.08.22.00.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 00:42:13 -0700 (PDT)
From: Jensen Huang <jensenhuang@friendlyarm.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Vinod Koul <vkoul@kernel.org>,
	Chris Ruehl <chris.ruehl@gtsys.com.hk>
Cc: Jensen Huang <jensenhuang@friendlyarm.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: add enable-strobe-pulldown to emmc phy on rk3399
Date: Mon, 22 Aug 2022 15:41:39 +0800
Message-Id: <20220822074139.3810-1-jensenhuang@friendlyarm.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220822_004217_334850_E6ABE0AA 
X-CRM114-Status: UNSURE (   6.69  )
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

Internal pull-down for strobe line (GRF_EMMCPHY_CON2[9]) was disabled
by commit 8b5c2b45b8f0, which causes I/O error in HS400 mode.

Tested on NanoPC-T4.

Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in dts")
Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 9d5b0e8c9cca..9491cafbbaa3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1561,6 +1561,7 @@ emmc_phy: phy@f780 {
 			clock-names = "emmcclk";
 			drive-impedance-ohm = <50>;
 			#phy-cells = <0>;
+			rockchip,enable-strobe-pulldown;
 			status = "disabled";
 		};
 
-- 
2.37.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
