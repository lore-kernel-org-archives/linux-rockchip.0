Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04A5FC71157
	for <linux-rockchip@archiver.kernel.org>; Sat, 21 Jun 2025 18:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PcCl74/gdlV3CJ8TW1AmtEjYudXBmpBPIUnM4hf/gvs=; b=c6vRXAYT+OFYux
	sck3H5etjixUYtX0m7ZHB9r7FHXeVhgGdsd4X4bxu9M2ar0wZDyHFzvWhWuLz4D7gAFnmm8vNV+Yl
	dC9pKJ+kFEPP6tsENH0uJXcqOFddk1XxjzMK6E/NEoNmuA+P5rKFMUv76NajMC68CgTcpC5KUgeoN
	d+J2oMntNgqGOEqk4qQvfEP5jKaRUdRnmFYv3M0uuOBq4D62JML2vXkL0+d8JbrX+8emIUUpToYQN
	JHvBwYI3guJZ3n0nSY2+xFmUgUD4TZgLF+Xz4gRCQkFkdpU1S+dxHBY3df1DpyIf3dG2t0luw2NGI
	mODEa+6+FrcKoz0vRCZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT2sZ-000000008Up-231x;
	Sat, 21 Jun 2025 18:23:51 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uT2sW-000000008U3-3vn8
	for linux-rockchip@lists.infradead.org;
	Sat, 21 Jun 2025 18:23:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1750530227;
 bh=c8Cm6OZTP4F2j2Q9XkN9rRSITxGowWMls2fh3eRV5qw=;
 b=ocNNQIq5ptcScuIo04ObXO7FUltiBTn1HL96jqB1JlM1IlMyR1ZDtBElQZEMn4PTZcg7mpIVN
 G2HUO4PJK/tJAb+RYqkEY+0NWVrPby3kfWTJh7GsugaxdUbsHyWLO478uiWmaXGO/Us8OkqQeAE
 OEG7LhKDpBhRV1GatVJcYM/mkTipHR+X/I4xF30dBwEEalhP5J3mIA0NZFBD2ckdINBoHYG3Qm8
 QkJdZGUoM2jXqyXVreeeJtkl+q6hdI01+Ts9eeFybXqVHIw5FmH9HJXQCNIXCRoLE/ZJN4ge3Mk
 f4ej8K4BpvMgEz9MNV4VU3tTAXa/Xwp4I/VUgw2nuh9Q==
X-Forward-Email-ID: 6856f8a805da1d979e438ca6
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 1.0.3
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <40a8e390-64bc-4822-ab53-8f2b65c0b1fb@kwiboo.se>
Date: Sat, 21 Jun 2025 20:23:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 6/9] dt-bindings: gpio: rockchip: Allow use of a
 power-domain
To: Rob Herring <robh@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Ulf Hansson <ulf.hansson@linaro.org>,
 Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski
 <brgl@bgdev.pl>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Yao Zi <ziyao@disroot.org>,
 Chukun Pan <amadeus@jmu.edu.cn>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <20250518220707.669515-1-jonas@kwiboo.se>
 <20250518220707.669515-7-jonas@kwiboo.se>
 <20250527193439.GA1101149-robh@kernel.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250527193439.GA1101149-robh@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250621_112349_328393_EC94E416 
X-CRM114-Status: GOOD (  15.08  )
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

Hi Rob,

On 2025-05-27 21:34, Rob Herring wrote:
> On Sun, May 18, 2025 at 10:06:53PM +0000, Jonas Karlman wrote:
>> The GPIO controllers in most Rockchip SoCs are part or power domains
>> that are always powered on, i.e. PD_BUS or PD_PMU.
> 
> Are these described in DT, so this is valid to add for all SoCs?

PD_BUS and PD_PMU for prior generation Rockchip SoCs has typically not
been fully described in device tree. Probably because they always needs
to be powered on or missing documentation.

> 
>> On RK3528 the GPIO controllers are spread out among the PD_RKVENC, PD_VO
>> and PD_VPU power domains.
> 
> So should be required for RK3528?

One of the five GPIO controllers on RK3528 is part of a power domain not
being described in the device tree. And without having access to any TRM
or other documentation it probably wont be. So requiring for RK3528 is
not fully possible, and for GPIO controllers in other Rockchip SoCs the
power-domain could theoretically be described in device tree.

Regards,
Jonas

> 
>>
>> Add support to describe power-domains for the GPIO controllers.
>>
>> Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
>> ---
>>  Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
>> index d76987ce8e50..bdd83f42615c 100644
>> --- a/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
>> +++ b/Documentation/devicetree/bindings/gpio/rockchip,gpio-bank.yaml
>> @@ -41,6 +41,9 @@ properties:
>>    "#interrupt-cells":
>>      const: 2
>>  
>> +  power-domains:
>> +    maxItems: 1
>> +
>>  patternProperties:
>>    "^.+-hog(-[0-9]+)?$":
>>      type: object
>> -- 
>> 2.49.0
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
