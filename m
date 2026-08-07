Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68D09C5AC7C
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Aug 2026 11:25:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ekkNiO2YNYPcki3rjDXR3kbiZEYbn+w3y7QofZy05zE=; b=raFo7RF11gsQ2/
	B14Nc+0XNPPXPg+IrjNY4b+ZuJvQHIMW1HaXlBIzyM+g6uCLVfVR3WWB+Ad9oRejuIYL0+Q0KgUnJ
	aHKZHTn85vQGxFvkGXVDnzmtLXKS384lyvvaTwZCFg/QUl7X4xN72icUqtRQKaBj5dloBIGbFRyj8
	7XOdJhVWwyFYq+JB1MnUK97WsmUBgSeZ72IQ61+f9ZR7OttwZZMdPHozcPi/TN1BDFciGg7NP6vGC
	KbvyCLwtNYv9mbtNOfpe+4mV7T7UZ8Qg5w7W3Rkzes3fvX8ncLjvbVZQoZFu15xRxJxPMvYLdDZYl
	bgHk+j0JXytZxGTlHwfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsIgy-00000007reS-3y2q;
	Fri, 07 Aug 2026 11:24:48 +0000
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wsIgw-00000007rd4-2KDR
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Aug 2026 11:24:47 +0000
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-84a652535dcso2193352b3a.3
        for <linux-rockchip@lists.infradead.org>; Fri, 07 Aug 2026 04:24:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1786101886; x=1786706686; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Pnu3iLD2kYSjbeTomVdCVLxo+qs2c03NdwMIpYQOFt8=;
        b=PBrIad+DPJyi8TMmzdNKN4nL7V8fHXzDlRCruNK5DoVYktVzYcpsc1pm+wE5FCLh/S
         J76LcMJZ9sg+7OSBfami5gu5rGI2QWOcAnWJ4HnDGGQXj0uiPEYgj6mxADMRd7kXN1J0
         IgZZsfAcXFe2WbhGz9Z5xUbx1s/bhLMj1XEfw8odauUBjCjbdLBrvFf03O3VC/KU41jH
         GFI3o5BrVGJZ8pQeEsCfI41Okq0vJU49D9AEJm3jLkBPvK1GcYZiw/uEAk/yIQWpQYBU
         ReQp8dEzW8SypkwHadwl2iK+7MDwPBi7jP1cyZCRn5OzDm5TOEVH0iGHBSt4pMXUvnwW
         tOzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1786101886; x=1786706686;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Pnu3iLD2kYSjbeTomVdCVLxo+qs2c03NdwMIpYQOFt8=;
        b=LrBpRkup2ATFYur55TWk3zshi6V9+Zd1fKLG2TdVw7VuvIYgKCarAbRG5C9TuGsS4u
         51RsCjd9neTrQt/7OLfWlQr3vpZeotMZuQHfelGwSYbb0K180rgNoMdmBc8/gNvPr4lq
         V+YPBWLDQsVUtSDcVgkvt3Ob0b4ktdXfLtRrH4tgNE0bmnSKyiA/XmeWs/yAu3KCuKUP
         aeFZOuguiRe3KhPPLaN5ECkkK/OsmtKk9bWtJZSytd4JeQ4GGCW8qiKyXL6DmfLAQD1O
         lAAVf3TVgCS/YXQes++iOzYLlh0aNgGIuq8iYguCKdJzqkfMnOuOXskEfF4teZHfYkYr
         UxNg==
X-Forwarded-Encrypted: i=1; AHgh+RqtT5FlNbr8Edz6wgPNxhec5iRP51D/Wdmypvatpm2JkHAghFoiwbdbUB2CuDNdigr5+uZzzRm1HSVqauVH1Q==@lists.infradead.org
X-Gm-Message-State: AOJu0YxGk1zGKBtH0eOhsTIz2g7NPOl9nSr6lDmaG02pv7ocLbPjjM4D
	AGXOFexHRrH9Gn38HusB8KOyzDKPeKmw1XytKuAu6OlQ1I1xEn4yVoUL
X-Gm-Gg: AR+sD13krw2iaQP0D+q1DrZ93EahVj84B9P4CFVPM5tvjv6AtEncrNRDIhtQNc+Ndek
	XIiTOyUs+BmoNX7DjfB/Z3Ngj8aisz5jMlSrnX/tpig/VE/EIYc+M5lHr695eBgN1D/Ymtkc/Si
	9CYCjMPGwphBCltFZQjg5vgsaIXn7oNdTAsmatBgc0ckZYyjFw31FzLFdNzNgwxt2PqiU8uDiMQ
	v9CdraeUYNTyI3lG7MUkqYRJXn0Bi1sxgxZYZ7UoqXlKqzoQEqwJOtfNFF+5TuvayOqTTQNdunZ
	LWJa6CdYv1foK+fYPxTnbbwCZSbU7VDVNbQN0qDRbQ83dpRStYyqV512XCrd9L/p62OfrchU0sg
	5oujkmBqC5UrJrr0PAC63Wi/mh0uJvcGsLV3Bh5hz/F8oaaKHcum9A/vCy+NmOJygjBL59VEaQ4
	kEwOm8e+sdziOpeh07A1RNhUGrj4tCeyCUGBfpGEiJGKkSUpZh7QRyVL4aibi53/Uo03aA7+lGU
	dQqg/kK3Zjpx15xuQHc6dB1DCDgoig4B/ukLg==
X-Received: by 2002:a05:6a20:cfa2:b0:3c3:875d:c52f with SMTP id adf61e73a8af0-3cb85dc28femr29154698637.10.1786101885389;
        Fri, 07 Aug 2026 04:24:45 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:e1cd:daf4:8fac:b7e6:4f37])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1410199bfd8sm6349351c88.2.2026.08.07.04.24.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Aug 2026 04:24:44 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Fix the BT clock-names on rk3399-hugsun-x99
Date: Fri,  7 Aug 2026 08:24:31 -0300
Message-ID: <20260807112432.49685-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260807_042446_592811_8F69B6A9 
X-CRM114-Status: GOOD (  10.59  )
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

According to brcm,bluetooth.yaml, the correct clock-names to describe
the 32768kHz Low Power Oscillator is "lpo".

Change it accordingly to fix the following dt-schema warning:

clock-names: 'oneOf' conditional failed, one must be fixed:
        ['ext_clock'] is too short
        'extclk' was expected
        'txco' was expected
        'lpo' was expected

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Changes since v1:
- Use "lpo" name instead. (Sashiko)

 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index 352c8efb37e0..27ebbbc66633 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -703,7 +703,7 @@ &uart0 {
 	bluetooth {
 		compatible = "brcm,bcm43438-bt";
 		clocks = <&rk808 1>;
-		clock-names = "ext_clock";
+		clock-names = "lpo";
 		device-wakeup-gpios = <&gpio2 RK_PD2 GPIO_ACTIVE_HIGH>;
 		host-wakeup-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_HIGH>;
 		shutdown-gpios = <&gpio0 RK_PB1 GPIO_ACTIVE_HIGH>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
