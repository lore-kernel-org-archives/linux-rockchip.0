Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30937C001DE
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 14:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O+ZvKOtldlJL495U0fy82TBW2PTyy7EJn59KwvsIQQ8=; b=cAa+e2TXi4bVww
	r3SPqkk4auzh7u+vwWTyLtZsqHHA4JDdKP8qo7lSO2DUvwLiEnKX1tcDhbxOuiIIGNkVNt1JBgU4a
	VlnWBvys0Tjsy2BiCk+1lzPGzD14Mnd56WLSniW4UyjOQXsuzgt1/zuuti+AX1yPlsn6ZYhRVWOHz
	dCSRLjJAwC7mz3kvWmYWhfxgu3SiNriW0AWf5iBEoJqdrbihpp33ViD6sdA6qOOZbEWVdg+2+ALCD
	jTOf4W9o9O+H7tsZSXRtz1L3jA92LPDk+aw9RFOT3mTSOz2zlvv3zjIdGlNqX1QxXgLGtvT0twypj
	wp4b7PeX5THfYRqMki9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxUD-003ab8-1g;
	Thu, 13 Jul 2023 14:40:05 +0000
Received: from mail-pf1-x42b.google.com ([2607:f8b0:4864:20::42b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxU8-003aWq-2Y
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jul 2023 14:40:01 +0000
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-6686ef86110so508296b3a.2
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jul 2023 07:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259199; x=1691851199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RPx8TXoMTBPqv3uRnnY6UKXIImJhBduWLO7dIf7/AC4=;
        b=xqlwKQjsTqzmn1QJEGd8JXe/ZovSTVQG8sxdzZUhd0KKws6MSZrJTGvJoB0oQJxuvq
         8RNXMIn1LV29fHId75foL62pGPrcAUoFnTuLm8zwAyqdo2zd8G2vn6v7vfEDCwQjLXXq
         8PmvJUIlFAYRw0r1zSAcDHYng0sNhakloiIt5GZxxGIKEjxHNulQAk223PQUT6iexQFS
         PG9ow9GNMdJBzVSpjXJVSfAcyHLGvD7JV0bpBxrzJmDYCVaIFLFu9V6pg1/VFoZHfZ5b
         yuJ11FYceQWtqn4r91hf5PSbgmzoPtthk9hn6ytO/9vqephyAHJ502kJvZm/wpMxe8wl
         pmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259199; x=1691851199;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RPx8TXoMTBPqv3uRnnY6UKXIImJhBduWLO7dIf7/AC4=;
        b=fGpmzRWEL2Nk1E8eVs70iIm/Py2EnQ3AKSzJxq58m7UdXXBZObM1/0WJpRO1Za1mav
         LhRhs09hkqmAJUJKFvmRk7zqbZ7RX3W/A9TPsg21XQUExbdgwTxQuVBLjD4MAfPn1Qv/
         ZPDLn+BpcxIV94nZnrnP5m4EJ8oOEAHis+nlViLY5XYskWETq5T4Bhi1bJj8mMT4u65l
         mW/xfnSlGwH8XiEKpafVHStg0EpmYaLPjCBfdxyJ71lLYUdJqOLCn37XQF9ADK6QeMrC
         nMcCQt0te1vnTypiRTXU0MpOi4fjaM8hr2EAcFGApX9SX4rcHXejn/Eg25rnYDpZFVFl
         cQgg==
X-Gm-Message-State: ABy/qLZjuqfT5Ljwxy915fi8LzuZwv9blGTMjg3YlPDP5ksmiOcfPq58
	WOv5Vkt7jzC4aqOm/Xj8JAlzEw==
X-Google-Smtp-Source: APBJJlFcXSP+5J66G/A3nfy7geKUuQg05H6iIsJR+VanemdB50VS1DtFF6IgNq4ZIR2uniMrG3KhxA==
X-Received: by 2002:a05:6a00:2d90:b0:661:4a00:1ea5 with SMTP id fb16-20020a056a002d9000b006614a001ea5mr1496470pfb.20.1689259198793;
        Thu, 13 Jul 2023 07:39:58 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:39:58 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 5/8] arm64: dts: rockchip: Enable RTC for edgeble-neu6b
Date: Thu, 13 Jul 2023 20:09:38 +0530
Message-Id: <20230713143941.1756849-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_074000_826136_05B1FA21 
X-CRM114-Status: UNSURE (   9.95  )
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

Add RTC support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 .../dts/rockchip/rk3588-edgeble-neu6b-io.dts  | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 0b6f32e9b820..4a9f85d7542a 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -25,6 +25,30 @@ &combphy0_ps {
 	status = "okay";
 };
 
+&i2c6 {
+	status = "okay";
+
+	hym8563: rtc@51 {
+		compatible = "haoyu,hym8563";
+		reg = <0x51>;
+		#clock-cells = <0>;
+		clock-output-names = "hym8563";
+		pinctrl-names = "default";
+		pinctrl-0 = <&hym8563_int>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PB0 IRQ_TYPE_LEVEL_LOW>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	hym8563 {
+		hym8563_int: hym8563-int {
+			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
 &sata0 {
 	status = "okay";
 };
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
