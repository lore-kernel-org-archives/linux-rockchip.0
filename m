Return-Path: <SRS0=s7m+=NO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1A7F3C4338F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 17:36:29 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B385F610C7
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Aug 2021 17:36:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org B385F610C7
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ARB/cUjBJE/s95NyyOKrIapb2VvMSwwQXf0uUmBKiPo=; b=zKvRelMHbYrmTd
	QbACeFT9RBunR8H7xhZJjJCdZATynFtqwXMB9dbtH8Xnw8f4r7qQmqG2Q0tZ/uv42FLAfa+bWmVd8
	tfMT1+e6cVg4cjI9mozw7qsu5r/nvLcl55YZffMtFQEdm9m9wzTlaz2vvY0VyxKj95W8FK8mziCmo
	KLWEVU1g7Qa24fM0C1O3wVmQshNZT2PD+x8H66zfo9xy8kghPNmtkh8oeokJSbRAFwav75MyRA15v
	S9nl9M5OzVlYfXiIQWHqbREN5M5DdcVyfG8d4hxv7vDo/jc9fyIa0qX7N2iau63B8ej3TpEl4bXOh
	77BY56zYdAjtoVUwHh/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIDry-000BuE-Cz; Mon, 23 Aug 2021 17:36:22 +0000
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIDrw-000BtH-IA
 for linux-rockchip@lists.infradead.org; Mon, 23 Aug 2021 17:36:21 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 i8-20020a056830402800b0051afc3e373aso27130423ots.5
 for <linux-rockchip@lists.infradead.org>; Mon, 23 Aug 2021 10:36:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0uu/qRmiaveg5OXmKGJu7wUbjS4DkO9J3oLG/+RhLjo=;
 b=jAopvhlFesQLgA+I2Sn0z1vXok69fj+5XC0v/YzM13r/+y3RcUciVJrXIGAU7/JKjW
 uwtd2fZd+jQ4PcHmV2D3GUk1NbaG5d1gIU7kKZOd8oSmn8XW83vF2vPBtYp5FzuaywY0
 3nFDTtMiG3MYPu2TE25FDm5QaFA9TIi9eEKv/iEWmJBYBeWqzYgdqS+rKi3Adaq2wELm
 Sc3VOnwFiggENlby2RBSf3EAV5hICN6g2gnTwYRMydXK6H69s8q/2dfcAFGkYIgauVFK
 PPl3u/76nj7bZPCrjjBhNdxOu2xGllQpnf98oNg9L8AIU1At11vm/881CTXHhctYByVx
 /6nw==
X-Gm-Message-State: AOAM531AeOHeBoX3iBiGbjDa80aN+xYJxOUKHDHsbPXP0sZu/PuGveyA
 gVWxy8ynMX5ZHufAK3ivkA==
X-Google-Smtp-Source: ABdhPJzxNu7vQjCCQQ+lFTIt44LyottIgRBnx8/87Z4bi0rH3Du9CTiqIdTchQRYLX9R+i2P7dkMCw==
X-Received: by 2002:a9d:7dd4:: with SMTP id k20mr27971832otn.68.1629740178875; 
 Mon, 23 Aug 2021 10:36:18 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id i9sm3895014otp.18.2021.08.23.10.36.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Aug 2021 10:36:18 -0700 (PDT)
Received: (nullmailer pid 2390403 invoked by uid 1000);
 Mon, 23 Aug 2021 17:36:17 -0000
Date: Mon, 23 Aug 2021 12:36:17 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: broonie@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH 15/15] ASoC: dt-bindings: rockchip: i2s: Document
 property 'clk-trcm'
Message-ID: <YSPckWacS4kk270r@robh.at.kernel.org>
References: <1629715710-21137-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629716132-21544-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1629716132-21544-1-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_103620_644245_235C85DE 
X-CRM114-Status: GOOD (  14.78  )
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

On Mon, Aug 23, 2021 at 06:55:32PM +0800, Sugar Zhang wrote:
> This patch documents property 'rockchip,clk-trcm' which is used
> to specify the lrck.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> Change-Id: I648142c57c568bbed209f2b9188b1f539a3285b2

Drop this.

> ---
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> index 11e911a..8d9dfed 100644
> --- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> +++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> @@ -72,6 +72,15 @@ properties:
>    resets:
>      maxItems: 2
>  
> +  rockchip,clk-trcm:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    default: 0
> +    description:
> +      tx and rx lrck/bclk common use.
> +      0: both tx_lrck/bclk and rx_lrck/bclk are used
> +      1: only tx_lrck/bclk is used
> +      2: only rx_lrck/bclk is used

Sounds like constraints. Make a schema.

> +
>    rockchip,capture-channels:
>      $ref: /schemas/types.yaml#/definitions/uint32
>      default: 2
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
