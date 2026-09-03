Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AF69C61DD3
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 14:37:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=22l62Pa0rsbXUENG4fvbD7s2s62UkF+UVPps596wmEM=; b=QLxORGG1ry0jIG
	5+6mcudTfzO5icB05cNqbHPV2TO3OkWtHyr6Y41uODL6uDfL4uYUmYtqP/ZdRBvwTCb3RaxfNhB9g
	w+nBlV5IfHctHdVvitX7vJF/q9zZfotxWjVJbIxsM0XKv+UC9kb0tpQXIl+xhpBL0jfMP3vJbF6IX
	n/KqK5CG86WhEfnRehvlU3lRv6ABhtYwwZkxjpMmdNYUhkbPD8s4zTy9djSN1pgrNHtmMQqSP5xQp
	RDBbKf0a3y+SRMISLDxo9tXSlGCp4PdDeDYZI3KFrwTUCf0FQyFL290KmCuZyUPwq0k30B8XECGa0
	ua62Qb1blBeb3r58oF1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28ZA-0000000HWzg-2PMy;
	Thu, 03 Sep 2026 14:37:24 +0000
Received: from sender6-pp-f112.zoho.com ([165.173.180.112])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x28Z7-0000000HWyd-2UUQ;
	Thu, 03 Sep 2026 14:37:22 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1788446235; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Jn9OKk668HhFO20QWGGjArwE0JLoqFuFPdeX4ocnPVSFO2U5TVaM1ik6SdrvhYdkcUfkmyypkLPnBRQQpRlCWUoHifpIb7pmk0AgUrhw5Td3s84D2KaJQh5uyIChUw8Y1TxJe3bfjvcZWpyMnqTUR4UgXWZVlrC1cCIjPmKrS64=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1788446235; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=M7InBmUufvhMm7TfH0iam0WESH107icCZyhDamP4Oig=; 
	b=AVcZ90QIVfsZ44cPd8eohS7G/1Tlvi8wyYZd0ZLujm+D1iIbYXUBVcAkKHxg7SlYv3+OWXyffwWY6pxxebssk0CoDUZwm7+tROfYQoxGOWqCr+f9/X0uAGVii7UfPsDEJS00vUD4wE4AOJg/2I7kI8VFDVPqxdZ1mnkMpL3goEA=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=michael.riesch@collabora.com;
	dmarc=pass header.from=<michael.riesch@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1788446235;
	s=zohomail; d=collabora.com; i=michael.riesch@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=M7InBmUufvhMm7TfH0iam0WESH107icCZyhDamP4Oig=;
	b=Zk+ilItl2cXsOtvb2vEEw/OuQm6a3seBQkfLo47HP4nxI9goPHBbiSZMPaYF6Een
	4x4jF8KXvFfKrcCX1D4ac9MHytZjdZbF/NAtFv1EbvN92Gaikeho2mHRVJZs9w4aLWj
	3NiJBG9nhypBY2Xg+ES3+b4UtfV6yrP6tkDwjzNc=
Received: by mx.zohomail.com with SMTPS id 1788446233626753.3556779201841;
	Thu, 3 Sep 2026 07:37:13 -0700 (PDT)
Message-ID: <824de124-7690-4b51-bd26-71b39ff94f8d@collabora.com>
Date: Thu, 3 Sep 2026 16:37:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/7] dt-bindings: phy: Add PHY_TYPE_DSI and
 PHY_TYPE_CSI definitions
To: Krzysztof Kozlowski <krzk@kernel.org>, Jason Yang <jason98166@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Neil Armstrong
 <neil.armstrong@linaro.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Guochun Huang <hero.huang@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20260821-dcphy-rx-v1-v4-0-f1797634233d@gmail.com>
 <20260821-dcphy-rx-v1-v4-1-f1797634233d@gmail.com>
 <20260827-thundering-cream-saluki-dd05df@quoll>
 <7425ac83-f6d8-4443-a26e-a47f9306aa24@collabora.com>
 <39101571-58f2-43c5-b76d-62f8ab57d551@kernel.org>
Content-Language: en-US
From: Michael Riesch <michael.riesch@collabora.com>
In-Reply-To: <39101571-58f2-43c5-b76d-62f8ab57d551@kernel.org>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_073721_694191_7915E679 
X-CRM114-Status: GOOD (  27.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

On 9/3/26 11:53, Krzysztof Kozlowski wrote:
> On 31/08/2026 13:32, Michael Riesch wrote:
>> Hi Krzysztof,
>>
>> On 8/27/26 13:45, Krzysztof Kozlowski wrote:
>>> On Fri, Aug 21, 2026 at 08:02:29PM +0800, Jason Yang wrote:
>>>> A MIPI D-PHY or C-PHY can be a transmitter (DSI) or a receiver (CSI),
>>>> and in some PHY blocks both work at the same time. The existing
>>>> PHY_TYPE_DPHY and PHY_TYPE_CPHY cannot tell whether a consumer wants
>>>> the transmitter or the receiver.
>>>
>>> The consumer knows this already, no? Imagine consumer of the phy is some
>>> ISP receiving data over CSI for given port, thus consumer cannot
>>> transmit over that link.
>>>
>>> All this seems redundant.
>>
>> Indeed the consumer should know what to request. For example, the MIPI
>> CSI receivers should request the PHY_TYPE_CSI PHY. But I am not sure why
>> this should be redundant?! Can you elaborate? TBH I don't really
>> understand your remark.
> 
> It is redundant, because consumer CANNOT put there anything else than
> CSI type and the topology already defines that. It is basically
> duplicating existing information.

We might not be on same page here, so please let me write down my view
on this.

For the CSI PHY in this combo block, the consumer on the RK3588 is a
MIPI CSI receiver, that roughly looks like this:

csi0: csi@fdd10000 {
  compatible = "rockchip,rk3588-mipi-csi2", "rockchip,rk3568-mipi-csi2";
  [...]
  phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_DIRECTION_RX>;

  ports {
    csi0_in: port@0 { /* from image sensor */ }
    csi0_out: port@1 { /* to RK3588 VICAP */ }
  }
}

For the DSI PHY in this combo block, on the other hand:

dsi0: dsi@fde20000 {
  compatible = "rockchip,rk3588-mipi-dsi2";
  [...]
  phys = <&mipidcphy0 PHY_TYPE_DPHY>;
  // or alternatively:
  phys = <&mipidcphy0 PHY_TYPE_DPHY PHY_DIRECTION_TX>;

  ports {
    dsi0_in: port@0 { /* from VOP2 port*/ }
    dsi0_out: port@1 { /* to display */ }
  }

That is assuming the DPHY case, of course.

With that in mind, yes, the consumer CAN put something different in
there as CSI (or RX). The argument can be omitted for backward
compatibility, in which case DSI (or TX) is selected.

And yes, the topology should make the selection of the PHY obvious, but
I can't see how the PHY driver should obtain this information if it
wasn't for an extra PHY_DIRECTION_* argument.

What am I missing here?

>>>> Add PHY_TYPE_DSI and PHY_TYPE_CSI, so that a binding can select both
>>>> D-PHY or C-PHY and transmitter or receiver. They do not replace
>>>> PHY_TYPE_DPHY/PHY_TYPE_CPHY, which remain the right choice where a cell
>>>> selects the mode. The first user is the Rockchip RK3588 MIPI DC-PHY
>>>> binding.
>>>>
>>>> Suggested-by: Michael Riesch <michael.riesch@collabora.com>
>>>> Link: https://lore.kernel.org/r/82da3622-9c3a-454c-87bc-fb4ec7adb68d@collabora.com
>>>> Signed-off-by: Jason Yang <jason98166@gmail.com>
>>>
>>> Where is any DTS using it? I did a search and no results of upstream
>>> posting.
>>>
>>>> ---
>>>>  include/dt-bindings/phy/phy.h | 2 ++
>>>>  1 file changed, 2 insertions(+)
>>>>
>>>> diff --git a/include/dt-bindings/phy/phy.h b/include/dt-bindings/phy/phy.h
>>>> index 979b5dfd8353..8ee3f88e6d80 100644
>>>> --- a/include/dt-bindings/phy/phy.h
>>>> +++ b/include/dt-bindings/phy/phy.h
>>>> @@ -24,6 +24,8 @@
>>>>  #define PHY_TYPE_CPHY		11
>>>>  #define PHY_TYPE_USXGMII	12
>>>>  #define PHY_TYPE_XAUI		13
>>>> +#define PHY_TYPE_DSI		14
>>>> +#define PHY_TYPE_CSI		15
>>>
>>> DSI and CSI does not look like types of PHY...
>>
>> Fair point. AFAIK both CSI and DSI are protocols on top of the physical
>> CPHY and DPHY communication. Maybe we should stick to
>> transmitter/receiver/RX/TX direction/.../something. Would work for me
>> too, my simple request is to *NOT* introduce the same magic for each
>> combo PHY block over and over again, but create something generic.
>>
>> What about
>>
>>     #define PHY_DIRECTION_RX	0
>>     #define PHY_DIRECTION_TX	1
>>
>> or so?
> 
> Well, I asked for any DTS user of it and I did not get it except
> pointing to irrelevant and completely different 15 year old Samsung chip
> and to some "future" work, so no clue. I still claim that direction is
> obvious from the graph between producer and consumer, thus is redundant,
> but I am happy to be corrected by showing me the code.
> 
> Talk is cheap.

:-)

I agree that having DTS patches showing how this is used in the RK3588
would tell more than thousand words. I hope the sketch above helped at
least a little in that regard.

@Jason: can you include the DTS additions in your series?

Best regards,
Michael

> 
> 
> Best regards,
> Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
