Return-Path: <SRS0=gOg0=NE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DEB49C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 17:44:32 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A1AE660F51
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Aug 2021 17:44:32 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org A1AE660F51
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fpIkdQNa0qNU7QCjhZecQ950rS/ad1aHndzlMW9iLwc=; b=phQHUnQaEAVkfe
	vGSQGSg5gBRJZzdoRj1X+i2jlhPUJGT15toBKwKSb5NSPoqWAwkGir4aYfuHODwGMTH7lNVlvXP2U
	kmlXaCB1NfwRIQtnUfhYJIMl8BGcCkd9Gt/WEy0OUaosP6/KAemt73XuBd/M8vMem3mHNSOkm2mTG
	EUSJxvHqY8YFTzO7xlvynNjrqdCVmFllWWtt4U/U7Bgcc/pD8rxIiRpc1O2jvxUululcnYgEwBU4i
	1aixOUbvc0TB8MsYsTzrH07u1mTjnpIkymMF5kKjooEw7Il/cWl+SRZTnjHg2PiZMkAnh6DQznX3K
	+1+ZIgEf/vG2CQ9Zn7aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mEbEK-00DHtl-0W; Fri, 13 Aug 2021 17:44:28 +0000
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mEbEG-00DHt5-Tz
 for linux-rockchip@lists.infradead.org; Fri, 13 Aug 2021 17:44:26 +0000
Received: by mail-oi1-f179.google.com with SMTP id t35so16999115oiw.9
 for <linux-rockchip@lists.infradead.org>; Fri, 13 Aug 2021 10:44:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=5xa6KFLbYMLK2XmSwG9VkKmKTgPndFyfJuVEfJj+zXE=;
 b=Z+0mzOuejxnlHWp8nVpVSGlo7kem5Wq1dZJjEh2xQqX2jHYP/j5fkt2nxXlIS19mQb
 /kvOawe9RbjXofWba5x2WmsKfN9DXQYjhC2oJtVtOpj4X6WwGyaAKFd4i2ktr1zM0zuu
 B56wIMpn3iQb7tx8V5kroj8078jLhfHGvQbPvGrxNnQW4beFRortj3u3rUHQq5F7xvg4
 5pUv6siKEQ5Qn90WHhznt0zOjCqXcsSbaF47X4WNIOELlQ6Vn6VIMiFE7j69E9F9/94R
 6sfswGNfgBo0liTji37ogq+u1QZXe+khCBkA6gLWa3KBG0T3qGQszSq18NvEpX9C4pix
 QQWw==
X-Gm-Message-State: AOAM5330zVIJxdRV2gP8L00OYonzOKbFUw8V1FZwWO0PgMkpz1RVchB2
 J9nkBmD91cugvLZ88VNhgw==
X-Google-Smtp-Source: ABdhPJzpCFkPaOBQGhiv/E4nr2gpXGpQOcCN5X9J2GCmT2kK2WdhVH+imhWU8REx1t03sEaH0OoXSg==
X-Received: by 2002:a05:6808:1386:: with SMTP id
 c6mr3105533oiw.18.1628876661088; 
 Fri, 13 Aug 2021 10:44:21 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 45sm444869otm.43.2021.08.13.10.44.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Aug 2021 10:44:20 -0700 (PDT)
Received: (nullmailer pid 3741722 invoked by uid 1000);
 Fri, 13 Aug 2021 17:44:19 -0000
Date: Fri, 13 Aug 2021 12:44:19 -0500
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Kever Yang <kever.yang@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>, Peter Geis <pgwipeout@gmail.com>,
 Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: gpu: mali-bifrost: Allow up to two
 clocks
Message-ID: <YRavc3mcjtiTKCqj@robh.at.kernel.org>
References: <20210805025948.10900-1-ezequiel@collabora.com>
 <20210805025948.10900-2-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210805025948.10900-2-ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210813_104425_010573_B1AFB7B9 
X-CRM114-Status: GOOD (  15.55  )
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

On Wed, Aug 04, 2021 at 11:59:45PM -0300, Ezequiel Garcia wrote:
> Commit b681af0bc1cc ("drm: panfrost: add optional bus_clock")
> added an optional bus_clock to support Allwinner H6 T-720 GPU.
> Increase the max clock items in the dt-binding to reflect this.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../devicetree/bindings/gpu/arm,mali-bifrost.yaml          | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> index 0f73f436bea7..01532140096e 100644
> --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> @@ -38,7 +38,12 @@ properties:
>        - const: gpu
>  
>    clocks:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    minItems: 1
> +    maxItems: 2

You have to define what the names are.

>  
>    mali-supply: true
>  
> -- 
> 2.32.0
> 
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
