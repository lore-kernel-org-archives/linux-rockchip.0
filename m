Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4EE3C433DF
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 14:53:46 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9A99F2080C
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 14:53:46 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mIpQmqE/"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9A99F2080C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=1m+YwIoBajV6ZqTCoBRP+2QQBmtdeE+wv90+Ul4wNfU=; b=mIpQmqE/esG/iN62U0oMXUlkw
	76/T9n3Bc7NYt7mQPF5WYPEFQX30XAKTHrBtqcBjalAVSbpJBKNq4hAk/0QpwO3/n1RBJAcEEwz6b
	XR3308d/Cp1YjYPUOdo1TDRTDwWcsp56tUT/ADzXfZNlZ/KGOPIE1/Rhv6Bl8mlh7Ij0F37+Ca/ko
	xboOiH3KJgDP1wBMORAWlqtcoJrUUJen1FNh3K4HUOeGCJ0hhnA2GUgon4UmNENzMtdXvQg3knN1z
	a/XHjoX6O+d9XMg474nr90FIlCniY8dqMp4SPUcgVS0GSCYKD4XErwJJS/gKEuOQjR5p/pvO/ZmMy
	nm25KukVg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k82zc-0003iJ-Nn; Tue, 18 Aug 2020 14:53:40 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k82zZ-0003hV-Ky; Tue, 18 Aug 2020 14:53:38 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 908A631B;
 Tue, 18 Aug 2020 07:53:33 -0700 (PDT)
Received: from [10.57.40.122] (unknown [10.57.40.122])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4F253F66B;
 Tue, 18 Aug 2020 07:53:31 -0700 (PDT)
Subject: Re: [PATCH v2 2/4] usb: dwc3: of-simple: Add compatible for rk3328
To: travelvia@airmail.cc, robh+dt@kernel.org, heiko@sntech.de,
 balbi@kernel.org, gregkh@linuxfoundation.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20200817031114.6107-1-travelvia@airmail.cc>
 <20200817031114.6107-2-travelvia@airmail.cc>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <8dd853c0-c908-9d2f-fabf-c8f4c97b37e1@arm.com>
Date: Tue, 18 Aug 2020 15:53:31 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200817031114.6107-2-travelvia@airmail.cc>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_105337_757914_083288D4 
X-CRM114-Status: GOOD (  22.97  )
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
Cc: Cameron Nemo <cnemo@tutanota.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-08-17 04:11, travelvia@airmail.cc wrote:
> From: Cameron Nemo <cnemo@tutanota.com>
> 
> Add a compatible to be hooked into by the Rockchip rk3328 device tree.
> 
> The rk3399 compatible cannot be reused because the rk3328 SoCs may
> require a specialized driver in the future, and old device trees must
> remain compatible with newer kernels.
> 
> Signed-off-by: Cameron Nemo <cnemo@tutanota.com>
> ---
>   drivers/usb/dwc3/dwc3-of-simple.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
> index 7df115012935..68d6e4fa0c6a 100644
> --- a/drivers/usb/dwc3/dwc3-of-simple.c
> +++ b/drivers/usb/dwc3/dwc3-of-simple.c
> @@ -49,7 +49,8 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
>   	 * Some controllers need to toggle the usb3-otg reset before trying to
>   	 * initialize the PHY, otherwise the PHY times out.
>   	 */
> -	if (of_device_is_compatible(np, "rockchip,rk3399-dwc3"))
> +	if (of_device_is_compatible(np, "rockchip,rk3328-dwc3") ||

Is this necessary? Even downstream there's no reset control in the DT, 
so I can't see that it achieves anything.

Robin.

> +	    of_device_is_compatible(np, "rockchip,rk3399-dwc3"))
>   		simple->need_reset = true;
>   
>   	simple->resets = of_reset_control_array_get(np, false, true,
> @@ -171,6 +172,7 @@ static const struct dev_pm_ops dwc3_of_simple_dev_pm_ops = {
>   };
>   
>   static const struct of_device_id of_dwc3_simple_match[] = {
> +	{ .compatible = "rockchip,rk3328-dwc3" },
>   	{ .compatible = "rockchip,rk3399-dwc3" },
>   	{ .compatible = "xlnx,zynqmp-dwc3" },
>   	{ .compatible = "cavium,octeon-7130-usb-uctl" },
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
