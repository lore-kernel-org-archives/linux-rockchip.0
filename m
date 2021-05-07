Return-Path: <SRS0=eK8e=KC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 177B3C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 21:17:14 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C4CC961430
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 May 2021 21:17:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C4CC961430
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=8LNdmEm/KLxKH9NOEos5Xbv+KfdhXAIDDto/izRo5OE=; b=NqSg3xoW8zgvsMJy7oUA80EFx
	/zP5l2yihqZAKOsdY+b1tZ7SFJ8Ir5t8xWEUJMLfMTckmcnymRiItAHbuCweAWm/vSlK98olJaq/x
	obLVD7ffERtst+xR/JGcPf+ZFcN4lfPzQlXShmSgEdhUI7HESCxLe/QY9h+lhGCg8Sh7njKMtyych
	5x0HUIJGYylMLFyI4P4AGMt6zNslipXYgNO5aWHcPdpUHi0T2OwXjEi2+Dt4IWDlUNGuJYXfT6tFc
	n80v5a1XPxnRvpVo9vf0OclBYfQ4RWgAKfFZ2xYdi7jgSQ1VyPEt929uShBGONIvII+fzAqT2K8ne
	X1RaiMCVg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lf7qO-00850Y-19; Fri, 07 May 2021 21:17:08 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7qM-00850P-Pu
 for linux-rockchip@desiato.infradead.org; Fri, 07 May 2021 21:17:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=o2wAdh/yfwrDOJ+uh/SIWWS7GKEi+U+Ks6zzB1DcWjc=; b=wRMKQOJosh5QGia9DQg+4yv/C6
 QJhttQffdrnWSOcDdESmwDv63R+b3KJhoNVxOVQ9VVTFHLoRKrZSMv0/+HqRDkIZd27jNegc3xeiQ
 ZdiPpi4pM3gjxtqNcPhS/aXau5VgMf/kDPC17yNfCH9cT7khcHgbIAqEJhYuE3IQcNvlS9Dk9qpdw
 kh2HkmCDgsBOIUORcWG1f+YkHg8FGz5tVI8PkGd9Wl84Zdf2rudlFmgoXA9CiG1rVwYkI2yHO+qdG
 KeuWMIfM8WFinnbZLu9HgJ3IIARZcZBVIQed2wJCk+asGosoxZ3sbfIjA7J0ibvRxJGWemKh0LBde
 Xgdz8GDQ==;
Received: from mail-ot1-f42.google.com ([209.85.210.42])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lf7qK-007Bs2-EY
 for linux-rockchip@lists.infradead.org; Fri, 07 May 2021 21:17:05 +0000
Received: by mail-ot1-f42.google.com with SMTP id
 b5-20020a9d5d050000b02902a5883b0f4bso9114657oti.2
 for <linux-rockchip@lists.infradead.org>; Fri, 07 May 2021 14:17:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=o2wAdh/yfwrDOJ+uh/SIWWS7GKEi+U+Ks6zzB1DcWjc=;
 b=tarF/ZtQ6krF8taNmxQ3S2r98DXg0nHMX2H/WMTVMwYstaGPMm3uIRqx99HeVF2lXY
 OyOyTaA/xMV6PPkLBMdyY+LNIXjO0CRSbjkP53mpc6Tdy49ZSWK/SFKY3JMjmeqtHj3/
 C8VwRXoeR/ZJTqol+L0V466a/qzroaRn9LgK4L0EkWO3AdMcTb1XSq/+WYHpetTPxih2
 qHhcbsPuj+hH7K0O64cSEGS81ActiGyO/fDRltd+6X/7WF0xw7ovRZZq+oFHsmj2Z3xf
 eVNIipVytdTXnmWXpgbP8leycbgmW/L3gRAvn2Iad0o8LC5X/H5F6eT0P6ewVhLIFuZN
 zTTA==
X-Gm-Message-State: AOAM5302+vrvxPcgCiPYpeIsI6gkviMgxgxtWsAjv7rmG1WRpqiXe15c
 8sA5+dnFoSKpJg6WYU5OvA==
X-Google-Smtp-Source: ABdhPJwzEATdhPR+vD7sjpKJoXXORNslSDBZ6/Si2SZhvodV63TuOuNce1xUeC0XmmmGIHyC/mGs9Q==
X-Received: by 2002:a05:6830:1042:: with SMTP id
 b2mr1488498otp.120.1620422222303; 
 Fri, 07 May 2021 14:17:02 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w3sm1408353otg.78.2021.05.07.14.17.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 May 2021 14:17:00 -0700 (PDT)
Received: (nullmailer pid 2901821 invoked by uid 1000);
 Fri, 07 May 2021 21:16:59 -0000
Date: Fri, 7 May 2021 16:16:59 -0500
From: Rob Herring <robh@kernel.org>
To: Ezequiel Garcia <ezequiel@collabora.com>
Cc: linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Heiko Stuebner <heiko@sntech.de>, Daniel Lezcano <daniel.lezcano@linaro.org>,
 devicetree@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 3/3] dt-bindings: timer: convert rockchip, rk-timer.txt
 to YAML
Message-ID: <20210507211659.GA2901791@robh.at.kernel.org>
References: <20210506111136.3941-1-ezequiel@collabora.com>
 <20210506111136.3941-4-ezequiel@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210506111136.3941-4-ezequiel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210507_141704_509447_D43E2BAC 
X-CRM114-Status: UNSURE (   8.64  )
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

On Thu, 06 May 2021 08:11:36 -0300, Ezequiel Garcia wrote:
> Convert Rockchip Timer dt-bindings to YAML.
> 
> Signed-off-by: Ezequiel Garcia <ezequiel@collabora.com>
> ---
>  .../bindings/timer/rockchip,rk-timer.txt      | 27 --------
>  .../bindings/timer/rockchip,rk-timer.yaml     | 64 +++++++++++++++++++
>  2 files changed, 64 insertions(+), 27 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.txt
>  create mode 100644 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
