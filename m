Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31D34C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Aug 2024 21:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r3A4xhIC7IFI9WUeXIta3CFyWmdke3iMBCmXEVpPAMY=; b=a1M8+W+h/rtdea
	CXR7Xo8vEmYNJbNdIrULTXSwa6l3zcYaWw1SzV7XTKjuo4hDF0S8pRVXsi538QiZIeek/VQ6SnDe3
	71MqPBX8KLecwv/GPRk8fY5lSgjr302SOqKpxeHveUaz0rUwm9QhaWdoMEJz5CPI2OzMWNarZsI8g
	Q+TsZUjCxHlK78kkj7FtqZHbRR77lJOMZMxDjeCQyIyaOkDWBfNp/mNbpdQFeASo/nyq+VnjpHVM/
	GvDQQmwZP4m/+FhLdHaGEiDwZA+FgIlRw5slIZ+sX0sR/Qkl1l5A82a6AfNPMHjQygM3yyfzE1x3V
	pGc21iq1SCRHaKIojvnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa09M-0000000ABOZ-3bMi;
	Fri, 02 Aug 2024 21:49:24 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sa05z-0000000AA3W-3AMr;
	Fri, 02 Aug 2024 21:45:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1722635154;
	bh=uvT3dzvWR0w8/HlD0nqMKCFCYJsuy6C0W36k7ko/k7Q=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sHfJhj00PVz457G4VpgLq9dsaQfHiMM9+5zj45iiyD7cfDOlOuZphIZvXhWU7gl8q
	 cx2UckLCPRWCSb6umTrhEog5UcaLM/yHjzg+NNkx/JTMGYhTxD3PxRHkmpqAeTGb/M
	 2WcjoWgWRTdq84gJkKnanNEaxn8MBNYvF2cpBmtRu5xQInYXDicDkKPT1tjnc7vMsn
	 tlSHzEMB/zURYGiY3o3irG+jeY0OJLUpKr6A8CASuwPCkYjkJs7/QU4z/rCpNx0mpF
	 B/G21SAccur35w/eBdQePnk9t0cyEhMHOAAeERB/lSdNRuNKx3xQm2q6Wy8cg7o9rv
	 hkBhezsMbORng==
Received: from trenzalore.hitronhub.home (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id A4B043782220;
	Fri,  2 Aug 2024 21:45:49 +0000 (UTC)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Lee Jones <lee@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Jiri Slaby <jirislaby@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Chris Morgan <macromorgan@hotmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Tim Lunn <tim@feathertop.org>,
	Muhammed Efe Cetin <efectn@protonmail.com>,
	Andy Yan <andyshrk@163.com>,
	Jagan Teki <jagan@edgeble.ai>,
	Dragan Simic <dsimic@manjaro.org>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Ondrej Jirman <megi@xff.cz>,
	Weizhao Ouyang <weizhao.ouyang@arm.com>,
	Alexey Charkov <alchark@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>,
	Elaine Zhang <zhangqing@rock-chips.com>,
	Liang Chen <cl@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-i2c@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-serial@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH 07/10] dt-bindings: soc: rockchip: Add rk3576 syscon compatibles
Date: Fri,  2 Aug 2024 17:45:34 -0400
Message-ID: <20240802214612.434179-8-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240802214612.434179-1-detlev.casanova@collabora.com>
References: <20240802214612.434179-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240802_144555_955240_73EA56CF 
X-CRM114-Status: UNSURE (   8.97  )
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

Add all syscon compatibles for RK3576.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 .../devicetree/bindings/soc/rockchip/grf.yaml    | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index 78c6d5b64138f..4570fa6e67d61 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -20,6 +20,20 @@ properties:
               - rockchip,rk3568-pipe-grf
               - rockchip,rk3568-pipe-phy-grf
               - rockchip,rk3568-usb2phy-grf
+              - rockchip,rk3576-bigcore-grf
+              - rockchip,rk3576-cci-grf
+              - rockchip,rk3576-litcore-grf
+              - rockchip,rk3576-gpu-grf
+              - rockchip,rk3576-npu-grf
+              - rockchip,rk3576-pmu1-grf
+              - rockchip,rk3576-php-grf
+              - rockchip,rk3576-pipe-phy-grf
+              - rockchip,rk3576-sdgmac-grf
+              - rockchip,rk3576-sys-grf
+              - rockchip,rk3576-usb-grf
+              - rockchip,rk3576-usbdpphy-grf
+              - rockchip,rk3576-vo0-grf
+              - rockchip,rk3576-vop-grf
               - rockchip,rk3588-bigcore0-grf
               - rockchip,rk3588-bigcore1-grf
               - rockchip,rk3588-hdptxphy-grf
@@ -58,6 +72,8 @@ properties:
               - rockchip,rk3399-pmugrf
               - rockchip,rk3568-grf
               - rockchip,rk3568-pmugrf
+              - rockchip,rk3576-ioc-grf
+              - rockchip,rk3576-pmu0-grf
               - rockchip,rk3588-usb2phy-grf
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
