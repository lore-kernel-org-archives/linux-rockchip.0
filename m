Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 550CAEB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 06:48:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8Tvp32nOiQkFutcRJf9hCdqPcIYpYoTXti5dTKm3l/8=; b=iWsxCE7k0afc8Ef1KRaC0/ffoX
	3D7xdT0UVDlQVf4QORWhkrbN4sEM8tG2pbrlOo8QGNfB2hz8GJaskS1ZTqed+hBdjsWYBfgh2St2Q
	QyNxiDdoJ45E3VseBnLLkUOPogfmXw7HQ5usbgNIq+mGnryAWEjXiQStgjJ4NTFkmvUJC3hPrDPKY
	A355n2ly3ehaqvQPjq8JjbqX09Dp6XgcpxlzCpkH0D8L6QCkAcDeEG8lFgKljOs/0gr8deeQ1+Ys2
	xMz643/O+hXoxrLm8ViSzy7Ay9t31TRR26FYhZ9Rk0HIl6Wa++2WFmyGPyNJ6MVigGJpUmuqzjPZd
	tAb669mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBV9a-00AIgM-1F;
	Tue, 20 Jun 2023 06:47:50 +0000
Received: from s.wrqvtzvf.outbound-mail.sendgrid.net ([149.72.126.143])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBV9Q-00AIZa-2L
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jun 2023 06:47:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
	h=from:subject:in-reply-to:references:mime-version:to:cc:
	content-transfer-encoding:content-type:cc:content-type:from:subject:to;
	s=s1; bh=5pbgdWNmSy9aPDMPkbL8AbjV9U0EnRo0+ZChKli6JfM=;
	b=eVrS5554pcjPfv9qQqL7hGY0jyiDvsj9RT7apUoZX0grmM3rUFRKnLhEDdf4ygOm1p1Q
	0r3S4yOzh2Rqg2ol1RfyIADEiNF/f+K2skcpAAZwtoT7B9cIZe9JerudoUS5PHLLWN0lBA
	gwj2sQZssKqPGbWx0LdzP9ZMxjP8azYEKdVZEl78Joe+ftZF0V9buBCwNynFdPHd0FiYWZ
	HVq50Ln69Irhwmf5ZSzV/eUAlDJKUVOzoOEqYnTBvwJ5VIktfdqbKRKuheFxvCA6akmLvf
	tIJxBJrfY+FMZf0GXdg3Bw4U10ByCZcH6kXilzSMw63jIncJb96Bo5tCIvgOOQrg==
Received: by filterdrecv-84b96456cb-5hl7m with SMTP id filterdrecv-84b96456cb-5hl7m-1-64914B8A-11
        2023-06-20 06:47:38.471885304 +0000 UTC m=+3481762.440632816
Received: from bionic.localdomain (unknown)
	by geopod-ismtpd-5 (SG)
	with ESMTP
	id RoZFBd_nQNK1YqBzlZ8GTA
	Tue, 20 Jun 2023 06:47:38.183 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 3/4] drm/rockchip: vop2: Don't crash for invalid
 duplicate_state
Date: Tue, 20 Jun 2023 06:47:38 +0000 (UTC)
Message-ID: <20230620064732.1525594-4-jonas@kwiboo.se>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230620064732.1525594-1-jonas@kwiboo.se>
References: <20230620064732.1525594-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h+eHmV8Nkxhx=2FpGei?=
 =?us-ascii?Q?3g0n+d3x8Np2TBP3wBP6EHYLmaspDk9WVqgJCxM?=
 =?us-ascii?Q?F3L9wcKO7JYi6qnKjNs2IVQjlFzRSo9BdNyixoW?=
 =?us-ascii?Q?ioyn4a99eKnBuPXlbCnUzbMH11YwLP0DwC51taH?=
 =?us-ascii?Q?bX9wYpASN++FUl579=2FN27U+ahU4pTUUTpEjYKHj?=
 =?us-ascii?Q?Hc+zeSjFVIYEYd2OZZ3cw=3D=3D?=
To: Sandy Huang <hjc@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Andy Yan
	<andy.yan@rock-chips.com>, Sascha Hauer <s.hauer@pengutronix.de>, Rob Herring
	<robh@kernel.org>
Cc: Mark Yao <markyao0591@gmail.com>, dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org, Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_234740_891776_77CD4C53 
X-CRM114-Status: GOOD (  11.27  )
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

It's possible for users to try to duplicate the CRTC state even when the
state doesn't exist. drm_atomic_helper_crtc_duplicate_state() (and other
users of __drm_atomic_helper_crtc_duplicate_state()) already guard this
with a WARN_ON() instead of crashing, so let's do that here too.

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index ca73b8ccc29f..f725487d02ef 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2099,11 +2099,13 @@ static void vop2_crtc_reset(struct drm_crtc *crtc)
 
 static struct drm_crtc_state *vop2_crtc_duplicate_state(struct drm_crtc *crtc)
 {
-	struct rockchip_crtc_state *vcstate, *old_vcstate;
+	struct rockchip_crtc_state *vcstate;
 
-	old_vcstate = to_rockchip_crtc_state(crtc->state);
+	if (WARN_ON(!crtc->state))
+		return NULL;
 
-	vcstate = kmemdup(old_vcstate, sizeof(*old_vcstate), GFP_KERNEL);
+	vcstate = kmemdup(to_rockchip_crtc_state(crtc->state),
+			  sizeof(*vcstate), GFP_KERNEL);
 	if (!vcstate)
 		return NULL;
 
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
