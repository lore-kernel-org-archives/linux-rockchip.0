Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B103C021BC
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 10:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsffL5WxfCdxcJXNng0I3SrkXNLEoRjwCSA4BuzPuVA=; b=VkbnjWd+tO0hj9
	AjmEqRR1bZBL9YUSresC9MGTNlG8fwpK5wQ6sHuaP4s/8ShSaQZDDZ6twiUu5ZTwyrQu+ZUB/PWDl
	wAUL118+cyMtsChU0O5l0tGWhbhSERRlwTNsykVrrzVlfY3DdGkFhvBoxrNCYuMQRl0dYW96RWggE
	HAKiqm46h83BNG64T66EWmF2QBEpvW7joF4y+JLc/NRajxq5fOuIwkGaiyVWGuRsOn4DxdFe9+W/g
	bCtZiSTF7nNjvPV/9m9ltD5umHRHe/QiRXwZ2l8Hi8N5wYvcqD/pieYcjXTVXfa9yTnfGSuI9QmZq
	Bqq3v/rp/5v4g9cLKQ9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnF2G-00000003N8V-1xD2;
	Wed, 26 Feb 2025 10:53:04 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnE46-000000039rR-0VX5
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Feb 2025 09:50:55 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740563441; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Ev+78yr/Kk746WNreEsCRCnphL27KZ61nPbp3X+RpFOhKTa9WuJkgmu0A3c1TmTQ5j23jE4+KY1/UcWlXMd6DvZYZq8XjSSsldjRrfE3pcLB5wCLnFBua7WK0vaBjULayldIAJfdwE1hcpj5C7QKHSePk4oTIB69UtJdzD8n/r0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740563441; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=v6XdBeWdF3ROCU+Lkd505Ci9024pYHmhBHgplZExxHU=; 
	b=BG0mb2fGmLpQhSLwtR45bNXmDfERgbAQshGvcGlkeYpR0Qi4EfIz097dQ0jXnN69HcMhKP/vzOv6u4T8u0o+b36DnTn3vPA5tElpJUXSUhDLa60W97CyyIzYgQEiIRgRG8RroqY1HSF8YvI0f2MEqCqiVCzQSGnOBOJJsco3Rz0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740563441;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=v6XdBeWdF3ROCU+Lkd505Ci9024pYHmhBHgplZExxHU=;
	b=R4QiAf2TzzGh9K51crfRKbt9xRytmtcABMy2jxW1egc1LFu7Ce8xXujnkS2y0nWg
	+bkxEv74AsXGacUYS+WwQaTL6M4w62pqk3vFnO5Pem5R0/IlBUwrZBdrXe9K57CDVCV
	uYCxqzhdfJaQGriWvRgjwmc+eoRFhvkui6wgG8l0=
Received: by mx.zohomail.com with SMTPS id 1740563439562957.3742241856492;
	Wed, 26 Feb 2025 01:50:39 -0800 (PST)
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
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH v11 6/6] arm64: defconfig: Enable Synopsys HDMI receiver
Date: Wed, 26 Feb 2025 12:49:46 +0300
Message-ID: <20250226094946.665963-7-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250226094946.665963-1-dmitry.osipenko@collabora.com>
References: <20250226094946.665963-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_015054_216760_C210F7DA 
X-CRM114-Status: UNSURE (   8.33  )
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
