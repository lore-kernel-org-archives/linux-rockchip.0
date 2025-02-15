Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 044AFC021A0
	for <linux-rockchip@archiver.kernel.org>; Sat, 15 Feb 2025 21:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsffL5WxfCdxcJXNng0I3SrkXNLEoRjwCSA4BuzPuVA=; b=4u0fkJ/Oy5yTUP
	kaI1I37n0WsFkiBF0HpGWvMa0ds9wVKbSRA7/iZO7+gI81AVTM2GndjRwawPvn1EP4Y7nFzbX3K76
	6WOHzh21cghbZcpFwVBOFHcm2tyIbiGfNhskhGG3jccxWIxiUBSCgDRr2sOXy8DntQumrsJHfr1sp
	YSrcZfZ11IAIgQQyACXreWfY6O8b/IKPEg6bMrTA3HwymVqc9eaeqlTJsJuOhvUGYQdJz3i8+Oin0
	fHyxhUXw5jtmTfm0sHU3dltPUnFgcZNZj9jKFk0mCk22FHWke/t59Wlp1NFqlR2GLWBA0MxrpFFfQ
	UzcQOt8+nWvBB34nhv+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjPMJ-00000000kd2-2aIB;
	Sat, 15 Feb 2025 21:05:55 +0000
Received: from sender3-pp-f112.zoho.com ([136.143.184.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjPMG-00000000kbi-3zR1
	for linux-rockchip@lists.infradead.org;
	Sat, 15 Feb 2025 21:05:54 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1739653537; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=TK31rQlDQcvJ+gCBMtaFWixiwKEqNPhHfhwlShpcdPAHDdkfe6J8GlALL1XBsKUUxc1/aHxXmIbwtRxLDAY6Av6DjLl0Ajx/eVFtWW12WUT0h4RZB+8iRk7xSag6ab/SYnXJlqMuiQ+7iomoKVuHoRd66fw/SDB3gv6m0fDo2Qg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1739653537; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=v6XdBeWdF3ROCU+Lkd505Ci9024pYHmhBHgplZExxHU=; 
	b=ICBxfWfA0y6u/OzIVrqbedtr7Mx48wTz/G+WxpoGy5QzSrd3953WKDuWl3SFpgDM9uo+ExMmPzmywcwxF22YGh8kx6y9P7P1IkqXGcgzR/vsSAC9Hv9j+mMMVFsVLZv+fqWAxpGIQxvsD9nL8LY1AHt0vjXoZmHaHt3xN3ZAHZk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1739653537;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=v6XdBeWdF3ROCU+Lkd505Ci9024pYHmhBHgplZExxHU=;
	b=K6h45jE2roxt0u1qD1BYZ4KQvs/SV93g1V1kVwg7Z/j/ObWaxMUVErytjlglHF3n
	WOEVIBwhiXdcSL6PFU0f9OI+Zr9gIwAp4sW9J/2H1KwcQ90yGOc3JnUvrjcc8dr6nMl
	IW6ZFjVGDFV1Pp66o9+62IhxoxcmtwTGV6gnta2o=
Received: by mx.zohomail.com with SMTPS id 1739653536055263.24103824599933;
	Sat, 15 Feb 2025 13:05:36 -0800 (PST)
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
	Tim Surber <me@timsurber.de>
Subject: [PATCH v6 5/6] arm64: defconfig: Enable Synopsys HDMI receiver
Date: Sun, 16 Feb 2025 00:04:16 +0300
Message-ID: <20250215210417.60074-6-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250215210417.60074-1-dmitry.osipenko@collabora.com>
References: <20250215210417.60074-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250215_130553_030798_0A09CAC4 
X-CRM114-Status: UNSURE (   7.84  )
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

The Rockchip RK3588 has a built-in HDMI receiver block from
Synopsys. Let's enable the driver for it.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index cb7da4415599..6ed1ad3c0055 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -859,6 +859,7 @@ CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
 CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
 CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
 CONFIG_VIDEO_SUN6I_CSI=m
+CONFIG_VIDEO_SYNOPSYS_HDMIRX=m
 CONFIG_VIDEO_TI_J721E_CSI2RX=m
 CONFIG_VIDEO_HANTRO=m
 CONFIG_VIDEO_IMX219=m
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
