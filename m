Return-Path: <SRS0=SdcM=NX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63A76C432BE
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 12:25:45 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 30F6A60F92
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Sep 2021 12:25:45 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 30F6A60F92
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7f4MNypiO8uE5cOaTGqz1RabRVY4/EmXjATu1uSTHZc=; b=tQaypkoEpRBsjG
	lOzHDy2DaBpEFYqpMF7OTQvEbSe3LKcDgaCEoLFab3L/lB06acIPiMjRxTbfhPoQuLIWT0hQU8MnQ
	7vh4KAxKnYG3OhfCyIWQ9pJr49xSL3ndUU5iSO5oKtNmCI+CHYaJukS6mENssDt7+2M7c77zvHeVF
	Rp5qktWuGjYJbpkrzAa01UZy+PDljYTU2nZmTOusVDfNllXYoVwEPI2u4JsBz+YSFjXAFuTPqYHuY
	YxM/zHTRRBAsyXOKqCbAB0eLp1f18f4FIS/20VP65deOprTjGd6eyW97wBvw0rlOqFzQcelNIgz1Q
	yRFDXibxylMymNk/Sd2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLPJG-005vs4-7I; Wed, 01 Sep 2021 12:25:42 +0000
Received: from mail-ot1-f53.google.com ([209.85.210.53])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLPJD-005vq3-6Q
 for linux-rockchip@lists.infradead.org; Wed, 01 Sep 2021 12:25:40 +0000
Received: by mail-ot1-f53.google.com with SMTP id
 c19-20020a9d6153000000b0051829acbfc7so3174763otk.9
 for <linux-rockchip@lists.infradead.org>; Wed, 01 Sep 2021 05:25:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=moGKLgAMctDhdayXDYXUaaxJMf7F5RhBbpAYaCRzoR8=;
 b=VVp7nHsiwWKxfKiP9/m/ccAubf+l+v4C++kXWenj/bVuaVZmN/s8PGGc/y1X+EqYm+
 kwfOp3IZjPdLPnWZAz+lgKjG4uZKPF8vx+IaLbQ21x7Znahkk9g0aAazE+vq5qtvo60E
 JrKuLnZSAROtcieMlgNoFeFqyL8JbUXI3EI7OWcJshQn2yGhvNPJ4g5OqmT+DfVID4mh
 CSs458/FFhF3q/7ebFLB1RovK3MBgrgQdq5wuWsmq5k7SGgb0186R51beq18oYIs58pC
 WON8XXua1xGjnxs91ubBxNclE73NDWYh9as6d/Ah0SdeEn+79jhu3bIR3u1c9x9DTFdf
 I6Ig==
X-Gm-Message-State: AOAM530byu9G2Tmt3E1VcvT9thsvBHI8H+FpOPYgI6hNjmJxovjGqTc3
 qocNnjlbtq7XOr+xOR4ejw==
X-Google-Smtp-Source: ABdhPJz08+fp6tHNieUoTd7qpfXjVJpOPeRep66NHmc3MP3mFNRssU+kE4r9x0uR6tD6ISUGcRzdmg==
X-Received: by 2002:a9d:7111:: with SMTP id n17mr23458475otj.279.1630499137969; 
 Wed, 01 Sep 2021 05:25:37 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id m16sm4240656oop.3.2021.09.01.05.25.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Sep 2021 05:25:37 -0700 (PDT)
Received: (nullmailer pid 1940206 invoked by uid 1000);
 Wed, 01 Sep 2021 12:25:36 -0000
Date: Wed, 1 Sep 2021 07:25:36 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: heiko@sntech.de, alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, broonie@kernel.org
Subject: Re: [PATCH v3 6/7] ASoC: dt-bindings: rockchip: pdm: Document
 property 'rockchip,path-map'
Message-ID: <YS9xQPfUCzOOpkjY@robh.at.kernel.org>
References: <1630468039-7186-1-git-send-email-sugar.zhang@rock-chips.com>
 <1630468118-7321-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1630468118-7321-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210901_052539_282650_137F7E1B 
X-CRM114-Status: GOOD (  10.16  )
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

On Wed, 01 Sep 2021 11:48:37 +0800, Sugar Zhang wrote:
> This is an optional property to describe data path mapping.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v3: None
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/sound/rockchip,pdm.txt | 16 ++++++++++++++++
>  1 file changed, 16 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
