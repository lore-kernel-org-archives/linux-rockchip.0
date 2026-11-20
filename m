Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBF7606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 10:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=l2w+Gm+6;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=bMg2mIcz
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=KvGgKvtxuLctkdvsDx7E0zD6lFPh3BWGuLoYD192haE=; b=l2w+Gm+6rdCJGI6LFPAyJllxFq
	UZ23RJN2AdqoaZb5eh0q4aDhpp4nHwwsyWRCQNwmdBQwcgUEs3xy2Ctk6oQf/hmwvmiyYxhUH8KG1
	xeGEWHAGqwKjju63+W7CxJxIF+PF8dYKy89EyaMWuOx0zL+l5oGBST5ySYJBGRFbCGZMeRlYDFEJk
	RpnroWh2mJu0vrv0rK+DTpNQWJc9ANdt6XymfVf+DEoYC/qoXthVQg8GnRGioEy48d+769/H54NAH
	DnqR8Rmh226ga6lRyCX5CPaQoWutaU8RzK6Ok3kgExbi+KlDDEuBSM5KvjGnJn6J8WA8n0oYN/elr
	DV+PguEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMCB-0000000EfMH-2XJr;
	Fri, 20 Nov 2026 10:50:19 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMAU-0000000EeYI-0nDz
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 10:48:51 +0000
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-4a32576da88so387218f8f.3
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 02:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795171712; x=1795776512; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=CYESoVgfwgsRsCvBatykAecmK7pBObqxccBDfQWhhIo=;
        b=bMg2mIcziaRM2Jh6m4ZDv8q/coG7JWRyu8E+U8OynNIoMCyJEDdywX5b3jIPjETpP1
         MyvJ7cnCy88T4JSjONQrlBA1teTJpfbEW3ZthRHK2zdTSNF92OojkyUVcrbWCAzciAut
         agZ0WjTxwi578xgDRIfnKv7CrBCMwX3GC3RYoyGbvD5n5EnHGfHLE5fsnJ44BfXqSKnp
         DyE2p96BzJvFa5y1VngFMKI4uIev6FBtZMOsC0JA3fir3U/sqScnTxuO0wZc/VF6UBFZ
         4pqSqdVrvk5BGIaAJLreOuTZEKLcLMgOaUeOkQafshHD+mQSkzimyR4InjT3y40rq/mW
         bzNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795171712; x=1795776512;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=CYESoVgfwgsRsCvBatykAecmK7pBObqxccBDfQWhhIo=;
        b=DqRwBKpD8rfj4UYj+eUaCT3vxUWMzER0dWfAo4WmHEzxqQ8pcs3eLKRzxv16MfUFbA
         0e4UD6/BzW8qLuKFiR9MTalBN0mv9hbS0/UXW7CliqWIqtF66wigIMn18EODImjY3vc7
         V+PTz2OollyZPSKT8e/Vnr1cIYK/fubcY104lZn85dhXMCUTBV/dNUwMRcWqKV/g0Tg0
         Ei05EIEMnpwsmNlcOoiyq2YVySwaMF2OtB0FGqI8dVfM+JQclQrTu/suHwY5+YZQim6V
         X8LDyMwITzf6bYUCu7TTNtPLpOhCBVCVTGw6Wgi8hS7pl/uZxfbIbDfc9QzGpt7BewzL
         TX7g==
X-Forwarded-Encrypted: i=1; AL+hErFNFq5AIyZsoih0efgq3x+IqGf3M6cnaqFLn6nFy98ErZIYm+SAoi5oMCn2xmi/c0UUBP1JUHMtW139IPduVQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z/DWM1ImsXJ+QXTXpsRbD50gqnysnXZDse0y2cfu/zGofeTu/ZR
	gACw3Si36AxVdJHcsAuVXdlY4j9mUfwY2uW7/02gdI32BQLKpnmlRIiiGEFnjb9av/U=
X-Gm-Gg: AYBFou3ZG71O7VRSLhumjgJqYLHa3Tg6zYXoKPTnF1PF1wRfgrkFxx89hnF7vI2DqNF
	oBFFRYOR9iKTUT3RyH/d8vRcTx+Y/N6Kqn6ZY6tOJPcMxYoXJY8XQry0pCaF4hnkg1exImujV7+
	75MG4lk0O+itM+BH/Ksnrc6iwZE+7A3vLEXrWTrYPKyFRE3rWv4qlw1yCX8y3iSTOv8lCj+fwib
	m1qjbgoAwUi1+CRx+GSlwb5m1dWj9mkm/XXL3EFULv4BR3gIZYeyvQ+pfvH1+Vxrb6qQHMeBw8Q
	EtEgQu1M6DGPrSiUVvLan0wHYjRUu3k++1QkW4dqSOhAsI7HGwNfEKNKAU4D0YUCWW7LhUPgfT3
	rthlj8JltVro/yhSFQt0rtc5igpGeZJQymkddqDwr3jf0PCYn/iYHDQqojXACOFu59Vvk14+N6L
	EKYWguhq0K9Et4hx426umjMHgYauQkA3e5jhP4j8cQH1tBBuEHAlaQ866Wn5s5ba2k0Fr9Gn0Xq
	YAcrpQoScJeZMK9aBpovmPL5IYUdNShn+fdNM49tDrJj93DVZ8Px00L7BVwHVLHYBHM6yzTm1Ee
	epabInSiojGXoRuTYqDwSC7PSDL28Ftey8oAPMkEdW45/Ix4wuC3IqhmNThx9AR4yeh8c9qSXSo
	gSr0yGjcH
X-Received: by 2002:a05:600c:848d:b0:4bb:52d8:73ef with SMTP id 5b1f17b1804b1-4bb88940f1bmr56043855e9.34.1795171712233;
        Fri, 20 Nov 2026 02:48:32 -0800 (PST)
Received: from alchark-surface.localdomain (bba-86-98-194-229.alshamil.net.ae. [86.98.194.229])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88f14f1esm38161425e9.2.2026.11.20.02.48.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 02:48:32 -0800 (PST)
From: Alexey Charkov <alchark@flipper.net>
Date: Fri, 20 Nov 2026 14:48:15 +0400
Subject: [PATCH 7/7] arm64: dts: rockchip: Shorten Sige5 Ethernet PHY reset
 to datasheet timing
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261120-rk3576-phys-v1-7-6382cd14e3dc@flipper.net>
References: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
In-Reply-To: <20261120-rk3576-phys-v1-0-6382cd14e3dc@flipper.net>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 John Clark <inindev@gmail.com>, 
 Detlev Casanova <detlev.casanova@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@flipper.net>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1421; i=alchark@flipper.net;
 h=from:subject:message-id; bh=udM5Uz76VRJ4rdTS0/vqmjrYLFd8GBP+/ltQgETwpHk=;
 b=owGbwMvMwCW2adGNfoHIK0sZT6slMWQzqOY+Elj+wdS9+l3iOzMXGWtjuc/xlgmpgYvLqxKie
 EWUpxR3TGRhEONisBRTZJn7bYntVCO+Wbs8PL7CzGFlAhkiLdLAAAQsDHy5iXmlRjpGeqbahnqG
 RjrGOkYMXJwCcFvLGRlu3N9xb9b5u0b3UoyZZkc8Zz0Xad3Gp2PVaeHvsSeH/xM7w//ozg1Rngo
 r/VVd321fl3/uzOyZxzQ1RH2Ovt8pIPBbLogVAA==
X-Developer-Key: i=alchark@flipper.net; a=openpgp;
 fpr=9DF6A43D95320E9ABA4848F5B2A2D88F1059D4A5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_024835_560992_1E0CB5C9 
X-CRM114-Status: UNSURE (   8.82  )
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
 arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
index 45a4489863bf..3e7158ebdab4 100644
--- a/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3576-armsom-sige5.dts
@@ -780,8 +780,8 @@ rgmii_phy0: ethernet-phy@1 {
 		reg = <0x1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&gmac0_rst>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <100000>;
+		reset-assert-us = <10000>;
+		reset-deassert-us = <30000>;
 		reset-gpios = <&gpio2 RK_PB5 GPIO_ACTIVE_LOW>;
 		realtek,aldps-enable;
 	};
@@ -793,8 +793,8 @@ rgmii_phy1: ethernet-phy@1 {
 		reg = <0x1>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&gmac1_rst>;
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
