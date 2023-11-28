Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 363FBC10DC1
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 11:31:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEPf+Wn2WZPlKNctEZbRpjrPIF+6Zj7TgaS5+Z92uEg=; b=hUou2KGrpnzf8l
	DPlNgJo+fW9HE+/YovFRzyJF+d+h7Xg+lemI0L8klOJDp63/ehNLtENlvqip9B1i69XoKFfQtAhl1
	ht7AsLwDK+bH62JOiJ7nsZnth9m+mu0mfiMD0IYOi1JI4uOuaAlVnuv3b2iZ0ObPmQjg/q1UveXEX
	sytPTwPfVa6acVcVg4V34b4RhsM8MQcJERL6RkyRiu7XGSLPQUdaM6pgVbqW8GRpE0E+754DbHJWv
	6EXDVYpJEoeQe0qgzHK9FOjmBrsYhtmm42Nzir8p9sh/djU+Th9s6tLZbep9fAYz5LXg2NuAegULA
	mUQyrQ4n6TjSHQG0SlbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7wJ8-0054hy-2R;
	Tue, 28 Nov 2023 11:31:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHP-004s65-1e;
	Tue, 28 Nov 2023 10:25:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=r376pOvUZDjk4nJNr1jZTROYu8wE8f1STd/qIwsIVOI=; b=DXa1MdvJsEC4hc+4EbtRucTPqj
	6tBbji0zCjnK+k09uHsNWs/QNEPaq07yyQzOmbkK0hUYtX5fGV3QaCbKBdMFYMozKK3Di50dgyAlO
	BK2015bwu40PbmD3+6l7uAONUg2d7jI0yOx6vF7Sc8mPa4kkbgL+cqpNiZVCTRXS2kkBVIZ1sgEiH
	0QoCSgF7GnaP2E4ikestnzqmIKPG6CIcEouPWfgZfGhYDoI8+f//41dCcf850bCmW8yKe2D2FgGoM
	uOpQpLFh2/LJ9m/YriU+ZZfZjbMj5xgADBmIXa2DZ8eAyLPfB1rtsrzZtjHxhRUSGYqyZt7TcFkTn
	aqHrPPhg==;
Received: from dfw.source.kernel.org ([139.178.84.217])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7vHK-00GaAe-2X;
	Tue, 28 Nov 2023 10:25:22 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 72220616D7;
	Tue, 28 Nov 2023 10:25:17 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B8BBFC433CB;
	Tue, 28 Nov 2023 10:25:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701167117;
	bh=3urbyxJOhBJnxOpaqPUf/XFZGd3bz5XAd4Th75mEdek=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=pcw8LsGckKIMNmgWnoL6TkBVd5O77Urs2ZI8KnnQz1PYDVb8jLDJGYO1dY2tk1LQQ
	 tp9Cl5IOXAjLTXQ9AtXbX7LYPx33UoJHYocpY2hClo8XAp5uh+RNV83Cb10lLQrCAe
	 53tYiXkNDy8aiKEp9S9iS+NzB9MwfxyLPMHgz0JT9j3L8nREBz1Nrq+OAmBKjDZPf5
	 rsSPFSaIAFcOou+oaHJgd0/jERLqXERLZrKBZawDAVhOSOVKmIMIO98G8pTI+uwaPZ
	 l6bdOGq0vgKiWhtiaThOQpuS9OJseZ64S7/ClnTMNIxtWv3WDZVfKd3NFcUKAR+1gr
	 1E9/XSVVTQrMw==
From: Maxime Ripard <mripard@kernel.org>
Date: Tue, 28 Nov 2023 11:24:30 +0100
Subject: [PATCH v4 19/45] drm/vc4: hdmi: Create destroy state
 implementation
MIME-Version: 1.0
Message-Id: <20231128-kms-hdmi-connector-state-v4-19-c7602158306e@kernel.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1640; i=mripard@kernel.org;
 h=from:subject:message-id; bh=3urbyxJOhBJnxOpaqPUf/XFZGd3bz5XAd4Th75mEdek=;
 b=owGbwMvMwCX2+D1vfrpE4FHG02pJDKmp+y9d+9kzWdLQVDbSa8q9k1ZKdhXbY474pJi+33hBe
 L78Pku+jlIWBjEuBlkxRZYYYfMlcadmve5k45sHM4eVCWQIAxenAExkfj8jw2TpjfLvFvVpO6Ww
 6f81/fmwTeTKjMkfA7/nTuVUd3zRvo+R4WaDYu++lat0o4OerEz9fjo3Y+0OOWa3fKuzP5wm+a/
 M4wIA
X-Developer-Key: i=mripard@kernel.org; a=openpgp;
 fpr=BE5675C37E818C8B5764241C254BCFC56BF6CE8D
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_102519_357777_490EBA95 
X-CRM114-Status: GOOD (  10.97  )
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
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
