Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73644C47088
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 14:39:11 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3C4FC60241
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 14:39:11 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3C4FC60241
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37xlTU1o61nJrRkDD2BisSjOpIsArW705m3Ybb1Qh80=; b=qV+YlJ5nmycvQy
	tlYdTrKtBZl3wfg9BiVXHYxbrA2jk/FXhKpULLVpMdPpwEOWVsci3AzNV3GQYbzketk/CnPenco2m
	HTST8FjvPAwj3ertfB6D9eNoLVD2T4BlF4wmlk+ZcoDCzTVuT2BwiPi9HPmH0Kj7y7M3y4hD8dQb4
	+N9YexGyyhbFSiFGBo3Yf6t5T4Ua3E52A7hS7zsqEo/XUh12PZKVUeri39D4kFJe+sRcY9rvpB4Qo
	upXy+lHIXRcDgrJlgMytmmsQIfa1Ll/bMtUBQqpDp2/HArxGe5M6MZ6yvGSqzdO7Radjj8BKa9tpD
	aVbarIk9oWXXTMPe527w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llugd-00EyeB-LB; Wed, 26 May 2021 14:39:07 +0000
Received: from mail-oo1-f42.google.com ([209.85.161.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llt50-00ECXF-Mr; Wed, 26 May 2021 12:56:12 +0000
Received: by mail-oo1-f42.google.com with SMTP id
 r1-20020a4aa2c10000b029023e8c840a7fso258107ool.12; 
 Wed, 26 May 2021 05:56:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=5TB/SHe/X+zDtrYw2YxYbY1YRqVP38bTz1Qf4xf36SM=;
 b=SGGHbgKJVJ6m+/voEhBLr4qYCYCRmP79xSSqpLHenIhncNx0xUlmz+ftJQDzh/09Ng
 5MNL9uv8Ywde5K1a3mOR8uLEWRoGEHgy7YIy9Dy0gdtmeakYKpS34igm9i2OoJsdcow8
 K2WgDpJqrUqjm3QZUWELgtyh9kEmvg5cJjYoWWlxOS8Ld8gBEPDABwEDSdOwPq7p7Azc
 NO22REQctVpYgu/wHX4t2b8uodjMZjq+3A+XiHRcio3Z1oG7LRS5Cm6ncyB4hsF52v7a
 IDRMdrZfhvaT43QYzdFF72s+ihZQReYTLvCMNtdsdA3MD1dyOTGI0j2LuZaWh9IU6wOv
 QfnQ==
X-Gm-Message-State: AOAM5309BMnGT/Hrv3hIFFk+L9rv66sDf4EhDE5gLPj/oV4MJoeBfNy/
 kfNPEfBRP/VgnJfN9PDU/Q==
X-Google-Smtp-Source: ABdhPJx/wh7g4D4CYGH7ibtdrflqxgEzKG7CJwLQ7CT974mn8HeUIO7mDRBNtkrVn8LgAfyQ54eYqg==
X-Received: by 2002:a4a:e715:: with SMTP id y21mr2171382oou.54.1622033769085; 
 Wed, 26 May 2021 05:56:09 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b19sm3716364oib.46.2021.05.26.05.56.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 May 2021 05:56:07 -0700 (PDT)
Received: (nullmailer pid 2377037 invoked by uid 1000);
 Wed, 26 May 2021 12:56:03 -0000
From: Rob Herring <robh@kernel.org>
To: Alex Bee <knaerzche@gmail.com>
Cc: Lee Jones <lee.jones@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, linux-media@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Ezequiel Garcia <ezequiel@collabora.com>,
 devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-staging@lists.linux.dev, Philipp Zabel <p.zabel@pengutronix.de>
In-Reply-To: <20210525152225.154302-11-knaerzche@gmail.com>
References: <20210525152225.154302-1-knaerzche@gmail.com>
 <20210525152225.154302-11-knaerzche@gmail.com>
Subject: Re: [PATCH 10/10] media: dt-bindings: media: rockchip-vdec: add
 RK3228 compatible
Date: Wed, 26 May 2021 07:56:03 -0500
Message-Id: <1622033763.779031.2377036.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_055610_805672_39A3E92F 
X-CRM114-Status: GOOD (  13.23  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, 25 May 2021 17:22:25 +0200, Alex Bee wrote:
> Document the RK3228 compatible for rockchip-vdec.
> Also add the optional assigned-clocks and assigned-clock-rates
> properties.
> 
> Checked with:
> make ARCH=arm dtbs_check
> DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip,vdec.yaml
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  .../devicetree/bindings/media/rockchip,vdec.yaml       | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:
./Documentation/devicetree/bindings/media/rockchip,vdec.yaml:21:9: [warning] wrong indentation: expected 10 but found 8 (indentation)

dtschema/dtc warnings/errors:

See https://patchwork.ozlabs.org/patch/1483527

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
