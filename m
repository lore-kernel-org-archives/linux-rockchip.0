Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 889C8E7716E
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Dec 2024 03:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U5+hs+85dngq1uPxeSoEwg24DhJr3g1l7iiDBuD/yfQ=; b=IdFOhua2e9brgWzUCytmDvi+fo
	MF1O7FwmNNUL3hQc1ASN4gm18EvJJvoIlGhuJzjCZFgqKxHc5ZYvqm3a5eUOoxHZlenhiish8Ne72
	zm4dH+LnT7OeExQXt8uBCYC642BAal9mAELg8diEUF+OgpIlA4J0tJbrfEuAkN5toDMAIHLiySaQA
	WBV20rM+dPB1rmR3vZu54D6mrzV3KJb0MKWVuSIfWKD7SxkMPX1jh8fH/lqfo2ixKgwf3xB8+acRD
	fv3pUk+ZosNWw4LprFM7J17bmpRelFJqCwWwPpgPUVzYf5Q1NXN3Xrp5md0GC8ruBwFuWmsUUrY64
	jnWQnj2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJP18-00000000R2l-3ILi;
	Fri, 06 Dec 2024 03:28:34 +0000
Received: from mail-m49232.qiye.163.com ([45.254.49.232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJP16-00000000R0P-0GHX;
	Fri, 06 Dec 2024 03:28:33 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4df43c1a;
	Fri, 6 Dec 2024 11:28:21 +0800 (GMT+08:00)
Message-ID: <c0bc25b7-6e41-4ed8-ae8d-692a908607df@rock-chips.com>
Date: Fri, 6 Dec 2024 11:28:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 04/10] phy: phy-rockchip-samsung-hdptx: Add support for
 eDP mode
To: Sebastian Reichel <sebastian.reichel@collabora.com>
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <2131853.KlZ2vcFHjT@diego>
 <6e1f35c0-5ea8-414f-b3ea-4e7222c605ef@rock-chips.com>
 <2886747.Y6S9NjorxK@diego>
 <h4giob7bcrh7qmtepti6huym2llw4ujfmeff76vrgpahb5zy6x@dz6zghsifww5>
 <2342f342-672c-447e-90d8-674b748af6a4@rock-chips.com>
 <abzu2chif2g3urxoqbm3gbe6cciexbmqvn44qezrx4hgllfkkn@7bzi5jl3stqe>
 <42035ebe-09b7-4005-912a-8ec72d5dabcc@rock-chips.com>
 <5ncdog66jtc4s7vxk2yt4jkknf2es3whvweuqmrxbot3azi5ge@t6s3xadkiasp>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <5ncdog66jtc4s7vxk2yt4jkknf2es3whvweuqmrxbot3azi5ge@t6s3xadkiasp>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0JDQlYdSBoZS0sfTx0dTx9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a939a02e70703a3kunm4df43c1a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MhQ6GTo4OjIpSgEZKCkWFzww
	FhVPCilVSlVKTEhIT05OTEtITkhNVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFJTUtLNwY+
DKIM-Signature: a=rsa-sha256;
	b=kPHScr159WsiJG96Ork6FzwSMNbCQmUyQiTo49UIfTNDjTnurol/onZC7EOZpN8egR0d5Wltmfu4s4A1J2M/lM0yadBTKzrhmL5jyZk8oBUo6Ei1RJqUkOFc+a+RMgvgkwTIS2d4wyBGm1zAptOnnzrxcMoGdC5S+7C9miLNpcc=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=OkOQFcENXzlE05E2GhFQKZHqHer5Jyvf4HzPjb5KtAk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241205_192832_611635_50897D0D 
X-CRM114-Status: GOOD (  18.04  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebastian,

On 2024/12/6 2:04, Sebastian Reichel wrote:
> Hello Damon,
> 
> On Thu, Dec 05, 2024 at 09:13:33AM +0800, Damon Ding wrote:
>> Firstly, the term "the HDMI and eDP dynamic switching" can be somewhat
>> misleading, because the eDP usually does not support hot plug. The RK3588
>> eDP is often used as DP, and it actually supports DP 1.2. Therefore, it is
>> better to use the "the HDMI and DP dynamic switching" description.
> 
> The part unclear to me is how the dynamic switching is supposed to
> happen. Looking at the TRM the hotplug detect signals also seem to be
> shared between HDMI and eDP. Can the RK3588S EVB distinguish if HDMI
> or eDP has been plugged, or does this require some user interaction
> to set the right mode?

Indeed, HDMI and eDP share the same pin for hotplug detect. However, 
some users may connect the hotplug detection pin of DP-connector with an 
unexpected pin that can not support the iomux of hotplug detect function 
on RK3588 SoC. This could be due to a flaw in the hardware design, a 
conflict in pin multiplexing, or other factors. Therefore, we support 
the GPIO HDP function for the eDP, as DP also supports this for the same 
reasons.

If the dynamic switching is enabled, HDMI detects the HPD signal through 
  the hotplug detect function pin, while eDP uses one of the available 
GPIO pins to do this.

What's more, if the user connects an HDMI cable first and than connects 
a DP cable as well, despite our clear instruction against using HDMI and 
eDP simultaneously, the status register of GRF will indicate that HDMI 
has been connected. Meanwhile, during the HPD detection process for eDP, 
it will return "connector_status_disconnected". The reverse scenario 
also applies.

> 
>> Indeed, the devm_phy_get(dp->dev, "dp") and devm_of_phy_get_by_index() will
>> help to get the phy reference in .probe() or .bind().
>>
>> However, the phy_set_mode() may be still needed in the HDMI and DP dynamic
>> switching application scenarios. We need the enum phy_mode
>> PHY_MODE_DP/PHY_MODE_HDMI to differentiate the configuration processes in
>> .power_on(), .power_off() and .configure() of struct phy_ops, which will be
>> called in conjunction with plugging in and unplugging an HDMI or DP cable.
> 
> I suppose you could fetch the PHY in power_on() and release it in
> power_off(). But using phy_set_mode() might indeed be better here.
> 

As a future expansion, the .set_mode() can also be helpful in the txffe 
level adjustment for HDMI 2.1. :)

> -- Sebastian

Best regards,
Damon

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
