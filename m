Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4397CD49794
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 02:04:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uWRcko9AzCs/qpufYI1jhoLMqyTFBGRCZT4176dZP9M=; b=DhCL4iZWDYNvBfOZmpQBR3SCFj
	J5cqgs+5NY7za0FkfYGzSdLbLHJvBtbnIVicysmXovegtlbFlBJ7uLbRNrnr57D9yFLste4WGMHQX
	osez00hDhVlFi3rhiGpx7CaX7G6Ro+TAK7KV4vZoAjNYpRvKHFuq+U3m6i/rNluyjrgr0fLRtgxar
	yw3MP22mBiocNvMyXR9eYcrmCSza1oezxbgeFHsxrY3DGDWO23QPrFP/5bJsNtoohQRtkTRfJVJxJ
	NjdVOqo6PqpBz7jpSHkJmHMFd/IYFpCjCexkpE8l6O9uU9g9qQQDVfKq8x48Ag/y2X9Ay4B7/gkuA
	hugjPzjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tHvn6-00000004ldv-31xU;
	Mon, 02 Dec 2024 02:04:00 +0000
Received: from mail-m19731104.qiye.163.com ([220.197.31.104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tHvn3-00000004lc5-1U7m;
	Mon, 02 Dec 2024 02:03:58 +0000
Received: from [172.16.12.26] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 461506be;
	Mon, 2 Dec 2024 10:03:42 +0800 (GMT+08:00)
Message-ID: <79421ac4-ffb5-4763-8ba7-cb7bd25c1c80@rock-chips.com>
Date: Mon, 2 Dec 2024 10:03:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 02/10] dt-bindings: display: rockchip: analogix-dp: Add
 support for RK3588
To: Krzysztof Kozlowski <krzk@kernel.org>, heiko@sntech.de
References: <20241127075157.856029-1-damon.ding@rock-chips.com>
 <20241127075157.856029-3-damon.ding@rock-chips.com>
 <5d4bebf5-7954-4739-9cd4-93d78d337738@kernel.org>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <5d4bebf5-7954-4739-9cd4-93d78d337738@kernel.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUxJGFYaHU9LSkNCTRoaSklWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a93851bf68803a3kunm461506be
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PRg6Izo*DzIYNxwXPDMOGEs*
	DTBPFBNVSlVKTEhISktOS0lPSElJVTMWGhIXVR8aFhQVVR8SFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFMS043Bg++
DKIM-Signature: a=rsa-sha256;
	b=YmCCzhv7vginIZyrZcj/ecu0aLKtyt+uIpxiTMR1jogyL9BG3ZBbpB6ePDvB6dYxlsc4xGs49TbcG3qacO2l4tUp+wEuyrCqlkVpLbzEzmC1kV9vMcP9F9r9RBMwOtFXL2KEfuhnrjcgbE96xO251M5eyIn0ocPEiX1XEa6jrT0=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Y241lptnwQ37OUoaH11vBxiTF8EY0NMjd3KnNF0LCj8=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241201_180357_566331_4A27663A 
X-CRM114-Status: UNSURE (   8.26  )
X-CRM114-Notice: Please train this message.
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
Cc: robh@kernel.org, conor+dt@kernel.org, algea.cao@rock-chips.com, rfoss@kernel.org, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, linux-kernel@vger.kernel.org, sebastian.reichel@collabora.com, dri-devel@lists.freedesktop.org, hjc@rock-chips.com, kever.yang@rock-chips.com, linux-rockchip@lists.infradead.org, vkoul@kernel.org, andy.yan@rock-chips.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, l.stach@pengutronix.de
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

On 2024/11/27 18:23, Krzysztof Kozlowski wrote:
> On 27/11/2024 08:51, Damon Ding wrote:
>> Add the compatible "rockchip,rk3588-edp".
> 
> This we see from the diff. Say something about hardware and why it is
> not compatible with existing variants.

In response to your kind suggestion, I will add more details in next 
version, specifically:

Compared with RK3288/RK3399, the HBR2 link rate support is the main
improvement of RK3588 eDP TX controller, and there are also two
independent eDP display interfaces on RK3588 Soc.

> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> 
> 
> Best regards,
> Krzysztof
> 
> 

Best regards,
Damon


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
