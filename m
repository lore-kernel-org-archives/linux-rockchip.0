Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E65FC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 17:08:37 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D871A619E4
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 17:08:36 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D871A619E4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epYumHmmBxraMuben+iL2okgfe802IjfK0VNC71b2ew=; b=ncq/03UFyQ32T/
	q1HdYwXYLMgf1bEneG1/vK0w1qKb9Z58PZ6axObvakiwhfJmqs71JlfEiJK4F89UaqqIdcwXXDWmb
	7VRqEKAConFzaqhvWHFjYV/Kirkz64ChiIDGr9wSSgO4qDHgSA+eA2QLko1NiUwv5RUqs4XkFHfsY
	Vx36lAcXIphqSbikbv9/IZFzvnThwZnwJOjIurszAt3DEb/DEQMmahW4+sZiadkcG2oJ1Dfc4fXQQ
	OJxcYo7FGhPlkcQbGNl5v1EcLNAoOBJHRNBHQmADAR80dmEE9Z/iKZGIyXS8m1QlOKETSfjkyC+nk
	z83ySh81wcwQa/NWrmRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIZuc-00469j-88; Tue, 24 Aug 2021 17:08:34 +0000
Received: from mail-oo1-f45.google.com ([209.85.161.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIZuZ-00468z-Cr
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 17:08:32 +0000
Received: by mail-oo1-f45.google.com with SMTP id
 z3-20020a4a98430000b029025f4693434bso6736702ooi.3
 for <linux-rockchip@lists.infradead.org>; Tue, 24 Aug 2021 10:08:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zwubaYFj/lvlyUUP+l/btChNzFkq5suM9jrCNFdviZc=;
 b=DrYKKWwG18aRfZzxxtSFSk9GqZzVrBhCwGI6C5i1esCV0VobIqVOfqd+dw+hfzhobY
 CDC6XC/1zX9T7Qee2FViM46dQqQECQ+26EWEC5GiP0t2jrsoy9pzaz52Tnm5YjyvgBXL
 OzpZ+QPJF7oI4i7/bteM7vvoL6i+Af0iV6RB6yIK1fv54WffYWuEc0k0EBXHhSBiBHxI
 /9OJKRCYj5MpcijAz/+0gO8uvLsx9nVCXT/WnVZFZm6HCRRuSszF25WnCKbdZgifL+AT
 WfC3N9w7C+nZHybc+gEFZoBKavWTM/xURf464VK1n+HHmg06MyUOYQqBnIJR5KAaIVFK
 bjKw==
X-Gm-Message-State: AOAM53057OT7WudxitISleBT4yRkPzhkJZoQ7isFZCLki5oWgkPAMlbm
 wnWRDLHBZcos4T+Xw4fCiA==
X-Google-Smtp-Source: ABdhPJzLMc7ooV0oFHNXxw248f+31EgtiyHafVjQcBW9XOazHhf59JoPDr8NJbnlA1QzydJ7uQsjNQ==
X-Received: by 2002:a4a:5592:: with SMTP id e140mr20076850oob.59.1629824910169; 
 Tue, 24 Aug 2021 10:08:30 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id z26sm4515905oih.3.2021.08.24.10.08.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 10:08:29 -0700 (PDT)
Received: (nullmailer pid 641467 invoked by uid 1000);
 Tue, 24 Aug 2021 17:08:28 -0000
Date: Tue, 24 Aug 2021 12:08:28 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: broonie@kernel.org, heiko@sntech.de, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH v2 15/15] ASoC: dt-bindings: rockchip: i2s: Document
 property TRCM
Message-ID: <YSUnjLfcntDob/sT@robh.at.kernel.org>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629796734-4243-5-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1629796734-4243-5-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_100831_479284_DFD085B5 
X-CRM114-Status: GOOD (  12.14  )
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

On Tue, 24 Aug 2021 17:18:54 +0800, Sugar Zhang wrote:
> This patch documents property 'rockchip,trcm-sync-tx-only/rx-only'
> which is used to specify the lrck.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2:
> - split property trcm into single 'trcm-sync-tx-only' and
>   'trcm-sync-rx-only' suggested by Nicolas.
> - drop change-id
> 
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
