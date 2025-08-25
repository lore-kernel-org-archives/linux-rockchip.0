Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 98F20CA0FE1
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Aug 2025 08:53:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OQmEEACetEOfe7sAL78rd7L2/ngEPDpILI4SNYK11ZU=; b=J81qySzNYL0d33
	I1wBwN+tHiGo+/8ZfzhD8FXJwARwcwqLMw1AweVbZQ2hPgGKKCYcv6pJ59R0LpCUXpj6sDVFi25cp
	t/yKFA76JB3D/Nx6hTOHXcYuxUPn8OppFv2Te4DEf61hCZPcvlbrWsNpy7RbUobcnGnYagHwVg4sO
	VdivCt2veFfnnk6jORciD7zXGU2VgUdPYQlA4WbilpC0J+Pkvdjg5gIDS2kVb5G3P0aCEDZJnDzcC
	N93kiVetjdaGIdOdMdV3JBBjrMHHV6AJvDRG63VghsZ5zy79PPQ74b4WRZceAr3zH+GDirHQmfc0+
	BS381XvtVFZek6SJpG5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSxA-00000007Ots-2dzF;
	Mon, 25 Aug 2025 08:53:24 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqSch-00000007JdD-44MC;
	Mon, 25 Aug 2025 08:32:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1756110693; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Jd1w6sqw0R1TRuKWh1uViAjTw7IzEcZH/oYyn1krdvVcd/SXIN4E1YKNEXddkWN8PEOXfYz4Z6JXOhcdOQcL/pGgi6Qen+lxDrA2Ggyrb1hxCDvcC2cCgGbCPmglTiIW2DQre22mVr36+jqr3adF6eRLOinr9CSxvJrHVoa2F44=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1756110693; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=QJ81OadlW6/n80ucaDspSyRAxKN2nTg5hfW/ysJcYk4=; 
	b=cxAmk4Wh85EicmaivmFPczStT53eHh6Au/I9cSrqlDUEfDCjuY4JrRsgrnIcgzUWjdW2XqcbOPGABPQDMi3YmK8h1rHZ1FaQGvyx20N1KQLvLp6oATxyUJK6VOCyjc3J0JC8fntK5Krw+U/cxSEZacbzex1dov+mytKCO+htl0E=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1756110693;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=QJ81OadlW6/n80ucaDspSyRAxKN2nTg5hfW/ysJcYk4=;
	b=jFe5ti1ZvUhuN4fHDwws57F+0diMrXHnV8zJZbYEeXL/SGY9xqC+FWamZwASPuYz
	iKyfT/oWUb8KgS6DnEBlPDZ3rSZm01nPEAMzjTEvgUAgLsHdoM7bUqoijut0FioHzhH
	2cODy78CU0LNWjoRW7JIhF0j4yXAX8G0riXQ1ih8=
Received: by mx.zohomail.com with SMTPS id 1756110691356312.5962688792472;
	Mon, 25 Aug 2025 01:31:31 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Mon, 25 Aug 2025 10:28:31 +0200
Subject: [PATCH v3 11/20] drm/rockchip: inno-hdmi: switch to
 FIELD_PREP_WM16 macro
MIME-Version: 1.0
Message-Id: <20250825-byeword-update-v3-11-947b841cdb29@collabora.com>
References: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
In-Reply-To: <20250825-byeword-update-v3-0-947b841cdb29@collabora.com>
To: Yury Norov <yury.norov@gmail.com>, 
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Ulf Hansson <ulf.hansson@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
 Shreeya Patel <shreeya.patel@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 =?utf-8?q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>, 
 Bjorn Helgaas <bhelgaas@google.com>, Chanwoo Choi <cw00.choi@samsung.com>, 
 MyungJoo Ham <myungjoo.ham@samsung.com>, 
 Kyungmin Park <kyungmin.park@samsung.com>, Qin Jian <qinjian@cqplus1.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
 Nick Desaulniers <nick.desaulniers+lkml@gmail.com>, 
 Bill Wendling <morbo@google.com>, Justin Stitt <justinstitt@google.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250825_013216_065163_F73A32FE 
X-CRM114-Status: GOOD (  15.52  )
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
Cc: linux-pm@vger.kernel.org, netdev@vger.kernel.org, llvm@lists.linux.dev, linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org, linux-sound@vger.kernel.org, linux-pci@vger.kernel.org, linux-phy@lists.infradead.org, kernel@collabora.com, linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The era of hand-rolled HIWORD_UPDATE macros is over, at least for those
drivers that use constant masks.

The inno-hdmi driver's own HIWORD_UPDATE macro is instantiated only
twice. Remove it, and replace its uses with FIELD_PREP_WM16. Since
FIELD_PREP_WM16 shifts the value for us, we replace using the mask as
the value by simply using 1 instead.

With the new FIELD_PREP_WM16 macro, we gain better error checking and a
central shared definition.

This has been compile-tested only as I lack hardware this old, but the
change is trivial enough that I am fairly certain it's equivalent.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/gpu/drm/rockchip/inno_hdmi.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/inno_hdmi.c b/drivers/gpu/drm/rockchip/inno_hdmi.c
index 1ab3ad4bde9ea7305021186ea221d2ff9057fdbb..f24827dc1421cf5e0c1be63a80da23d645cf3f24 100644
--- a/drivers/gpu/drm/rockchip/inno_hdmi.c
+++ b/drivers/gpu/drm/rockchip/inno_hdmi.c
@@ -10,6 +10,7 @@
 #include <linux/delay.h>
 #include <linux/err.h>
 #include <linux/hdmi.h>
+#include <linux/hw_bitfield.h>
 #include <linux/mfd/syscon.h>
 #include <linux/mod_devicetable.h>
 #include <linux/module.h>
@@ -382,8 +383,6 @@ enum {
 #define HDMI_CEC_BUSFREETIME_H		0xdd
 #define HDMI_CEC_LOGICADDR		0xde
 
-#define HIWORD_UPDATE(val, mask)	((val) | (mask) << 16)
-
 #define RK3036_GRF_SOC_CON2	0x148
 #define RK3036_HDMI_PHSYNC	BIT(4)
 #define RK3036_HDMI_PVSYNC	BIT(5)
@@ -756,10 +755,10 @@ static int inno_hdmi_config_video_timing(struct inno_hdmi *hdmi,
 	int value, psync;
 
 	if (hdmi->variant->dev_type == RK3036_HDMI) {
-		psync = mode->flags & DRM_MODE_FLAG_PHSYNC ? RK3036_HDMI_PHSYNC : 0;
-		value = HIWORD_UPDATE(psync, RK3036_HDMI_PHSYNC);
-		psync = mode->flags & DRM_MODE_FLAG_PVSYNC ? RK3036_HDMI_PVSYNC : 0;
-		value |= HIWORD_UPDATE(psync, RK3036_HDMI_PVSYNC);
+		psync = mode->flags & DRM_MODE_FLAG_PHSYNC ? 1 : 0;
+		value = FIELD_PREP_WM16(RK3036_HDMI_PHSYNC, psync);
+		psync = mode->flags & DRM_MODE_FLAG_PVSYNC ? 1 : 0;
+		value |= FIELD_PREP_WM16(RK3036_HDMI_PVSYNC, psync);
 		regmap_write(hdmi->grf, RK3036_GRF_SOC_CON2, value);
 	}
 

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
