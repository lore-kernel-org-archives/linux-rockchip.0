Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29BA0C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 17:07:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E6D3561BA5
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 17:07:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E6D3561BA5
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ewcwib60y4duMRAHvmzX/+fsseIDFAgZ5IOEXAklQw8=; b=b5GJWjy4udZNAW
	wJ/zlT2+PQiVm5XJs9XH6o70lVc6gUxhl8W3t0dPIYorXmMQPK6Y8kpU6btmV79EaX10HZ8Dq27Dz
	psFgYzyEyad6WFxh7+zDpRZsBmB3Tqb6F9NpFIHCHjIWulmcZgeh79QarlV3Xg901MvOAXYtD47sG
	cGBKmsZQOo21DSlfZ7acIwjvyfhGaTVZJYvJGa3reK5GyFo50ELX1yaFw1ZVDbGciIUvYv7+mE+sf
	0SmUUuWIoaJBFHdZlFo9+ELqyOeXxiToYIoH3lza1Orp54Q1wys2Y9kUmCY20JB2vXVn3fSEIm29v
	tP+p9T/QnMZk7FmATe1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIZt7-0045jC-NW; Tue, 24 Aug 2021 17:07:01 +0000
Received: from mail-ot1-f49.google.com ([209.85.210.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIZt4-0045iQ-Tr
 for linux-rockchip@lists.infradead.org; Tue, 24 Aug 2021 17:07:00 +0000
Received: by mail-ot1-f49.google.com with SMTP id
 x10-20020a056830408a00b004f26cead745so47945959ott.10
 for <linux-rockchip@lists.infradead.org>; Tue, 24 Aug 2021 10:06:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=lQJSsrqSi2z80AMSAprMtS7aiLQvJxPvOWMi6DLohc0=;
 b=DwlhWgkCjn0/CABhqYhZQfVZ5qeHR8FDMEv3HmIkx2GIAgFy04zsNM1VGxpqDpuKWB
 Bac8OMr/1beRbuUPUVlX+yDzKQK06g7380ic5+R+yFYoUFav9mVUlWJZdWZyw2NrrTqH
 U1agJyE9L5srZob15W8xsB6BXQeEtqt8uHwQmidT16wZ+ifamW7E7j4/hydGuWH1CJMd
 AAd772HVwWiEQLda0/8QpkwzSyGhYOcmSJsjsrevXsJJiPTXEj0KycsDJ3HKq6jZVpu5
 LGNv5zjPbcGWd20NRI0/8VN8cYn6WD9eQzLLxHgsqhT5rbnovHboFbUC4rSjSF7Vgovk
 FngA==
X-Gm-Message-State: AOAM533XZ4wbUTw1JDY5pWPqSnZg7XjQ/VzVWnPkWMsBxHShvUnsEEQA
 cLZ6IM8oJJ4djRPXrBjGnQ==
X-Google-Smtp-Source: ABdhPJzzoMH76+kiVkBOXNphyYPJfIc8lwIVxJVfGst2OQHQ8IMCcKTLo4/f/HzRUxdkiLxHMF2X7g==
X-Received: by 2002:a05:6830:43a0:: with SMTP id
 s32mr9194779otv.284.1629824817845; 
 Tue, 24 Aug 2021 10:06:57 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bj27sm1125418oib.58.2021.08.24.10.06.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Aug 2021 10:06:57 -0700 (PDT)
Received: (nullmailer pid 638811 invoked by uid 1000);
 Tue, 24 Aug 2021 17:06:55 -0000
Date: Tue, 24 Aug 2021 12:06:55 -0500
From: Rob Herring <robh@kernel.org>
To: Sugar Zhang <sugar.zhang@rock-chips.com>
Cc: broonie@kernel.org, heiko@sntech.de, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Subject: Re: [PATCH v2 10/15] ASoC: dt-bindings: rockchip: i2s: Document
 property for playback/capture
Message-ID: <YSUnL4xISXIPLdRv@robh.at.kernel.org>
References: <1629796561-4025-1-git-send-email-sugar.zhang@rock-chips.com>
 <1629796682-4170-5-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1629796682-4170-5-git-send-email-sugar.zhang@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210824_100659_006935_C5B89781 
X-CRM114-Status: GOOD (  15.34  )
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

On Tue, Aug 24, 2021 at 05:17:57PM +0800, Sugar Zhang wrote:
> This patch documents property for playback-only and capture-only.
> 
> Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> ---
> 
> Changes in v2: None
> 
>  Documentation/devicetree/bindings/sound/rockchip-i2s.yaml | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> index 9f9cc48..005b6e6 100644
> --- a/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> +++ b/Documentation/devicetree/bindings/sound/rockchip-i2s.yaml
> @@ -81,6 +81,16 @@ properties:
>      description:
>        Max playback channels, if not set, 8 channels default.
>  
> +  rockchip,capture-only:
> +    type: boolean
> +    description:
> +      Specify that the controller has capture only capability.
> +
> +  rockchip,playback-only:
> +    type: boolean
> +    description:
> +      Specify that the controller has playback only capability.

In the Rockchip TDM-I2S binding[1], these were dropped. Perhaps comment 
there why they are needed.

Rob

[1] https://lore.kernel.org/lkml/20210820182731.29370-1-frattaroli.nicolas@gmail.com/

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
