Return-Path: <SRS0=NEY9=IW=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-19.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C36EC433DB
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 16:41:36 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 2C36861A12
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Mar 2021 16:41:35 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 2C36861A12
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ejS9rqpXl0le61XTKBL+p7TYCDnGqmebraOtjlKR9As=; b=pCg2ZEo1BItEBgN3ig4uSeQWR
	2nFLeG3PoV+udywMgqmszmxcyrgbQMMOfnRoSRqH1+VtMNsHf98MDmrB5sth8zclVsGrnGkrO9qbL
	IomHA5Q7LoZCaTzZAMuQDUh+Lh6Qe8IXb/ZOfN9uEb2vwJE+rhiIFjb22prRQ+is8mPcE01meWCN0
	MZcY0NyHGeDOW1+XUVq/jhsGk18gaB+6/J7sugS/d/q/JJ5FXKQv20AzMVoUBVg4Mqd3cMrER31LG
	JgZakQ1IlYPyok1TxN0LNWQa10iTHqWDQe7ep9ezWlIKmZeV66HYgun/hfvQJLNgAkQCCq3IaMvN4
	6/vqjtWMg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lP6ZU-00HPva-Qh; Wed, 24 Mar 2021 16:41:28 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lP6ZQ-00HPul-Pw; Wed, 24 Mar 2021 16:41:27 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lP6ZO-0001QD-TS; Wed, 24 Mar 2021 17:41:22 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Johan Jonker <jbx6244@gmail.com>, gregkh@linuxfoundation.org,
 balbi@kernel.org
Cc: robh+dt@kernel.org, linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5 2/8] usb: dwc3: of-simple: bail probe if no dwc3 child
 node
Date: Wed, 24 Mar 2021 17:41:22 +0100
Message-ID: <1861638.PYKUYFuaPT@diego>
In-Reply-To: <20210209192350.7130-2-jbx6244@gmail.com>
References: <20210209192350.7130-1-jbx6244@gmail.com>
 <20210209192350.7130-2-jbx6244@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210324_164124_908650_5098DBA6 
X-CRM114-Status: GOOD (  24.49  )
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

Hi Greg, Felipe,

Am Dienstag, 9. Februar 2021, 20:23:44 CET schrieb Johan Jonker:
> For some of the dwc3-of-simple compatible SoCs we
> don't want to bind this driver to a dwc3 node,
> but bind that node to the 'snps,dwc3' driver instead.
> The kernel has no logic to decide which driver to bind
> to if there are 2 matching drivers, so bail probe if no
> dwc3 child node.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

It looks like this patch fell through the cracks?

I.e. I can see patches 1+6 adding the devicetree bindings
in 5.12-rc but haven't found this patch there.

And looking at
https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git/log/drivers/usb/dwc3/dwc3-of-simple.c?h=usb-next
I also didn't find it.

From what I gathered that was somehow mandated from the Devicetree side
as the dwc3-subnode system merely is some Linux-specific thingy
and should not be enforced if not explicitly needed.

I guess Johan can provide pointers to the previous discussion.

So could you look at applying this patch to some usb-tree?


Thanks
Heiko


> ---
>  drivers/usb/dwc3/dwc3-of-simple.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
> index e62ecd22b..347b4d384 100644
> --- a/drivers/usb/dwc3/dwc3-of-simple.c
> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
> @@ -38,6 +38,10 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
>  
>  	int			ret;
>  
> +	/* Bail probe if no dwc3 child node. */
> +	if (!of_get_compatible_child(dev->of_node, "snps,dwc3"))
> +		return -ENODEV;
> +
>  	simple = devm_kzalloc(dev, sizeof(*simple), GFP_KERNEL);
>  	if (!simple)
>  		return -ENOMEM;
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
