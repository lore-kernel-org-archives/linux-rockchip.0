Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30E44C021B3
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Feb 2025 17:33:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsffL5WxfCdxcJXNng0I3SrkXNLEoRjwCSA4BuzPuVA=; b=3Unzpt2BQTmWUg
	EQZVKutNrSDGAENGUSXKPi7eT7lGVDo4ChpnMYs3RjVVbe/JGzLLD3bUAJW1M0RUK57AWUNctmj2u
	miKGHhhLay8x/6hj2RWo2JYp3t0YlAJ9J9oWWXyUpKnX+Odjb9sOeMf+vo0vjbFjF6gPZaV63VwAu
	OLhOR1OVujXe41GbC8uqYf+dQdqGjAaUm5RYHCVPrb7Xc0QpHRek/aNGV1J6dh+aEU2nrNlKXB6M8
	CmlLF6nf/622nTuOaf+L7cmWDst4YBHbGqqQGvtT2Dh/lbwYFbihlLxq/mvJdCP3jKpRFjty+E+Ik
	rpSG+McLc2eTMu6tufJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmFr1-0000000BVrt-3LJK;
	Sun, 23 Feb 2025 17:33:23 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmFr0-0000000BVqH-0EGD
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Feb 2025 17:33:23 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740331991; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=GpDUpFYUa9gxPOiUlU6z1KVWLybSFnCFr+6FitWMUYbMHQXODDN/dTmhU9SjrZEKKg/BAa3Os+ITVmYoqSB9d1jrfVfzEEBQx5JPRB+842/P+fTArk17Jcb9X6RYh4LgQmdAW18skW0CcX8736XyPpS8Bj8QgFG3FbVSwVhfSro=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740331991; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=v6XdBeWdF3ROCU+Lkd505Ci9024pYHmhBHgplZExxHU=; 
	b=IRAVXWQUEQpqkDPLTi0vIIS8+q80qud4pbkxyeayBffs0c2tQloBcg2wgbfLw/IXDI8k7p8YMuQAw58X53IkUFhg2pnkDIWDsJFAFlwB5b8w+2qT+SsK4c7wmZM/zBWFeqgmrWX0cHF5IIJdLoK1ksDHS61zmDV0omqxtm/RzYc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740331991;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=v6XdBeWdF3ROCU+Lkd505Ci9024pYHmhBHgplZExxHU=;
	b=WMH3k6MdoOJbifHHTh1XhQPdg2vcQKGPo11Wuf89A/7ygFlADg7FnGfLde8DIQos
	f5Tg2HqyvXKZcvDSuVpeLGGJu6wh+2Io4p/VX58+Y8PM27zvkY1+f6UyKlPwT91OBH9
	sn74+x9sApLmvYMqZAL1pLEPyzARPqrglDpTVKRY=
Received: by mx.zohomail.com with SMTPS id 1740331990357465.19994245620387;
	Sun, 23 Feb 2025 09:33:10 -0800 (PST)
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
Subject: [PATCH v8 5/6] arm64: defconfig: Enable Synopsys HDMI receiver
Date: Sun, 23 Feb 2025 20:30:18 +0300
Message-ID: <20250223173019.303518-6-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250223173019.303518-1-dmitry.osipenko@collabora.com>
References: <20250223173019.303518-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_093322_174370_30DDB3BF 
X-CRM114-Status: UNSURE (   7.60  )
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
