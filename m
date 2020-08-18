Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAEB8C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 09:01:10 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 977DC206B5
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 09:01:10 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="S+/fRyvf";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=redhat.com header.i=@redhat.com header.b="brekEtiu"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 977DC206B5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=redhat.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZEc8hJk+Wmt66H16W7q770n3fOnoCz6dMkAVrGFjkak=; b=S+/fRyvfyHp7R+rnD2wyFIDmb
	VpnNxh7BORc206yN22yTu0poRY+/xcrU5Jnh7v+4z1Ok8U4fiPnKepilEgY+mhb2E42OXQOksEgeZ
	9roRIwdItzv7umE56nCjLbt1gGiSA8Iwq5YR2ZZFFFi7UetZNGSj4EQS57+CIqr9Zf5U8BIe5L8oh
	RYwwucU6sBFKqR5junI5Kqn244U8EJCLAG/NYb4oyAsoEihibTZalnW/JIi11mdF7d1aEGPhJgSMD
	pLYrtHmecaED7vIotTkkyrwFtFB3d8sKx5VCECU2E4kxjy3RAlojg4lLw1Y1oFIGS1cS4lTI5nGwU
	TDYzgy4sw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7xUO-0001qH-Gz; Tue, 18 Aug 2020 09:01:04 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7xUL-0001pe-PW
 for linux-rockchip@lists.infradead.org; Tue, 18 Aug 2020 09:01:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1597741261;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=LwYlioqpHS/gmxgOcffqAwVxuvHCLYruQxEepn5wr38=;
 b=brekEtiubhn089zUnXdUhyElBn+swpGj+xb4HJIPMUZa9I33U2xhMMriwzAifF7n9Bv/zB
 afT3VylL3J4nVI+7x+qLw4qKiBhjvV2m4xg9/KgdDqmp0rPZ6PZQWdQVDhYYhWBF0y38IL
 I5CKNfXtF5WKK5wQ0r2wXsjat3G0ho4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-132-mlrecaKvN2iRk-aKQOmtPQ-1; Tue, 18 Aug 2020 05:00:57 -0400
X-MC-Unique: mlrecaKvN2iRk-aKQOmtPQ-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D5813A0BC2;
 Tue, 18 Aug 2020 09:00:53 +0000 (UTC)
Received: from sirius.home.kraxel.org (ovpn-112-195.ams2.redhat.com
 [10.36.112.195])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EFEDA5D9D2;
 Tue, 18 Aug 2020 09:00:49 +0000 (UTC)
Received: by sirius.home.kraxel.org (Postfix, from userid 1000)
 id 078151753B; Tue, 18 Aug 2020 11:00:49 +0200 (CEST)
Date: Tue, 18 Aug 2020 11:00:49 +0200
From: Gerd Hoffmann <kraxel@redhat.com>
To: Christian =?utf-8?B?S8O2bmln?= <christian.koenig@amd.com>
Subject: Re: [PATCH 1/2] drm: allow limiting the scatter list size.
Message-ID: <20200818090049.qomgyyw6hif4cmah@sirius.home.kraxel.org>
References: <20200818074828.9509-1-kraxel@redhat.com>
 <20200818074828.9509-2-kraxel@redhat.com>
 <9c355d64-1a61-eb59-be80-d9fc863ddf22@amd.com>
 <20200818082703.7z6fcvoymiqow5kw@sirius.home.kraxel.org>
 <03c03129-db27-c6da-df8f-909141d2a3f7@amd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <03c03129-db27-c6da-df8f-909141d2a3f7@amd.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_050101_882277_95720015 
X-CRM114-Status: GOOD (  16.69  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

  Hi,

> > > I'm missing an explanation why this should be useful (it certainly is).
> > virtio-gpu needs this to work properly with SEV (see patch 2/2 of this
> > series).
> 
> Yeah, that's the problem patch 2/2 never showed up here :)

The list should have everything.

Your inbox probably has 1/2 only because 2/2 doesn't touch amd code and
'git send-email' evaluates sendemail.cccmd (pointing to
get_maintainer.pl) for each patch individually.

I've found this behavior confusing at times before.  Is there some way
to send the whole series to everybody?  Or at least the cover letter?
The git-send-email manpage doesn't give a clue :(

> > Placing it in drm_device instead would indeed work for virtio-gpu, so I
> > guess you are suggesting that instead?
> 
> That is probably the best approach, yes.

Ok, I'll go that route then.

thanks,
  Gerd


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
