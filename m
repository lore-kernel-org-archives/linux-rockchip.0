Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37C11EB64DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 06:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=G4LparfCyT/kkn665WDMxkjab8kpN1LwpAbWsRjtj/I=; b=THITuDhibK90B6
	G+SBvAXZGk/5cB/3NS0fF307szBh9M15g5JuJ40s09vzTqbwm14l3HoPbApZN4ZHZFrwexS/nxVmk
	qu6Omab1Ze1hL50yrNARZVwr6N3tUrYS/QqlarwxywykSzjk3rUFnWMH9hSk9jVeZFvamzCULpLwu
	wpQKzk3dJ98hU4FZ9dlTjoPclOPcefn6ogDknKZGiSC0PLx+7VoH5+DnDqEFF+oRn2d8hAr6RzAzu
	vijLUYmO2jjRHWsTDSBn52ew8MughzLu+vyPfHRX01Z7YjMYAZXdV1/vo+zE+POSqX53v5bVwZ1ET
	da/sF9Xx5BB7NVQo9kpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBV9S-00AIcD-2P;
	Tue, 20 Jun 2023 06:47:42 +0000
Received: from s.wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBV9P-00AIZK-1R
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jun 2023 06:47:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:mime-version:to:cc:content-transfer-encoding:
	content-type:cc:content-type:from:subject:to;
	s=s1; bh=/OiFg9zrUL7FLkxH5IitcBTJNO1C0qlvkkDfhUrYB7E=;
	b=OSZ64m+wuJFPFHqsz+9OOHnUMY4g9X4S6PuFLitLVqb3QIK47vi/CVlp/2/Ip6BRgW7S
	rfF4R+6I83EwBwvit78rji+e0k0wojC2PqiBNEASIcvT32oOdLlA75q0t43Wh6CF5FxycN
	s/jY6zDsS3q29oaNqqm4cQAxn2tnV2eNNSuWoPnBUUkm7jMiSo+5rPX17EwGFlDvHKrsOH
	Iwm+aA4z10w0VaBrb8mRPWTpmWiy2chcmI6oQ/nBUI0H/CAk+WzdXJIMwfd1ZaCd0Y9gf0
	Q07Q1ObxtXy+5zT7Szu5tsBTL04cvGOAIGqedaH5Go2antUvLrSHQP0I41jzpqAQ==
Received: by filterdrecv-8684c58db7-wf85l with SMTP id filterdrecv-8684c58db7-wf85l-1-64914B87-1
        2023-06-20 06:47:35.167912827 +0000 UTC m=+3481761.974497447
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5 (SG)
	with ESMTP
	id PBMypHKAT3KFA1SgmOnoHA
	Tue, 20 Jun 2023 06:47:34.794 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 0/4] drm/rockchip: Fix crtc duplicate state and crtc reset
 funcs
Date: Tue, 20 Jun 2023 06:47:35 +0000 (UTC)
Message-ID: <20230620064732.1525594-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hyjMKERdf95KMPdLE?=
 =?us-ascii?Q?AIYz=2F9=2FCZufW1gBVLLc0p++89OiAC6+VYSCZLnn?=
 =?us-ascii?Q?0MwskFyyqsX3ZLfdoaTVik4Smb7c9wfGnhpQQtF?=
 =?us-ascii?Q?4VsHRWnZtJ2hkmegEcQWmXL6bBnE3UMzllTBxxx?=
 =?us-ascii?Q?G=2FzkObbA5f23hwgrssfTVRM76Uh5Qy915fV5aAT?=
 =?us-ascii?Q?I9WIeLjmCTkFDp9cznlgw=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Mark Yao <markyao0591@gmail.com>, Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_234740_254515_BFDE2121 
X-CRM114-Status: UNSURE (   8.08  )
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

This series fixes a reset of state in duplicate state crtc funcs for VOP
driver, a possible crash and ensure crtc reset helper is called in VOP2
driver.

Patch 1 use kmemdup instead of kzalloc to duplicate the crtc state.
Patch 2 change to use crtc and plane cleanup helpers directly.
Patch 3 adds a crash guard for empty crtc state.
Patch 4 adds a missing call to crtc reset helper.

This is the next part of an ongoing effort to upstream HDMI 2.0 support
used in LibreELEC for the past 3+ years.

This series is also available at [1].

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20230619-duplicate-state

Jonas Karlman (4):
  drm/rockchip: vop: Fix crtc duplicate state
  drm/rockchip: vop: User cleanup helpers directly as destroy ops
  drm/rockchip: vop2: Don't crash for invalid duplicate_state
  drm/rockchip: vop2: Add missing call to crtc reset helper

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c  | 19 +++--------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 36 +++++++++-----------
 2 files changed, 21 insertions(+), 34 deletions(-)

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
