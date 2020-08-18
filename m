Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04DC1C433E1
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 08:27:21 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C2132206B5
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 08:27:20 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="fzxQ0L3S";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="Af/2mKqO"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C2132206B5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sAAQPLXGANk5WZvVz7oFYI08osEPRS1hOC6SiXwMGeQ=; b=fzxQ0L3Sw+5lyb/yXiY6iJdMB
	5eZbDX678ZlVUhVjusWkhIuVPHidcbfb1N2pVRG6bsUa5fLNexifNUnFD0B6W7yndTSqYzbKjmIEw
	ZnQZoVDi5F5EqDivHZ9v0GILgcdz/MGxlZQZXxBkND6V3qCxWws34PDpwEiBJMm0X7yrHaW81kYC1
	K82WGt01eSWfzCI6T/GxYPKO4gtW053hK3Lxibr77heYx8vfNvCOp7V1QoR+Gy9mHojU6CSvv+P8g
	8bsbP9lmy+ZFY3KMyqvT8rDF/yDoLxgO8e47zdYzDnPBd7L+sfTUe2UqXiJDkxiRbSqNf0X95VPRK
	9YVU4r6FA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7wxh-0005Pc-PR; Tue, 18 Aug 2020 08:27:17 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7wxe-0005Ny-KC
 for linux-rockchip@lists.infradead.org; Tue, 18 Aug 2020 08:27:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597739233;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YE9v2iUUt0C+eIB9363k6FZZUNnKbdhJpiU9fX/PhuY=;
 b=Af/2mKqOvbxTNoooOkwf2vMQkD1fX7Bsqo7+NuMpZbcr6pnrUM1vF+jLc9VRucj8HrUKuL
 iv8JWKvDfGeaP6e6lk06lWGvq0CYSjuR8dJzCJjewDkHxveVPC8sQTfsNg041G6Adz/VOk
 MDAIKk1NmMkqOi9RnmuJ569MwcKJXQM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-11-ahIv83ehNsqc6ofMzQXlaA-1; Tue, 18 Aug 2020 04:27:09 -0400
X-MC-Unique: ahIv83ehNsqc6ofMzQXlaA-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B292C1DDF1;
 Tue, 18 Aug 2020 08:27:06 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-195.ams2.redhat.com
 [10.36.112.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A5EAA261B9;
 Tue, 18 Aug 2020 08:27:04 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id C21E09CBD; Tue, 18 Aug 2020 10:27:03 +0200 (CEST)
Date: Tue, 18 Aug 2020 10:27:03 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Subject: Re: [PATCH 1/2] drm: allow limiting the scatter list size.
Message-ID: <20200818082703.7z6fcvoymiqow5kw@sirius.home.kraxel.org>
References: <20200818074828.9509-1-kraxel@redhat.com>
 <20200818074828.9509-2-kraxel@redhat.com>
 <9c355d64-1a61-eb59-be80-d9fc863ddf22@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9c355d64-1a61-eb59-be80-d9fc863ddf22@amd.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_042714_735213_208823C5 
X-CRM114-Status: GOOD (  16.24  )
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
Cc: "open list:DRM DRIVER FOR MSM ADRENO GPU"
 <freedreno@lists.freedesktop.org>, Alex Deucher <alexander.deucher@amd.com>,
 open list <linux-kernel@vger.kernel.org>,
 Oleksandr Andrushchenko <oleksandr_andrushchenko@epam.com>,
 David Airlie <airlied@linux.ie>,
 "open list:DRM DRIVER FOR NVIDIA GEFORCE/QUADRO GPUS"
 <nouveau@lists.freedesktop.org>,
 "open list:DRM DRIVER FOR MSM ADRENO GPU" <linux-arm-msm@vger.kernel.org>,
 "moderated list:DRM DRIVERS FOR VIVANTE GPU IP"
 <etnaviv@lists.freedesktop.org>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel@lists.freedesktop.org, Jonathan Hunter <jonathanh@nvidia.com>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 "open list:RADEON and AMDGPU DRM DRIVERS" <amd-gfx@lists.freedesktop.org>,
 Thomas Zimmermann <tzimmermann@suse.de>,
 Russell King <linux+etnaviv@armlinux.org.uk>,
 "open list:DRM DRIVERS FOR NVIDIA TEGRA" <linux-tegra@vger.kernel.org>,
 "moderated list:DRM DRIVERS FOR XEN" <xen-devel@lists.xenproject.org>,
 Sean Paul <sean@poorly.run>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, Ben Skeggs <bskeggs@redhat.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Aug 18, 2020 at 09:57:59AM +0200, Christian K=F6nig wrote:
> Am 18.08.20 um 09:48 schrieb Gerd Hoffmann:
> > Add max_segment argument to drm_prime_pages_to_sg().  When set pass it
> > through to the __sg_alloc_table_from_pages() call, otherwise use
> > SCATTERLIST_MAX_SEGMENT.
> > =

> > Also add max_segment field to gem objects and pass it to
> > drm_prime_pages_to_sg() calls in drivers and helpers.
> > =

> > Signed-off-by: Gerd Hoffmann <kraxel@redhat.com>
> =

> I'm missing an explanation why this should be useful (it certainly is).

virtio-gpu needs this to work properly with SEV (see patch 2/2 of this
series).

> And the maximum segment size seems misplaced in the GEM object. This is
> usually a property of the device or even completely constant.

Placing it in drm_device instead would indeed work for virtio-gpu, so I
guess you are suggesting that instead?

take care,
  Gerd


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
