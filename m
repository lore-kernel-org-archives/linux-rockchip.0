Return-Path: <SRS0=ad98=HZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 656E1C433DB
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 17:10:32 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1B60C64DD3
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Feb 2021 17:10:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1B60C64DD3
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Q+25bLaMrV8JyDPD9butNJIFmH9TeTGWP8PRCCsNiqs=; b=0ARqh1V36zgfp46vc4PzHNIUe
	QcugFvB0l3ZGpR/wx82HN53O7ATkVftp3Cg4sCO/vOEOAMxsh5ER9WHO+va6i5CLA0O8/Ktms7+v5
	19KLZ+V5w2xTpJrtRnNC7y6t/40e84NGHG0oHs9MY81qeEfsQlBKk2Vd15/5pDTodokl39f1i11F4
	YnfeabxV1owQWmm2cmRuBQRoxPgKjh/5qzJb75Iuh8gbqUF1K4hWgpmHuBPU8+ZkmOKcOYZAKPap+
	gP6sDJyLmmXbmf4cAzLW3myEPoAjmd86cSmUL83TNCvC8fktRL84zTUQKaskxprKH+VMefKovCxuj
	PHHzcSqRA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEbCf-0006z3-Ex; Tue, 23 Feb 2021 17:10:29 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEbCc-0006yF-AM
 for linux-rockchip@lists.infradead.org; Tue, 23 Feb 2021 17:10:27 +0000
Received: from maud (unknown [IPv6:2600:8800:8c08:3600::7632])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: alyssa)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id A6B7B1F457E0;
 Tue, 23 Feb 2021 17:10:21 +0000 (GMT)
Date: Tue, 23 Feb 2021 17:10:16 +0000
From: Alyssa Rosenzweig <alyssa@collabora.com>
To: Brian Starkey <brian.starkey@arm.com>
Subject: Re: [PATCH] drm/rockchip: Require the YTR modifier for AFBC
Message-ID: <YDU2+A0MNJnrWxPs@maud>
References: <20200811202631.3603-1-alyssa.rosenzweig@collabora.com>
 <CAPj87rMS5zxY6sK4N8zVZF9MHThmURj6kuso=G5+MQDVmNjC4Q@mail.gmail.com>
 <20210223145143.7bfayhp32tzdj637@DESKTOP-E1NTVVP.localdomain>
 <CAPj87rMkSdtrHnoLzK6zAVvST2KH8SprNnp5bS92qpr84g=fPg@mail.gmail.com>
 <20210223165348.edghgglgx4g2lvfw@DESKTOP-E1NTVVP.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210223165348.edghgglgx4g2lvfw@DESKTOP-E1NTVVP.localdomain>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210223_121026_473851_FD62DEBB 
X-CRM114-Status: GOOD (  11.20  )
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
Cc: nd <nd@arm.com>, Sandy Huang <hjc@rock-chips.com>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
 Daniel Stone <daniel@fooishbar.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

> If YTR can't be turned off, then according to the AFBC spec - correct.

There is no public AFBC spec, so I'm not sure how to respond to this.

> If the hardware allows it to be configured to use YTR with other
> component orders, I don't know exactly what the impact would be -
> maybe nothing.

It's legal to use YTR with a BGR framebuffer regardless of the content
of the framebuffer, yes? Could I postprocess with the following shader?

	void main() {
		vec4 colour = ....;
		gl_FragColor = colour.bgra;
	}

That's just 3D rendering. But now if I feed that rendered "BGR"
framebuffer in I get the illusion of RGB out.

Doing the colourspace conversion in hardware (with the
GPU's component reordering) is mathematically indistinguishable from
rendering BGR with that shader.

I sympathize with reducing AFBC's combinatoric explosion, and I realize
that the Rockchip VOP is probably wrong. I also realize that the
transform is defined for BGR inputs, not RGB ones, so it might be
slightly less effective for real content. But it seems to me allowing
both BGR+YTR and RGB+YTR upstream is the better route than simply
preventing hardware from using AFBC at all, and there are natural
encodings for both with fourcc modifiers.

Maybe there's a deeper reason to require BGR that I'm missing? Please
let me know if I've misunderstood, I only know AFBC from the GPU side.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
