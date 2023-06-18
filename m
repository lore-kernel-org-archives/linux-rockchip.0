Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8337EEB64D7
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Jun 2023 22:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=moSWUUMiFYo4nSJ3HL8Ri64oHJ/ltKcD+oeOG0SlOxw=; b=x/B1PeYpFPPM+s
	uTk6MBhKG2TMi5RAEU6WU0kOkwbnSsfI4eqqgpq/6WagBIUEBvMYvjUB1JfBM0yZzJHAV4NpMUm/n
	n4YkD5totd/+v5FFZC6I8pXhhvXfQGM7jc0KJe9DgE02y1ME3o0ql/l0L06aV7SUMpAH5RfxDm+zM
	Zx7lyCgsRu4pz5uc0d+gxubK2ISVebga2BWm/gWgzvNipzYHD6QA9q3/GB/KloDwpTp463/gSK0LY
	ED3D3/ogg3pZKuBEpqmw+Ua8qnCPKYcdka31GDecA/m4gNQOMKei3MA5vOdhLesCDl49CKXqw1/0r
	+5txHfnDl5aJeGuf5KyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qB0Si-006nTy-2T;
	Sun, 18 Jun 2023 22:01:32 +0000
Received: from s.wrqvwxzv.outbound-mail.sendgrid.net ([149.72.154.232])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qB0Se-006nSS-2O
	for linux-rockchip@lists.infradead.org;
	Sun, 18 Jun 2023 22:01:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:mime-version:to:cc:content-transfer-encoding:
	content-type:cc:content-type:from:subject:to;
	s=s1; bh=kE3ug1FphWK8w4bAu88BIK2LQbxYxA5TL1gVPHRLq0s=;
	b=I18/eC+ZDPL1HZg9AUC1xf4aOdnDKuDMJNZrPnUxF/B8A44OdIN6YX9Y/GzODreQRsBJ
	q5fe/G5y0H+GJ9SIBrsnX87Gg79I/absjKEwql8LswxWeSJjREH0MtNEOMD3Z1DDOpMhKg
	D7xc4Au6vFseMsLWGbQhARkSavbLUlqRgqq+Hs0b2l0NLaXl9HtnkX9IYcnDNgvzX/2Max
	zhTbxBxVMx8vNt/Cl/SVszvlOsSocZVNqN4G/5wTxhEqULNbKkplpXQ02snOXMlK+R1/Az
	DVUs6Yf2kD5JX2LmIop7PApmABEePgUZcyB6VaWRLmGrIH0ZPweV5Z66/jQ9V1Ww==
Received: by filterdrecv-65f68489c8-zmlx4 with SMTP id filterdrecv-65f68489c8-zmlx4-1-648F7EB4-7C
        2023-06-18 22:01:25.078475909 +0000 UTC m=+3363925.214276436
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5 (SG)
	with ESMTP
	id o9F54kvgToCDS4l4o5-IEA
	Sun, 18 Jun 2023 22:01:24.617 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v4 0/2] drm/rockchip: vop: Add NV15, NV20 and NV30 support
Date: Sun, 18 Jun 2023 22:01:25 +0000 (UTC)
Message-Id: <20230618220122.3911297-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h2uRKfwUrnAuhEShj?=
 =?us-ascii?Q?yRo=2FdCt6XHj=2FoPJvO4UOauxEyTrAKiA2DU4+Gq+?=
 =?us-ascii?Q?lO9RCUbwfLMSCEL+PvsSkAWdCnDGx4nIxNbvQkI?=
 =?us-ascii?Q?I=2FO3oAz7GAlU4PbVHiYiXwtL1GEpqIHawbcba85?=
 =?us-ascii?Q?IJ+y9bXoUNjVNUNNOZ2EdG5mfgEn1YDKAiY6gfZ?=
 =?us-ascii?Q?2jzUKVaI1eQ+Tf8nt0uWw=3D=3D?=
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard
	<mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie
	<airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Sandy Huang
	<hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>
Cc: dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230618_150129_485334_113A166D 
X-CRM114-Status: GOOD (  10.82  )
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

This series add support for displaying 10-bit 4:2:0 and 4:2:2 formats produced
by the Rockchip Video Decoder on RK322X, RK3288, RK3328, RK3368 and RK3399.
Also include 10-bit 4:4:4 support since VOP can support that also.

First patch adds new fourcc 10-bit YUV formats with 4:2:2/4:4:4 sub-sampling.
Second patch adds support for displaying the new fourcc formats.

These patches has been in use by LibreELEC and other distros for the
past 3+ years, hoping they can be merged this time around :-)

Changes in v4:
- Rework RK3328/RK3399 win0/1 data to not affect RK3368

Changes in v3:
- No changes, rebased on next-20230616
- R-B tags was collected

Changes in v2:
- Add NV30 format
- R-B tags was not collected due to NV30 changes

This series is also available at [1].

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20230616-vop-nv15

Jonas Karlman (2):
  drm/fourcc: Add NV20 and NV30 YUV formats
  drm/rockchip: vop: Add NV15, NV20 and NV30 support

 drivers/gpu/drm/drm_fourcc.c                |  8 +++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 29 +++++++++-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h |  1 +
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c | 63 +++++++++++++++++----
 include/uapi/drm/drm_fourcc.h               |  2 +
 5 files changed, 91 insertions(+), 12 deletions(-)

-- 
2.40.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
