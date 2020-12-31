Return-Path: <SRS0=lrNZ=GD=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6915C433E0
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Dec 2020 22:13:40 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1AC47207C8
	for <linux-rockchip@archiver.kernel.org>; Thu, 31 Dec 2020 22:13:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 1AC47207C8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rksqFWPHj5rtIx98irosGPMTKS5wriRJItud6M8BgS0=; b=L/rCthfz59ORVnQiupLzmgER8
	aaV8/R11cI0ChFJHSx9I68F39Kqr1Hmuvw+pBIX4EBXsHeABEnMV1aQkEevsO9aUEGQXJGSs65iTU
	MKAOXmRITJdaeiPQtct4HsQ8orHINx3MvJwD2xmnb+U/3Irv28jpC1xXHIv4QEpobqB8HgPi0jJ1G
	AtYj2lLGpsml3BP6wtihC/hBCg81Pm9tTjO39cQwtBMXqEwifP1wEg7F0jZGHA4FYmmTMDxjeOSO5
	HFT+keuCLEm0jzu8KZFuk+UWrbklEZ23qdlscAoFICmT4lct/ZaWemqxb1uXJnCre0BE0MpZ/unew
	bVprM9y5A==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kv6CF-0002hu-KE; Thu, 31 Dec 2020 22:13:27 +0000
Received: from mail-io1-f52.google.com ([209.85.166.52])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kv6C8-0002gu-1b; Thu, 31 Dec 2020 22:13:21 +0000
Received: by mail-io1-f52.google.com with SMTP id d9so18107120iob.6;
 Thu, 31 Dec 2020 14:13:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=UfuFfmHD9d+5TwMD1+ZeFFV5g8rtAkP9j57ThhMOk1g=;
 b=YEFMtbd4PgPzNhJyReVoHwOluLlV9BcmYeRvORQke4Dfm8ZIXm0WfFxgditjlvw/lZ
 eztmj/kovvETiLF6i8Xx6DaPmQtA1KBbbJNa0bk3cPv/BuFO2AfL8fJd9cBUT26Dj38v
 ZA5LrBlRalIOx3ROJpAKZQcV7kxEtJz0JhdSGcNP1kJxIh20iPSbfv9/8eULhAbuatNh
 GnRwCwp9iplLd0mQljsiKdwDI3gBluYM5EZAiUKnEvmjQd5XBBCfr9ghYVBQpGUcdUE1
 0ZFER+2wl/nKdsKRrWKJtH8TFz4ZonoZK0xgwPQUpYgL0h04AnB3YKxHXdNKuwT+ptc5
 QF2A==
X-Gm-Message-State: AOAM531tdZcfLmWLu3g1Owe9Rmwy6iqy4U0OYOjfbi56FMELLjNVoeha
 zORyQypfhWMtJXZlxoFEnw==
X-Google-Smtp-Source: ABdhPJywluRRRPZqO97vN3Vxb3A7aqvA5hEd4iRVSXR4ZaNtJaub46ljOT7w95tcsRr26UwDaOVnnw==
X-Received: by 2002:a5d:9396:: with SMTP id c22mr48952567iol.12.1609452797850; 
 Thu, 31 Dec 2020 14:13:17 -0800 (PST)
Received: from robh.at.kernel.org ([64.188.179.253])
 by smtp.gmail.com with ESMTPSA id 12sm36876270ioz.41.2020.12.31.14.13.15
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 31 Dec 2020 14:13:16 -0800 (PST)
Received: (nullmailer pid 2466486 invoked by uid 1000);
 Thu, 31 Dec 2020 22:13:15 -0000
Date: Thu, 31 Dec 2020 15:13:15 -0700
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Subject: Re: [RFC PATCH v1 1/4] media: dt-bindings: rockchip-rga: add more
 rga compatible properties
Message-ID: <20201231221315.GA2466452@robh.at.kernel.org>
References: <20201219112653.10705-1-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201219112653.10705-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201231_171320_112095_579BF5AE 
X-CRM114-Status: GOOD (  10.18  )
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
Cc: devicetree@vger.kernel.org, heiko@sntech.de, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-rockchip@lists.infradead.org, jacob-chen@iotwrt.com,
 mchehab@kernel.org, ezequiel@collabora.com,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Sat, 19 Dec 2020 12:26:50 +0100, Johan Jonker wrote:
> Add more rga compatible properties.
> 
> "rockchip,px30-rga", "rockchip,rk3288-rga"
> "rockchip,rk3328-rga", "rockchip,rk3288-rga"
> "rockchip,rk3368-rga", "rockchip,rk3288-rga"
> 
> make ARCH=arm64 dt_binding_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-rga.yaml
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  Documentation/devicetree/bindings/media/rockchip-rga.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
