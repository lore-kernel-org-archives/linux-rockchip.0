Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 14B31CD4F3C
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 May 2026 03:58:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k/qI2I9ySlbiFu6FFoCd7SvkXzPO3Y/C6LHTOl1ehf8=; b=A1Lkmwl2yYlhPIP2+oAKHYqvCm
	T5PmgDqne/+HH+OcZODGhHT4ToWBs+CtKDesAoGy5dLa87dCcYsy5yNghn4gZ2bOGtKfeAaQorwx8
	BcYNqUo4WmfpVy3QsLxkTHosUIpsQH5DL9tnmo2pqwHnfJS4xtp+/dIKfDWdON2zdSVmMGDwpId+Q
	4/2JaIgOBrmNiOyodXb8fH8V37Bd5vJ+KLWaOUfdLYdGtZ7mR9xpvBYy33epLNIWZhy4uFKKi7dXo
	2F+vF4yTUZuh1mzWqwhKWsOhDcVLJVWNczWhxrfrZFUry26oAjIMMWr2443iFBhbSbAU3Qu9If9yg
	q5W8CCnw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNjgi-00000007GJn-17J3;
	Fri, 15 May 2026 03:58:12 +0000
Received: from mail-m24104.xmail.ntesmail.com ([45.195.24.104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wNjge-00000007GIy-1kza;
	Fri, 15 May 2026 03:58:11 +0000
Received: from [172.16.12.43] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3e82fac39;
	Fri, 15 May 2026 11:57:58 +0800 (GMT+08:00)
Message-ID: <2f653664-27e9-4632-97e9-8b59cf7e585e@rock-chips.com>
Date: Fri, 15 May 2026 11:57:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/3] dt-bindings: display: rockchip: analogix-dp:
 Expose inherited properties
To: Conor Dooley <conor@kernel.org>
References: <20260514070133.2275069-1-damon.ding@rock-chips.com>
 <20260514070133.2275069-2-damon.ding@rock-chips.com>
 <20260514-upstate-sneer-0b6e78682798@spud>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260514-upstate-sneer-0b6e78682798@spud>
X-HM-Tid: 0a9e29c8ae0703a3kunmd1b8d9bd125afa
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkZSktLVkIYTR8aHkgdTE0YSVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=UZB7lH4hvEXP3pLiPNBhvVIN/gQNsy9iafLoKvDKgsRRFlrJKAecHptJ7/J77wyBeceuZOOprBHD36ae6nHJk5rWBHxxSgKKrOX7JTLhssGbJxofO/ZsqaDhRPiJGMf+/tYd2AQbZfHuNBGK4/0Iow6PsrJyKqHXbi5WbuimHJU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=num2dBkmQCmOz3VFEseziFih+L9BmXJ8Dbo1P1UCNNw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260514_205808_989143_765F3BF9 
X-CRM114-Status: GOOD (  12.06  )
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
Cc: heiko@sntech.de, dri-devel@lists.freedesktop.org, dianders@chromium.org, Laurent.pinchart@ideasonboard.com, andrzej.hajda@intel.com, airlied@gmail.com, m.szyprowski@samsung.com, simona@ffwll.ch, robh@kernel.org, rfoss@kernel.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, linux-rockchip@lists.infradead.org, luca.ceresoli@bootlin.com, devicetree@vger.kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, maarten.lankhorst@linux.intel.com, mripard@kernel.org, linux-arm-kernel@lists.infradead.org, dmitry.baryshkov@oss.qualcomm.com, neil.armstrong@linaro.org, hjc@rock-chips.com, linux-kernel@vger.kernel.org, tzimmermann@suse.de, andy.yan@rock-chips.com, krzk+dt@kernel.org, nicolas.frattaroli@collabora.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Conor,

On 5/15/2026 2:16 AM, Conor Dooley wrote:
> On Thu, May 14, 2026 at 03:01:31PM +0800, Damon Ding wrote:
>> Expose the inherited properties from the base analogix-dp schema
>> to satisfy unevaluatedProperties constraints.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> Given it's unevaluatedProperties, not addtionalProperties, this patch
> shouldn't be needed?
> 

When I remove both the top-level data-lanes property and those explicit 
"xxx: true" property entries and run the dtbs check with:

make CHECK_DTBS=y CROSS_COMPILE=aarch64-linux-gnu- LT0=none LLVM=1 
LLVM_IAS=1 ARCH=arm64 rockchip/rk3588-evb1-v10.dtb 
rockchip/rk3588s-evb1-v10.dtb rockchip/rk3399-sapphire-excavator.dtb 
rockchip/rk3576-evb1-v10.dtb -j4

It results in validation errors like these:

/home/ding/drm-misc/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dtb: 
edp@27dc0000: ports:port@1:endpoint: Unevaluated properties are not 
allowed ('data-lanes' was unexpected)
         from schema $id: 
http://devicetree.org/schemas/display/rockchip/rockchip,analogix-dp.yaml#
/home/ding/drm-misc/arch/arm64/boot/dts/rockchip/rk3576-evb1-v10.dtb: 
edp@27dc0000: Unevaluated properties are not allowed ('force-hpd', 
'interrupts', 'phy-names', 'phys', 'ports', 'reg' were unexpected)
         from schema $id: 
http://devicetree.org/schemas/display/rockchip/rockchip,analogix-dp.yaml#

I suspect that the properties defined in the child binding are 
overriding/masking all the inherited properties from the parent Analogix 
DP schema.

Is there a better way to fix this issue without explicitly listing all 
inherited properties as true?

Best regards,
Damon

>> ---
>>   .../bindings/display/rockchip/rockchip,analogix-dp.yaml    | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> index bb75d898a5c5..896ded87880f 100644
>> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,analogix-dp.yaml
>> @@ -50,6 +50,13 @@ properties:
>>     aux-bus:
>>       $ref: /schemas/display/dp-aux-bus.yaml#
>>   
>> +  reg: true
>> +  interrupts: true
>> +  phys: true
>> +  phy-names: true
>> +  force-hpd: true
>> +  ports: true
>> +
>>   required:
>>     - compatible
>>     - clocks
>> -- 
>> 2.34.1
>>
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
