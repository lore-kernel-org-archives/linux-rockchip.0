Return-Path: <SRS0=9dgF=PW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 264D3C43217
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Nov 2021 23:40:40 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E186A61053
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Nov 2021 23:40:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E186A61053
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b8Hwg1F8nDTFyfn6c8fIMhyYqIDcWZUT/4eXtzrpHow=; b=fQuHUWHfBE6JLt
	vxZ1hUxixwPyzO361a5MtQnsBBLAzMkpOYwla5dron3nZ8+ZFzxEzmjfQnRAfibckaUfaseqOnVgE
	4nFQ41FmFb4jdIBXOqqqd17JMGbj4qwTit+3zaNImM/pI9aL+f4SrFEMfa8UHG1VU32H/I8tsUg/f
	bAYz6x7XCK6mlp4dHK9ZRBZQiIhEhNypRRGWxijIAzRS0UGWKQ41xsf4GX6Yau3Iiou1N1gNlfKNX
	+F/mD+48CWx52QP0noOjL7oAkNvVI9QXsKLRDw5D8peElEonZhAuEhgiA6d7Tv2H60MF9pUWN5xl/
	dcrO1TuQ08m2KCD39z9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miPrw-0075t3-2k; Wed, 03 Nov 2021 23:40:36 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miPrs-0075rd-Kf
 for linux-rockchip@lists.infradead.org; Wed, 03 Nov 2021 23:40:34 +0000
Received: by mail-pl1-x632.google.com with SMTP id u17so4175048plg.9
 for <linux-rockchip@lists.infradead.org>; Wed, 03 Nov 2021 16:40:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Fvdv9qSjYcr4vPXhlPONLjBsydnb58oCITwHeQtG2OU=;
 b=MO3krVRdTJELDUh0mqjI1Pfg521osGeQFg24altVUYAZw6vrTtbg1dfsV8smssBd/o
 mTej0wBkgiszcZAKfslHnwT+0r38dkHVOKk7wGzSFG70i05Pb4JOuDbk0GEOfDOzA4WL
 fq99zZDZP6YaseBcXJcojV9cBhtD+NenbMg/8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Fvdv9qSjYcr4vPXhlPONLjBsydnb58oCITwHeQtG2OU=;
 b=7PUqrjoDRsBoYcjDyx7bowAZZPsudpxx8XuFUha3XSQWxWZw3uhrU2cY9ZZ1ckdpUc
 aM07z9DDEJHGSeo5r+E9sHRCR7OaVEcvcBPN43Hcf+/84WvOBEdUJlQHB2XeDSnkBXNS
 4xrL0E3uylPHOBXxyCPmz8AL13ySFIlWkhqNrJc9Hk8kDthPzgU7L5rc3CJr2hH2kQ8Y
 +P483xMvq8qq3oiVaBNTyfUC7Oom3MoLTP7+64RS2z9ZXUaZMkk1tnT5HRVESVjsMhy0
 Ygv/I3aaj4V4sdBNmvC3NWUbdOePLtlEkY6lv5tI8Uwc+yIwoOb7Cxp7lodKG7RmdqHZ
 qqcQ==
X-Gm-Message-State: AOAM530R8Pvvh7imWUQ+1So1IWSGeTCRtlf742a9ee8hkuGc/6qAOsiw
 qPj98imH5lc3H6DaZciWrszyGg==
X-Google-Smtp-Source: ABdhPJwPVsz03tLONdef1f7X7daj00VlFBvZVhrh3qwJU9AViI2taK7DEGUQEi3DELwP5YgAhnrrvA==
X-Received: by 2002:a17:902:ec8e:b0:141:da55:6158 with SMTP id
 x14-20020a170902ec8e00b00141da556158mr25304626plg.7.1635982831457; 
 Wed, 03 Nov 2021 16:40:31 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:49a7:f0ba:24b0:bc39])
 by smtp.gmail.com with UTF8SMTPSA id hk18sm1224684pjb.20.2021.11.03.16.40.30
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Nov 2021 16:40:30 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 linux-input@vger.kernel.org, David Airlie <airlied@linux.ie>,
 linux-rockchip@lists.infradead.org,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Doug Anderson <dianders@chromium.org>, Rob Clark <robdclark@chromium.org>,
 Rob Clark <robdclark@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH 2/2] drm/self_refresh: Disable self-refresh on input events
Date: Wed,  3 Nov 2021 16:40:18 -0700
Message-Id: <20211103164002.2.Ie6c485320b35b89fd49e15a73f0a68e3bb49eef9@changeid>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
In-Reply-To: <20211103234018.4009771-1-briannorris@chromium.org>
References: <20211103234018.4009771-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211103_164032_714962_7AA6B751 
X-CRM114-Status: GOOD (  20.27  )
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

 drivers/gpu/drm/drm_self_refresh_helper.c | 54 ++++++++++++++++++++---
 1 file changed, 48 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/drm_self_refresh_helper.c b/drivers/gpu/drm/drm_self_refresh_helper.c
index dd33fec5aabd..dcab061cc90a 100644
--- a/drivers/gpu/drm/drm_self_refresh_helper.c
+++ b/drivers/gpu/drm/drm_self_refresh_helper.c
@@ -15,6 +15,7 @@
 #include <drm/drm_connector.h>
 #include <drm/drm_crtc.h>
 #include <drm/drm_device.h>
+#include <drm/drm_input_helper.h>
 #include <drm/drm_mode_config.h>
 #include <drm/drm_modeset_lock.h>
 #include <drm/drm_print.h>
@@ -58,17 +59,17 @@ DECLARE_EWMA(psr_time, 4, 4)
 struct drm_self_refresh_data {
 	struct drm_crtc *crtc;
 	struct delayed_work entry_work;
+	struct work_struct exit_work;
+	struct drm_input_handler input_handler;
 
 	struct mutex avg_mutex;
 	struct ewma_psr_time entry_avg_ms;
 	struct ewma_psr_time exit_avg_ms;
 };
 
-static void drm_self_refresh_helper_entry_work(struct work_struct *work)
+static void drm_self_refresh_transition(struct drm_self_refresh_data *sr_data,
+					bool enable)
 {
-	struct drm_self_refresh_data *sr_data = container_of(
-				to_delayed_work(work),
-				struct drm_self_refresh_data, entry_work);
 	struct drm_crtc *crtc = sr_data->crtc;
 	struct drm_device *dev = crtc->dev;
 	struct drm_modeset_acquire_ctx ctx;
@@ -95,6 +96,9 @@ static void drm_self_refresh_helper_entry_work(struct work_struct *work)
 		goto out;
 	}
 
+	if (crtc->state->self_refresh_active == enable)
+		goto out;
+
 	if (!crtc_state->enable)
 		goto out;
 
@@ -107,8 +111,8 @@ static void drm_self_refresh_helper_entry_work(struct work_struct *work)
 			goto out;
 	}
 
-	crtc_state->active = false;
-	crtc_state->self_refresh_active = true;
+	crtc_state->active = !enable;
+	crtc_state->self_refresh_active = enable;
 
 	ret = drm_atomic_commit(state);
 	if (ret)
@@ -129,6 +133,15 @@ static void drm_self_refresh_helper_entry_work(struct work_struct *work)
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
@@ -223,6 +236,20 @@ void drm_self_refresh_helper_alter_state(struct drm_atomic_state *state)
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
+static void drm_self_refresh_input_event(void *data)
+{
+	struct drm_self_refresh_data *sr_data = data;
+
+	schedule_work(&sr_data->exit_work);
+}
 /**
  * drm_self_refresh_helper_init - Initializes self refresh helpers for a crtc
  * @crtc: the crtc which supports self refresh supported displays
@@ -232,6 +259,7 @@ EXPORT_SYMBOL(drm_self_refresh_helper_alter_state);
 int drm_self_refresh_helper_init(struct drm_crtc *crtc)
 {
 	struct drm_self_refresh_data *sr_data = crtc->self_refresh_data;
+	int ret;
 
 	/* Helper is already initialized */
 	if (WARN_ON(sr_data))
@@ -243,6 +271,7 @@ int drm_self_refresh_helper_init(struct drm_crtc *crtc)
 
 	INIT_DELAYED_WORK(&sr_data->entry_work,
 			  drm_self_refresh_helper_entry_work);
+	INIT_WORK(&sr_data->exit_work, drm_self_refresh_helper_exit_work);
 	sr_data->crtc = crtc;
 	mutex_init(&sr_data->avg_mutex);
 	ewma_psr_time_init(&sr_data->entry_avg_ms);
@@ -256,8 +285,19 @@ int drm_self_refresh_helper_init(struct drm_crtc *crtc)
 	ewma_psr_time_add(&sr_data->entry_avg_ms, SELF_REFRESH_AVG_SEED_MS);
 	ewma_psr_time_add(&sr_data->exit_avg_ms, SELF_REFRESH_AVG_SEED_MS);
 
+	sr_data->input_handler.callback = drm_self_refresh_input_event;
+	sr_data->input_handler.priv = sr_data;
+	ret = drm_input_handle_register(crtc->dev, &sr_data->input_handler);
+	if (ret)
+		goto err;
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
 
@@ -275,7 +315,9 @@ void drm_self_refresh_helper_cleanup(struct drm_crtc *crtc)
 
 	crtc->self_refresh_data = NULL;
 
+	drm_input_handle_unregister(&sr_data->input_handler);
 	cancel_delayed_work_sync(&sr_data->entry_work);
+	cancel_work_sync(&sr_data->exit_work);
 	kfree(sr_data);
 }
 EXPORT_SYMBOL(drm_self_refresh_helper_cleanup);
-- 
2.34.0.rc0.344.g81b53c2807-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
