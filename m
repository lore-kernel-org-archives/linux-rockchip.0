Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 799CB606A324
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 21:55:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=3CdAYiAF;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=HszzPnmy
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=aiqOTLUPf+EwQvXLa2r8zJ2gRv2Y0Gc6wc5GbuyUnyY=; b=3CdAYiAFbydWFeQW3nJWdz+Qag
	AAA4jdRZ0VO8FXpmOkfQD/A0u+qRdW/7Pp5oS7OCk527MGKlGOuzRzzN/w0DzU+YJRd2Pcofv1lpk
	wUwaoczmAm26uAASsdDoHbk9Uxwexa6P39iBS7iQ49IvjOhKbWamT6yLcKKuFdwxQ9TiMFc2qfn85
	o/rHx07+P+7WCo37ioH7eONL2QYIw+FLmyzunMd4HkZJ1l/Ex/8bABKRiifv8fK/najqkGNJZgiZ3
	M8wzIQHT4gCi4FOvofOVSOFlfgofJLXGPJHKUO3mni07yfpjtyGidubG96TWJM7R4sLuIsRPUaYGS
	GYXq6Fvw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdWg-0000000Evxx-36ua;
	Sun, 01 Nov 2026 21:55:42 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNdWe-0000000EvwN-0xMx;
	Sun, 01 Nov 2026 21:55:40 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id E7571400F1;
	Sun,  1 Nov 2026 21:55:39 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1793570139;
	b=ra5ifTBW+tDEgpbnROrQp7YOManOPvj/nVta7YM/rlzfM0nYbLTJTu4h62m5Iptl7MVM
	 Dg0gw1GnDhKN8zQgKnoX0d7qPwtzwgZJMqfq5gU3xomUyAyKIcHaJVodnuddXcGMS6dS3
	 /77QAqkz0iZQIiIwES0HDTX239q3ADt5NVdm9f7K0XE9ZWOJNQ8A8M8es1+/kKHPlF01l
	 jEVDIxYFLthUvV8BLGaImbBCeN/TyoRHDmE7xHqXciL2cgqnRXyFTzF/WPxcqfMvsVbcC
	 WDObgZN6Qo1EKa4kvXE4duPhvetYCqvP4jCoCbtzyL3jINlOjvo49IAviT/uy+xY0jw==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1793570139;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=g8vWhKsaqajITjq9gGNN3w1NhjxcxUBcMF42WIuChd4=;
	b=NMYlbJeLeoTkG4tj2P6F7YxaYgPitrarusJWkmZ3dKJOMEwSno9n/Zn1jSzBQS0WrL24
	 l+KgVhWMk+4h6HVN770eOT45roTFb6U2uvsOWotIltwsgt4jnzCG9h2rgY4DkJX9O3DWJ
	 id5TaCBUZ2BGUUkPUuDS9btucHLSFRATEumklb4mUlzyeFn4TH40ItojRfKvloi62o1GM
	 fMihVY23WpUbWLnI3rjG+PxJUJ0rkbtTljnG6tz5l0s0MFUCTE194xwO5NaZt2NFDtCo6
	 an0ItT53nMyxqohTO6C3Ov61wVNGif941hfZqNgUhkISaObM3oEhO9sZa0GWElFEZVg==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id AA1011F000C1;
	Sun,  1 Nov 2026 21:55:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793570139;
	bh=g8vWhKsaqajITjq9gGNN3w1NhjxcxUBcMF42WIuChd4=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=HszzPnmyQ5J/e9dWqap1NDmoYGbdFTaak70FFpqFpa4I3iqj9jCGXAGM/vKMqFF/n
	 zmWcpfXZGCKOIYajH3FxgAhft8mjwnBDidnTzJnA84kmWQVira8L/m/jGHYcZeJVAu
	 JY5tzM4y1ceU/yL2pvDM6AzRHCXUObNZHiPOfWE4MdyPAXfzHYN/1j++YfCQGn24s+
	 QuSKUlUU/KdEG/4S6oZ6WMUkkLWJc104up+ywg+ZektgmbToZZghQm8Y8Kba8SUpUU
	 xQZvVvF7dVKJJrhEGXZ4M30QiiJbTz1Kb+VLw3Ws7w/U0b2TF4mle1+DqfDdSOftJi
	 +LSZyDyBtfnZQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id 219B1462A0;
	Sun,  1 Nov 2026 21:55:37 +0000 (UTC)
From: Joachim Eastwood via B4 Relay <devnull+joachim.eastwood.gmail.com@kernel.org>
Date: Sun, 01 Nov 2026 22:55:23 +0100
Subject: [PATCH v2 5/9] arm64: dts: rockchip: rk3588s-nanopi: rename sd
 power pin
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261101-nanopi-m6-improvements-v2-5-a24769efda23@gmail.com>
References: <20261101-nanopi-m6-improvements-v2-0-a24769efda23@gmail.com>
In-Reply-To: <20261101-nanopi-m6-improvements-v2-0-a24769efda23@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Shawn Lin <Shawn.lin@rock-chips.com>, 
 Diederik de Haas <diederik@cknow-tech.com>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 Joachim Eastwood <joachim.eastwood@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793570136; l=1187;
 i=joachim.eastwood@gmail.com; s=20260701; h=from:subject:message-id;
 bh=gvTRkXbpRVhGnMj7+Q/DCFN4GNYE93OUyOP4u2La1JM=;
 b=q9YTGnE3XrpN/gic/JwumlvMoho3P3Vj32Du1QTheemLgupn14EwHcL6ILJ1IBTOPJCKAVz6c
 gPGsnTtjr44BxBN59hgzzGqMNm+vKPnYKkGUxAfhRYqiG6EhRja854Q
X-Developer-Key: i=joachim.eastwood@gmail.com; a=ed25519;
 pk=ZN/8xWtdYaSd5oEfloYSZ1a+/ri0n0VZqjlEeHlbXFU=
X-Endpoint-Received: by B4 Relay for joachim.eastwood@gmail.com/20260701
 with auth_id=846
X-Original-From: Joachim Eastwood <joachim.eastwood@gmail.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: joachim.eastwood@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Joachim Eastwood <joachim.eastwood@gmail.com>

sdmmc_pwren matches the signal name in the schematics, which simplifies
cross-referencing.

Reviewed-by: Shawn Lin <Shawn.lin@rock-chips.com>
Signed-off-by: Joachim Eastwood <joachim.eastwood@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
index a99e2e60c5f72..1d37862edb5b5 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-nanopi.dtsi
@@ -66,7 +66,7 @@ vcc_3v3_sd_s0: regulator-vcc-3v3-sd-s0 {
 		enable-active-high;
 		gpios = <&gpio4 RK_PB4 GPIO_ACTIVE_HIGH>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&sd_s0_pwr>;
+		pinctrl-0 = <&sdmmc_pwren>;
 		regulator-name = "vcc_3v3_sd_s0";
 		regulator-boot-on;
 		regulator-max-microvolt = <3300000>;
@@ -334,7 +334,7 @@ sdmmc_det_pin: sdmmc-det-pin {
 			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 
-		sd_s0_pwr: sd-s0-pwr {
+		sdmmc_pwren: sdmmc-pwren {
 			rockchip,pins = <4 RK_PB4 RK_FUNC_GPIO &pcfg_pull_up>;
 		};
 	};

-- 
2.56.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
