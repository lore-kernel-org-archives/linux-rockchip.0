Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C156C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 22:49:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id F17AB6101C
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 22:49:19 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org F17AB6101C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJftjuFa1Q7nwcmlT4NBwR+T9KK6vpUsL+sS+49wFvM=; b=gyfi9XPJhqNd5G
	N8v5221je8YSxWxwmELItl9lVqAz+6SEWUzZOZ6bpYsC2vctpPPjPHitbd71iw3+pkaXESgsnKAOZ
	c3hZDd9IJtbXzIh+3tfL5FDaAefyaY6l2tXvqIXBbRk6JIfewtZBDPAMw4CfCzjBUFvGfqGDae2SY
	BqX5KOE8j3YeOJgOdMofQJZg7xXdrK5hq/c5dMvy0n2xQDtzYwWVXWCRDzvZtsawVQcUTvGXysd4m
	xaRAutXKcoZAm+V3+G7rNpXXfTgDDaWETHpyjlVxYP1/hBJUmdqjULlj4kCIJK9wexA/QggLHhyBw
	XbHdqoQszBv/0qvCo1yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnTjv-006WWU-9k; Wed, 17 Nov 2021 22:49:15 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnTjq-006WU4-CG
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 22:49:13 +0000
Received: by mail-pf1-x435.google.com with SMTP id g19so4017158pfb.8
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 14:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=PRAN3rr2nPVo3gIjlESQaB8ebBDc+D/e6ANLJIK5y4s=;
 b=BcR+4Lz3vAnsR3uoPEuqtYS/bHo6Vvi8O1qPuLresu/Y5qW84EQaQdowja+Qzu250b
 EL34dpX72GmpldCBF3QbRbZO4y2+Yjdxv/nvbFhKVNffI+7PUmwqBHafNjTlbfq3EbfP
 2ymP/ibAW7xVQ6UT2l2HanNP+pWtwU6rygk5I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=PRAN3rr2nPVo3gIjlESQaB8ebBDc+D/e6ANLJIK5y4s=;
 b=TzX3IivPWKx+LigHtIWIrtgV5Ezl2LPYcWpudQlbvt/TdxLX7RSqKxc4XS8Q+CtUd+
 WjpO1EIqpkfiFnZkAqaVrsPaD85s8omgYiRHxLBHAlOR7pVaXxcOPFShVk/Pye/3pxDX
 5F/4XbpVfJql9W1fPJYBvP+icpnySHkKoixBeLFCgiLT425TiOe08/a404BuVkNmpWeZ
 o0eOW/NsIAdVppsvt49pXrkw2vbkNtH1GMyrk4FWMYW09JA+Y3GBvZvvPoDs4+pMIUrl
 +/xPfqpusURxmWoKEkFhOEN/uTa8GhavUqVRl0ETqBaHiiocu5UvFkX6fa2kwblSaOiY
 Ogdw==
X-Gm-Message-State: AOAM530GkFxVt5bWeoocYKo79pB216AL1dvB9ROhRoKhI7BG55OTJncG
 pfjAOIktJW41zmMUfKYZjfGWsw==
X-Google-Smtp-Source: ABdhPJxaitq98GLKg68E2jnoQ7v3i9kV5Qhy51dVJ9vt8oTBXNj7KdRjTAyA98irH+itT7XU42Xz5Q==
X-Received: by 2002:a05:6a00:10c5:b0:49f:de2c:1b23 with SMTP id
 d5-20020a056a0010c500b0049fde2c1b23mr10358091pfu.41.1637189348986; 
 Wed, 17 Nov 2021 14:49:08 -0800 (PST)
Received: from localhost ([2620:15c:202:201:896b:df38:4eae:c568])
 by smtp.gmail.com with UTF8SMTPSA id h8sm702003pfh.10.2021.11.17.14.49.07
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 14:49:08 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: "Kristian H . Kristensen" <hoegsberg@google.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Doug Anderson <dianders@chromium.org>,
 Andrzej Hajda <andrzej.hajda@intel.com>, Rob Clark <robdclark@gmail.com>,
 linux-input@vger.kernel.org, Rob Clark <robdclark@chromium.org>,
 Daniel Vetter <daniel@ffwll.ch>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 2/2] drm/self_refresh: Disable self-refresh on input events
Date: Wed, 17 Nov 2021 14:48:41 -0800
Message-Id: <20211117144807.v2.2.Ie6c485320b35b89fd49e15a73f0a68e3bb49eef9@changeid>
X-Mailer: git-send-email 2.34.0.rc1.387.gb447b232ab-goog
In-Reply-To: <20211117224841.3442482-1-briannorris@chromium.org>
References: <20211117224841.3442482-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_144910_516700_0FA4348D 
X-CRM114-Status: GOOD (  25.37  )
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

To improve panel self-refresh exit latency, we speculatively start
exiting when we
receive input events. Occasionally, this may lead to false positives,
but most of the time we get a head start on coming out of PSR. Depending
on how userspace takes to produce a new frame in response to the event,
this can completely hide the exit latency.

In local tests on Chrome OS (Rockchip RK3399 eDP), we've found that the
input notifier gives us about a 50ms head start over the
fb-update-initiated exit.

Leverage a new drm_input_helper library to get easy access to
likely-relevant input event callbacks.

Inspired-by: Kristian H. Kristensen <hoegsberg@google.com>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---
This was in part picked up from:

  https://lore.kernel.org/all/20180405095000.9756-25-enric.balletbo@collabora.com/
  [PATCH v6 24/30] drm/rockchip: Disable PSR on input events

with significant rewrites/reworks:

 - moved to common drm_input_helper and drm_self_refresh_helper
   implementation
 - track state only through crtc->state->self_refresh_active

Note that I'm relatively unfamiliar with DRM locking expectations, but I
believe access to drm_crtc->state (which helps us track redundant
transitions) is OK under the locking provided by
drm_atomic_get_crtc_state().

Changes in v2:
 - Delay PSR re-entry, when already disabled
 - Allow default configuration via Kconfig and modparam
 - Replace void* with container_of()

 drivers/gpu/drm/Kconfig                   | 16 ++++
 drivers/gpu/drm/drm_self_refresh_helper.c | 98 +++++++++++++++++++----
 2 files changed, 100 insertions(+), 14 deletions(-)

diff --git a/drivers/gpu/drm/Kconfig b/drivers/gpu/drm/Kconfig
index 381476b10a9d..698924ed9b6b 100644
--- a/drivers/gpu/drm/Kconfig
+++ b/drivers/gpu/drm/Kconfig
@@ -84,6 +84,22 @@ config DRM_INPUT_HELPER
 	depends on DRM_KMS_HELPER
 	depends on INPUT
 
+config DRM_SELF_REFRESH_INPUT_BOOST_DEFAULT
+	bool "Preemptively exit panel self-refresh on input device activity" if EXPERT
+	default y
+	depends on DRM_INPUT_HELPER
+	help
+	  Allows the generic DRM panel self-refresh helpers to factor in user
+	  input activity to preemptively exit panel self-refresh, in order to
+	  reduce potentially-visible latency when displaying new display
+	  content. This is an optimization which often will do the right thing,
+	  but can be disabled for experimentation or similar.
+
+	  Saying Y enables the feature by default; this can also be configured
+	  by module parameter, drm_kms_helper.self_refresh_input_boost.
+
+	  If in doubt, say "Y".
+
 config DRM_KMS_HELPER
 	tristate
 	depends on DRM
diff --git a/drivers/gpu/drm/drm_self_refresh_helper.c b/drivers/gpu/drm/drm_self_refresh_helper.c
index dd33fec5aabd..ba4881e683b7 100644
--- a/drivers/gpu/drm/drm_self_refresh_helper.c
+++ b/drivers/gpu/drm/drm_self_refresh_helper.c
@@ -8,6 +8,7 @@
 #include <linux/average.h>
 #include <linux/bitops.h>
 #include <linux/slab.h>
+#include <linux/stringify.h>
 #include <linux/workqueue.h>
 
 #include <drm/drm_atomic.h>
@@ -15,6 +16,7 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
+#include <drm/drm_input_helper.h>
 #include <drm/drm_mode_config.h>
 #include <drm/drm_modeset_lock.h>
 #include <drm/drm_print.h>
@@ -58,17 +60,41 @@ DECLARE_EWMA(psr_time, 4, 4)
 struct drm_self_refresh_data {
 	struct drm_crtc *crtc;
 	struct delayed_work entry_work;
+	struct work_struct exit_work;
+	struct drm_input_handler input_handler;
+	bool input_handler_registered;
 
 	struct mutex avg_mutex;
 	struct ewma_psr_time entry_avg_ms;
 	struct ewma_psr_time exit_avg_ms;
 };
 
-static void drm_self_refresh_helper_entry_work(struct work_struct *work)
+static bool self_refresh_input_boost =
+	IS_ENABLED(CONFIG_DRM_SELF_REFRESH_INPUT_BOOST_DEFAULT);
+#if defined(CONFIG_DRM_INPUT_HELPER)
+module_param(self_refresh_input_boost, bool, 0644);
+MODULE_PARM_DESC(self_refresh_input_boost,
+		 "Enable panel self-refresh input boost [default="
+		 __stringify(CONFIG_DRM_SELF_REFRESH_INPUT_BOOST_DEFAULT) "]");
+#endif /* CONFIG_DRM_INPUT_HELPER */
+
+
+static void drm_self_refresh_reschedule(struct drm_self_refresh_data *sr_data)
+{
+	unsigned int delay;
+
+	mutex_lock(&sr_data->avg_mutex);
+	delay = (ewma_psr_time_read(&sr_data->entry_avg_ms) +
+		 ewma_psr_time_read(&sr_data->exit_avg_ms)) * 2;
+	mutex_unlock(&sr_data->avg_mutex);
+
+	mod_delayed_work(system_wq, &sr_data->entry_work,
+			 msecs_to_jiffies(delay));
+}
+
+static void drm_self_refresh_transition(struct drm_self_refresh_data *sr_data,
+					bool enable)
 {
-	struct drm_self_refresh_data *sr_data = container_of(
-				to_delayed_work(work),
-				struct drm_self_refresh_data, entry_work);
 	struct drm_crtc *crtc = sr_data->crtc;
 	struct drm_device *dev = crtc->dev;
 	struct drm_modeset_acquire_ctx ctx;
@@ -95,6 +121,14 @@ static void drm_self_refresh_helper_entry_work(struct work_struct *work)
 		goto out;
 	}
 
+	if (crtc->state->self_refresh_active == enable) {
+		/* Exiting SR; delay re-entry for at least one more cycle. */
+		if (!enable)
+			drm_self_refresh_reschedule(sr_data);
+
+		goto out;
+	}
+
 	if (!crtc_state->enable)
 		goto out;
 
@@ -107,8 +141,8 @@ static void drm_self_refresh_helper_entry_work(struct work_struct *work)
 			goto out;
 	}
 
-	crtc_state->active = false;
-	crtc_state->self_refresh_active = true;
+	crtc_state->active = !enable;
+	crtc_state->self_refresh_active = enable;
 
 	ret = drm_atomic_commit(state);
 	if (ret)
@@ -129,6 +163,15 @@ static void drm_self_refresh_helper_entry_work(struct work_struct *work)
 	drm_modeset_acquire_fini(&ctx);
 }
 
+static void drm_self_refresh_helper_entry_work(struct work_struct *work)
+{
+	struct drm_self_refresh_data *sr_data = container_of(
+				to_delayed_work(work),
+				struct drm_self_refresh_data, entry_work);
+
+	drm_self_refresh_transition(sr_data, true);
+}
+
 /**
  * drm_self_refresh_helper_update_avg_times - Updates a crtc's SR time averages
  * @state: the state which has just been applied to hardware
@@ -202,7 +245,6 @@ void drm_self_refresh_helper_alter_state(struct drm_atomic_state *state)
 
 	for_each_new_crtc_in_state(state, crtc, crtc_state, i) {
 		struct drm_self_refresh_data *sr_data;
-		unsigned int delay;
 
 		/* Don't trigger the entry timer when we're already in SR */
 		if (crtc_state->self_refresh_active)
@@ -212,17 +254,26 @@ void drm_self_refresh_helper_alter_state(struct drm_atomic_state *state)
 		if (!sr_data)
 			continue;
 
-		mutex_lock(&sr_data->avg_mutex);
-		delay = (ewma_psr_time_read(&sr_data->entry_avg_ms) +
-			 ewma_psr_time_read(&sr_data->exit_avg_ms)) * 2;
-		mutex_unlock(&sr_data->avg_mutex);
-
-		mod_delayed_work(system_wq, &sr_data->entry_work,
-				 msecs_to_jiffies(delay));
+		drm_self_refresh_reschedule(sr_data);
 	}
 }
 EXPORT_SYMBOL(drm_self_refresh_helper_alter_state);
 
+static void drm_self_refresh_helper_exit_work(struct work_struct *work)
+{
+	struct drm_self_refresh_data *sr_data = container_of(
+			work, struct drm_self_refresh_data, exit_work);
+
+	drm_self_refresh_transition(sr_data, false);
+}
+
+static void drm_self_refresh_input_event(struct drm_input_handler *handler)
+{
+	struct drm_self_refresh_data *sr_data = container_of(
+			handler, struct drm_self_refresh_data, input_handler);
+
+	schedule_work(&sr_data->exit_work);
+}
 /**
  * drm_self_refresh_helper_init - Initializes self refresh helpers for a crtc
  * @crtc: the crtc which supports self refresh supported displays
@@ -232,6 +283,7 @@ EXPORT_SYMBOL(drm_self_refresh_helper_alter_state);
 int drm_self_refresh_helper_init(struct drm_crtc *crtc)
 {
 	struct drm_self_refresh_data *sr_data = crtc->self_refresh_data;
+	int ret;
 
 	/* Helper is already initialized */
 	if (WARN_ON(sr_data))
@@ -243,6 +295,7 @@ int drm_self_refresh_helper_init(struct drm_crtc *crtc)
 
 	INIT_DELAYED_WORK(&sr_data->entry_work,
 			  drm_self_refresh_helper_entry_work);
+	INIT_WORK(&sr_data->exit_work, drm_self_refresh_helper_exit_work);
 	sr_data->crtc = crtc;
 	mutex_init(&sr_data->avg_mutex);
 	ewma_psr_time_init(&sr_data->entry_avg_ms);
@@ -256,8 +309,22 @@ int drm_self_refresh_helper_init(struct drm_crtc *crtc)
 	ewma_psr_time_add(&sr_data->entry_avg_ms, SELF_REFRESH_AVG_SEED_MS);
 	ewma_psr_time_add(&sr_data->exit_avg_ms, SELF_REFRESH_AVG_SEED_MS);
 
+	if (self_refresh_input_boost) {
+		sr_data->input_handler.callback = drm_self_refresh_input_event;
+		ret = drm_input_handle_register(crtc->dev,
+						&sr_data->input_handler);
+		if (ret)
+			goto err;
+		sr_data->input_handler_registered = true;
+	}
+
 	crtc->self_refresh_data = sr_data;
+
 	return 0;
+
+err:
+	kfree(sr_data);
+	return ret;
 }
 EXPORT_SYMBOL(drm_self_refresh_helper_init);
 
@@ -275,7 +342,10 @@ void drm_self_refresh_helper_cleanup(struct drm_crtc *crtc)
 
 	crtc->self_refresh_data = NULL;
 
+	if (sr_data->input_handler_registered)
+		drm_input_handle_unregister(&sr_data->input_handler);
 	cancel_delayed_work_sync(&sr_data->entry_work);
+	cancel_work_sync(&sr_data->exit_work);
 	kfree(sr_data);
 }
 EXPORT_SYMBOL(drm_self_refresh_helper_cleanup);
-- 
2.34.0.rc1.387.gb447b232ab-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
