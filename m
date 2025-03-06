Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 91847C282DE
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 07:31:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQTrQU7VALdaX2i9UeMKDSDNDiElyJrheBVNVHKw6+8=; b=ukUYKHEBQ/0Swx
	GYETESSBNsMPAzlA66hljEoWZv0L1HygtMC/vqmdZ3QpeXmgCFfAHfyOzp16TcscETfbR7aJkTVQC
	B8wPXahBUpE7DucuStsjti19R2u+6G9m9QYkMbGEo2lCj5/ftZqaEl8uY4KPyf+u0DF117LBA4YH4
	IfiIMBpDJ+hlDVPYpxIeYIa3zjiRjsNq5ZWX1OesEIjW0RNl1X6T5u3gwVQyAdqSBMUOHNFOdVaUj
	9K21VinIN0o6ukoDRAg98YRn+CcMgwyl6zLUEV2NFztb7mnMryEHN+wceit+lJMJM3cDUmYeLbchK
	NMuPwT9aJt/rCfNtAMpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq5h6-0000000ADgw-32LV;
	Thu, 06 Mar 2025 07:31:00 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq5fd-0000000AD5y-30HU
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 07:29:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=/JMA7VJYsngtKi9ltZZXsV2uv0aQI0PgrBwadMgnHyg=; b=WUMDZUpq4GQCw4mW+8MnbR5XN6
	Q9Fb0GNymWtn7OErlkbIMSxvyLTAOvct2z2jddMQNERwp4cwXKhM0S2AIsvRVcbng5HuC881GI3xU
	lW5rNtIsEq8deklWX+/mByoYIlTWYnXMOlnddEPEx3WDRuWy9r0orPGfhUwTkZlUG3DpbPpHrjnpu
	Tc5q7jk6FUZoA48vwnKJ+fn7RyHzC+WsWOcnmsGSb9kgcvZ9EK9AtBL8gdJLDuEZ2JLWqkmWFlXtR
	dX2g+imFL9xMqZc5Y9DNpk6JfaxBMqoMsW6Xnqu041bH9wRgcdsi0GLOyyeq8zUGiwAS7XfGFmY61
	DdyvkeUg==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq5fa-00000000wre-2n56
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 07:29:28 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741246154; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TgAnvuJi/M2EqeVuHtK1NfH2cvlxKjVmptwzugdkJ6iuxw6SYhmyOaVXqrQt9T4F6p7gqr4C8f6p/fIbNnUNQmahWJSpeKTS96s2Z82DcinUPHqMzr8/mp1BiQY5hcVKNJcLfhDK1Fw69jzOuTiH7C0wB/II6KYdy7U3AaYdOd4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741246154; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=/JMA7VJYsngtKi9ltZZXsV2uv0aQI0PgrBwadMgnHyg=; 
	b=BLBiU8Zo+WlYTaxyGz/EyyZlpoBNNIa3kPej7vqP786QdIPE52jsuLZIEcD6+UQhS2AAaE4lEu6UD670W2CWnOlseZj3uld4LN/a1D+/soMA0+Zys86ZDRXXRnatMrTHC8RID97dVd8joh31IwQ9FWsJhjSRgmnvDzExDS3BrrQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741246154;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=/JMA7VJYsngtKi9ltZZXsV2uv0aQI0PgrBwadMgnHyg=;
	b=UHziL/gdK0NhB4hXPA7QNQvowRQ8l+sAW4BA0xTqv9eVLHrFQL34opfalvnjBV8+
	O1lfW1rMPbzxT6MZVn1sOaZEQ08eAS7Yk2n83VEWJOfDBI+uqqTowds78aRxaJrp64u
	60OI//jBMKJM9CUEs3KSOMOO2WlaRoZNRLrIujnM=
Received: by mx.zohomail.com with SMTPS id 1741246151654895.3875454252703;
	Wed, 5 Mar 2025 23:29:11 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Tim Surber <me@timsurber.de>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH v14 2/3] arm64: dts: rockchip: Enable HDMI receiver on rock-5b
Date: Thu,  6 Mar 2025 10:28:41 +0300
Message-ID: <20250306072842.287142-3-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_072927_130016_981B1BCD 
X-CRM114-Status: UNSURE (   9.03  )
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

From: Sebastian Reichel <sebastian.reichel@collabora.com>

The Rock 5B has a Micro HDMI port, which can be used for receiving
HDMI data. This enables support for it.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 .../arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d597112f1d5b..377824e69e20 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -220,6 +220,18 @@ hdmi0_out_con: endpoint {
 	};
 };
 
+&hdmi_receiver_cma {
+	status = "okay";
+};
+
+&hdmi_receiver {
+	status = "okay";
+	hpd-gpios = <&gpio1 RK_PC6 GPIO_ACTIVE_LOW>;
+	pinctrl-0 = <&hdmim1_rx_cec &hdmim1_rx_hpdin &hdmim1_rx_scl &hdmim1_rx_sda &hdmirx_hpd>;
+	pinctrl-names = "default";
+	memory-region = <&hdmi_receiver_cma>;
+};
+
 &hdptxphy_hdmi0 {
 	status = "okay";
 };
@@ -377,6 +389,12 @@ &pcie3x4 {
 };
 
 &pinctrl {
+	hdmirx {
+		hdmirx_hpd: hdmirx-5v-detection {
+			rockchip,pins = <1 RK_PC6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
 	hym8563 {
 		hym8563_int: hym8563-int {
 			rockchip,pins = <0 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
