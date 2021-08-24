Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4A94FC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 16:58:46 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 137FE61368
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 16:58:46 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 137FE61368
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VWiZ998uOqP4buc7tHo4JH4oQN6g8sbpboNrXRoGams=; b=NHVGDcVwd8lWCO
	ttjDAjLCxTfmxqcMq3/0bV0PpZxleOOWbUU8Lio1xpTiVybDFaXcjuqpptJrbfvr1cJH/RKmg6Y+i
	Y3N1n+6I80MzpL9nrOTzMJji7UVKe9MGJeXbljFUtDHd2KNasVBBvZ8Md4bgvS4qle1jCx4Ry16Q9
	KAEzKBE5+Pqd509qxEqRdal276clpS+YJD2rjsykIc8zatOPIanNqRplQA8UDUe7kXt9gC4Y3/zYm
	1vWKefxeUgDvexyryxsGVdemM5978lLHr9Sk9intFZ1FGqgT3NCXwReR4rSYbZjZ365pBFVmgtE+F
	aG8HdhiI9hc2ISwBSjGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIZl4-0043lV-T9; Tue, 24 Aug 2021 16:58:42 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIZl1-0043jb-GV
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 16:58:40 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 y14-20020a0568302a0e00b0051acbdb2869so41073942otu.2
 for <linux-rockchip@lists.infradead.org>; Tue, 24 Aug 2021 09:58:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=gLpwSrgDVrehm6j3+KekuLUcZGEgcjkIq/MzS6C4s2Q=;
 b=DWeiX8fYpJ5YE7vM2KOEh43D9tM9JzOZHm5LK336wq7zmdf/PcphRQ4LXK1qf7aZVr
 hqzmr3UpuT0Ptq6QRBSXfQXht4IOeICZRgtJiMR44YMqw7hBuh/Ag7vtW2fNdt3QWcxi
 YJMQqJgYOLnHwPQSu5kS5RdQMk6Q3P3QdT7OhEKth5vEVSgxuK2F/KrJPvlRnoP27vxj
 oPQo3OwMbDFor2NJpNyfAhyZhbCcEWwK3zfkLxXUHzJbm3ryzantb2Jy7PEK3QSao1Qe
 LR0e5yAxMUV0FZuPzlVouA4BQNWKikltbiaGnMPytYghsSlXPTvwlQJUpDBX9UpXpm5i
 ygtA==
X-Gm-Message-State: AOAM530Byx2PNbvRAXCesncxKwPR+2DIwB9O7vU4N6i9FeubqP96nITQ
 20OB3E96gluBa0sFWQ/tPvj4upP7mw==
X-Google-Smtp-Source: ABdhPJxznu0po8jvGOG/R35j+O3vsQwjCgnWz2hyBX4naV/clJHvdyP+gZ5KOtm8KTStXZyLTR4ZRg==
X-Received: by 2002:aca:aa88:: with SMTP id t130mr3493936oie.3.1629824318887; 
 Tue, 24 Aug 2021 09:58:38 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id v5sm4172939oos.17.2021.08.24.09.58.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 09:58:38 -0700 (PDT)
Received: (nullmailer pid 625890 invoked by uid 1000);
 Tue, 24 Aug 2021 16:58:37 -0000
Date: Tue, 24 Aug 2021 11:58:37 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: broonie@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH v1 6/7] ASoC: dt-bindings: rockchip: pdm: Document
 property 'rockchip,path-map'
Message-ID: <YSUlPU+yxepPrcvL@robh.at.kernel.org>
References: <1629791446-13528-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629791656-13698-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1629791656-13698-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_095839_612506_DCDDC7D4 
X-CRM114-Status: GOOD (  15.66  )
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

On Tue, Aug 24, 2021 at 03:54:15PM +0800, Sugar Zhang wrote:
> This is an optional property to describe data path mapping.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
>  Documentation/devicetree/bindings/sound/rockchip,pdm.txt | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
> index 54d94438..b2d7e47 100644
> --- a/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
> +++ b/Documentation/devicetree/bindings/sound/rockchip,pdm.txt
> @@ -24,6 +24,22 @@ Required properties:
>  	     pinctrl-names. See ../pinctrl/pinctrl-bindings.txt
>  	     for details of the property values.
>  
> +Optional properties:
> +- rockchip,path-map: This is a variable length array, that shows the mapping

The schema says this is a fixed length array.

> +  of SDIx to PATHx. By default, they are one-to-one mapping as follows:
> +
> +   path0 <-- sdi0
> +   path1 <-- sdi1
> +   path2 <-- sdi2
> +   path3 <-- sdi3
> +
> +  e.g. "rockchip,path-map = <3 2 1 0>" means the mapping as follows:
> +
> +   path0 <-- sdi3
> +   path1 <-- sdi2
> +   path2 <-- sdi1
> +   path3 <-- sdi0
> +
>  Example for rk3328 PDM controller:
>  
>  pdm: pdm@ff040000 {
> -- 
> 2.7.4
> 
> 
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
