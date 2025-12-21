Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E17AE67495
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Dec 2025 10:47:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xaf4/9g7nwfRnMBvG+C6aNkqjD8uhFGfE6g7b8tjy1o=; b=bNI5G3GZsONLmx
	F1uBJ+faFkl1tFF1rpsSAhPhiMpNhHGTIFhxWop5DhbZsD3I4PwugNtIXv5UxdVYekw/wUvtq7uIC
	ZmtIM9WFrupXcCgfjvwvCDrWq12fHeydDi0LYWA4VgT1H9DYMA3IDg9YfuZP2y4bt1U8tSgYwHKjn
	73gdABAszJvm0mFvl8G3dQcpavKBNxwynscHgj1EJXDD+E2criuOIdhDweAgHx9QvAtg709cBtLYA
	UrR9NVG6rRIUWWM2sgUNKiuF97E6gl0nEhAUYyZKa0FkIS4y28LPKP4C/tNrNUfbNSMlPGEFbU82p
	ToJ6Yc9V79CtWdcZ93AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGy0-0000000CKzg-1Jn6;
	Sun, 21 Dec 2025 10:47:12 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vXGxt-0000000CKty-3bT9;
	Sun, 21 Dec 2025 10:47:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1766314022;
	bh=Z9aStTjQ5oTuRN0GPLQ6iWNOlIGeZuaICw+hagAkRZs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=e/Oze/4D5QeRBg3BHXvISMij0YsDU2wWaO9WOK5yrAxtASFnerasKC4ONsWtucvdC
	 hocuotpVjef4hRnecUrjlGQb0+PlB8jDLFVF3rEK0QaGH4agMTANsSWn9K+WhQEEHl
	 OFuWoWVRVVxBrq/wNHVTY33bGlgm7f8RVO+wswxH4CkFxIvHRu7QFV42QW52CLnBuO
	 /nHVeRcY4gz0aJrrZokDIirXNmD+33QbpQgcMzhSVyebI9fvS9rkKr9tdnhD+Trdo0
	 yuxr4hAzcmIIbTsodNcorfYd8sqPv28IamtuZIXg9iT6zS+XoGmQBZWEjaxZemh9Tb
	 KIsKKbOF1fseA==
Received: from localhost (unknown [82.79.138.145])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 7F32E17E0506;
	Sun, 21 Dec 2025 11:47:02 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Sun, 21 Dec 2025 12:46:48 +0200
Subject: [PATCH v5 01/11] phy: hdmi: Add HDMI 2.1 FRL configuration options
MIME-Version: 1.0
Message-Id: <20251221-phy-hdptx-frl-v5-1-dac390a780be@collabora.com>
References: <20251221-phy-hdptx-frl-v5-0-dac390a780be@collabora.com>
In-Reply-To: <20251221-phy-hdptx-frl-v5-0-dac390a780be@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251221_024706_074493_CF40949F 
X-CRM114-Status: GOOD (  11.47  )
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

The HDMI 2.1 specification introduced the Fixed Rate Link (FRL) mode,
aiming to replace the older Transition-Minimized Differential Signaling
(TMDS) mode used in previous HDMI versions to support much higher
bandwidths (up to 48 Gbps) for modern video and audio formats.

FRL has been designed to support ultra high resolution formats at high
refresh rates like 8K@60Hz or 4K@120Hz, and eliminates the need for
dynamic bandwidth adjustments, which reduces latency.  It operates with
3 or 4 lanes at different link rates: 3Gbps, 6Gbps, 8Gbps, 10Gbps or
12Gbps.

Add support for configuring the FRL mode for HDMI PHYs.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 include/linux/phy/phy-hdmi.h | 19 +++++++++++++++++--
 1 file changed, 17 insertions(+), 2 deletions(-)

diff --git a/include/linux/phy/phy-hdmi.h b/include/linux/phy/phy-hdmi.h
index f0ec963c6e84..d4cf4430ee8f 100644
--- a/include/linux/phy/phy-hdmi.h
+++ b/include/linux/phy/phy-hdmi.h
@@ -6,16 +6,31 @@
 #ifndef __PHY_HDMI_H_
 #define __PHY_HDMI_H_
 
+#include <linux/types.h>
+
+enum phy_hdmi_mode {
+	PHY_HDMI_MODE_TMDS,
+	PHY_HDMI_MODE_FRL,
+};
+
 /**
  * struct phy_configure_opts_hdmi - HDMI configuration set
- * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
  * @bpc: Bits per color channel.
+ * @tmds_char_rate: HDMI TMDS Character Rate in Hertz.
+ * @frl.rate_per_lane: HDMI FRL Rate per Lane in Gbps.
+ * @frl.lanes: HDMI FRL lanes count.
  *
  * This structure is used to represent the configuration state of a HDMI phy.
  */
 struct phy_configure_opts_hdmi {
-	unsigned long long tmds_char_rate;
 	unsigned int bpc;
+	union {
+		unsigned long long tmds_char_rate;
+		struct {
+			u8 rate_per_lane;
+			u8 lanes;
+		} frl;
+	};
 };
 
 #endif /* __PHY_HDMI_H_ */

-- 
2.51.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
