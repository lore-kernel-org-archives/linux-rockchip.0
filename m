Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F1CA1C021AA
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Feb 2025 12:07:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ieQuELaDwScXjbkDWMy2h/t3YDukHNk9MKk6FdDeABY=; b=u1IrIXS+U4njfQ
	psDF68WP8KhC+53FnTk4ruX11y3ZjT6DfUtIG/kLyTkcDA2F/mElFmKZ3RCvjwrsXgxgf3yk1cbTz
	66CV80dw6bWerqXG3PTHrQ7EDZTZSD2E07iWTIEZsTojrLqCkB58ZwzAFXMz6fXE1fvATkyqKRWJD
	SgVC9I6TvdJ7L4yfKNEP4fhA16/jdBb+vh37I4nzdlEo0Yre1kqeYK5WnynhnHK/R7aw0uXhNTj4F
	92k5eTJHZcimLPqpL2ZWeZr5GxOTSAWsCf8ybGTfDEtHQRkdjuUFjPvMFwRb9VW7azVdWa+wiJ4AZ
	voCF9L1nvkMRTEi4zVng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkMNO-0000000856V-0IMs;
	Tue, 18 Feb 2025 12:06:58 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkM6g-000000081c3-1Pb3
	for linux-rockchip@bombadil.infradead.org;
	Tue, 18 Feb 2025 11:49:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=x4BCvLPXLVBNWWfP0us5XdGPJJn8f0zHeTMdG2zuumY=; b=FAX5M+jKp8j1u43SKBDhiPjyOP
	Db0tUOZjIkNLByKKp/+HICsBRh58+hrSdKQkedQ//AT5TrC8UIVlhPn40fX7HpMBhb3W/UJVsDKwO
	VdDcfXzjFP5V5xn6cVv9r2t33LNeMFrffiPqhtbFqybWhNIWmJ+4vgZX8I2+janOQ5CbCN6Tag8P+
	xTDKO7aVZNYTcelU9ZtZp6oXe0rZ/mdQh9vgM4PvZHjnm/8KQIFdx2OA2wfV4OV+4uTfYT9FC0sgD
	a/rFv7gIndcv2v/nxR8NdVsnJJezq3F125YzmkxnMwjx+NzyRz4hhLnboX6FvPU4hekFyAUTbqdEZ
	L9qzaHOg==;
Received: from smtp-42a8.mail.infomaniak.ch ([2001:1600:4:17::42a8])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkM6b-00000001zRp-0rUW
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Feb 2025 11:49:40 +0000
Received: from smtp-3-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:4:17::246b])
	by smtp-3-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4YxyVh2r7vz4CR;
	Tue, 18 Feb 2025 12:49:32 +0100 (CET)
Received: from unknown by smtp-3-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4YxyVg6HY7zkRX;
	Tue, 18 Feb 2025 12:49:31 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Date: Tue, 18 Feb 2025 12:49:17 +0100
Subject: [PATCH 6/9] arm64: dts: rockchip: add EEPROM found on RK3399 Puma
 Haikou
MIME-Version: 1.0
Message-Id: <20250218-tsd-align-haikou-v1-6-5c44d1dd8658@cherry.de>
References: <20250218-tsd-align-haikou-v1-0-5c44d1dd8658@cherry.de>
In-Reply-To: <20250218-tsd-align-haikou-v1-0-5c44d1dd8658@cherry.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Quentin Schulz <quentin.schulz@cherry.de>
X-Mailer: b4 0.14.2
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_114937_438455_9BB8D07E 
X-CRM114-Status: UNSURE (   9.27  )
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

From: Quentin Schulz <quentin.schulz@cherry.de>

The Haikou carrierboard has an EEPROM on LVDS_BLC_CLK/DAT which are
signals that can carry either I2C or be used as HPD for eDP0/1.

Only eDP0 is routed from RK3399 Puma SoM but only exposed on Haikou
through the Video Connector, a fake PCIe connector. So to be able to use
eDP one would need to use a Device Tree overlay. Therefore, let's
default to having an EEPROM in Haikou carrierboard DTS.

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
 arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
index df8a8ec582ecc6830ef11be372f204057759d1f3..bea146d0d3f02afaf5e406d61d9a8ab7476fa8df 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-puma-haikou.dts
@@ -185,6 +185,16 @@ sgtl5000: codec@a {
 	};
 };
 
+&i2c7 {
+	eeprom@50 {
+		reg = <0x50>;
+		compatible = "atmel,24c01";
+		pagesize = <8>;
+		size = <128>;
+		vcc-supply = <&vcc3v3_baseboard>;
+	};
+};
+
 &i2s0 {
 	status = "okay";
 };

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
