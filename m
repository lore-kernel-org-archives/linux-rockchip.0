Return-Path: <SRS0=9dgF=PW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 81D04C4332F
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Nov 2021 23:40:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 45819604DA
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Nov 2021 23:40:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 45819604DA
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wBUnkohSTH/ujYtPLXYa7WZIURHRYj6rwxco+V/uVhQ=; b=MR6JhcK5ahV9T1
	mZfxtbZW/dUoUv0psMVD9cB1QvdzUV+gBQH7CLEZaF8NJTNAGmuIam01FxtpxLYsEDCP+PuOk3wNB
	xJVW7sHB19L0QGvzINtnuR9ooTVVHP6QIE63+IGbdWmt/VX8LPgIcMZvLfOq3HE/3BpU1EO9QtLY1
	VXmIVERVoAXE0uI/N8OB6SXQmsxddNht1uiDRZbIbRNMLLlnqt+nvSUrpZHiU36EPg5pE4lyFiJph
	IItmtWDee+9AjOu3DHrQzAplSsbRgsxUGrny3vm5QDssYVWBTnpEnfomnl6ObgjdVcb7FSmlWKgeF
	bvuuWAvRNqqMgNLnKI1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miPrt-0075rz-4P; Wed, 03 Nov 2021 23:40:33 +0000
Received: from mail-pl1-x633.google.com ([2607:f8b0:4864:20::633])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miPrp-0075pk-JO
 for linux-rockchip@lists.infradead.org; Wed, 03 Nov 2021 23:40:31 +0000
Received: by mail-pl1-x633.google.com with SMTP id k4so4176047plx.8
 for <linux-rockchip@lists.infradead.org>; Wed, 03 Nov 2021 16:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h29gM7Edy6vLtHykubE2EOJmPzM6wMTb8eMVyU/eFYE=;
 b=EKBq7zuZioawowrHgnbn8nDEPEgxFsN+8IzKYZ1DFSblRd9o95aQr7V3qDl6+Rvs6U
 jhur7uPRIVdgQk5dvuuZVjl+0kshlBwghkKpob4bwbfvPBHyszsWfI64Og2MKXG1n71F
 oaX41A5YNhCrqinehnJDHuuOGij5giULBMcZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=h29gM7Edy6vLtHykubE2EOJmPzM6wMTb8eMVyU/eFYE=;
 b=5GDS9erlq3CNzKnLZN3dX0gZViTBDW9B1Opn23UeD8A6Uke4GxWiIrM8/rZT/TqLiS
 nABA5EA9mu/N3nLWtwY56kg3X9hBrOb9E+qBqdKs8eBRUx+aydVQHdimwNyxgTudUtPa
 HLoyprjkBKDUsn+/qyrc3HNMDlm3JCbCI9+TZ4BmRHipNdE9fgPR0KIxOIjEEvhXT2FN
 atJM7xzuBERoMtCLfa2ZrLbnyMdQSPITJFnjc3lWiiYhDbP4fJNwwFhUwGzRGC2NX8kc
 r4KRjqQ6+pImz1P4POeCmtxILkpv20AvGJJ5SbfFELeL/QNLjNPrPBUa7gc8cgOESu1Y
 yr9g==
X-Gm-Message-State: AOAM5339O6xmd9NK9H8XSbRAwWbY0nRKb/+6Jka/gdsj0CI2NMaV7Sax
 RlfmDxXb9E/Ehv2Jf76ZZM6otg==
X-Google-Smtp-Source: ABdhPJzSZ0NFj4DVKnvqt8lE+Z4I+URLHTd7SEETpWfrpdOsqyzMOJMhtRZ3er6pUKkLZSku7DTQvQ==
X-Received: by 2002:a17:902:7892:b0:140:283:6683 with SMTP id
 q18-20020a170902789200b0014002836683mr41176310pll.19.1635982827749; 
 Wed, 03 Nov 2021 16:40:27 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:49a7:f0ba:24b0:bc39])
 by smtp.gmail.com with UTF8SMTPSA id n126sm3391952pfn.6.2021.11.03.16.40.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 03 Nov 2021 16:40:27 -0700 (PDT)
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
Subject: [PATCH 0/2] drm: Support input-boosted panel self-refresh exit
Date: Wed,  3 Nov 2021 16:40:16 -0700
Message-Id: <20211103234018.4009771-1-briannorris@chromium.org>
X-Mailer: git-send-email 2.34.0.rc0.344.g81b53c2807-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211103_164029_701204_D392AC57 
X-CRM114-Status: GOOD (  14.47  )
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
input_handler code). If we find other applications need the same
behavior outside of drivers/gpu/drm/, maybe this could find a home
elsewhere.


Brian Norris (2):
  drm/input_helper: Add new input-handling helper
  drm/self_refresh: Disable self-refresh on input events

 drivers/gpu/drm/Makefile                  |   3 +-
 drivers/gpu/drm/drm_input_helper.c        | 143 ++++++++++++++++++++++
 drivers/gpu/drm/drm_self_refresh_helper.c |  54 +++++++-
 include/drm/drm_input_helper.h            |  22 ++++
 4 files changed, 215 insertions(+), 7 deletions(-)
 create mode 100644 drivers/gpu/drm/drm_input_helper.c
 create mode 100644 include/drm/drm_input_helper.h

-- 
2.34.0.rc0.344.g81b53c2807-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
