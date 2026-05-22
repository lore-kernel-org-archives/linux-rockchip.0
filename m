Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67C92CD5BAF
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 May 2026 01:32:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jU+nFnaJy12nqPFXKGCBesSb1jRWBMQzr8ddD+/sOEA=; b=Rc6KFLHuBCfqPFuE2gPPRK90sl
	AcBJNeA0E1aXjKMPIfO6Cip3D+/oOMi16QZAXBMpxeWbr0nrWqEywPYAcdoZNbcyvxca0hjhX9bm9
	rXlL97yL+CJoH5z1WitaOz2UxvXOL1M6xxvn0tiILCLqTuYMq6OtcXQ4kn88whY0g74j2TCNde2yo
	Icz8OR8nhYHS/xcInbqPv4GsDj3fn6PqVUapEzfOMS1WzBx4j2fRANsdkjOhAQyU0dNFtSB+sv8mj
	cRWdubC9eOhmLj9HltLqHwbTWWeAvKKmU2C3DSAh3IhnEAPJzMH0U5ZTFr9BkeT+uu8pEvf49v+SX
	B8aeVe3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQEkh-00000009U3f-1GvQ;
	Fri, 22 May 2026 01:32:39 +0000
Received: from mail-m9321.xmail.ntesmail.com ([103.126.93.21])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wQEke-00000009U2v-2ICI;
	Fri, 22 May 2026 01:32:38 +0000
Received: from [172.16.12.43] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3f600a29b;
	Fri, 22 May 2026 09:32:31 +0800 (GMT+08:00)
Message-ID: <e83c4a67-60a0-4615-bc42-3cff413cc363@rock-chips.com>
Date: Fri, 22 May 2026 09:32:30 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/3] dt-bindings: display: bridge: analogix-dp: Add
 data-lanes support for endpoint
To: Conor Dooley <conor@kernel.org>
References: <20260521114459.1394264-1-damon.ding@rock-chips.com>
 <20260521114459.1394264-2-damon.ding@rock-chips.com>
 <20260521-modify-quadrant-8d6a2e36727c@spud>
Content-Language: en-US
From: Damon Ding <damon.ding@rock-chips.com>
In-Reply-To: <20260521-modify-quadrant-8d6a2e36727c@spud>
X-HM-Tid: 0a9e4d500a3f03a3kunm9d959ffda60d9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaGEpDVkNNSRlJTUpDTBlJQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=LjJGTHD+borVrf6IPisbcVU/0kqdtEBiYenWZSDe0S4oyajEECA/VhRUivwJcJ27yf2MrRYNA3peUuTU3+wmUnwM6zJXlyyrV7ZRvLPdZnabyiiP1pflX5J68K2agkh1nszxyYnkPLOlg0d//0dm6KZZXu4hE63j8IKrsaNwgVc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7hndMH6djPqpqegY7jWQ0hx8/ee+d87YE9b4lTZzGfs=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_183236_808963_6A3944B5 
X-CRM114-Status: GOOD (  11.68  )
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

On 5/22/2026 3:50 AM, Conor Dooley wrote:
> On Thu, May 21, 2026 at 07:44:57PM +0800, Damon Ding wrote:
>> Add data-lanes property support to the port@1 endpoint for physical
>> lane mapping configuration.
>>
>> Lane mapping is mainly used for below scenarios:
>> 1. Correct PCB lane swap and differential line routing crossover
>>     without hardware changes;
>> 2. Adapt mismatched lane pin definitions between SoC and eDP panel;
>> 3. Support multiple panel hardware variants on the same board
>>     by configuring data-lanes in device tree only.
>>
>> Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
> 
> Sashiko complaint here looks valid.
> pw-bot: changes-requested
> 

Yes, unevaluatedProperties: false should be added to both the port@1
and endpoint nodes.

Will fix in v3.

Best regards,
Damon

> 
>>
>> ---
>>
>> Changes in v2:
>> - Add lane mapping application scenarios in commit message.
>> - Remove redundant deprecated property 'data-lanes' for eDP node.
>> - Update port@1 $ref to /schemas/graph.yaml#/$defs/port-base.
>> ---
>>   .../bindings/display/bridge/analogix,dp.yaml    | 17 ++++++++++++-----
>>   1 file changed, 12 insertions(+), 5 deletions(-)
>>
>> diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
>> index 62f0521b0924..e34fdb21adb4 100644
>> --- a/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
>> +++ b/Documentation/devicetree/bindings/display/bridge/analogix,dp.yaml
>> @@ -42,13 +42,20 @@ properties:
>>       properties:
>>         port@0:
>>           $ref: /schemas/graph.yaml#/properties/port
>> -        description:
>> -          Input node to receive pixel data.
>> +        description: Input node to receive pixel data.
>>   
>>         port@1:
>> -        $ref: /schemas/graph.yaml#/properties/port
>> -        description:
>> -          Port node with one endpoint connected to a dp-connector node.
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        description: Port node with one endpoint connected to sink device node.
>> +        properties:
>> +          endpoint:
>> +            $ref: /schemas/media/video-interfaces.yaml#
>> +            properties:
>> +              data-lanes:
>> +                minItems: 1
>> +                maxItems: 4
>> +                items:
>> +                  enum: [ 0, 1, 2, 3 ]
>>   
>>       required:
>>         - port@0
>> -- 
>> 2.34.1
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
