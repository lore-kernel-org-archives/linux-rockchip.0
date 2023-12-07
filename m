Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A872BC46CA0
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Dec 2023 17:01:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S793pPICgfnUJi0b7Fs9hgJqdj/qXUqvLbknDcC/mLU=; b=B8cu0v2WnyI5xO
	FywbbOrkGHiiJuw+e6bz1jTiLvlU3KDH1/Bv97idjFGU7lWTJF0nG1L5EaFP3WucY35r8vxJxGMnk
	t42T+HT0TPpai/HZUKDgiIcumNqS+t7T1s8oks1lQWNvw4CHJcpF7c/LKVS5ga1llAq2X2DuY451L
	U1hX/qUuuXvoG/v6ZQzXys4XAHjyFsS+wZxr8aHq5HZbNIXgvqQO1tcQ0LdqJlldm0Op9KztDcnzz
	y+xnVrUIsN3QtBPwHFz4/085UrhxdMSOnzUvJuIZCniOpNqtFpirtDypkefOVN7fV2NIDpwrLlKDi
	Hr80L9Ps59obx8OdVpHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBHk3-00DT5b-2x;
	Thu, 07 Dec 2023 17:00:51 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGdy-00DGyQ-1w;
	Thu, 07 Dec 2023 15:50:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=CsCMXbCp8ijWbY8M767CK/csUic0x1NdA1Wz1XEYn+4=; b=qdFCBGFSV/HhAQhoGrG/vzS0qn
	BVR53nB7+t8FhLFhHOcicBpK+I4UK1ADaKQeQ2WRj2/d3SXtkKDXDQHCkdkF4T+ognP2sHWIMItVF
	K5dfnVK2AI0Y3WW+CFMymwoXd7BDItjmJvZovPc/pw378XCK/ciDO26hoy6GqFhmXTwFi5JXtYgYz
	JvBiBpDoRD/fjbg9KBJlS6eIwicZgzSAinT0ruP5dTF7bKNOENvSRW7gvPiCYIkg/gQJoElHutDcu
	iDSPby6Ltcw5fAmPqQU4aVZCCer/1w4GjIIekpkn231fpmUNKi1goybkutbssMIa4ObVhYQsqRxmD
	7/8UOlbw==;
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBGdt-0062Pi-0b;
	Thu, 07 Dec 2023 15:50:29 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id B42B3B826B1;
	Thu,  7 Dec 2023 15:50:23 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9302C433CB;
	Thu,  7 Dec 2023 15:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701964223;
	bh=KTCGZaHdEVzX8G8gYiwwNK0FXqTtIZ9KRh3cFkf+CNs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=iBH8N7IAhOrx90KyIb6APrsfLzKtmzyRWs9YvFN8KjcgjXs+rYJ0/W9c50SrgiBay
	 XqzK1iXT8Vo6R9kzhyw63JL6YR3AL2LcgOPuHDSbN+U5+7ZZ2YbzObaY+tClIF+1JW
	 w4QykE+C6u9mQfSncIs8l7fT1R7FbC/FVHoHQwCK8t2+SIu7+A4CRk88OMNzG5k0aP
	 XkD4ZrinwXbNg8Ml52w60BaTUoLIrL5FGK+VgaWoX2lIZurSx4XkEaeOpw4HPaUNBA
	 263dD6nkUf9UhPCPysQUxOyIU5FZsKyS16ewfQkBWEeivc2q+Tvq7noZ10QNCf8/sN
	 E7PeVNsDTsf9A==
From: Maxime Ripard <mripard@kernel.org>
Date: Thu, 07 Dec 2023 16:49:41 +0100
Subject: [PATCH v5 18/44] drm/vc4: hdmi: Create destroy state
 implementation
MIME-Version: 1.0
Message-Id: <20231207-kms-hdmi-connector-state-v5-18-6538e19d634d@kernel.org>
References: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
In-Reply-To: <20231207-kms-hdmi-connector-state-v5-0-6538e19d634d@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1640; i=mripard@kernel.org;
 h=from:subject:message-id; bh=KTCGZaHdEVzX8G8gYiwwNK0FXqTtIZ9KRh3cFkf+CNs=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmFL1sPul9YsMvUJ/ZT4sMQ5j+Gsb9z17/t+hm2UdT8W
 F3h8oSGjlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAEwkYhPDX/mVssFORv1rY17O
 2aYl88hrj07l9n4dtm3LC092iARMv83w39F5TYVTcILkynU3ez3Wzr5pNInppaF6ooj1mydWWv8
 5+QE=
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_155025_444533_E037A5CD 
X-CRM114-Status: GOOD (  10.86  )
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

Even though we were rolling our own custom state for the vc4 HDMI
controller driver, we were still using the generic helper to destroy
that state.

It was mostly working since the underlying state is the first member of
our state so the pointers are probably equal in all relevant cases, but
it's still fragile so let's fix this properly.

Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 drivers/gpu/drm/vc4/vc4_hdmi.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/vc4/vc4_hdmi.c b/drivers/gpu/drm/vc4/vc4_hdmi.c
index 25c9c71256d3..f05e2c95a60d 100644
--- a/drivers/gpu/drm/vc4/vc4_hdmi.c
+++ b/drivers/gpu/drm/vc4/vc4_hdmi.c
@@ -672,11 +672,21 @@ vc4_hdmi_connector_duplicate_state(struct drm_connector *connector)
 	return &new_state->base;
 }
 
+static void vc4_hdmi_connector_destroy_state(struct drm_connector *connector,
+					     struct drm_connector_state *state)
+{
+	struct vc4_hdmi_connector_state *vc4_state =
+		conn_state_to_vc4_hdmi_conn_state(state);
+
+	__drm_atomic_helper_connector_destroy_state(state);
+	kfree(vc4_state);
+}
+
 static const struct drm_connector_funcs vc4_hdmi_connector_funcs = {
 	.fill_modes = drm_helper_probe_single_connector_modes,
 	.reset = vc4_hdmi_connector_reset,
 	.atomic_duplicate_state = vc4_hdmi_connector_duplicate_state,
-	.atomic_destroy_state = drm_atomic_helper_connector_destroy_state,
+	.atomic_destroy_state = vc4_hdmi_connector_destroy_state,
 	.atomic_get_property = vc4_hdmi_connector_get_property,
 	.atomic_set_property = vc4_hdmi_connector_set_property,
 };

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
