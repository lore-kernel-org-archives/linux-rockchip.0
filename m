Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AC33C7EE26
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 May 2023 11:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Iif92BVxyUC17pe3/c4dqWMl4UkUDCxZk6DcFTN8+A8=; b=XSFHbeRSs7dDfzcDPMpcKlxRDb
	WpB1678LxhSR6m55LgDDS4is3UYuTvq+k9lFJQVr+eiW+asAWnbLZm17BzDKKB79CsJYYv1VEdSfj
	QJ/9FApVpukB4cZhqYGoTA7EN1Q/S4+LBwXq6/zPTTPvpSm2jK0cQgISglYyE914Wu/jcnL3noZe1
	8/cYlaPRD5o17atc28RONWrmCcLaTzizUKS/LoTzvCbEA2/fKGi7v4dkEhZpDQQGPEf7aYmv3kmhu
	gpIClHmNeDRTB3g41LM5z486wdtBEQk/xGkwncUkzl6Eo4Jf1f7PLD/HcZYu+nJdZSOVK/kiU6MnC
	Ow8ciDXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1PxW-00A2jO-1C;
	Tue, 23 May 2023 11:13:42 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1PxS-00A2hZ-0v;
	Tue, 23 May 2023 11:13:40 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F1F5139F;
	Tue, 23 May 2023 04:14:16 -0700 (PDT)
Received: from [10.57.84.70] (unknown [10.57.84.70])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 61F1D3F6C4;
	Tue, 23 May 2023 04:13:29 -0700 (PDT)
Message-ID: <b404dc20-c460-ac3f-6659-8be7a7d32bfe@arm.com>
Date: Tue, 23 May 2023 12:13:25 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH RESEND 0/2] media: rockchip: rga: Add rk3568 support
Content-Language: en-GB
To: Michael Tretter <m.tretter@pengutronix.de>,
 Diederik de Haas <didi.debian@cknow.org>, Jacob Chen
 <jacob-chen@iotwrt.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab
 <mchehab@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20230119-rk3568-rga-v1-0-43d4d14365e6@pengutronix.de>
 <168466589373.900480.8086350880534437090.b4-ty@sntech.de>
 <2386524.2IynHR6iFi@prancing-pony> <20230522102953.GB23678@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20230522102953.GB23678@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_041338_370664_7CBA579F 
X-CRM114-Status: GOOD (  19.88  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2023-05-22 11:29, Michael Tretter wrote:
> On Sun, 21 May 2023 21:32:51 +0200, Diederik de Haas wrote:
>> On Sunday, 21 May 2023 12:44:58 CEST Heiko Stuebner wrote:
>>> On Fri, 20 Jan 2023 10:14:21 +0100, Michael Tretter wrote:
>>>> The RGA2 on the Rockchip rk3568 is the same core as the RGA2 on the
>>>> Rockchip rk3288.
>>>>
>>>> This series adds the necessary device tree binding and node in the device
>>>> tree to enable the RGA2 on the Rockchip rk3568.
>>>>
>>>> I tested the driver with the GStreamer v4l2convert element on a Rock3
>>>> Model A board.
>>>>
>>>> [...]
>>>
>>> Applied, thanks!
>>>
>>> [1/2] media: dt-bindings: media: rockchip-rga: add rockchip,rk3568-rga
>>>        commit: 9b12ceb5a80d1fb45d293265de100e33b5843943
>>> [2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
>>>        commit: 0c3391f8bb06b744df521651534cd99e3d77e0a8
>>
>> https://lore.kernel.org/all/TY3P286MB26115F60D273E840D36A610598CA9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM/
>>
>> indicated that there was a problem with device >= 4GB (RAM?):
>>> Since we have the over-4GB problem now, should we mark this problem as a
>>> TODO or something?
>>
>> I thought that was the reason that these patches weren't picked up before?
> 
> That's what I thought, too.
> 
>>
>> I have no insight into this problem, so I can't comment on the technical
>> aspects, but I had made a note for myself 'locally' about it.
> 
> Using the RGA2 with the driver in its current form on devices with more than 4
> GB system memory may lead to memory corruption as buffer addresses are
> silently truncated to 32 bits.

That's because the driver is completely broken and is not using the DMA 
API anywhere near properly. The fact that it's been getting away with it 
so far can be mostly put down to good luck and nobody using 
CONFIG_DMA_API_DEBUG.

> I'm not sure if that's actually a blocker for merging these patches.

If anything, hopefully getting more SoC support merged might provide 
more motivation for someone to fix the existing code :)

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
