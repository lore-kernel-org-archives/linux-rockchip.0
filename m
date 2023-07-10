Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B3F4EB64DC
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Jul 2023 16:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=POGY3jQO2CrMbQeUZZJd49HlitSxSpZkw0qGXAkRHc8=; b=ZbfT1EHR88mexZ
	MyhOGi6gCHPCof/xfknPf4koFh3J8NhzotK1lu1+h5HSFTE5HihSuN/s7pa4Y9g+BOMcLzNnovLxn
	SixhJHgWjQ6bCIJVMiLJETckyYhtyE1yBK8iIGMxarXyvTCZxbsbjcEnWCe8d3FnR8D0620+3Ln2G
	Ah5GGUejZGejq0jjZis0t0rwQOOX6j6TauOgG682IwVoiw7aQjyJqgQfGOGO51o9X86Ip9Way32JR
	ZWjYjAxQjZGle4XY4Natvbf8Kv+tkoG2bj6fI2Ycdwfxnwjsl26YzXxFPyLixTXdn83dlpfyKiVDx
	hXM3liAMwuV7g+pdZfSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu8I-00CFFY-1r;
	Mon, 10 Jul 2023 16:53:07 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qIu7r-00CEpr-35;
	Mon, 10 Jul 2023 16:52:41 +0000
Received: from jupiter.universe (dyndsl-091-248-189-246.ewe-ip-backbone.de [91.248.189.246])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits))
	(No client certificate requested)
	(Authenticated sender: sre)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 9429D6607010;
	Mon, 10 Jul 2023 17:52:32 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1689007952;
	bh=Y8zCZDXJA+QQttHu6G0S/ZvTbsLSn9iT9xtJEks7f7Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=Qwm9fxWx9cwglDKV41Qlt8Hh15tpIqTskcSg1crsARgGWJ+CbJxgkpOQuDVR+T2N6
	 nA+/+QjbGmNCG6Ir1Ng6ppcKfl20xaWHchuJcgG7z7YnAld8YpvD7I+s4OMUI8Pfut
	 R6P+F3lC6gIQZdO3msyDDgymfdstchovo54+1Oi0jKtQRQHaEGFUbKBBJMCeNRywYG
	 4IY6RgM7gfJqmLg56y7jw3VOnXK+qBVlhdK3edfvIgkrZTeHDnTi5D+q2RmPpjsYmB
	 QvS5dIIJOW0ZcaGmSa+g7FjkGhfZIcKVGYa9wGg0OCbv2+aLqHGayUlUjf1cXcxIV7
	 r3+8OZd8erZeA==
Received: by jupiter.universe (Postfix, from userid 1000)
	id 25F024807E2; Mon, 10 Jul 2023 18:52:28 +0200 (CEST)
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
Subject: [PATCH v1 09/13] arm64: dts: rockchip: rock-5a: add I2C EEPROM
Date: Mon, 10 Jul 2023 18:52:24 +0200
Message-Id: <20230710165228.105983-10-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230710165228.105983-1-sebastian.reichel@collabora.com>
References: <20230710165228.105983-1-sebastian.reichel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_095240_138870_63A4A0D9 
X-CRM114-Status: UNSURE (   9.96  )
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

Add the I2C EEPROM to the Rock 5A DT.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
index 4c6c87d462e9..0b18d4230eef 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
@@ -163,6 +163,16 @@ regulator-state-mem {
 	};
 };
 
+&i2c2 {
+	status = "okay";
+
+	eeprom: eeprom@50 {
+		compatible = "belling,bl24c16a", "atmel,24c16";
+		reg = <0x50>;
+		pagesize = <16>;
+	};
+};
+
 &i2c7 {
 	status = "okay";
 
-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
