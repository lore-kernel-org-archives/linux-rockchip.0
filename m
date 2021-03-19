Return-Path: <SRS0=S+7F=IR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C43C433DB
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 15:29:48 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EF73E61937
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Mar 2021 15:29:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EF73E61937
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=cerno.tech
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nFwamcLcK1Yx5OjO3cJNHwwduEotLgGcICEzr/pDlj0=; b=dYZZ9mDiSX7y5OS4IZndR+xAdX
	+qpyEOLuNSOEIoLUs6M4Gvixr0tcmK+/3hf/vSl455KA6VjXMoTH9WQ/B4hskZLgk2a671Pepgas2
	QeyMreakaOvCBkc2ZkanJCQr/fuDkE1qAi+2W22KS3igimxly+K4M33aI9kBSV3i7ndm8Ka0uMHs/
	zDOGcVS5kkwEBC6r97OpRB4SmqkjV6gwfT9Nxo0I+KhfoRo4BOP+ZrnD5xuPvC/tefQpgHSJJ1XRa
	JJ15WK4eYxAXjhpcHY0y8wp/OxfkgZ3lohee/avHdvV3cB1rLx1yp2fg1c9HQfqRvUU9C+sRHDyya
	Nlh9Xp9Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lNH4I-007dZM-UW; Fri, 19 Mar 2021 15:29:43 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lNH47-007dYD-MY; Fri, 19 Mar 2021 15:29:34 +0000
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
 by mailnew.nyi.internal (Postfix) with ESMTP id 2AA89580EEC;
 Fri, 19 Mar 2021 11:29:26 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute6.internal (MEProxy); Fri, 19 Mar 2021 11:29:26 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=2cNzd7YoIDhfwDHpW/c7bvKkcP
 BXtKeoOZey4iUpgOc=; b=unszStEGqYwJb0kOWnvChjr5fiHAzWD9LHgWEUPouf
 HDZZWpRVM36PU6Et6pWdNa5DLMLNGV3ymgYVyu+X9hoeAgaIzDju7EUA+WXHJuAp
 tRldwEswZq/+IpLo5iXX3yBH9VDXQS6DZgYOQvRGS3c2cIVnKwQ5xFS1wzd2QWRY
 tiP2cKwJYLcrsC2Fv467X3Ze1ckWK0TscIr1/KJsDOPZSp2gMvynLN0atXyADZxM
 7BwkrlDCi+TiyJXv23ICgJAsgE3slBjXWGYHKWirWsDoPXF8l9IQbYK2cGiAYIND
 xZA1quQQ4mpOENBHpiyyXmE/TAHX9uAjOdcCD2E5S3Sw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=2cNzd7YoIDhfwDHpW
 /c7bvKkcPBXtKeoOZey4iUpgOc=; b=R4pEoOEKhclUi1szkvr//3tRAFNM//7/J
 DV3Uea7NP8VGpcd8TtVJZ7XomC3jEqOnxZwsUjL6ovvws6xGt216JurYlD5LAvVc
 lBEPEEwlBoE8TV1gjk5l2+u0kT6Lqp5mc5Y2rljMSyT5oUa9UrSFZ5GTbcj59/KD
 B6YKnA99VoCjLTxpeL48z6aSzvPf8HRZxdrdRB+XW4V31M7MHrJJ5a3p+IVVHLmF
 s5n8MAf3X2pP1kyxkSvWldp8AQIhS9yLRDzySPMSPM0RGxkrcC3Hl24k6URov6k6
 2qKAsaLYpMKPBZEQwqrSjLqileWyhwmu4KryqejaWDIHVmlRtyajg==
X-ME-Sender: <xms:UsNUYLpkYcrjPA8UOwliuidVbIxOVI2zGSNifWU5oGFo4bFSr71Kjg>
 <xme:UsNUYFobZRslWP_ZnbaXHwIS9saTfQvJlEee5eIRGuHNR6pycPbfirp7D6iQxYy6M
 s4RSA2xiO3e_Aq3wGY>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduledrudefkedgjeejucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffoggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcu
 tfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrthhtvg
 hrnhepjeffheduvddvvdelhfegleelfffgieejvdehgfeijedtieeuteejteefueekjeeg
 necukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgeptdenucfrrg
 hrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:UsNUYIPZ97pMwBwD6qO-zzwjyaCo_HFU2F6PcwEmzM5YOkTxZInf5w>
 <xmx:UsNUYO66mqzTBvoH3lo6rMSSOq-V9l3qNhX45g-gywdkQAxybn5xZQ>
 <xmx:UsNUYK4vf3VhThFikPblVjNl5RRcYQdhKBawnCeKav2wH5u_MJYrww>
 <xmx:VsNUYCh6jKLUzbdddc-53UcCBXNDF938UH65urMM6kwlvJ6oVb_owA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id A9C4F24005B;
 Fri, 19 Mar 2021 11:29:22 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: dri-devel@lists.freedesktop.org, Daniel Vetter <daniel.vetter@intel.com>,
 David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Thomas Zimmermann <tzimmermann@suse.de>, Maxime Ripard <maxime@cerno.tech>
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Sandy Huang <hjc@rock-chips.com>, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH] drm/rockchip: Remove unused variable
Date: Fri, 19 Mar 2021 16:29:20 +0100
Message-Id: <20210319152920.262035-1-maxime@cerno.tech>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210319_152932_001212_A8EA42C0 
X-CRM114-Status: UNSURE (   9.58  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Commit 977697e20b3d ("drm/atomic: Pass the full state to planes atomic
disable and update") added the old_state variable instead of what used
to be a parameter, but it also removed the sole user of that variable in
the vop_plane_atomic_update function leading to an usused variable.
Remove it.

Fixes: 977697e20b3d ("drm/atomic: Pass the full state to planes atomic disable and update")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 81c70d7a0471..64469439ddf2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -879,8 +879,6 @@ static void vop_plane_atomic_disable(struct drm_plane *plane,
 static void vop_plane_atomic_update(struct drm_plane *plane,
 		struct drm_atomic_state *state)
 {
-	struct drm_plane_state *old_state = drm_atomic_get_old_plane_state(state,
-									   plane);
 	struct drm_plane_state *new_state = drm_atomic_get_new_plane_state(state,
 									   plane);
 	struct drm_crtc *crtc = new_state->crtc;
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
