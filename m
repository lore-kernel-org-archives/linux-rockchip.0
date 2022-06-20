Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0D75EC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Jun 2022 16:13:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=byOK6u+V1Wy5nxfXkfnkIn3fbq3cYQfH11jxIn2+OE4=; b=F6iMnfR5TqXriI
	JGPoxhUOT9wk6dx9PhWMUqkmtQiPvrqr8VWn8xMP3kXDFOoSEUyCXxEVXxtP/gbAkfoFi4kZzAZix
	NeGnlGwd5LNn9srNL9NIK+UugjxTCoSY91RuzEtcXebFFMxa0GMjnoPog50K66FjT8BUIqdV3+E0O
	RPeRPm5doNwPpvT50JidvoAngiWo4vCmQksuGbhJYUUV3QmMntS5yx0cCJv0yUOx4ZVO5JPnOzEgd
	wz4nNTIfk64+wjOrp0o7dCDkir+GNtDWlF7/v9szfqPajfzrm8i/pIpnJkqyDI8rWi/7ysaPMchC4
	eOiKlMLOlo0Bt5LCiG5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3K24-001PKX-QR; Mon, 20 Jun 2022 16:13:44 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o3K22-001PFV-5A
	for linux-rockchip@lists.infradead.org; Mon, 20 Jun 2022 16:13:43 +0000
Received: by mail-ej1-x62d.google.com with SMTP id kq6so22056627ejb.11
        for <linux-rockchip@lists.infradead.org>; Mon, 20 Jun 2022 09:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xvFY1kJeejdwrQbhws2bUmgFOGvqBabSRSqYJrTktOo=;
        b=qUAYBfrCjlgPdw+vFkZCS6N98mtPEEFcJCL8AnfynhtMykKxG+BzaV7AxDybinThvp
         xTQGJKuczKViwBOXmc+MsM6lCQnDXmz8FP/Pp7hx2uYOHjW74tHDUpOzGhpkPebZO9VM
         Zh8GX+gGS/VEX535KxBfyMIg7M4u+ddiEpyr4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xvFY1kJeejdwrQbhws2bUmgFOGvqBabSRSqYJrTktOo=;
        b=InNoT3SN9nfQiSiHmcazch+JEJf9sa0Y9hY6/zmFW42yTbfoabfnS/MC4qpVgoIM2Z
         KfZrgDIOmIfDKgqjQB3Wnk9GghpVfaSUtmJtt4ViqB/X734w51ECuMYF4UzNwidg6IN/
         +/B2VjCdck6XeXYZdySvTLqlZXCmD2gfxY60fV9kebGaRKHao+hC/r6BmiqG7MsNKaTf
         Q/OdDkLd+kijFKAVCLJ4LWCBB9m6GbNsxfcfuFydngQ5EQ4QoCXff5NJvT+U3xcdgI0P
         TgZhkatT6XjTKGjh6X0PNfh1v/rZMG6/sSZCfnVeyX8QUkx9JbObt7LilzoImxnCLZNd
         gwjA==
X-Gm-Message-State: AJIora/iKREn7FVNWmkDJlDFklWqQYvDumch7PKxGCPuVTNJdCmlsnYE
	5MOjaFM9c1POtEEaC/hXvPpSQA==
X-Google-Smtp-Source: AGRyM1ulld7kB/Wo+OfSshWGx9VazvunF150Uw54sGVldCpyVXW+uBryqi3H0Dg+V7Ipf/pR5TJvKA==
X-Received: by 2002:a17:907:16ab:b0:711:f0dd:91c with SMTP id hc43-20020a17090716ab00b00711f0dd091cmr21057880ejc.575.1655741610214;
        Mon, 20 Jun 2022 09:13:30 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.station (net-188-217-55-189.cust.vodafonedsl.it. [188.217.55.189])
        by smtp.gmail.com with ESMTPSA id p26-20020a17090653da00b00706c1327f4bsm6209772ejo.23.2022.06.20.09.13.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Jun 2022 09:13:29 -0700 (PDT)
From: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To: 
Cc: linuxfancy@googlegroups.com,
	linux-amarula@amarulasolutions.com,
	jacopo@jmondi.org,
	Tommaso Merciai <tommaso.merciai@amarulasolutions.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] arm64: dts: rockchip: px30: add mux for mipi-pdn pad
Date: Mon, 20 Jun 2022 18:13:19 +0200
Message-Id: <20220620161321.1898840-3-tommaso.merciai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220620161321.1898840-1-tommaso.merciai@amarulasolutions.com>
References: <20220620161321.1898840-1-tommaso.merciai@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220620_091342_218039_FBD0F9C7 
X-CRM114-Status: UNSURE (   9.83  )
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

Add right mux for mipi-pdn. Mux this pad as gpio2 14

Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Tested-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index cc73d4bfc5b1..aee7fecdfc15 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -449,8 +449,8 @@ ov5695: ov5695@36 {
 		dvdd-supply = <&vcc1v5_dvp>;
 		dovdd-supply = <&vcc1v8_dvp>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&cif_clkout_m0>;
 		reset-gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&cif_clkout_m0 &mipi_pdn>;
 
 		port {
 			ucam_out: endpoint {
@@ -543,6 +543,12 @@ cif_clkout_m0: cif-clkout-m0 {
 				<2 RK_PB3 1 &pcfg_pull_none_12ma>;
 		};
 	};
+
+	mipi {
+		mipi_pdn: mipi-pdn {
+			rockchip,pins = <2 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pmu_io_domains {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
