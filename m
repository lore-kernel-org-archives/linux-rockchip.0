Return-Path: <SRS0=SdcM=NX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64CEAC432BE
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 12:26:27 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 306276101B
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 12:26:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 306276101B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/1QwhJENU+t/v+QuF1U3RO45lMmhKbuiivFsjK/mPQ=; b=GhEargdg4AqG+e
	dwU2eLwMLR7PiYVe2NjbYJ+gfIL5wGOOKhsm7NvHGv0Gf/GZV3e551k9oRROJL70netuM0h1XWVCJ
	AUZZuYyPUWhlIfPbbNG6USC1SRFJcqR46H4IfrpSfPlRDvRRJD7M4XY8fJlt7sDUNVK1eY9KH64nu
	BQThPrIycwoiJloA8/aIxIW1uu1ZBcE5DyczgAT061Rs6Hg/DumeTI8Rr8MNxmCVgqfoJ4LQ5gXEe
	1CqSEdsRKCkq4Oswd5troCne3atGH7uZVHsfBn97aRg//yFiwH20rJNqA3aJegWYolTc4ySwXp8xQ
	3RRzLDUwKQh2Roal40qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLPJv-005wBk-DR; Wed, 01 Sep 2021 12:26:23 +0000
Received: from mail-ot1-f47.google.com ([209.85.210.47])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLPJs-005wAE-Us
 for linux-rockchip@lists.infradead.org; Wed, 01 Sep 2021 12:26:22 +0000
Received: by mail-ot1-f47.google.com with SMTP id
 i8-20020a056830402800b0051afc3e373aso3212544ots.5
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Sep 2021 05:26:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=L89W6KN905uzz2b8RDSBDwMiSN6z+FJPmQF6g2PVDTA=;
 b=AkbGRoPUdYmJRFQW7Mtm7w4pgbW/4cUHFPtnrh+q2Y7O/r7fERdTOZIoRaqP/LSt4k
 2Z7/JEITO0OV9sLBWdQIxz64TgDk5937lYwgLzvkWyeHkguECG5uelRQULWKZhVlt3fi
 FsNfLwBIMOVAIRbXuZ8J/A4z/mn1pBF973HSzuPsdSHD3h7YckVJudx9y0egUNPfq/Pi
 b7pgp0h5q3ExjJ/vcFzU6+UMaycdvmvnYGfp3dEwkmslxZP3nao1VJ/+Osk4mwU6rQE4
 CVaJvam0q8yad3+k3b+UQ3dWWuMlJEc8Bpr5lZ2ZU985eaSAMVeopSztREf3fTjloxXx
 g4Jg==
X-Gm-Message-State: AOAM53088A8F1pD0+OCKZyvqSnhKVzM4iHMvkUxyB0bzof0weQfNSlmR
 RVQAjYJjNqpsYnYk0NKZ2w==
X-Google-Smtp-Source: ABdhPJx0CXfS8DC+222kUyjWme9cZzPaq6kS6t7YMfxn9z0mNz0nwgmlnC/Q96XBYqx3b7I5mb8U9w==
X-Received: by 2002:a9d:6c08:: with SMTP id f8mr27993005otq.368.1630499180322; 
 Wed, 01 Sep 2021 05:26:20 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id l21sm3684049oop.22.2021.09.01.05.26.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Sep 2021 05:26:19 -0700 (PDT)
Received: (nullmailer pid 1941367 invoked by uid 1000);
 Wed, 01 Sep 2021 12:26:19 -0000
Date: Wed, 1 Sep 2021 07:26:19 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, heiko@sntech.de, broonie@kernel.org
Subject: Re: [PATCH v3 7/7] ASoC: dt-bindings: rockchip: Convert pdm bindings
 to yaml
Message-ID: <YS9xawhnJ/4xR2vg@robh.at.kernel.org>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
 <1630468118-7321-2-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1630468118-7321-2-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210901_052621_062329_68174BD8 
X-CRM114-Status: GOOD (  11.46  )
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

On Wed, 01 Sep 2021 11:48:38 +0800, Sugar Zhang wrote:
> This patch converts pdm bindings to yaml.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v3:
> - Fix property 'path-map' suggested by Rob Herring.
> 
> Changes in v2:
> - Fix yamllint errors.
> 
>  .../devicetree/bindings/sound/rockchip,pdm.txt     |  64 -----------
>  .../devicetree/bindings/sound/rockchip,pdm.yaml    | 120 +++++++++++++++++++++
>  2 files changed, 120 insertions(+), 64 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/rockchip,pdm.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
