Return-Path: <SRS0=WHqa=CQ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 428D0C2D0E0
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 06:39:17 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DBE6A21556
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Sep 2020 06:39:16 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="yiI4pWO1";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="TzlNsHSk"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DBE6A21556
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HLLUvgrRwXp283e20PfQgIxZ5Lfl0/MhfEJRITeoXM4=; b=yiI4pWO1I382V0RSAgHCekl1BP
	FVvH9XEN1tjk6p+c+1g673NvIjeMW65ED/8Ey88AOFkoTc0AN7F55YQQMVtCA34XD31Zo6YTGcdV2
	beLAdZOj6/FWp3jQCIZDc4EHdLuB+UE1A2S/humjBY+S6/8x00lHw/cYV+RfyH3e/QOh9lC3xEuxf
	YAOwINqIxmykzpQqZZSuDC/UgCSUq0Dg0nCdxYEVTEgnowX0BkWAlQLWITGUmzz9/PvzheNhF94KG
	6ALBjNqsZk1WD83bM58cxJkcoZPYpX0ZuZgTsxeHPi9gqNddsrhe0nqvY7AmOXVA/WwkQWmZp4QSm
	M8lEwtbg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kFAo5-0007Ey-PL; Mon, 07 Sep 2020 06:39:13 +0000
Received: from us-smtp-delivery-124.mimecast.com ([63.128.21.124])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kFAo1-0007Do-UW
 for linux-rockchip@lists.infradead.org; Mon, 07 Sep 2020 06:39:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1599460749;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=eetlFRw0D/x8ec2NAwaNQj2c548Ry8s5O0p6d1F8FMM=;
 b=TzlNsHSkATPykCXba6pqSSYwROuSCUakNUrc5jBJk39V7R6DeYfBFDZv1PaTiu62WaROiM
 i/06j5yyYlRhWO2WCLZKLGmlE4EUUzd9jiUAIMiy3ergJmiKx4lURuXzOPzukjPQIPV9/V
 fcb1oJPQuaLIeWSkwG52Xh27B0jWits=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-472-Im-pi5WkMveRzazWd9YxPQ-1; Mon, 07 Sep 2020 02:39:07 -0400
X-MC-Unique: Im-pi5WkMveRzazWd9YxPQ-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 6C6F2427FD;
 Mon,  7 Sep 2020 06:39:03 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-56.ams2.redhat.com
 [10.36.112.56])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 83EBB19C4F;
 Mon,  7 Sep 2020 06:39:02 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 9445C9A83; Mon,  7 Sep 2020 08:39:01 +0200 (CEST)
Date: Mon, 7 Sep 2020 08:39:01 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: dri-devel@lists.freedesktop.org, christian.koenig@amd.com,
 Alex Deucher <alexander.deucher@amd.com>, David Airlie <airlied@linux.ie>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Lucas Stach <l.stach@pengutronix.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 Christian Gmeiner <christian.gmeiner@gmail.com>,
 Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
 Ben Skeggs <bskeggs@redhat.com>, Sandy Huang <hjc@rock-chips.com>,
 Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>,
 Thierry Reding <thierry.reding@gmail.com>,
 Jonathan Hunter <jonathanh@nvidia.com>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 "open list:RADEON and AMDGPU DRM DRIVERS" <amd-gfx@lists.freedesktop.org>,
 open list <linux-kernel@vger.kernel.org>,
 "moderated list:DRM DRIVERS FOR VIVANTE GPU IP"
 <etnaviv@lists.freedesktop.org>, 
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <freedreno@lists.freedesktop.org>,
 "open list:DRM DRIVER FOR NVIDIA GEFORCE/QUADRO GPUS"
 <nouveau@lists.freedesktop.org>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 "open list:DRM DRIVERS FOR NVIDIA TEGRA" <linux-tegra@vger.kernel.org>,
 "moderated list:DRM DRIVERS FOR XEN" <xen-devel@lists.xenproject.org>
Subject: Re: [PATCH v2 1/2] drm: allow limiting the scatter list size.
Message-ID: <20200907063901.atwjdxz7iqyra22h@sirius.home.kraxel.org>
References: <20200818092017.26290-1-kraxel@redhat.com>
 <20200818092017.26290-2-kraxel@redhat.com>
 <20200901074043.GT2352366@phenom.ffwll.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200901074043.GT2352366@phenom.ffwll.local>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200907_023910_029949_49F66EB2 
X-CRM114-Status: GOOD (  16.94  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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

> > +	/**
> > +	 * @max_segment:
> > +	 *
> > +	 * Max size for scatter list segments.  When unset the default
> > +	 * (SCATTERLIST_MAX_SEGMENT) is used.
> > +	 */
> > +	size_t max_segment;
> 
> Is there no better place for this then "at the bottom"? drm_device is a
> huge structure, piling stuff up randomly doesn't make it better :-)

Moved next to the other gem fields for now (v3 posted).

> I think ideally we'd have a gem substruct like we have on the modeset side
> at least.

Phew, that'll be quite some churn in the tree.  And there aren't that many
gem-related fields in struct drm_device.

So you are looking for something like below (header changes only)?

take care,
  Gerd

diff --git a/include/drm/drm_device.h b/include/drm/drm_device.h
index c455ef404ca6..950167ede98a 100644
--- a/include/drm/drm_device.h
+++ b/include/drm/drm_device.h
@@ -299,22 +299,8 @@ struct drm_device {
 	/** @mode_config: Current mode config */
 	struct drm_mode_config mode_config;
 
-	/** @object_name_lock: GEM information */
-	struct mutex object_name_lock;
-
-	/** @object_name_idr: GEM information */
-	struct idr object_name_idr;
-
-	/** @vma_offset_manager: GEM information */
-	struct drm_vma_offset_manager *vma_offset_manager;
-
-	/**
-	 * @max_segment:
-	 *
-	 * Max size for scatter list segments for GEM objects.  When
-	 * unset the default (SCATTERLIST_MAX_SEGMENT) is used.
-	 */
-	size_t max_segment;
+	/** @gem_config: Current GEM config */
+	struct drm_gem_config gem_config;
 
 	/** @vram_mm: VRAM MM memory manager */
 	struct drm_vram_mm *vram_mm;
diff --git a/include/drm/drm_gem.h b/include/drm/drm_gem.h
index 337a48321705..74129fb29fb8 100644
--- a/include/drm/drm_gem.h
+++ b/include/drm/drm_gem.h
@@ -39,6 +39,25 @@
 
 #include <drm/drm_vma_manager.h>
 
+struct drm_gem_config {
+	/** @object_name_lock: GEM information */
+	struct mutex object_name_lock;
+
+	/** @object_name_idr: GEM information */
+	struct idr object_name_idr;
+
+	/** @vma_offset_manager: GEM information */
+	struct drm_vma_offset_manager *vma_offset_manager;
+
+	/**
+	 * @max_segment:
+	 *
+	 * Max size for scatter list segments for GEM objects.  When
+	 * unset the default (SCATTERLIST_MAX_SEGMENT) is used.
+	 */
+	size_t max_segment;
+};
+
 struct drm_gem_object;
 
 /**


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
