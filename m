Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4BCECC4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 11:31:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xIxGkhk3MF1lFQFfMKHSOSNSjJai09ytkMNtIMw31to=; b=Xy39qqx7LO1wRb
	4Ubbcgp4WmpDE1PV7olUHp+Vk+tDnGkyHLGeMXP4Db/vCOEkB7Hy6m63zFZKJ+VoVjMOEq+j2si0L
	tQxOdvzf+DD08+UJ2ChZTbbxbaBPmqyKMMR/yom+6l0GK4NYZhAeH64nFTrYFMrXwNMnz1q0vBqQf
	SEmnS++qZAJ67nkzdkzvEe0IzeFaFY1E6WgYQ454d0keoof3+2T7s8Gq+6GA/Ox3Fx+SMzmEUMCZn
	INJIMsUlbtK61+6BMNKfk6l7My9K4dLK+QjcsWPly7IDx10C7gUkDf7jJ5HLB7ztkKrqPgzrvTdTC
	pxfg8j1rs/Ped6UeHyTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7wIr-0054Nq-2D;
	Tue, 28 Nov 2023 11:30:57 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vGh-004rPw-1j;
	Tue, 28 Nov 2023 10:24:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 9651FCE1AC7;
	Tue, 28 Nov 2023 10:24:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3F636C433C7;
	Tue, 28 Nov 2023 10:24:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167076;
	bh=T1VDwdVoznG4IGcAFm7TZYH0xfCY62bnXCmWs4ZMug8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Es823PGa7N8+2/RqZWUTPGalS09UBfOox7B6BdSAOKCoXn8PUOkUjypJJZ64fuzIo
	 zMAB87ALQ3P2yVAo8iUbNumc2SBfTeZX6z7DLIz84dT2rRs6YSPPVTt3/MJ2WbqaK9
	 t6IFUAWO87PmVRy8jTpAjsXLvXi8JmMNvhNA3doYnUq/H/euKSzo0/zxJem0yfGK5D
	 PQ4nsCURYrT/V9f69RJNyjuVvcbb4ND4+Ac43aL4fCSFupOYYM+GE8t4istKgBxGiE
	 541gLkQza0iC1Fx6ONRbh7xbpqSvAnM1z7cLyhs7vRoMSZEa60HJY2tmnUkdJ0kC94
	 Lx8k+YvoT6v4Q==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:16 +0100
Subject: [PATCH v4 05/45] drm/connector: Check drm_connector_init pointers
 arguments
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-5-c7602158306e@kernel.org>
References: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
In-Reply-To: <20231128-kms-hdmi-connector-state-v4-0-c7602158306e@kernel.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
 Daniel Vetter <daniel@ffwll.ch>, Emma Anholt <emma@anholt.net>, 
 Jonathan Corbet <corbet@lwn.net>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Chen-Yu Tsai <wens@csie.org>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Samuel Holland <samuel@sholland.org>
Cc: Hans Verkuil <hverkuil@xs4all.nl>, dri-devel@lists.freedesktop.org, 
 linux-arm-kernel@lists.infradead.org, linux-doc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-sunxi@lists.linux.dev, 
 Maxime Ripard <mripard@kernel.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1029; i=mripard@kernel.org;
 h=from:subject:message-id; bh=T1VDwdVoznG4IGcAFm7TZYH0xfCY62bnXCmWs4ZMug8=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y++fVU5/cIzv1tzXztP2P2vx3m9st/0q6cWNte2M
 agLmklO7ShlYRDjYpAVU2SJETZfEndq1utONr55MHNYmUCGMHBxCsBELm5j+MNl2NlnxjlVMZXv
 z+GJkn1ne/2eu2RavXKY/Ezpefc6m8eMDJMuH00x6BfoFTjeUq2VYb53F6tgkd9DB42sDwpNB5I
 tOAE=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_022439_755732_D2B02CED 
X-CRM114-Status: GOOD (  11.20  )
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

All the drm_connector_init variants take at least a pointer to the
device, connector and hooks implementation.

However, none of them check their value before dereferencing those
pointers which can lead to a NULL-pointer dereference if the author
isn't careful.

Let's test those pointers instead and error out if any is NULL.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/drm_connector.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/gpu/drm/drm_connector.c b/drivers/gpu/drm/drm_connector.c
index b0516505f7ae..2f60755dccdd 100644
--- a/drivers/gpu/drm/drm_connector.c
+++ b/drivers/gpu/drm/drm_connector.c
@@ -229,6 +229,9 @@ static int __drm_connector_init(struct drm_device *dev,
 	struct ida *connector_ida =
 		&drm_connector_enum_list[connector_type].ida;
 
+	if (!dev || !connector || !funcs)
+		return -EINVAL;
+
 	WARN_ON(drm_drv_uses_atomic_modeset(dev) &&
 		(!funcs->atomic_destroy_state ||
 		 !funcs->atomic_duplicate_state));

-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
