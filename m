Return-Path: <SRS0=J5Gw=JC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F3D0C433ED
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 07:03:18 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EC633611AF
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Apr 2021 07:03:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EC633611AF
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linuxfoundation.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=EdnwsLw74RCzvFoLji4D3LyrMVVkizLaFwrnQZ9VbvE=; b=SUcjhKQYHHeTfFldO8px8vfU9
	YdeLu85OHmnp4iXrn0EhBnWN/03Qh3CHrLKVryJTEG3LH1tVcI9UPq/V3e3LgbZKeC6UegEjawFXI
	7+asPnr4Q9TZl/w3FXfRfIpLZ08o1+XHBj6LwHStWjk4HaZl5PhIq/31EHRTIr7CtBvlBLefs2FcY
	ZynVnOWthWk2TsGHYCLy3uFrzuvVOPQQ7SaF04RJTTvtgm6DVBfonWzkvKfqXSSlV2X7TBImxqoUa
	91Z92axGsOavG6Jw8IeNFR5qqLBW115pIVF3az/YIXHe6PdMwMYVxLuxQXj6rPxIP3tx7Uk/KwyOi
	o6ftMmaSQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTJGS-00GrB6-7N; Mon, 05 Apr 2021 07:03:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTJGI-00GrAO-Bm; Mon, 05 Apr 2021 07:03:04 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8FDC46127A;
 Mon,  5 Apr 2021 07:02:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1617606180;
 bh=MdliucytokSp3MecjDPnzP9QyqT0IQR2NrcOeaanYOI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AvNnPD7+YSQoJ7H6oIG30ii5ErPrBPyMzYTmhs9zeORFx8KzCgcwYdflq78cZK3DI
 rLDbow1JAxlJ09qjTMrEUk+yG1qUVLWqrIJqa4BRlM0qd57FLNmNDsrKvUKFjHr7rD
 1TiSWGHdiaIcsH/jpBeL5Oq4uhj4jwKugIi6jOmo=
Date: Mon, 5 Apr 2021 09:02:57 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: heiko@sntech.de, robh+dt@kernel.org, balbi@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-usb@vger.kernel.org
Subject: Re: [PATCH v6 1/4] usb: dwc3: of-simple: bail probe if no dwc3 child
 node
Message-ID: <YGq2IaygRQaAcLli@kroah.com>
References: <20210401213652.14676-1-jbx6244@gmail.com>
 <20210401213652.14676-2-jbx6244@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210401213652.14676-2-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210405_080302_674407_5698AD14 
X-CRM114-Status: GOOD (  18.08  )
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

On Thu, Apr 01, 2021 at 11:36:49PM +0200, Johan Jonker wrote:
> For some of the dwc3-of-simple compatible SoCs we
> don't want to bind this driver to a dwc3 node,
> but bind that node to the 'snps,dwc3' driver instead.
> The kernel has no logic to decide which driver to bind
> to if there are 2 matching drivers, so bail probe if no
> dwc3 child node.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  drivers/usb/dwc3/dwc3-of-simple.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
> index 71fd620c5..8d3baa5df 100644
> --- a/drivers/usb/dwc3/dwc3-of-simple.c
> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
> @@ -38,6 +38,10 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
>  
>  	int			ret;
>  
> +	/* Bail probe if no dwc3 child node. */
> +	if (!of_get_compatible_child(dev->of_node, "snps,dwc3"))
> +		return -ENODEV;

Why is this part of the "convert to yaml" patch series?  Shouldn't this
be a separate, independant patch?

thanks,

greg k-h

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
