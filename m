Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4970EC43334
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jun 2022 16:36:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2kBHA/BTiN4vkzKymu3U7qzP4o3vNkNHRbDQqiWqIhI=; b=gucnm14ft1u1Fc
	ixUgtXwpvIMzY+EG6cdBhpwhnxEWhK6WOoBVEv4GXdLu4aoWkY7EAGKh0PZNydUt/hjpg4hDCmbgo
	7rSKFf4kopcINIItiT6l+v596B0muBZvt/gwoGCSrIRlZiqFIwEzXWjxsIz8RGTEKmHfvoTLkkL8y
	mA5exV159lMrSZTuT7Z5Mtr8iywHStrdGutkUGj0oSbtBgxBaSaG5y62mKH9HkOmgGSvFZV8V1baC
	tfE3YikKBQKGHioZuafuH1BB499Mxu2HG+9nnfEqWtvzXoBZ6qeIuIQ2d+k9LvnwOWSsNkf47kNkG
	6/NNaUlsdEt3NCMncykA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxAHU-008Avs-1R; Fri, 03 Jun 2022 16:36:12 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxAHA-008AqF-GQ; Fri, 03 Jun 2022 16:35:53 +0000
Received: by mail-ed1-x52b.google.com with SMTP id x62so10853723ede.10;
        Fri, 03 Jun 2022 09:35:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OyWs2PSSxtF9m14bGEh5PR47UxvU/WKdZospW5gj6qg=;
        b=NYJAcTRebySOX6VXOcR1b629TpydpneKhjZyajgtjblANJD7wbf4AY+x9jW1EpBVUt
         lGOsmDwCx48Nm8a9wXvYpnX8+hLedbSJ8fXTSe7HGhlMfTsa64RrT0bLJuD7TKd/MJGQ
         YF8m7vHMBQoywDepTbmkq67XnDKXZdO2pJL/FUSBzrdJvbZMJ3kxgJmzUHUQ3eqkPwsc
         fTt/EfgtdEypT2/Tg8AcYKkKsoCnnwuVXVnjV7J67onIy+82V/nk1Yz+WxA3KpWpq7eg
         Rator4qTI9TrZPIEfG94s0UNhvj9mnUvXlgwzgRZ1UJ71EF5/HpQQ9eFL28mRmy9My1o
         X0HA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OyWs2PSSxtF9m14bGEh5PR47UxvU/WKdZospW5gj6qg=;
        b=FsgsuPCdOri0tw1pQcghZcQ+OFTqDgzEA8iYhoLPnnsQHHDkriudQ2QGgTyTNmAiUV
         j2yyCYIT/L+sqX4zDKXPjrwJ+TkL4Vt2GE32wR+pDn3GaXn/w1WCIbzOMoVrEokmc8hO
         PN/1nB8sP22eClxi/ar7vZ/0jryvuKObTo0ZfxGRr4rQ9VsI9Ii3RPkzmmuVq/jmAefX
         WtIsBtQcK/DqCnJ5ctZevMYda5agFTUIXQve5VPCypZy2sOwGk1t+n7bo6Gx/9eDqwtF
         7EP9Losk7HSlwI9k+iLcv2BYHLEBlvKMFROyzmpNIw4l5RXh5gAIovccKevwqqechiLE
         Xzjw==
X-Gm-Message-State: AOAM533h0HbNOGfVl9+8KuGlQ/obddE1D3lSP9oqoY9JwwM9OQOUnjt9
	npOIg+qOBnJpDRzK74qWgio3HTmEfDw=
X-Google-Smtp-Source: ABdhPJx22AJ4k2j6daZDoLSGFOkcXakF4VCwMPxXRdpFi8edJyvcMoWFNFK1GK2IrDo0a/2huS8CNQ==
X-Received: by 2002:aa7:d895:0:b0:42e:985:40f7 with SMTP id u21-20020aa7d895000000b0042e098540f7mr10936583edq.351.1654274147400;
        Fri, 03 Jun 2022 09:35:47 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id n13-20020a056402060d00b0042dd630eb2csm4106189edv.96.2022.06.03.09.35.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 09:35:47 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	netdev@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] ARM: dts: rockchip: fix rk3036 emac node compatible string
Date: Fri,  3 Jun 2022 18:35:38 +0200
Message-Id: <20220603163539.537-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220603163539.537-1-jbx6244@gmail.com>
References: <20220603163539.537-1-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_093552_581470_3F4A3612 
X-CRM114-Status: GOOD (  12.21  )
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

The Linux kernel has no logic to decide which driver to probe first.
To prevent race conditions remove the rk3036 emac node
fall back compatible string.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/boot/dts/rk3036.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3036.dtsi b/arch/arm/boot/dts/rk3036.dtsi
index 9b0f04975..e240b89b0 100644
--- a/arch/arm/boot/dts/rk3036.dtsi
+++ b/arch/arm/boot/dts/rk3036.dtsi
@@ -225,7 +225,7 @@
 	};
 
 	emac: ethernet@10200000 {
-		compatible = "rockchip,rk3036-emac", "snps,arc-emac";
+		compatible = "rockchip,rk3036-emac";
 		reg = <0x10200000 0x4000>;
 		interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
 		#address-cells = <1>;
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
