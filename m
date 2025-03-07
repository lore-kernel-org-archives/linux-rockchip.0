Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DECCEC19F32
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 09:24:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZPkRE0T8X9lO7D8fpadC2Ry61Oh2VtFD1AoLgWAkAiU=; b=E8BnXaSA7ZmK9s
	OuBmevj6n1PFxHaE/TiNha7Ofp6tqiKH7/qk69bKYPgsgyi34khiLX3iwfnUES4nXaV4BgGhLooox
	npzLav/D3fVgaB6myRmnBMiAgmI2mJmRcIUCbvxQhWG5tkWgpsNnMcLIm8YU42zk42/gygKOHjimw
	jxFatJBH+bz0gX1euFG6m60/3+Q+ScgN1t9q7a2JApNOUBqP1EojPfuuu6G8lu1BEbNz94swCx81t
	PgmHKXlSDKFWzSMkOaXC1NCTMj5Ni0fFoLIA4WYtL6w7I6uVOCaUgINWfN9UwJX8OyhKKusubToP8
	snvesdruHGN4KXNaHRXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqTwp-0000000DhkG-2rfw;
	Fri, 07 Mar 2025 09:24:51 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqTuN-0000000DhGj-332Z
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 09:22:20 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741339329; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Y5374y2wA258tjYrBfxl6aKXWd0geSJuM/buyfdqp5Mln6e6g8L3cWfTVZEHl7lmhf2sJD81yCB+ycgmIO9jx/MbT3Q5uQplRcmVPOJaq7mSHdsd8ztZNjoZTWdJtt0VqtsMcPf/aqsn6WJwpQuP+gNzcGNOO13LAvC++/RDZD8=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741339329; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=TUsHy9uRDl2OIKrdZbuHC8Lrx8G+Tx5xIuuGpSk8lqo=; 
	b=FGCfzyP/861bMEa+B6uguhqqJy92WrPfCfjpV6SHKHlRa7i+sC40Jyk7HwEuDrG1HrvYYPvFKXQbPb1UQnZ4kEDZaZI37hZFpLiLQFZbImVnnqY/M73psY9EHKF1OTsaaIK7IVJwA6nFV7GpwWrW5UPqfi7gnBvHmuNfBelj+QQ=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741339329;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=TUsHy9uRDl2OIKrdZbuHC8Lrx8G+Tx5xIuuGpSk8lqo=;
	b=fFtXPVvzfYP/iRf2zkLDTFsPJWPTxBmSAqkzQDugGPqh/dadTRhc9p8vjn8AYXIm
	5mP84Lfs3l9H2TU2xyo5xq58WACBajvOh/VgUC5wvJvM/i1OWTlRKMarEuEC4kFlCQ0
	eX8jVP0d0xOvxVP3rTYtjfoU+bhWWgqEi4Yst4kY=
Received: by mx.zohomail.com with SMTPS id 1741339326900299.3151948531463;
	Fri, 7 Mar 2025 01:22:06 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Tim Surber <me@timsurber.de>
Subject: [PATCH v1] media: platform: synopsys: hdmirx: Fix compilation on 32bit arches
Date: Fri,  7 Mar 2025 12:21:13 +0300
Message-ID: <20250307092113.646831-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_012219_826110_5EF55F08 
X-CRM114-Status: GOOD (  10.36  )
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

The pixelclock is specified as 64bit integer and for this driver it
won't be above 600MHz. Fix the 64bit division of the pixclock for 32bit
kernel builds.

Reported-by: kernel test robot <lkp@intel.com>
Closes: https://lore.kernel.org/oe-kbuild-all/202503070743.WnRxStlk-lkp@intel.com/
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
index 4d42da7255f3..7e342bbde967 100644
--- a/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
+++ b/drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c
@@ -291,7 +291,7 @@ static void hdmirx_get_timings(struct snps_hdmirx_dev *hdmirx_dev,
 	hfp = htotal - hact - hs - hbp;
 	vfp = vtotal - vact - vs - vbp;
 
-	fps = (bt->pixelclock + (htotal * vtotal) / 2) / (htotal * vtotal);
+	fps = ((u32)bt->pixelclock + (htotal * vtotal) / 2) / (htotal * vtotal);
 	bt->width = hact;
 	bt->height = vact;
 	bt->hfrontporch = hfp;
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
