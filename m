Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78483C02192
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Feb 2025 17:25:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N5gcgiykHnEUm3V1qj0YJDT+zF5cNub68YRlteZcZ0E=; b=qevSRtQZJj7+Ws
	WxmiIK7FaXuHtJD0PTGaTMQ/XZ0MUS76Iy94k74FQ3DB4/UOdiLNgdZXvYcNYAebJDFb/AO57M5Jb
	VlS6y3mawGfsAvUpbjbvRzD9JUrnZApTMfScH/XtOov35EB4vj9tHgXAHus6pIfVvuV84e94KGwME
	483SkLL1YT+y9ESunY/YhG5DiEThtHBOWrsQW/4ru2eUivPQqK6SFSQMYwGk3BLUKgVgjEAaOMyzG
	i99VAW1H0lYzWQgTZkAhMnZ6s/ZdSJXkTgmfVIPrv1i0EDthrEyDLm/U3YFSOv8jOQgZhCgi6QAn2
	sNnKRWezlcau4L4ifyWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tf0C1-0000000G8Q8-0nMh;
	Mon, 03 Feb 2025 17:25:05 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tf06u-0000000G7BD-3Gv7;
	Mon, 03 Feb 2025 17:19:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1738603186;
	bh=sX9Hi4YxY4bBH/BFRBxWiGviGy+3yNXN+SWo1wqDHKY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=l3c4ZSy1N3Z9UfC1XawNz6Ce8IOjFnrMOQiZPHC+WLF40+OdCV2hO5w2/eOMeL+1f
	 //dDp1QxxTQLDm+vWRT9HFLwvySzHlcfeFeftbLEn1zAHaFsUcEX0oHBAOlwzqq0qu
	 +uLxuzJAlbeB8rH60ZtWc+Q67mk1w+9gW2OMZh4118FeRFZNfy/XSRWwHsbT4CNyV8
	 Xn04B1xINICllt9LUFr9AcQ7QmYg4V8wbN0bMXz+O7V6F42WYd1z58OsgugMoJs7bX
	 BFwW6DSdwaRPuR+vdWF7VE0vU3RjQkD5GHzlnCjH08kYHcjcw9Vo67HG525OIs3bUF
	 Vew/AUe5ZVTFA==
Received: from earth.mtl.collabora.ca (mtl.collabora.ca [66.171.169.34])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CC2EB17E1511;
	Mon,  3 Feb 2025 18:19:42 +0100 (CET)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 3/3] arm64: dts: rockchip: Enable HDMI0 audio output for Rock 5B
Date: Mon,  3 Feb 2025 12:16:33 -0500
Message-ID: <20250203171925.126309-4-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250203171925.126309-1-detlev.casanova@collabora.com>
References: <20250203171925.126309-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250203_091948_960925_BD70AA65 
X-CRM114-Status: UNSURE (   9.80  )
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
Cc: Algea Cao <algea.cao@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>, Geert Uytterhoeven <geert+renesas@glider.be>, Quentin Schulz <quentin.schulz@cherry.de>, Kever Yang <kever.yang@rock-chips.com>, dri-devel@lists.freedesktop.org, Niklas Cassel <cassel@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Andrzej Hajda <andrzej.hajda@intel.com>, kernel@collabora.com, David Airlie <airlied@gmail.com>, Dragan Simic <dsimic@manjaro.org>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, Detlev Casanova <detlev.casanova@collabora.com>, Robert Foss <rfoss@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Jernej Skrabec <jernej.skrabec@gmail.com>, Sugar Zhang <sugar.zhang@rock-chips.com>, linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>, FUKAUMI Naoki <naoki@radxa.com>, devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Johan Jonker <jbx6244@gmail.com>, linux-arm-kernel@lists.infradead.org, Neil Armstrong <neil.armstrong@linaro.org>, Jianfeng Liu <liujianfeng1994@gmail.com>, Alexey Charkov <alchark@gmail.com>, Thomas Zimmermann <tzimmermann@suse.de>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

HDMI audio is available on the Rock 5B HDMI TX port.
Enable it.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
index d597112f1d5b8..88ff5d9db2817 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -204,6 +204,10 @@ &gpu {
 	status = "okay";
 };
 
+&hdmi0_sound {
+	status = "okay";
+};
+
 &hdmi0 {
 	status = "okay";
 };
@@ -318,6 +322,10 @@ i2s0_8ch_p0_0: endpoint {
 	};
 };
 
+&i2s5_8ch {
+	status = "okay";
+};
+
 &package_thermal {
 	polling-delay = <1000>;
 
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
