Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E1D2C433FE
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 22:49:15 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3307D610CA
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 22:49:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 3307D610CA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LSiqR+G+zfTx6jdCZ+AhlQBOIvfzu4UIMkRmRtWaLXE=; b=Z9w4vjcKGNakKl
	gQR4nQZoiv4BHS6C7sOYSeWZY4QtqwkqRCeBFY3xTpBTllvi1dmC5B9SQ4/KxgVA6/no6t3ULgMam
	EVACbmAIXkCRjRN2zhTIBWgLH6AikKloAznfCWRW+usldHb5LHNQuhhZnpydfHyECwS0uSbnyAhH+
	VamoHmCEv5Q2ob5yHWpk8uVnwSYF87c3Zb7J/j6+xfI0Lkyq8TXq0FPIbgNIw2Q3h8hJw0oVPTzey
	htsV4Ve1K+EB1RcHS40xRKyMD+0MLVJHym2Ft+uqa9HnqtCSmssGTf8QiVL/X2xcuIvi7PBtxkhV6
	hBe3oOaD0BcUMMklj/QQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnTjp-006WU7-UP; Wed, 17 Nov 2021 22:49:09 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnTjm-006WSg-NZ
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 22:49:08 +0000
Received: by mail-pj1-x102b.google.com with SMTP id
 gf14-20020a17090ac7ce00b001a7a2a0b5c3so6494017pjb.5
 for <linux-rockchip@lists.infradead.org>; Wed, 17 Nov 2021 14:49:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rpv3ppQp4AdrKrqKBlCi3lv1TW7GOvkKLKXPxTB7n5Y=;
 b=CmCe9x1evLqmgJ2tkD2ei5zZtVLnugfocj/BWL7RE6407XI6b4ZrG/ZlsrU08i+PTk
 U6Xo63RXOuh7ZShFvqCihtigQwrvJUIoqc93GEZiSpBCmuFKYsC8uC+WQWJo0s7PUjfD
 6cYU9y1AbXPsd0nSfQYWeT7eD3QkH//b5Sods=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=rpv3ppQp4AdrKrqKBlCi3lv1TW7GOvkKLKXPxTB7n5Y=;
 b=gVo064NfCKfqaUKbOP8fq4L5MACHA8u+mJpGpZVgvojd5vYgm42/DvsrGVlevCqW7/
 VY/MmdWzH+qatYlIeCFgMFMxvwu4WcUbIAM524lHJ7FmaaOAz6rmuN39YOQcTMfBZMR/
 ZMYrmILicZbeo4uzfuR90kzk9ACugaHpggRhhKpZFnp0klSZ6CtwgPvCOlmIjy8VnLmy
 zdWjshH8j6om+gjWGp1bFMRCSERrHBo/czU0VDlAKpRw6p6X4M5AhJ/CzYQjZfLcKOPs
 VFtbu8/+A8g019cGIzVXslL1Vj8AVqYEAqjVbEN8xNYmKAivti1J7KOH4nto9QUsckcP
 fTCw==
X-Gm-Message-State: AOAM5330XaD4BOfsZ7kf6Z5VsAPtPSSuAcmT/4QZlZwSapnVfP+38+jl
 1htXzhW4950DQjZ04JLvSQZGgw==
X-Google-Smtp-Source: ABdhPJyLA0GlFJYLVXLkAb23Pd6HZXVzIX/Db1U2jnd4GET4hbncySrNQFQD8cVcGqeHii1Rq+eQxw==
X-Received: by 2002:a17:90a:2843:: with SMTP id
 p3mr4320482pjf.176.1637189345652; 
 Wed, 17 Nov 2021 14:49:05 -0800 (PST)
Received: from localhost ([2620:15c:202:201:896b:df38:4eae:c568])
 by smtp.gmail.com with UTF8SMTPSA id w189sm620772pfd.164.2021.11.17.14.49.04
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Nov 2021 14:49:05 -0800 (PST)
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
Subject: [PATCH v2 0/2] drm: Support input-boosted panel self-refresh exit
Date: Wed, 17 Nov 2021 14:48:39 -0800
Message-Id: <20211117224841.3442482-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.34.0.rc1.387.gb447b232ab-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_144906_831637_3DED6C57 
X-CRM114-Status: GOOD (  16.13  )
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

A variety of applications have found it useful to listen to
user-initiated input events to make decisions within a DRM driver, given
that input events are often the first sign that we're going to start
doing latency-sensitive activities:

 * Panel self-refresh: software-directed self-refresh (e.g., with
   Rockchip eDP) is especially latency sensitive. In some cases, it can
   take 10s of milliseconds for a panel to exit self-refresh, which can
   be noticeable. Rockchip RK3399 Chrome OS systems have always shipped
   with an input_handler boost, that preemptively exits self-refresh
   whenever there is input activity.

 * GPU drivers: on GPU-accelerated desktop systems, we may need to
   render new frames immediately after user activity. Powering up the
   GPU can take enough time that it is worthwhile to start this process
   as soon as there is input activity. Many Chrome OS systems also ship
   with an input_handler boost that powers up the GPU.

I implement the first bullet in this series, and I also compared with
some out-of-tree patches for the second, to ensure this could be useful
there too.

Past work on upstreaming a variety of Chromebook display patches got
held up for this particular feature, as there was some desire to make it
a bit more generic, for one. See the latest here:

  https://lore.kernel.org/all/20180405095000.9756-25-enric.balletbo@collabora.com/
  [PATCH v6 24/30] drm/rockchip: Disable PSR on input events

I significantly rewrote this to adapt it to the new common
drm_self_refresh_helpers and to add a new drm_input_helper thin library,
so I only carry my own authorship on this series.

Admittedly, this "drm_input_helper" library is barely DRM-specific at
all, except that all display- and GPU-related input-watchers are likely
to want to watch similar device behavior (unlike, say, rfkill or led
input_handler code). The approximate consensus so far seems to be that
(a) this isn't much code; if we need it for other subsystems (like,
    cpufreq-boost), it's easy to implement similar logic
(b) input subsystem maintainers think the existing input_handler
    abstraction is good enough
So, I keep the thin input helper in drivers/gpu/drm/.

v1: https://lore.kernel.org/all/20211103234018.4009771-1-briannorris@chromium.org/

Changes in v2:
 - Honor CONFIG_INPUT dependency, via new CONFIG_DRM_INPUT_HELPER
 - Remove void*; users should use container_of()
 - Document the callback context
 - Delay PSR re-entry, when already disabled
 - Allow default configuration via Kconfig and modparam
 - really CC dri-devel@lists.freedesktop.org (oops!)

Brian Norris (2):
  drm/input_helper: Add new input-handling helper
  drm/self_refresh: Disable self-refresh on input events

 drivers/gpu/drm/Kconfig                   |  22 ++++
 drivers/gpu/drm/Makefile                  |   2 +
 drivers/gpu/drm/drm_input_helper.c        | 143 ++++++++++++++++++++++
 drivers/gpu/drm/drm_self_refresh_helper.c |  98 ++++++++++++---
 include/drm/drm_input_helper.h            |  41 +++++++
 5 files changed, 292 insertions(+), 14 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_input_helper.c
 create mode 100644 include/drm/drm_input_helper.h

-- 
2.34.0.rc1.387.gb447b232ab-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
