Return-Path: <SRS0=Tpqa=QF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AB0FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 08:34:33 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C9DA461548
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Nov 2021 08:34:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C9DA461548
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=emersion.fr
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:
	In-Reply-To:Message-ID:Subject:Cc:From:To:Date:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J+2//4VSjrft8e3AjBHrrc/i1VgjA/QFDJHSBGTmw0Q=; b=NebSofaD/Hj6hR
	KZrfKKSwS/+JM4jWtQ3fHB734R8n6TdTxVVNLg2HQRTanLR3v/Pta3WfifP4FilySnnyRkMayzD3x
	FfhFJwiv3xHznSXc6625UgvfJjtiMMFqBLCN1pfjR4kuyvnMMOQs8HdnhUV6qcgGvz1ivL93Jq2oa
	vDWfvY4EEkO/y6g+K6RN5Pn3up5DiyRQKYlf/VksBtYEYxCO0V+SEe+tn642Dk4WX2EJxYrRMMpkM
	1cOxh8iDyZ0ymD/8BO+HnU7kod3LlVqWHsjufx+ldU/19Q53ahex11fedls77rFL5ze/K/6fQVJcS
	sD5a1SBdLE0B0Ha2ttKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mncsD-007CxX-JV; Thu, 18 Nov 2021 08:34:25 +0000
Received: from mail-4022.proton.ch ([185.70.40.22])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mncsA-007Cvf-9X
 for linux-rockchip@lists.infradead.org; Thu, 18 Nov 2021 08:34:24 +0000
Date: Thu, 18 Nov 2021 08:34:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=emersion.fr;
 s=protonmail; t=1637224456;
 bh=vfacuKJ/8pxBqZYX9U97ETpBAOFypIw5shMz2e4BuQI=;
 h=Date:To:From:Cc:Reply-To:Subject:In-Reply-To:References:From;
 b=kEWhhH7ZqAVsnizPbtaisRT0gUjetqk1SpO2vZNn8ngbQP6PcYwPHdenYL62KgZOa
 yCS0GP6sWd8yuej9AcSZYx3HgY15w0CMC3IAf/an67IxMso4emPR2CcFwKoRsWOc6D
 JaTefHSzDlzHKWa3A5yaWKoDZg1wzwyesiuKurYxlB98wUrXG7YfoJfaK83XSZaneY
 zvymOLYwFIdxBFBj490NF1YWmeg8bACUmwnqvfTTdP0Y8x3c41h7Av+uzHdVw8AgwL
 wqKZdkiaFEB5AuLf5N981PDXuwsF62VOxjKMGC0jawPFOvNtA+3XMSIpFRxlaQjITd
 5CiKeDPlSFlhg==
To: Brian Norris <briannorris@chromium.org>
From: Simon Ser <contact@emersion.fr>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 Rob Clark <robdclark@chromium.org>, David Airlie <airlied@linux.ie>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Doug Anderson <dianders@chromium.org>,
 linux-rockchip@lists.infradead.org,
 "Kristian H . Kristensen" <hoegsberg@google.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>, linux-input@vger.kernel.org,
 Pekka Paalanen <ppaalanen@gmail.com>
Subject: Re: [PATCH v2 0/2] drm: Support input-boosted panel self-refresh exit
Message-ID: <eKiIqOeH_0iCJ5qKedzwefk36VAe-8YPqi7kG52SsMs2OxEt4u1sEML07P0RQkgNR4cuj97VduO_Xa6ktp4m2pdunmQnK8hE9Zp7dDTtruw=@emersion.fr>
In-Reply-To: <20211117224841.3442482-1-briannorris@chromium.org>
References: <20211117224841.3442482-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211118_003422_748470_38E3058E 
X-CRM114-Status: GOOD (  24.20  )
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
Reply-To: Simon Ser <contact@emersion.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

From a user-space point-of-view, we discussed about this patch on IRC a few
days ago [1]. Since this adds a policy decision we think it'd be best to allow
user-space to control this behavior.

Also cc Pekka.

Thanks,

Simon

[1]: https://oftc.irclog.whitequark.org/dri-devel/2021-11-07#1636276286-1636273745;

> A variety of applications have found it useful to listen to
> user-initiated input events to make decisions within a DRM driver, given
> that input events are often the first sign that we're going to start
> doing latency-sensitive activities:
>
>  * Panel self-refresh: software-directed self-refresh (e.g., with
>    Rockchip eDP) is especially latency sensitive. In some cases, it can
>    take 10s of milliseconds for a panel to exit self-refresh, which can
>    be noticeable. Rockchip RK3399 Chrome OS systems have always shipped
>    with an input_handler boost, that preemptively exits self-refresh
>    whenever there is input activity.
>
>  * GPU drivers: on GPU-accelerated desktop systems, we may need to
>    render new frames immediately after user activity. Powering up the
>    GPU can take enough time that it is worthwhile to start this process
>    as soon as there is input activity. Many Chrome OS systems also ship
>    with an input_handler boost that powers up the GPU.
>
> I implement the first bullet in this series, and I also compared with
> some out-of-tree patches for the second, to ensure this could be useful
> there too.
>
> Past work on upstreaming a variety of Chromebook display patches got
> held up for this particular feature, as there was some desire to make it
> a bit more generic, for one. See the latest here:
>
>   https://lore.kernel.org/all/20180405095000.9756-25-enric.balletbo@collabora.com/
>   [PATCH v6 24/30] drm/rockchip: Disable PSR on input events
>
> I significantly rewrote this to adapt it to the new common
> drm_self_refresh_helpers and to add a new drm_input_helper thin library,
> so I only carry my own authorship on this series.
>
> Admittedly, this "drm_input_helper" library is barely DRM-specific at
> all, except that all display- and GPU-related input-watchers are likely
> to want to watch similar device behavior (unlike, say, rfkill or led
> input_handler code). The approximate consensus so far seems to be that
> (a) this isn't much code; if we need it for other subsystems (like,
>     cpufreq-boost), it's easy to implement similar logic
> (b) input subsystem maintainers think the existing input_handler
>     abstraction is good enough
> So, I keep the thin input helper in drivers/gpu/drm/.
>
> v1: https://lore.kernel.org/all/20211103234018.4009771-1-briannorris@chromium.org/
>
> Changes in v2:
>  - Honor CONFIG_INPUT dependency, via new CONFIG_DRM_INPUT_HELPER
>  - Remove void*; users should use container_of()
>  - Document the callback context
>  - Delay PSR re-entry, when already disabled
>  - Allow default configuration via Kconfig and modparam
>  - really CC dri-devel@lists.freedesktop.org (oops!)
>
> Brian Norris (2):
>   drm/input_helper: Add new input-handling helper
>   drm/self_refresh: Disable self-refresh on input events
>
>  drivers/gpu/drm/Kconfig                   |  22 ++++
>  drivers/gpu/drm/Makefile                  |   2 +
>  drivers/gpu/drm/drm_input_helper.c        | 143 ++++++++++++++++++++++
>  drivers/gpu/drm/drm_self_refresh_helper.c |  98 ++++++++++++---
>  include/drm/drm_input_helper.h            |  41 +++++++
>  5 files changed, 292 insertions(+), 14 deletions(-)
>  create mode 100644 drivers/gpu/drm/drm_input_helper.c
>  create mode 100644 include/drm/drm_input_helper.h
>
> --
> 2.34.0.rc1.387.gb447b232ab-goog

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
