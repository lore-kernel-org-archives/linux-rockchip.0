Return-Path: <SRS0=bEZ5=LI=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FFB4C2B9F4
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 17:11:41 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E421A6109E
	for <linux-rockchip@archiver.kernel.org>; Mon, 14 Jun 2021 17:11:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org E421A6109E
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4/BsmShbI4zcR/v7Uh4NFs2nZZrjdV23UhSddrEKqgU=; b=zFtXRjvWOiF8KgpXCbCPprfQvP
	L4rBQy4dFo8EfM0d4RR0/taDirBEXpDF2kaeiFr+kXk4rIC2BlgMoKRptis2yydkvZTzt1LtXk4Qh
	STpJFj7hn+NXgMC0myqyWiIMLHb91z/alZFT+PJu3UvBTndulNozXOExhxI9LNwMt2gdl7G0idX9q
	/tzxnnlM8qwo54rAA1KdjpYZpT4xCkICRcbD2mrzTO7XW7wghig/IAODlfuiEDTKcKWeJi8NWcUHD
	iqiaaxbJMf9tflCmjpEylH4/g9MnnOi8vyso/xIGoi6f3w0nBt6Q0wM3f4Indw/GHeIy4zuXWXwry
	xyGwfB2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsq7b-00FLVz-F0; Mon, 14 Jun 2021 17:11:35 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsq5V-00FKUv-Mr; Mon, 14 Jun 2021 17:09:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F066511D4;
 Mon, 14 Jun 2021 10:09:24 -0700 (PDT)
Received: from [10.57.9.136] (unknown [10.57.9.136])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 39EBF3F70D;
 Mon, 14 Jun 2021 10:09:23 -0700 (PDT)
Subject: Re: [PATCH 3/4] PHY: rockchip: USB2: Allow 64 bits reg property
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>, kishon@ti.com,
 vkoul@kernel.org, robh+dt@kernel.org, heiko@sntech.de, pgwipeout@gmail.com
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20210614154359.805555-1-benjamin.gaignard@collabora.com>
 <20210614154359.805555-4-benjamin.gaignard@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <19d8cb97-d715-eb5f-5b2c-0c273937fd00@arm.com>
Date: Mon, 14 Jun 2021 18:09:15 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <20210614154359.805555-4-benjamin.gaignard@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_100925_914686_7998CAF0 
X-CRM114-Status: GOOD (  16.65  )
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

On 2021-06-14 16:43, Benjamin Gaignard wrote:
> In rk356x device-tree "reg" property could be coded on 64 bits.
> Change reg type and of_property_read_ to make it works.

On platforms with #address-cells=1, this isn't going to do what you 
think. Worse, it's not even going to fail, because you *can* read a 
64-bit value from an address cell with a size cell after it...

Robin.

> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
>   drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 46ebdb1460a3d..45518f96d7217 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -1068,7 +1068,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>   	struct rockchip_usb2phy *rphy;
>   	const struct rockchip_usb2phy_cfg *phy_cfgs;
>   	const struct of_device_id *match;
> -	unsigned int reg;
> +	u64 reg;
>   	int index, ret;
>   
>   	rphy = devm_kzalloc(dev, sizeof(*rphy), GFP_KERNEL);
> @@ -1098,7 +1098,7 @@ static int rockchip_usb2phy_probe(struct platform_device *pdev)
>   		rphy->usbgrf = NULL;
>   	}
>   
> -	if (of_property_read_u32(np, "reg", &reg)) {
> +	if (of_property_read_u64(np, "reg", &reg)) {
>   		dev_err(dev, "the reg property is not assigned in %pOFn node\n",
>   			np);
>   		return -EINVAL;
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
