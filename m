Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED5B4C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 16:36:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SChTrV+2kuYF40y+I40nxHS+IcOuwVKBufXUHP+b4k=; b=LAwGkJJQiLywR9
	ET9SR3wyz3iFDlc5hSfMAY39bC2w4V8ua5uagkXZ20C4yTjhQ4jaKqBHOSl9D21MSwk5kuLd8UPsC
	YzFXJ56eyxW75Md/3QQMX6xyVZfb1JjLjko8q+Miy9eTTqk7grpVAJNleF3vjiXTWp7DkIG68sW4O
	PHJZAmbSvUIPL1UNSrZ+aQB0p57Nmina5NpFoXcxiSE9sUO3EaZRQDM6PgzgZQkPCVE3d2sctaWEy
	ROyffiH+aIAnV7x37sN5oLVKUoBQlcDeKg+wEBO7yT+7Jmnr8f255iP8fUENRAimuZH6bdLeaeGvQ
	+1hogtyltw3RSyNcfjmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muzvD-00DapA-6b; Wed, 08 Dec 2021 16:35:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muzuz-00DalX-N6; Wed, 08 Dec 2021 16:35:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 55774101E;
 Wed,  8 Dec 2021 08:35:44 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 45FB63F5A1;
 Wed,  8 Dec 2021 08:35:42 -0800 (PST)
Message-ID: <948a1248-29b4-cf4c-4d12-4889afee80a7@arm.com>
Date: Wed, 8 Dec 2021 16:35:38 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH 08/18] dt-bindings: display: rockchip: dw-hdmi: Add
 regulator support
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>, dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=c3=bcbner?=
 <heiko@sntech.de>, Peter Geis <pgwipeout@gmail.com>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-9-s.hauer@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20211208151230.3695378-9-s.hauer@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_083545_850838_F85CD14E 
X-CRM114-Status: GOOD (  10.60  )
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

On 2021-12-08 15:12, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>   .../bindings/display/rockchip/rockchip,dw-hdmi.yaml         | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 2ab6578033da2..b9dca49aa6e05 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -28,6 +28,12 @@ properties:
>     reg-io-width:
>       const: 4
>   
> +  avdd-0v9-supply:
> +    description: A 0.9V supply that powers up the SoC internal circuitry.

Might be worth calling out the actual pin name so it's abundantly clear 
for DT authors cross-referencing schematics. Annoyingly, some SoCs have 
HDMI_AVDD_1V0 instead of HDMI_AVDD_0V9 - I'm not sure it's worth 
splitting hairs that far in terms of the property name itself, but I'll 
leave that for others to decide.

> +  avdd-1v8-supply:
> +    description: A 1.8V supply that powers up the SoC internal circuitry.

At least HDMI_AVDD_1V8 seems more consistent.

Thanks,
Robin.

> +
>     clocks:
>       minItems: 2
>       items:
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
