Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E229C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Aug 2024 23:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RyDpAp6j5bAuhprJoLiGhHF4aqEycdDj3gE8GlTSGcM=; b=L+IinbgyE2ORw9
	3EynfCTV9BSkjoqjTLEDbUcENyw1Ia9TqaYJIqoCFaB+0ENmW6BA/xNQxwPtLi+gYjX0/FOpE+Vk6
	XqvsagHd7cP/cq7vcAofeuXhdm/o3ziRNXDbekltvxcFOlOWGUttecZTlYodHgfKqWO7Dz0xtnqji
	Ek4wG2CVCuRBAA8PhxT0MXthE/PWJtP9sFR/1nAUD4xBgmLc/DhY8pi/SLYVHHU6LBZil2O7Xs1yu
	RcBEkm9YBNhol85oszEhTOnP/B1mtR9+SCYxyLwVAME4tt3216ni8t/x4pG0zMZU6dIhLa6C9xujU
	r+i4xMCHjrCDUS1z+xjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb74Z-0000000HXpy-3hTR;
	Mon, 05 Aug 2024 23:25:03 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sb74W-0000000HXn9-2bET
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Aug 2024 23:25:03 +0000
X-QQ-mid: bizesmtpsz15t1722900267tpeo75
X-QQ-Originating-IP: YcvZYpuZzRqFPAd8+YiKe/+8etp6nj0Nj72quv2wVss=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Tue, 06 Aug 2024 07:24:25 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 18052963144677796663
Message-ID: <97941DF28EB65ED9+0f5a5695-5aa9-4e48-8274-dae4595c093a@radxa.com>
Date: Tue, 6 Aug 2024 08:24:25 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/2] dt-bindings: arm: rockchip: add support for Radxa
 ROCK Pi E v3.0
To: "Rob Herring (Arm)" <robh@kernel.org>, heiko@sntech.de
Cc: conor+dt@kernel.org, krzk+dt@kernel.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
References: <20240712215300.720113-1-naoki@radxa.com>
 <172104541069.3725239.3048756738341305722.robh@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <172104541069.3725239.3048756738341305722.robh@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpsz:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_162501_078791_654509F3 
X-CRM114-Status: GOOD (  14.82  )
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

Hi Rob and Heiko,

On 7/15/24 21:12, Rob Herring (Arm) wrote:
> 
> On Sat, 13 Jul 2024 06:52:59 +0900, FUKAUMI Naoki wrote:
>> Radxa ROCK Pi E v3.0 is a compact networking SBC[1] using the Rockchip
>> RK3328 chip.
>>
>> [1] https://radxa.com/products/rockpi/pie
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>> Changes in v2:
>> - fix typo in commit message
>> - add missing --- in commit message
>> - add new section instead of new item in rockchip.yaml
>> ---
>>   Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
>>   1 file changed, 5 insertions(+)
>>
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>    pip3 install dtschema --upgrade

following warnings are not related to my changes.
btw patch 2/2 need to be rebased, I'll send v3.

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> New warnings running 'make CHECK_DTBS=y rockchip/rk3328-rock-pi-e-v3.dtb rockchip/rk3328-rock-pi-e.dtb' for 20240712215300.720113-1-naoki@radxa.com:
> 
> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: hdmi@ff3c0000: interrupts: [[0, 35, 4], [0, 71, 4]] is too long
> 	from schema $id: http://devicetree.org/schemas/display/rockchip/rockchip,dw-hdmi.yaml#
> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /phy@ff430000: failed to match any schema with compatible: ['rockchip,rk3328-hdmi-phy']
> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']
> arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e-v3.dtb: /clock-controller@ff440000: failed to match any schema with compatible: ['rockchip,rk3328-cru', 'rockchip,cru', 'syscon']

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
