Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 194B6C64E7B
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:05:51 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8DB1120691
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:05:50 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="h2+cy+ox";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cyehrLhx"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 8DB1120691
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zBYFoChvNcNC2NtQHU0OD3cBLL4Kr0soiy+KQqit8SA=; b=h2+cy+oxphZMpT3iAWcQUmgQAI
	tg5vRcZTzutEVz/e7dc2moRPGRpAfo0x/LcxERyzDx4hAl9NShw/ADJL1YzaAOMk2jXBAGLLw/nrs
	GKqPOpcdFgPnSw2mZ/0U0C9gifVrQcasQvwy5CveQoZVNUELS8Km2sstlnYOaUEVnCMXa9Kl7MF0P
	kA/xaJa4CARDV/gj/aXoZ4sLaxcVp62Kald++O3DNaObTR11rDSphSssgPQzQOfrtsuN33tYMoPYZ
	icamzNX4wElGHhsSVMQmGC7d8q/4+Dk6caaQWtRL7816fF0RieUdjCK/mtvBVxzx57qPTFSy66lUF
	6IT1vyuw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk7Dt-0008By-U7; Tue, 01 Dec 2020 15:05:45 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk7Dq-0008A4-8r
 for linux-rockchip@lists.infradead.org; Tue, 01 Dec 2020 15:05:44 +0000
Received: by mail-wr1-x444.google.com with SMTP id k14so3128722wrn.1
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Dec 2020 07:05:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f+PMSvzynjDZYEfUZftd1yBC+yXjwh8elezjAqN+YxM=;
 b=cyehrLhxU5V9ds6iuGX+78/1O8Fs+7CHpnc3gRdo/64HwBw07n4qWmRzqk5PnL7fTB
 swMxkEKxMH5vs1p5F90/d+7vpKO93iG08Gws1qDPCBHLzTWNA79MqSfc1capp0wZIpEf
 7zMXSr2+0kdpPBi1nWFIZnuq6jX6IzX0IKbNyYVTapbYpKJxf76bzPn9PXYpOLGAoaMk
 J1j76j6q/b5jIMf9CO1pIdaB2ndWvpYIKnj+PSToR7wbSVtiMMKVC7GRu6oBS3buLiKS
 VyHRiJpiRZuFZ06WdrWzk7/dzNgxwvGIsZwqvJw07Yo+Y+y8qIt2DBIajIVD6EXF2fYz
 6P1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=f+PMSvzynjDZYEfUZftd1yBC+yXjwh8elezjAqN+YxM=;
 b=heAZ50POTLko0sG+Pity0WQjd4YsJliySRXZGNZwoUyn7uXtqNtyNCzUAF0RLW95Ot
 MhoIZoM2QyjGBqAJCxHKe/q55UiIKIE/judMQ/xLtmluhoe24vaOg18u9lJHFAF2a3Oq
 4mdpdh3yG1/DlhAVEqKb2k1YVksAGqSbEu7VulU7q1wnXOJWoBkW01XpA92lPF439jue
 Aj8fhctJl9m9uF7A2yQWnXMzyzkApntnuXs487M84MyNf8juH3gLb6zJJAqtpA9/hmW2
 G0yP/d8YWMMK/bXjgbQrPr1Rb3B4H5OcHyFiwoWE/kyuBqIKb9d/EnemNwOH42bgUuSr
 48Qw==
X-Gm-Message-State: AOAM533Nnk7HZjyd/rZxNIBHMNidS+O6cgXZzdGOl1NdGlM3m4M6sjuu
 QOqkAPrEIQRz9lBbw/YhDtc=
X-Google-Smtp-Source: ABdhPJw+a+kbOrFZAXu9W0vilKnuSuX/m5lt7ae6iZwSESPYUpUnEy5kzXZmtB/qvtLNbLsbM0QEqA==
X-Received: by 2002:adf:e54f:: with SMTP id z15mr4479532wrm.159.1606835139804; 
 Tue, 01 Dec 2020 07:05:39 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.27])
 by smtp.gmail.com with ESMTPSA id a9sm4014421wrp.21.2020.12.01.07.05.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 07:05:38 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Douglas Anderson <dianders@chromium.org>,
 Carlos de Paula <me@carlosedp.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Fix iomux for PCIe on rk3399
Date: Tue,  1 Dec 2020 16:05:22 +0100
Message-Id: <20201201150522.923-1-vicencb@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_100542_379861_36AD5C41 
X-CRM114-Status: GOOD (  10.47  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Vicente Bergas <vicencb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix PCIe pins according to the documentation
http://opensource.rock-chips.com/images/e/ee/Rockchip_RK3399TRM_V1.4_Part1-20170408.pdf
in page 301:
GRF_GPIO2D_IOMUX[5:4] gpio2d2_sel
  0: gpio
  1: sdio_detectn
  2: pcie_clkreqn
and page 313:
GRF_GPIO4D_IOMUX[1:0] gpio4d0_sel
  0: gpio
  1: pcie_clkreqnb

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index ada724b12..b37dac094 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2666,13 +2666,11 @@ hdmi_cec: hdmi-cec {
 
 		pcie {
 			pcie_clkreqn_cpm: pci-clkreqn-cpm {
-				rockchip,pins =
-					<2 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
+				rockchip,pins = <2 RK_PD2 2 &pcfg_pull_none>;
 			};
 
 			pcie_clkreqnb_cpm: pci-clkreqnb-cpm {
-				rockchip,pins =
-					<4 RK_PD0 RK_FUNC_GPIO &pcfg_pull_none>;
+				rockchip,pins = <4 RK_PD0 1 &pcfg_pull_none>;
 			};
 		};
 
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
