Return-Path: <SRS0=TltV=JL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DCF10C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 22:28:11 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A430D6109E
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Apr 2021 22:28:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A430D6109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tu288TYtWXixUC9muWQ8qjrs9iHaE2K3CE3Ov5/RXss=; b=d+kMO5m9hojhegK4JlmkM/sEV
	wR4fs30S6Sd42l87/dhldASPsLYmaBqhVeEn0Q9C8a69pmSBKzex3sFeaHLlrXvYMf+ih3m+A21s3
	bqsM6TrNvhiqoAi83J4l4gwN/23KYyfXjKxIlBBJNTkL30mYWbSEnCzQbmgpr/zlN9YokaugHNSWB
	SjNrPdADRffgCvhJLV7gEYspJWi45dtbVfjr5W3q2gApszykmst3YzL/KoeeiMCRlccntNTmZju7w
	8s++42FDznpcwjSqysCWVCuCmU2BHffUdENbdzimxW/Ngdq7Wy1h+hKgaW3cH2FScUmtwtROiveON
	uNu8+GCOw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWnzS-00E1Rj-HW; Wed, 14 Apr 2021 22:28:06 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWnzP-00E1Qa-Lz; Wed, 14 Apr 2021 22:28:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=morGz6AeVvrUIzO5wIYaVgIKsZD8zVL1TUP4w+6z6sE=; b=ybJugdIsirNjYw4WL/xJ8UzZAG
 +w36Ho7rMpc7BRNyFtrgDbLFTmXbnOjYWduQhlXkIc91cLclx7eCFPdL4QznkMC2lRYg/ikmrKTLs
 sp0bDVdhwr9U+pkqH1qfvpSUU0XwpyUx95zipng3wyxBFfnzekqEOXgzblLEuaFRGnfTuNQ7viovr
 s+Om29q4BaI4GLxfuVbgRci5DOwl/Xhm3ruIfBhOZOGnkObifopjaeew9eMUZLHbqBq0U41OqFCQi
 YUv+8qOQdTSbVSTkcP25usxMwOe6Io09Ff9daBWtBwsyNAIrTVhmsLmTWAyLNEJL4Dp7AAVkT7maP
 Gqi/WsnQ==;
Received: from mail-ot1-f46.google.com ([209.85.210.46])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWnzN-0088ug-CD; Wed, 14 Apr 2021 22:28:02 +0000
Received: by mail-ot1-f46.google.com with SMTP id
 a2-20020a0568300082b029028d8118b91fso2357191oto.2; 
 Wed, 14 Apr 2021 15:28:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=morGz6AeVvrUIzO5wIYaVgIKsZD8zVL1TUP4w+6z6sE=;
 b=hqOT/B8AXgqQ1/ImCvMTSggZ82KOwRKswZQ5/4kxM8B436noI4VPeTF9wWa5E3ZcMk
 KPbwsLkaZHONWpcwN8kDQOtJP0hgt6jUL57DLwoxEYycfT5b4PslVvD6ndF3Lg1udupo
 F0qRwtgmBuC8FFBCdXWun4l3AD727pDw3ba2ku4A0ItiiJQpdY+3WemeFrkdez1Jfytv
 YAeJtB0pVyEDrEbIZ3M6Bj+gp3QKiVhI+HefM3IbAyh7HlnWQ3aLErDWpnivEgpRGJvF
 gwPAw5gdG9f7RGqSzZs6zbtNa6jF+HC7uWvn0U98nIXrj2A2B3B5d0JmtZfB3pxc6B2z
 ci5w==
X-Gm-Message-State: AOAM533wNNVlHEs+3UgplTmwWde+1+kzmNS+r/Lgq+LdfBabEmVZh6va
 9Swq2Q0hRBq9QjDCwkNwdQ==
X-Google-Smtp-Source: ABdhPJxrtU0c9EKMuE2kgVb5yJ60Q4P4r+IPx1hYR+mmzQQRLlgL/rfFS3ceygMwRzvHHGUdMfnZwA==
X-Received: by 2002:a05:6830:1d49:: with SMTP id
 p9mr237738oth.300.1618439280508; 
 Wed, 14 Apr 2021 15:28:00 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id j11sm194513ooo.45.2021.04.14.15.27.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 14 Apr 2021 15:27:59 -0700 (PDT)
Received: (nullmailer pid 80432 invoked by uid 1000);
 Wed, 14 Apr 2021 22:27:59 -0000
Date: Wed, 14 Apr 2021 17:27:59 -0500
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, robh+dt@kernel.org, enric.balletbo@collabora.com,
 linux-arm-kernel@lists.infradead.org, heiko@sntech.de,
 zhangqing@rock-chips.com
Subject: Re: [PATCH v7 10/11] dt-bindings: power: rockchip: Add bindings for
 RK3568 Soc
Message-ID: <20210414222759.GA80384@robh.at.kernel.org>
References: <20210414211856.12104-1-jbx6244@gmail.com>
 <20210414211856.12104-11-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210414211856.12104-11-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_152801_432757_654C95A2 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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

On Wed, 14 Apr 2021 23:18:55 +0200, Johan Jonker wrote:
> From: Elaine Zhang <zhangqing@rock-chips.com>
> 
> Add the compatible string for RK3568 SoC.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/power/rockchip,power-controller.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
