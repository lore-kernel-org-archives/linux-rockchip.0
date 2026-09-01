Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6FF57C624D0
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Sep 2026 18:50:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FeeUiQGoGeTWbMUh39MRGeL/JezGH3ji09SzprlB+VU=; b=scKX7lDyqO9aii
	265LKu6HkaIsfgBQhocN5yWQuKN+St/P8l58inna/8zukZB20H0r3DXRFGhfmrDwjGS0J5YRW3fDI
	ob4tk9Xvtm3khzGEsNJHNgbhSm1HNndBbcYtWW3JR5Ic006Xl378TFW8/O+gbkQR0c+fJs7YQF955
	BzSwf12JuktbLK9ymYi/rVgVF31Epm38OvaOPgJwdw16g90rb/MpPxsrAYlueuDiRIfHJ8ZQK4vsC
	bbde4n8N3Iy2JSEFdMZlwGkxAs7wvGQmQgMMvZ+VS0hIzCSw+h8/Ry9w0hVcb8Ou6x1UKKMAo43jC
	ADLkXEu2KGSvqGbbmmcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZK-0000000D0di-0MtG;
	Tue, 01 Sep 2026 18:50:50 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x1TZH-0000000D0ZG-1ktD;
	Tue, 01 Sep 2026 18:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1788288642;
	bh=D/Mo27GDMqgDFGKu/PHByp3WOMc3rGEVU+1xPyeAtoA=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=psmJeAhG2lZAj1EtlnfR3XkGPbuiIBJAEoCGN4pfr0fT4GD5tMjrkQxXaWjHQ00vq
	 BHrLPEX3QB+llscfburDRtokNhg2UhwcIEI9G+Lj5qtGL5O4TM21avp2NxioiRP5Rm
	 MJlugQSASkZMzBq0SPC4KxolByw7/Aglg48UFdikPVLLXE4NfkZJrjV3rl23336six
	 3WncrTmoCyb2a9bWbHpD+UpEQcF2LjTfz3VHF0WlK5lWwe6pBqCfle4lfn0d231z4o
	 YuU81h15Xzn4vhvqjMgZTimxlQaCmEpxOv4vIe1l1SWQwErzXWOes5HHff9PA7Ju5X
	 r2E4OTp01LBhQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CC02917E0260;
	Tue, 01 Sep 2026 20:50:41 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 01 Sep 2026 21:50:25 +0300
Subject: [PATCH v11 01/74] video/hdmi: Introduce HDMI version enum
MIME-Version: 1.0
Message-Id: <20260901-dw-hdmi-qp-scramb-v11-1-bc12954a0688@collabora.com>
References: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
In-Reply-To: <20260901-dw-hdmi-qp-scramb-v11-0-bc12954a0688@collabora.com>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Dave Stevenson <dave.stevenson@raspberrypi.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Luca Ceresoli <luca.ceresoli@bootlin.com>, Chen-Yu Tsai <wens@kernel.org>, 
 Samuel Holland <samuel@sholland.org>, 
 =?utf-8?q?Ma=C3=ADra_Canal?= <mcanal@igalia.com>, 
 Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, 
 Raphael Gallais-Pou <rgallaispou@gmail.com>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Algea Cao <algea.cao@rock-chips.com>, 
 Daniel Stone <daniels@collabora.com>, Liu Ying <victor.liu@nxp.com>, 
 Phong LE <ple@baylibre.com>, Helge Deller <deller@gmx.de>
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org, 
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
 linux-sunxi@lists.linux.dev, linux-rockchip@lists.infradead.org, 
 linux-fbdev@vger.kernel.org, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260901_115047_624825_8D633987 
X-CRM114-Status: UNSURE (   8.93  )
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

Add an enum to represent HDMI specification versions.  This will be used
by upcoming changes to associate HDMI connectors and bridges with a
maximum supported version and to simplify handling of version-dependent
features.

Reviewed-by: Maxime Ripard <mripard@kernel.org>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 include/linux/hdmi.h | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/include/linux/hdmi.h b/include/linux/hdmi.h
index 8dab78e1f61b..b80a5ee63bb2 100644
--- a/include/linux/hdmi.h
+++ b/include/linux/hdmi.h
@@ -27,6 +27,18 @@
 #include <linux/types.h>
 #include <linux/device.h>
 
+enum hdmi_version {
+	HDMI_VERSION_UNKNOWN,
+	HDMI_VERSION_1_0,
+	HDMI_VERSION_1_1,
+	HDMI_VERSION_1_2,
+	HDMI_VERSION_1_3,
+	HDMI_VERSION_1_4,
+	HDMI_VERSION_2_0,
+	HDMI_VERSION_2_1,
+	HDMI_VERSION_2_2,
+};
+
 enum hdmi_packet_type {
 	HDMI_PACKET_TYPE_NULL = 0x00,
 	HDMI_PACKET_TYPE_AUDIO_CLOCK_REGEN = 0x01,

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
