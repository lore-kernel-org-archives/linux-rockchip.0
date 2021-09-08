Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 017DBC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 18:14:22 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B80BC61100
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 18:14:21 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B80BC61100
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DZw1RdON0p4pUvOqR5h0QJALBlWq3880PsujOU+fA1I=; b=ENLNKlDeohpjKd
	qWgy70TgSpjtZtrcbq916KByZYpXBtZcS7FufgewCjXQKCjP8TFI9+b2wH+n/7zmP1EsrLf08Nn+K
	qdpgQMzHwB4YJZ4r16yQ7++eA50/kVkJt9tM25KRJ2V8tSCXNE0/vx+77JcncuYQ7nrdX8gHoWqPu
	2btTcg1GyMG7Wj0sjKnY/YAu0zfvik9gou+2DqN4r+VFaFR2mQso7b0Pfy9GvFtLgxCJnWuS9keQ6
	BUMeOGj6t3Y2BQ2FQSvO2xtx+XqB9kiAk23j5C6wpTuJB0Rwr0lA2pD/V8iE5Hc0dSInCJD09bN2t
	vh486GNqZ2sQGZBE1low==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO25Q-007NBQ-V5; Wed, 08 Sep 2021 18:14:16 +0000
Received: from mail-pf1-x42a.google.com ([2607:f8b0:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO25E-007N8h-Qv
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 18:14:06 +0000
Received: by mail-pf1-x42a.google.com with SMTP id 18so2748625pfh.9
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 11:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/7V7rRemEpda86gCcDXaw5uz6xMLDav/RoQNN2RSOuU=;
 b=jbFgaVCKgsth2Y9eV65+J3eCvsvNnESvcC/38soujbnVAZbIves1S8586ELAEnx/ID
 A5sxB4nM77/ls5NTbEsxSlx8qIWyPGI+vnIqe+DUiCNLmiPcXL5zS6ex55pZBLAJEuSt
 3j3hlsVfGVIHw1ntIBzcRfPc+OpG472RPgryk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/7V7rRemEpda86gCcDXaw5uz6xMLDav/RoQNN2RSOuU=;
 b=i9OVRkxhrsd6WyoMcpx5Uauc9DopqOdJ0PJzk9Rq/SVmlxH6O/m7blFgVRi536w7Nz
 D0wFTrYIJO2MwZH+TuTTV3N+rITIOfC97D1ReLl5OOakFREjtSbbuP+Ho+xL3Zsf8zTG
 ouOP5+TBG8s2CDrvEeq/yhyroAMgGJu+2D0L25EYSRwZHxSWoAoJNaq2FUzblfu+FzJK
 n2DVMISTdZsKC0RVh1dZAV/zXDyXrfaeAmy4BWY3rDvAau2idDyDQVsqB/F2jDBcRVJO
 EJ49zvhOjyqpDgMCxk7crO61T3BCB7VEfYVD3xiH2otRl9ILjIJQYltFm+SJvDLhbUkk
 FhPA==
X-Gm-Message-State: AOAM532oSc3//LovLZWD0HKRflkp2c5aE/69a7vOE2gp9X2M0HyYrPcj
 J6A3sA1tN054ybrJ9CrWz4uIeA==
X-Google-Smtp-Source: ABdhPJzS2hRYQ/VhBHUhz7s035X8SA+E503rKFk/O4ISrGfbPXO5LNPQ7UfPtBSGHGxa3j0HeaCRPQ==
X-Received: by 2002:a63:d814:: with SMTP id b20mr5014888pgh.268.1631124844338; 
 Wed, 08 Sep 2021 11:14:04 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:7556:e88d:6fba:e1d0])
 by smtp.gmail.com with UTF8SMTPSA id k190sm3564254pgc.11.2021.09.08.11.14.02
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Sep 2021 11:14:03 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, Chen-Yu Tsai <wenst@chromium.org>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>, Leo Yan <leo.yan@linaro.org>
Subject: [PATCH v2 3/3] arm64: dts: rockchip: add Coresight debug range for
 RK3399
Date: Wed,  8 Sep 2021 11:13:40 -0700
Message-Id: <20210908111337.v2.3.Ibc87b4785709543c998cc852c1edaeb7a08edf5c@changeid>
X-Mailer: git-send-email 2.33.0.153.gba50c8fa24-goog
In-Reply-To: <20210908111337.v2.1.I006bb36063555079b1a88f01d20e38d7e4705ae0@changeid>
References: <20210908111337.v2.1.I006bb36063555079b1a88f01d20e38d7e4705ae0@changeid>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_111404_945509_828C8AE0 
X-CRM114-Status: GOOD (  11.74  )
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

Per Documentation/devicetree/bindings/arm/coresight-cpu-debug.txt.

This IP block can be used for sampling the PC of any given CPU, which is
useful in certain panic scenarios where you can't get the CPU to stop
cleanly (e.g., hard lockup).

Reviewed-by: Leo Yan <leo.yan@linaro.org>
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: Douglas Anderson <dianders@chromium.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
- Sort properly

 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 48 ++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 3871c7fd83b0..c5fe2d440114 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -361,6 +361,54 @@ usb_host1_ohci: usb@fe3e0000 {
 		status = "disabled";
 	};
 
+	debug@fe430000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe430000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l0>;
+	};
+
+	debug@fe432000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe432000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l1>;
+	};
+
+	debug@fe434000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe434000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l2>;
+	};
+
+	debug@fe436000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe436000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_L>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_l3>;
+	};
+
+	debug@fe610000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe610000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_B>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_b0>;
+	};
+
+	debug@fe710000 {
+		compatible = "arm,coresight-cpu-debug", "arm,primecell";
+		reg = <0 0xfe710000 0 0x1000>;
+		clocks = <&cru PCLK_COREDBG_B>;
+		clock-names = "apb_pclk";
+		cpu = <&cpu_b1>;
+	};
+
 	usbdrd3_0: usb@fe800000 {
 		compatible = "rockchip,rk3399-dwc3";
 		#address-cells = <2>;
-- 
2.33.0.153.gba50c8fa24-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
