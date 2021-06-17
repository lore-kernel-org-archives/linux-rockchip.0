Return-Path: <SRS0=O9sg=LL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	UNPARSEABLE_RELAY,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6912EC2B9F4
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 07:18:08 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 34B5A6135C
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Jun 2021 07:18:08 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 34B5A6135C
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=collabora.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Gn8ciJ82ZB4XKmJIYUZjQnRcu3Kn1W1FrgGZzHgIqec=; b=wjUX+KctiNkNdtTWwpxylSVlYw
	w/dZr3bRS2GAlq2zBh0IwKkIyYm/FNRgEW09qQwn8OBCg2uE4rjBhlBtqg1yROwnl9iiVdz+MjJLm
	2V2cyyAnjTeUUdUTW4ujj0RqWLdB4e4d5CpXz2SbKQWUAXiQ/3u5q7pNVeQmihtlyOp/QstkzLEMm
	+8RSJzyfeV4GUPa5U5MGSTU2kMFJaTerd15mGSwAKFMQwtYJKkSlL4Ur2wfRHl6pAdqMvRLR9UOwT
	TdMqENgm1VdlVhayrJ3TFVvGE2Z3pLsN4xuteL3aDSeSa9nSEpJYdWe3G8mBXUl1CAt8L+tDF9reT
	IoZF/AqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltmHs-009Eb9-IO; Thu, 17 Jun 2021 07:18:04 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltmHp-009EZL-Pb
 for linux-rockchip@lists.infradead.org; Thu, 17 Jun 2021 07:18:03 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: dafna) with ESMTPSA id 81A1D1F43AB4
Subject: Re: [PATCH v4 03/10] dt-bindings: media: rkisp1: document different
 irq possibilities
To: Heiko Stuebner <heiko@sntech.de>, mchehab@kernel.org,
 hverkuil-cisco@xs4all.nl
Cc: ezequiel@collabora.com, helen.koike@collabora.com,
 Laurent.pinchart@ideasonboard.com, linux-rockchip@lists.infradead.org,
 linux-media@vger.kernel.org, robh+dt@kernel.org, devicetree@vger.kernel.org,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
References: <20210616215211.4002992-1-heiko@sntech.de>
 <20210616215211.4002992-4-heiko@sntech.de>
From: Dafna Hirschfeld <dafna.hirschfeld@collabora.com>
Message-ID: <0d819205-6193-1952-e3ee-4fe5c0e53622@collabora.com>
Date: Thu, 17 Jun 2021 10:17:47 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210616215211.4002992-4-heiko@sntech.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_001801_989436_D33674D6 
X-CRM114-Status: GOOD (  17.51  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On 17.06.21 00:52, Heiko Stuebner wrote:
> From: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> 
> Some variants have one irq signaling all of MI, MIPI and ISP events
> while some rkisp1 variants use separate irqs for each.
> 
> Adapt the binding to handle both cases.
> 
> Signed-off-by: Heiko Stuebner <heiko.stuebner@theobroma-systems.com>
> ---
>   .../devicetree/bindings/media/rockchip-isp1.yaml         | 9 ++++++++-
>   1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> index 2f8f0625d22e..80709a01c6fd 100644
> --- a/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> +++ b/Documentation/devicetree/bindings/media/rockchip-isp1.yaml
> @@ -21,7 +21,14 @@ properties:
>       maxItems: 1
>   
>     interrupts:
> -    maxItems: 1
> +    minItems: 1
> +    maxItems: 3
> +
> +  interrupt-names:
> +    items:
> +      - const: isp
> +      - const: mi
> +      - const: mipi

Since you use those names in the driver they should probably be 'required' you should do something like:

if:
   properties:
     compatible:
       contains:
         const: the-new-px30-compat..
then:
   required:
     - interrupt-names

would also be nice to add your new bindings in the example in the yaml

Thanks,
Dafna

>   
>     clocks:
>       minItems: 3
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
