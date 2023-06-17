Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C976EB64DA
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jun 2023 22:23:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Zq2gvsM9/oT+ORJwJt/TdDmp/X/JgBLs35DTMLMKNU=; b=bfOQSqVf8mNDyQ
	hyUtRO21y3MStVKcCac8s1S28ejMAkOdQgrL7ArfsP5aMyVks7Ty2SUZvgdz93s17zr58WFcvGzKs
	xYM1TjPvGAAvXxh5RAYF1KLzCsKIqSBYS04mVMpjRTyoO1yT6kaReXuX9HvmVhUgauoo7lXsmP5Bm
	3A70zs97ERo/SUqo3+4+JeTWiFHGEv/edf6VNR0ymjCH3bLuIP5FoL/Qpjal+sW9v3DxkYk7Kp105
	kMVhl9OJP6F0DJhYMGoCwgMJG9SIN3vZ8VOiBUmelbRw76+4nyDtZ3H7QRQTAqj2fjbAFhac0Xe3j
	kmunMgMmf1su6+xw1n9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qAeKF-004V4m-2d;
	Sat, 17 Jun 2023 22:23:19 +0000
Received: from s.wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qAeKB-004V2b-1U
	for linux-rockchip@lists.infradead.org;
	Sat, 17 Jun 2023 22:23:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:mime-version:to:cc:content-transfer-encoding:
	content-type:cc:content-type:from:subject:to;
	s=s1; bh=3au+Er0OutWjHdL5XNw2ghh/+x9dzcZ5yBxaNAzWCcs=;
	b=Zx6HGT9dW2hdc3fiEyLevza+BIk+osm+szaxPTPjwaWqUEyqNYsWOvAadD3ZpW5es6OT
	G7B/SXlLVa7hlWcFT9I75ei1/2IbjjncwgGk3t5hemCw9fkqb1fHaNn2zKvWd/ZdgxUaGe
	c02AUi72UYORPq0c4KjntfXHM0Xa2bMDadN936xTUWj0ayFzFcEQrOKZPVUDUeu281XLpn
	kEVOXfP2JiZnqiCkFIU8ToJ2bbL6LqbKw5Je7nj6iL5C4zTbpiF/WfRTygUTbqAfhvNLWZ
	gz9OC3Smbr5lV9YDXAfqiNSBQxrNvdddwc0qJUzN+eNGopZaTeOj9M/yJOxEgTUw==
Received: by filterdrecv-66949dbc98-4lpsw with SMTP id filterdrecv-66949dbc98-4lpsw-1-648E324E-8
        2023-06-17 22:23:10.893674033 +0000 UTC m=+3278604.170816701
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-1 (SG)
	with ESMTP
	id UU_EZyFMTgSb0INFqVrbVQ
	Sat, 17 Jun 2023 22:23:10.470 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v3 0/2] drm/rockchip: vop: Add NV15, NV20 and NV30 support
Date: Sat, 17 Jun 2023 22:23:11 +0000 (UTC)
Message-Id: <20230617222307.3145714-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hwz2osmywJU4M0tj7?=
 =?us-ascii?Q?uo2KBjgsske2Ia2ljLgAD00R1w8G2DQk=2FmiOEYJ?=
 =?us-ascii?Q?caybrQsIV3sbFEXe69l57US9Vi5TwOhwWw+9OLi?=
 =?us-ascii?Q?4O9WnOGY3ByRfDafIIaWyUVvXDWUYAc3giAgSBA?=
 =?us-ascii?Q?4V+uPWxMGXV4CmBXLNrUhXnsqnxBZaiNiCRUNRJ?=
 =?us-ascii?Q?71SU7yd3IWlvKd6BNSq0Q=3D=3D?=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
	<airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Sandy Huang
	<hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230617_152316_151948_D7E536C9 
X-CRM114-Status: GOOD (  10.23  )
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

This is a revival of a 3 year old series that never got picked up, see [1].

This series add support for displaying 10-bit 4:2:0 and 4:2:2 formats produced
by the Rockchip Video Decoder on RK322X, RK3288, RK3328, RK3368 and RK3399.
Also include 10-bit 4:4:4 support since VOP can support that also.

First patch adds new fourcc 10-bit YUV formats with 4:2:2/4:4:4 sub-sampling.
Second patch adds support for displaying the new fourcc formats.

These patches has been in use by LibreELEC and other distros for the
past 3+ years, hoping they can be merged this time around :-)

Changes in v3:
- No changes, rebased on next-20230616
- R-B tags was collected

Changes in v2:
- Add NV30 format
- R-B tags was not collected due to NV30 changes

This series is also available at [2].

[1] https://lore.kernel.org/all/20200706223009.1200-1-jonas@kwiboo.se/
[2] https://github.com/Kwiboo/linux-rockchip/commits/next-20230616-vop-nv15

Jonas Karlman (2):
  drm/fourcc: Add NV20 and NV30 YUV formats
  drm/rockchip: vop: Add NV15, NV20 and NV30 support

 drivers/gpu/drm/drm_fourcc.c                |  8 ++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 29 +++++++++++++++++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 32 +++++++++++++++++----
 include/uapi/drm/drm_fourcc.h               |  2 ++
 5 files changed, 64 insertions(+), 8 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
