Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67361C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 May 2024 14:24:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fgbJUlEZJNrrK9pVZd1WMXdCTu5PP4xD2sFyfnoC4a4=; b=s/7osO0dd1I8kt
	dy676kklOqgWbk7e1Ct9DXgOCh4mQxse29eQO8hXTYWFmDmrQcxPCMc0XOqN4VCVvdRfjE7wjaOpI
	WwjRxPfQNuAfqLjGVJVKitcTxrnJnvlNYt1OG3R/tharimfAg44kat6ZSGFcq/yskM4X0BnNhIlLF
	luzxah5DazlLmuU/ARgYl0q+MuYDThu4HFa3pPOyS+if8QFwbCxhiIFytPKDc//FImWKpBRs8MBYz
	7Ii5lCfTu8w/FkLqZyhKTU4IqGiuqtK0Vj0G/HvqT5bOT5g59h2VrBK57ntByd/tcsAMfS8RxqaXA
	DrB8/+P0nT6LlghGUxAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2AsD-00000009nIS-2IPw;
	Wed, 01 May 2024 14:23:53 +0000
Received: from forward202b.mail.yandex.net ([178.154.239.155])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2As6-00000009nG1-2X3J;
	Wed, 01 May 2024 14:23:50 +0000
Received: from forward103b.mail.yandex.net (forward103b.mail.yandex.net [IPv6:2a02:6b8:c02:900:1:45:d181:d103])
	by forward202b.mail.yandex.net (Yandex) with ESMTPS id A46E962FEC;
	Wed,  1 May 2024 17:23:35 +0300 (MSK)
Received: from mail-nwsmtp-smtp-production-main-73.iva.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-73.iva.yp-c.yandex.net [IPv6:2a02:6b8:c0c:20a:0:640:b4fe:0])
	by forward103b.mail.yandex.net (Yandex) with ESMTPS id 9F156608FA;
	Wed,  1 May 2024 17:23:32 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-73.iva.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id pMTR1wbCbKo0-AkbDrtjk;
	Wed, 01 May 2024 17:23:31 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1714573411; bh=JYZVhcK+PoryVRvDM0TzuUIYo20LFhMUXXZ/JuqXKJ4=;
	h=Message-ID:Date:Cc:Subject:To:From;
	b=MDM/JrOaV8jDNkSaMqmaW+vH8ySq1GYfsWJIzPE6MqYXEvoDz7S31zneJfUH/ez9I
	 evy2BKGJUWdiGAJTHYHhNVkJGoku5DODSiYRLg4xPf+xqS5GwiI+0gf0JHhj+PCLUm
	 NE+dZUO1HvhQGApNHftwgHE+NuP3XIdIrNCYyuGA=
Authentication-Results: mail-nwsmtp-smtp-production-main-73.iva.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: efectn@6tel.net
To: heiko@sntech.de,
	linux-rockchip@lists.infradead.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	sebastian.reichel@collabora.com,
	Muhammed Efe Cetin <efectn@protonmail.com>
Subject: [PATCH 1/1] arm64: dts: rockchip: enable GPU on khadas-edge2
Date: Wed,  1 May 2024 17:22:41 +0300
Message-ID: <20240501142241.98554-1-efectn@6tel.net>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240501_072346_828922_746E893D 
X-CRM114-Status: UNSURE (   8.83  )
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

From: Muhammed Efe Cetin <efectn@protonmail.com>

Enable the Mali GPU node on Khadas Edge 2.

Signed-off-by: Muhammed Efe Cetin <efectn@protonmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
index ea085abb98ec..dbddfc3bb464 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
@@ -176,6 +176,11 @@ &combphy2_psu {
 	status = "okay";
 };
 
+&gpu {
+	mali-supply = <&vdd_gpu_s0>;
+	status = "okay";
+};
+
 &i2c0 {
 	pinctrl-names = "default";
 	pinctrl-0 = <&i2c0m2_xfer>;
-- 
2.44.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
