Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21748D29DC7
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Jan 2026 03:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X3IbjRZMaPN6wdtw9ZVoUvHZXa+LmxoKYv0aCDgKF0o=; b=WF17PiiP0AdDZi
	tCFEYYCHSllMep7ETCQNToSo9HrM6osMEZt0DBiaJ3AwFQkkh6Xa0Rux7Id40L0Z0pQTMqeBTdK25
	/8IVAW8Ux41feTPYxWZ5UesnZmj/uKjke6kUocRUWJpu/9GCxojsPA1YzhrU4AFcfTzWFvXfSL9wT
	QJWfhQY5mFJKtKONlS8/FNt3D91vO+dCc+N0x0JvYrB0Jr8OWWmFS0ZzgH/uyaVGjDfl0GzkcwKL5
	xW/Xg3AUHBc0qNJmsp74hQ7rENd5dkUdOYQdYhnlniOOgksOIIZkSUY6APmBN07xCG1pRCvpnBB7V
	hC0l5zpPSrYms72j0LLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfV4X-00000006U2C-2LLd;
	Tue, 13 Jan 2026 03:27:57 +0000
Received: from mail-m49208.qiye.163.com ([45.254.49.208])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfV4U-00000006U1d-3q9S;
	Tue, 13 Jan 2026 03:27:56 +0000
Received: from [127.0.0.1] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 306a5f42e;
	Tue, 13 Jan 2026 11:27:47 +0800 (GMT+08:00)
Message-ID: <568b9e25-bf96-4e78-9af0-4791cbb90a56@rock-chips.com>
Date: Tue, 13 Jan 2026 11:27:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/3] dt-bindings: usb: Add binding for WCH CH334/CH335
 hub controller
To: Krzysztof Kozlowski <krzk@kernel.org>, Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Quentin Schulz <quentin.schulz@cherry.de>, Jonas Karlman <jonas@kwiboo.se>,
 Hsun Lai <i@chainsx.cn>, John Clark <inindev@gmail.com>,
 Jimmy Hon <honyuenkwun@gmail.com>, Dragan Simic <dsimic@manjaro.org>,
 Michael Riesch <michael.riesch@collabora.com>,
 Peter Robinson <pbrobinson@gmail.com>, Alexey Charkov <alchark@gmail.com>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Andy Yan <andy.yan@rock-chips.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
References: <20260112022823.91-1-kernel@airkyi.com>
 <20260112022823.91-2-kernel@airkyi.com>
 <20260112-lively-hallowed-beetle-fc15b2@quoll>
 <1515a445-576a-4833-a604-c31062f7d3fa@rock-chips.com>
 <b4eb4ab6-6fde-4c01-8069-470545ffdac4@kernel.org>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <b4eb4ab6-6fde-4c01-8069-470545ffdac4@kernel.org>
X-HM-Tid: 0a9bb565344303abkunm4f7b74c5bb9b2
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR5NTFYeGk9CHR1MQktOGElWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=j8obcMol5+AOwJGWd4CkkJSotssuGuB56Xxp96+E1lKmAzQYeIzcaoyDSvz1xiGd3APhWcqSoGnAIz41qphb61NIPnSgVTf3eE3YChEg8vwlEfPzNxR7NfgJZXRLCJjYtimcvheLwMxkY7URpqko6HPO0z0Qs2NWTcqKjvU4DXs=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=kdJ4UgolWe5TG4TnfG60pnogZaazG17AzGYzZPOjrtM=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_192755_536876_A7D9C328 
X-CRM114-Status: UNSURE (   9.95  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Krzysztof,

On 1/12/2026 10:28 PM, Krzysztof Kozlowski wrote:
> On 12/01/2026 09:59, Chaoyi Chen wrote:
>>>> +required:
>>>> +  - compatible
>>>> +  - reg
>>>> +
>>>> +additionalProperties: false
>>>> +
>>>> +examples:
>>>> +  - |
>>>> +    #include <dt-bindings/gpio/gpio.h>
>>>> +    usb {
>>>> +        dr_mode = "host";
> 
> One more thing - drop above line.
> 

Will fix in next version.

>>>> +        #address-cells = <1>;
>>>> +        #size-cells = <0>;
>>>> +
>>>> +        hub: hub@1 {
>>>> +            compatible = "usb1a86,8091";
>>>> +            reg = <1>;
>>>> +            reset-gpios = <&gpio0 2 GPIO_ACTIVE_HIGH>;
>>>
>>> Are you sure?
>>
>> I guess what you're concerned about here is the polarity? 
>> If that's the case, then there's no problem.
> 
> Yes, I was wondering whether polarity is set correctly.

Yes, it is active-low, so during normal operation it should be set to high.

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
