Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65E0BEB64D9
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9Rr3DsPBoYwdqTGKhhsJN9l90IGv27Vvqe+0pdBQQA=; b=SUwTpOTDD9jULZ
	HDowyllCWyYkYGRYvFZwxeRJcNCfBc2ifbSsmwzukNhP1FyQCyJU3LeNXPN8fOgIUlodP/vJZet0l
	FxyLwERBE8cjT+L2hLxzklAs53ptls0+z6H8jGn4JeMBo5riAVUkB4HdcY78ousETwpgOSaST8Vhe
	cFApLrNFr7ND/gEUQttNq0szxEK0cDaFvdILyDvcAuS9pgqjixtyDvumsoEPwnQ4uUzmDLRIYHKMz
	qMEAbyeuDv6ooV/uvWyhq/0wQ7odBWBivDVa4S3j8i2wHHkb7FipZYxkT0k2OuvZBvEumfipCrpz/
	0tJ60+qAkxBEolCLDuVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu8Y-00CFSj-0N;
	Mon, 10 Jul 2023 16:53:22 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7r-00CEps-2y;
	Mon, 10 Jul 2023 16:52:42 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9BF9D6607011;
	Mon, 10 Jul 2023 17:52:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007952;
	bh=5gfqP3n6JjVI7mvmyViy3tF4VZ4HgaaoXQiCBJkMdHw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=YRHOXVMdvXzNxcVh5XUUZ8XGCQuLSgz5Narnemjq4Xz1X8nV8MHJmvBpFE6sEjuWb
	 YKYpcIJpsgmU8RYfFjm4Xs7RhDLGWoA2t8qmEtwdZpSSeqencI3gZE0ES4MVaem0sO
	 WFXEccC2v9teJFxxdmlwT18nQdHlgTxqqElRNYh6/K4PomawMPh1bTn6L0BjdCmj+C
	 t5z+tqNzsCiQe0C0k9yN9d2Etrhk+4PfA6gdpgMCQiLpHkL6CChXjSlCMST1WhdxmT
	 kssUoPwJtQw1sYvwz4nookq2x3PGC+n3xIv69jBi9R1oQupCi54qU4wnLYj2cN+ur0
	 3H64agKwP78Ug==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 273804807EF; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v1 10/13] arm64: dts: rockchip: rock-5a: add vdd_npu_s0 regulator
Date: Mon, 10 Jul 2023 18:52:25 +0200
Message-Id: <20230710165228.105983-11-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095240_097770_511BBB4E 
X-CRM114-Status: UNSURE (   9.56  )
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

Add the NPU regulator.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 .../arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 0b18d4230eef..c4471dfe574f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -166,6 +166,23 @@ regulator-state-mem {
 &i2c2 {
 	status = "okay";
 
+	vdd_npu_s0: rk8602@42 {
+		compatible = "rockchip,rk8602";
+		reg = <0x42>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_npu_s0";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <550000>;
+		regulator-max-microvolt = <950000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
 	eeprom: eeprom@50 {
 		compatible = "belling,bl24c16a", "atmel,24c16";
 		reg = <0x50>;
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
