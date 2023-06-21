Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09F5FEB64DD
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Jun 2023 22:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-ID:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ktAj4+AMew5GE/IIgrcbADGrj8N1jcWeweBLgLZLBew=; b=VhVAC2E48Fdzsk
	hgfASyuPayVz0j9Dk3OwikZNFzctlsCOKHI1ViU+u1x3ZHSn9DY1rTfLLQFPdNGGuVEftidsBwvOE
	at2MbUCTl8aSpzY6ir5iOx5lKtu+3ZhylJ8hspr4KWQdnfP7uRxDg0N5dyy8nc1D4f4gSJsqPxxb6
	rDqr5/rMN8VOLDPNeS+hBE6kgj7qVZOAYzs4wDF2znuUFB7oCF/E0d+7Qyy63rE3uSBoHrLmWs36S
	G/Xdz13OhP+/slBxnHn7DsX4sa8L+LXeVkaIdUtvCKVAq51rvJd6iYwipw/GUlbNHwZW0skNbAX5x
	QxuiCE8WCWorMmzd68eA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6OE-00FvFf-1p;
	Wed, 21 Jun 2023 22:33:26 +0000
Received: from s.wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qC6OA-00FvBF-1X
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Jun 2023 22:33:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:mime-version:to:cc:content-transfer-encoding:
	content-type:cc:content-type:from:subject:to;
	s=s1; bh=Pv1U1EEqpR4gm7kxbWZCerK7wt2q95EyqJhSl+womJE=;
	b=FkXsUOsXaFkwZrliDf9C2YwjNTIUEVvciEnSKJ9DTDBt+k27cbXeShchjqIG62qoBEXH
	b0W+UdYOsXPSNmZl5/Pa8sDZfJN5aeForP98D+/3H6KELBuaDRZL2xHCv6G3oK6M/dQmyK
	AMXMyqWZr86H/epaKAB4V5YO6jAJtDnPWYeG4EX3ygxWvztz3IhdGcfbov+QuCNbGM+LFl
	lFhpBrEdkWwITScZKCVx/GAr3/k1aFutWnpGJzunVRusb7gmRM6uuMYpj8CKxUYbLSu4oG
	i8u8jJfV7em/W//1XTI598X82qwaAx4/LdMfQCu/XA2/mKmYkdUdxX1yww99Iarw==
Received: by filterdrecv-65f68489c8-b6w8z with SMTP id filterdrecv-65f68489c8-b6w8z-1-64937AAA-5C
        2023-06-21 22:33:15.071715387 +0000 UTC m=+3625023.840218965
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-0 (SG)
	with ESMTP
	id Vsg4Okx2QpydLWx1dvgG5Q
	Wed, 21 Jun 2023 22:33:14.503 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 0/5] drm/rockchip: Fix crtc duplicate state and crtc reset
 funcs
Date: Wed, 21 Jun 2023 22:33:15 +0000 (UTC)
Message-ID: <20230621223311.2239547-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hwAj6JtqDVdUtl=2Fsv?=
 =?us-ascii?Q?EfHTEBPZGZPV0oT8N0cvVyWZgOlphJJAE1JguJu?=
 =?us-ascii?Q?Hu+WRw0387JHRl7AW9o30oWLdB+uU36aPxOm0AU?=
 =?us-ascii?Q?yYWGYJ8F1yWwAYmXiQbIhJaECUF9RtGVjEuaQWR?=
 =?us-ascii?Q?S+K6zLCtJ1LR6rtiV+OoWn1=2FapaZwR=2F3zBY86J2?=
 =?us-ascii?Q?L7rC=2FF90pgLUA+FMHKdjA=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>
Cc: Mark Yao <markyao0591@gmail.com>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230621_153322_593370_B384F058 
X-CRM114-Status: UNSURE (   9.35  )
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
Patch 3 adds a null guard for allocation failure.
Patch 4 adds a crash guard for empty crtc state.
Patch 5 adds a missing call to crtc reset helper.

This is the next part of an ongoing effort to upstream HDMI 2.0 support
used in LibreELEC for the past 3+ years.

Changes in v2:
- Handle possible allocation failure in crtc reset funcs
- Collect r-b tags

This series is also available at [1].

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20230621-duplicate-state

Jonas Karlman (5):
  drm/rockchip: vop: Fix reset of state in duplicate state crtc funcs
  drm/rockchip: vop: Use cleanup helper directly as destroy funcs
  drm/rockchip: vop: Fix call to crtc reset helper
  drm/rockchip: vop2: Don't crash for invalid duplicate_state
  drm/rockchip: vop2: Add missing call to crtc reset helper

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c  | 24 +++++-------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 39 ++++++++++----------
 2 files changed, 28 insertions(+), 35 deletions(-)

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
