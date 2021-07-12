Return-Path: <SRS0=7Rgf=ME=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50580C07E99
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:06:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 170AB611CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Jul 2021 20:06:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 170AB611CD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lk3lSsI7SSxuzYa2AjegahDfw7KqQFgYT66Wv5v7GjE=; b=tXfLdyl0VamvI7
	ncxobFfZt80Rf2FdCJrkw/HOvPrO9zlqg/7UIAK8KJBniyDO/IyF6klqnHWLmWGpep3aB1hM5E/V/
	+TSHkDq6rhcjiNfWgu5ZyMPc/pp6tMpUldBfA1vQ9SwjMyF0hESQ+1KWgyQGFIopeaWO68wfi4AlZ
	EHZsagrgdL/5R5x1anWIKIyhXHEDhrQ6MdjkFQ2U9Qe0jOBjZge6WQcE6YUb9O8BwM7bT+I2bpxSf
	gNpqGMK+rggl2pGrWep4dWRmzARgmiyFex3oO6ssib5MrljPVRTMPEzDIL5c1Rna6pZ3ytkCoZ/Am
	oDepVHcZWKrwKG2sEB5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m32Bg-008L6C-Ab; Mon, 12 Jul 2021 20:05:56 +0000
Received: from mail-io1-f50.google.com ([209.85.166.50])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m32Bd-008L53-L0
 for linux-rockchip@lists.infradead.org; Mon, 12 Jul 2021 20:05:54 +0000
Received: by mail-io1-f50.google.com with SMTP id l18so19255242iow.4
 for <linux-rockchip@lists.infradead.org>; Mon, 12 Jul 2021 13:05:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=hSkemDrItXKnMgWqMMqlby26nSWhNiqnVksd+yGmk6Q=;
 b=f9iNi/xlX8H600y6hmGQCsRvjvpjsn9Gj5pRxQV9SU6xL4RKg8Raqu1OoHtdEcM117
 QwP7pDSSg40unpndNPCJy2aVhyqR+vSWgh2KTu28LXs30mThhZLhfoCqBfZ3nazh2ZOF
 w/C00YI/kA8L5RZEeiOT0ZDpWlahUQyQyyfKISrGRvKwGY00ZZgzzFAoo5wn272CSxHZ
 q8OBuXvQREP8j69rZFjKpIO/uA1fK4BDAxUum8rOq1oQ64m+UiBo6Bhhi2u/BQsSK25M
 RV1HdrmNpP9+Ew+NfxzndA9MEVUIu19+kZ23gfCd+dz815W0qxK3u9ysY07kawJ3BYdB
 EUTg==
X-Gm-Message-State: AOAM5321CaFmmnRCJoVQ4uvlLUx2D3k5feqxRL8j5Jyo7h98cZJH2lfC
 l0ytdZ+3y8N/LYNo/CM51w==
X-Google-Smtp-Source: ABdhPJy/5pOCxcYIQVQY1hSUtcEnec6S1Ig3CVmYMdFZBYL8q6fgOdFo45C8xi+EagDgkPgp4BQoQA==
X-Received: by 2002:a05:6638:348c:: with SMTP id
 t12mr639166jal.1.1626120351732; 
 Mon, 12 Jul 2021 13:05:51 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
 by smtp.gmail.com with ESMTPSA id g20sm8986263ilk.81.2021.07.12.13.05.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 12 Jul 2021 13:05:51 -0700 (PDT)
Received: (nullmailer pid 2398804 invoked by uid 1000);
 Mon, 12 Jul 2021 20:05:47 -0000
Date: Mon, 12 Jul 2021 14:05:47 -0600
From: Rob Herring <robh@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Laurent.pinchart@ideasonboard.com, helen.koike@collabora.com,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 hverkuil-cisco@xs4all.nl, dafna.hirschfeld@collabora.com, robh+dt@kernel.org,
 ezequiel@collabora.com, mchehab@kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 devicetree@vger.kernel.org
Subject: Re: [PATCH v6 03/10] dt-bindings: media: rkisp1: document different
 irq possibilities
Message-ID: <20210712200547.GA2398747@robh.at.kernel.org>
References: <20210618130238.4171196-1-heiko@sntech.de>
 <20210618130238.4171196-4-heiko@sntech.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210618130238.4171196-4-heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210712_130553_737695_6DFBB88C 
X-CRM114-Status: GOOD (  10.86  )
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

On Fri, 18 Jun 2021 15:02:31 +0200, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Some variants have one irq signaling all of MI, MIPI and ISP events
> while some rkisp1 variants use separate irqs for each.
> 
> Adapt the binding to handle both cases.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>  .../bindings/media/rockchip-isp1.yaml         | 45 +++++++++++++------
>  1 file changed, 31 insertions(+), 14 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
