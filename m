Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FB71D5B84C
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Dec 2025 16:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=paLu2ScxJ1H7oNET2y6E1qEM2QoOxU9zmGu1qQxt5c8=; b=D6ovVTuGF+ag6K
	kVZnWPSXS7q2NRfwHFfsCZHk4uAO2wfn097nsofKEhmvBQ/ZPg3doTitlCCTg+mJh5TfFSbms6dD2
	RdLjNvnZrg4a57UIk64+IBy4zxOp2YcZg0504iVqbuqST5E4nU4LKjv22O16WYTDybBhHgrSFaPLE
	Q3UjGL5AMry9LP6x90FfH4sEjQihS7jTrVevWe01ZPBQtrAgY0vqYjRqw2pRjqXGVixj4IxjkwUj3
	WgPYAqgilXsb/Zx9Ay1xlyKCTYqVTC8ecsyvBsy3fNhHxPAJVfXh63+saBGDcu6IdZ2gIrJU/j/jP
	VLPBc8DmGNSTyiA4k+5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBZ1-0000000404P-23m6;
	Mon, 15 Dec 2025 16:36:47 +0000
Received: from smtp-42ab.mail.infomaniak.ch ([84.16.66.171])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVBYu-00000003zzH-2IIQ
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Dec 2025 16:36:44 +0000
Received: from smtp-4-0000.mail.infomaniak.ch (unknown [IPv6:2001:1600:7:10::a6b])
	by smtp-4-3000.mail.infomaniak.ch (Postfix) with ESMTPS id 4dVQgP6vGkz7BQ;
	Mon, 15 Dec 2025 17:36:33 +0100 (CET)
Received: from unknown by smtp-4-0000.mail.infomaniak.ch (Postfix) with ESMTPA id 4dVQgM0sMnzD5S;
	Mon, 15 Dec 2025 17:36:31 +0100 (CET)
From: Quentin Schulz <foss+kernel@0leil.net>
Subject: [PATCH 0/2] accel/rocket: fix unwinding in error paths of two
 functions
Date: Mon, 15 Dec 2025 17:36:13 +0100
Message-Id: <20251215-rocket-error-path-v1-0-eec3bf29dc3b@cherry.de>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MTQqAIBBA4avErBtI0/6uEi3EphqCjFEiiO6et
 PwW7z0QSZgiDMUDQhdHDkeGKgvwmztWQp6zQVfaKq00SvA7JSSRIHi6tOHSt53xpnG2qiF3p9D
 C9/8cp/f9ABGdXABjAAAA
X-Change-ID: 20251212-rocket-error-path-f9784c46a503
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>, Oded Gabbay <ogabbay@kernel.org>, 
 Jeff Hugo <jeff.hugo@oss.qualcomm.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, 
 Quentin Schulz <quentin.schulz@cherry.de>, stable@vger.kernel.org
X-Mailer: b4 0.14.3
X-Infomaniak-Routing: alpha
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_083640_736375_FB9E584E 
X-CRM114-Status: UNSURE (   9.73  )
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

As reported[1], in the current state of master (that is, *without*
that[2] patch, yet unmerged), it is possible to trigger
Oops/out-of-bounds errors/unbalanced runtime PM by simply compiling
DRM_ACCEL_ROCKET built-in (=y) instead of as a module (=m).

This fixes points 1 and 2 reported here[1] by fixing the unwinding in
two functions to properly undo everything done in the same function
prior to the error.

Note that this doesn't mean the Rocket device is usable if one core is
missing. In fact, it seems it doesn't as I'm hit with many
rocket fdac0000.npu: NPU job timed out
followed by one
rocket fdad0000.npu: NPU job timed out
(and that, five times) whenever core0 (fdab0000.npu) fails to probe and
I'm running the example from
https://docs.mesa3d.org/teflon.html#do-some-inference-with-mobilenetv1
so something else probably needs some additional love.

[1] https://lore.kernel.org/linux-rockchip/0b20d760-ad4f-41c0-b733-39db10d6cc41@cherry.de/
[2] https://lore.kernel.org/linux-rockchip/20251205064739.20270-1-rmxpzlb@gmail.com/

Signed-off-by: Quentin Schulz <quentin.schulz@cherry.de>
---
Quentin Schulz (2):
      accel/rocket: fix unwinding in error path in rocket_core_init
      accel/rocket: fix unwinding in error path in rocket_probe

 drivers/accel/rocket/rocket_core.c |  7 +++++--
 drivers/accel/rocket/rocket_drv.c  | 15 ++++++++++++++-
 2 files changed, 19 insertions(+), 3 deletions(-)
---
base-commit: a619746d25c8adafe294777cc98c47a09759b3ed
change-id: 20251212-rocket-error-path-f9784c46a503

Best regards,
-- 
Quentin Schulz <quentin.schulz@cherry.de>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
