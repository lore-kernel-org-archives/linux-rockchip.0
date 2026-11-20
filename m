Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E45606A325
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 10:50:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=iQnRWqc8;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=AuY+vQl+
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=vLFWuggjn7uewo4fWaqfuH9M0TWw4WV9nAjeZZ2KMnY=; b=iQnRWqc8zCMXAVGBnzM07DrRON
	Gc0pEekeYOhK5kcDVxZUsH5BOYq++zrxSYcLk0019VwNJCOg1qPpBYSYg+ed3I5cNEif/vwZ3p0g5
	CsK/iHd+wM7Vo68yNux/lkL5eAedRpsoLt/oWd4QlN7FSK+Cry4uMujOpuQ45NN+epphzd1ATzuGP
	hmHUL1NejXqUYyDQil8GIVVTg66rdn55OTbO824abu98vU91j/kBRdcNxL160ZzJ7Uta+Ij7vCB0y
	fufOHUTvGwFjjdkSBxNDGRj5M2NdL6S6HoCfpdOZKbqtJYDjKvtfc/VJeLo4x4FOzTCxvXZUvHhFg
	tgDxTlqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMBw-0000000EfAI-2XHC;
	Fri, 20 Nov 2026 10:50:04 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMAS-0000000EeWI-0JwB
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 10:48:37 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4bb606491faso3629095e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 02:48:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795171710; x=1795776510; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SSya2n1vOn3uoQkwXT1G4lqjvii6kin5nIUMHVd2ZFc=;
        b=AuY+vQl+gfc+Ri931ddqXRcYwO8E7LKVuHK2HnxflDeWRXdeeqNk81PHTUFJY3WvbV
         cCKXO3SEvJuAUTTnFfHpHU02E9WS639JjqDxwUUKahShh8Eq6tgJQ1l6iPxElIG1xYnC
         3/q/9bWFWAVZtL7juh+BV/4RUeP41ev2rTItlg10pXRb9MN0oPVGCXFSsDa5wVxj2nLx
         +MGaWmJrQ0/ueu8eRPfo51DOxKIzdk2hSDcJ/0vqedk9s7aFYAUFFfTO/Txjqz0rtrr6
         ruCZMsQjKwTea3IpBo9MdeEjWDSCIrCMlDLLErGglr6dqIq1IV/Em7FiglNeAvCYEb//
         WHFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795171710; x=1795776510;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=SSya2n1vOn3uoQkwXT1G4lqjvii6kin5nIUMHVd2ZFc=;
        b=BbrTFlmeGQt85n26IsmLnXyM2+oxiDqq81Y6J4JWErOE80Fzqwa6HEAe+jmKWE//rI
         jJ8bUjS5mYUV7iyB0zZ1QTdDNqs88d6RX86xz4uyyJJayOzvurMGOnp/bsxO1PXQyxQm
         63F5nfKm7gB+Vn6+KDjnfz2p2coEdYJJGXPqkInKC0+ShUlL8XNhUI0HXFfibOD7oR3v
         7Zpevqpmhc8A6jbrsBR4UEe0kR4IiFlq7wPi6XBvZGm4QCLpD/0oZfwcDwNijClH4JX7
         6ew6qbTpob7tj5covWYwlHXhXHx/Y0FW9Em8OrpIYzLyiUEFC2Ed1v9mAZRkRyn1J46w
         r52Q==
X-Forwarded-Encrypted: i=1; AL+hErEIu/FvgWmUNXKf2IfH0Dx3eoiHw+lW1imXJ3uxUPFpFZV1wCxpGJy1/EzJ76wTc4FRzEEfIVTvKyVHh36blw==@lists.infradead.org
X-Gm-Message-State: APuU4Z9fmVJxOAxVT78VHvQzSRJxLWzQ2Ab+8zqgUj8VDxnOP5U6sKWz
	ttEkKbmf9fOusHmq1+Em6IDLHkukO3EX8SnFW3UL9ETlPcuRnTgpJdZXunsYQeQe+3k=
X-Gm-Gg: AYBFou3asvKieJHZr7XFeZFFftACpVh8CWHbdpfbv/nBLwn2f98nLyFIq7i3YrvNCF1
	i96dawoO23rVngeIhGByWSm8XuBSlwBSx1EIMoiQRE3MjSyKDWZuKG6jZQzjvTHyhqdonsSm0gR
	2YFkJ6GxrQ/vIe2pkBt+fwlkxuD4TxnSHAWvA9KODUlFDTxE9rIOulNrI67NAqG68I92Zv6qQ0T
	TD9CHVdZoVtQNsgsuiwCj9XTKUaGrtP8zVoIHilikDvbgMyvd4FdVe8HMsP8g+4R5YJ+RFMtltI
	8edStHe53emsHO/zo+mFo0HN8TTiTshBZQbiE2J332y85K4621jF6/Gt5HknaXOfZzoVyGTollO
	MKxmaPAFF9ebDkRuxupahVwjFeDWOq/QaBjkyriPxIEfVevlklrlPhTCN4cwPk6Lj1evvF8Wsav
	8ke/gEXtk7PbJwBl/Hj7sLqWvc/HXI/rilRASXXkDPvr/pWAGLtoevw4/HuPHe1s/YHQPaJhROp
	K0sWVKL5DX0rmhZo5EGj6QGwjHW61f2aOCfVmNjdTjsGdg8yEHAxU/dlUKi3fZeNn7remXqQx5Y
	wvIImK0WMKNH2CdNMHrjH6kF3XI8qj7a+UlR/FIOoir5vH5h4uJQpC78aXnlgGPkbFY/PwOYqpo
	g+ik209vW
X-Received: by 2002:a05:600c:828e:b0:4a7:7f3f:6f8e with SMTP id 5b1f17b1804b1-4bb8878702emr65663905e9.0.1795171710109;
        Fri, 20 Nov 2026 02:48:30 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88f14f1esm38161425e9.2.2026.11.20.02.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 02:48:29 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 20 Nov 2026 14:48:14 +0400
Subject: [PATCH 6/7] arm64: dts: rockchip: Shorten NanoPi M5 Ethernet PHY
 reset to datasheet timing
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261120-rk3576-phys-v1-6-6382cd14e3dc@flipper.net>
References: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
In-Reply-To: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1492; i=alchark@flipper.net;
 h=from:subject:message-id; bh=uW1NJdgYTHTE7LDSMq7O/aHv2OipTZNfjjFmlRp5Erk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQzqObumam5fa2bzv9iOYfkf4cO9HO6X7/D8a78/loBv
 TN/GYM2dUxkYRDjYrAUU2SZ+22J7VQjvlm7PDy+wsxhZQIZIi3SwAAELAx8uYl5pUY6Rnqm2oZ6
 hkY6xjpGDFycAjDVlgmMDPNs1zbPSbk7fdGiZRs5X/9Ztj/vbJvmE7PZkQU3PF9uu+/LyHDgI4v
 m1Iq61/tSNnvvjxUNXrCvqJ5dPbN75eyyUw65whwA
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_024832_176895_D183479C 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Use the RTL8211F datasheet minimums for the PHY reset: hold PHYRSTB low
for 10ms, then wait 30ms before the first register access (Rev. 1.1,
section 7.17). With 20ms/100ms every reset of a PHY keeps its port from
coming up for 80ms longer than the PHY needs.

Signed-off-by: Alexey Charkov <alchark@flipper.net>
---
 arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
index 638e00b6e165..3444198b6cf6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-nanopi-m5.dts
@@ -809,8 +809,8 @@ rgmii_phy0: ethernet-phy@1 {
 		interrupts = <RK_PB1 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&gmac0_int>, <&gmac0_rst>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <100000>;
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
 		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
 		realtek,aldps-enable;
 	};
@@ -824,8 +824,8 @@ rgmii_phy1: ethernet-phy@1 {
 		interrupts = <RK_PA2 IRQ_TYPE_LEVEL_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&gmac1_int>, <&gmac1_rst>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <100000>;
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
 		reset-gpios = <&gpio3 RK_PA3 GPIO_ACTIVE_LOW>;
 		realtek,aldps-enable;
 	};

-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
