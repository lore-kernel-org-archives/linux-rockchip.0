Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 76B97C28B23
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 07:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DRCIlgXrXKXQbLq5HoeuI6cTRQek6EpGbPnCh3p50UQ=; b=E7PTm9/ous5U+C
	V/xHcVE7mbUEjIVw/WrC4gcMnwbtCqYIpnKG3yimDPA6QK3ivW79EQg77jOR6PWTp2Y8TtegxJ3yA
	NRwetBtHwEs7qRuu3WZG+yCdS713XoMhMVLZv7uzrdbXJXwfNu9P0/PMfhS9nW6ZdyfQrnZEeY4c3
	cK2ZpKrNm3q8J7t2dmX4Yq7TqEUbPLtQH2G1uloIONsSpGLK0uM4CkskhnkmK2qi7ECZrWgwPHzsy
	tq/XeI7AG2O0VFVTXk8oDll6/RACfe0+XcKScxVdChf7qLpyxgM4HvOcDybvsWcAp+7A9AwlkUH2u
	jK1qD/U90Unkk0WfctWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq5h7-0000000ADhO-0vST;
	Thu, 06 Mar 2025 07:31:01 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq5fd-0000000AD6B-1mfy
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 07:29:30 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741246158; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=S6RPMVYmy/Qw9F6UGyDXSs/VMOOB/K+eF2TOecjgEf0Qk7Ups7EeAjSZ4JbCgBnUEob4vkz4rIyz+uiIdinO4pEIg7R1yNlRmyXtXuG1VSEFlJ2OjhkSwjdfWbpaP4A0APJXu0AkCwKHgnsvcYX5AF+PEsXN75h1rSf6BFR/eB8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741246158; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=iI9QyKLTcC52KVJngweEmRM9LcClnJU3duGST99I7gM=; 
	b=TosL55wKSQxg4oAlbVSh46gsp/BnEqQbC8REx9BQDsze7hu/vmrU4/iXccTsRr9B6rSLfgBPaj7ZRueaxowTifvMH3bzUPe27pe7fmD4XPNGATdo81I0zM3CAOtMWsN/RJLp+6SluNFz7F1MntrAf64ADD0PjuQ+hyju8BZQAKc=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741246158;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=iI9QyKLTcC52KVJngweEmRM9LcClnJU3duGST99I7gM=;
	b=GnP20AHnYP+YMkKJdagDWx1uwzLhRmiXWWkFVk8xIZPoUxCH9hOIUHxvn0SJEO1G
	2Kt8J0pjrhBYYkNOdZ6NKtt2M4ihv7R/g1MgjWi5BKwmPI99D1Sd+AMRT0fRU4rvnAv
	HquINqF/6L7ygDwKkPIN1uW3S6g0uGZzUsnelBmw=
Received: by mx.zohomail.com with SMTPS id 1741246156773280.09310322361534;
	Wed, 5 Mar 2025 23:29:16 -0800 (PST)
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
Subject: [PATCH v14 3/3] arm64: defconfig: Enable Synopsys HDMI receiver
Date: Thu,  6 Mar 2025 10:28:42 +0300
Message-ID: <20250306072842.287142-4-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_232929_522258_C0D688BB 
X-CRM114-Status: UNSURE (   8.18  )
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

Acked-by: Hans Verkuil <hverkuil@xs4all.nl>
Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 arch/arm64/configs/defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index cb7da4415599..3dccc9e1c4aa 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -859,6 +859,8 @@ CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
 CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
 CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
 CONFIG_VIDEO_SUN6I_CSI=m
+CONFIG_VIDEO_SYNOPSYS_HDMIRX=m
+CONFIG_VIDEO_SYNOPSYS_HDMIRX_LOAD_DEFAULT_EDID=y
 CONFIG_VIDEO_TI_J721E_CSI2RX=m
 CONFIG_VIDEO_HANTRO=m
 CONFIG_VIDEO_IMX219=m
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
