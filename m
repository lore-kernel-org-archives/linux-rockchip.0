Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9FEB7C30653
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jul 2024 19:20:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lo27kE1jsf5JgQvmHZbpwGgsPkAsOu05KuSvFrMIL30=; b=XeVgyf0uciGITe
	r06uT24bOM2G2Y1cmXJisqran/0iYyKJ25ty3RNa7j33YAQxHBSWfXLa6FskXLIYcVHPMhCJF9MQQ
	ehr3PHfrlVWrdH6h4dZMEoZ7O6L/9zNOEUVgqAr6n6oM/NRBPXE9htTmioSK1d2h4coO7z/hWqPz/
	j3vEuZYVb1qNowcYndzqIczTN+FDvhPof+UUMSYRUhx3I3LQ2Yf1Tn4VIKnW5jJTRHIPItI2FVWMD
	cFhKdswJDrWpHsautn9cx4eab/0GCSlzQV1rKeinh6FHR7xeRc24JhVLrJkArNB8UaqaVstTmxR5m
	+PEhNxkV64JVmXYFuVrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPS04-0000000EG1L-0lhH;
	Thu, 04 Jul 2024 19:20:12 +0000
Received: from out-183.mta0.migadu.com ([91.218.175.183])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sPRzp-0000000EFyi-3EOj;
	Thu, 04 Jul 2024 19:19:59 +0000
X-Envelope-To: heiko@sntech.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow.org; s=key1;
	t=1720120794;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=12kQGJpaxYXve/bNP2Rvzy67ptC3odJSOf9IDo8D060=;
	b=e5yZkCE9Ici3nvB7wz3sGd0TYcyIk2C3zY2FsiTaZiC9RFqNZwenUU0Pi0C9dQCkiaQLVx
	GthxTDvHEs0RrfGFiKJgkZwiwis9mQTzfH4h2QdHMKZAM+LW44xMIZN9Dl6Bs9nr1l0NN1
	Aqv+tLEuQo0AtZpWbzfI+SqBL7Nb66MQTznoHVT+p3fUyMa3sA65aBn5x6VJHStbpQv5mh
	niIEg3sAHNZQdI/rvMSO2sw04gpwjejRa/iNHmzpANDuSALc4qDbyDPi2QPB4Qlqt6lwKq
	oEgwIVGIxzjV9Mz3qFrIcQczJ+MlRVi8Qx4NHx0JZL5ohtdJXj/PxTNrZtIq6w==
X-Envelope-To: knaerzche@gmail.com
X-Envelope-To: dsimic@manjaro.org
X-Envelope-To: linux-rockchip@lists.infradead.org
X-Envelope-To: devicetree@vger.kernel.org
X-Envelope-To: linux-arm-kernel@lists.infradead.org
X-Envelope-To: linux-kernel@vger.kernel.org
X-Envelope-To: didi.debian@cknow.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
From: Diederik de Haas <didi.debian@cknow.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Alex Bee <knaerzche@gmail.com>,
	Dragan Simic <dsimic@manjaro.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>
Subject: [PATCH] arm64: dts: rockchip: Add avdd supplies to hdmi on rock64
Date: Thu,  4 Jul 2024 21:18:33 +0200
Message-ID: <20240704191919.38856-1-didi.debian@cknow.org>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240704_121958_206654_7232B070 
X-CRM114-Status: UNSURE (   9.93  )
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

Pine64's Rock64 was missing the avdd supply properties on the hdmi node,
causing the following warnings:

  dwhdmi-rockchip ff3c0000.hdmi: supply avdd-0v9 not found, using dummy regulator
  dwhdmi-rockchip ff3c0000.hdmi: supply avdd-1v8 not found, using dummy regulator

In the Rock64 Schematic document version 2.0 those supplies are marked
as DVIDEO_AVDD_1V0 and DVIDEO_AVDD_1V8 respectively, but in version 3.0
those are named HDMI_AVDD_1V0 and HDMI_AVDD_1V8, which is a bit clearer.
In both versions those are connected to LDO3 and LDO1 respectively.

While the DeviceTree property is named 'avdd-0v9-supply' the
'rockchip,dw-hdmi.yaml' binding document notes the following:

  A 0.9V supply that powers up the SoC internal circuitry. The actual
  pin name varies between the different SoCs and is usually
  HDMI_TX_AVDD_0V9 or sometimes HDMI_AVDD_1V0.

So the 'vdd_10' reference is not an error.

Signed-off-by: Diederik de Haas <didi.debian@cknow.org>
---
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
index 229fe9da9c2d..90fef766f3ae 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-rock64.dts
@@ -154,6 +154,8 @@ &gmac2io {
 };
 
 &hdmi {
+	avdd-0v9-supply = <&vdd_10>;
+	avdd-1v8-supply = <&vcc_18>;
 	status = "okay";
 };
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
