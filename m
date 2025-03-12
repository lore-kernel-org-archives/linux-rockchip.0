Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69837C28B28
	for <linux-rockchip@archiver.kernel.org>; Wed, 12 Mar 2025 15:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eurs9W/D/ZgUPeIh/scWjeimi2XN2WPZM2lxNBt9OJk=; b=O3rykdaVHZjqKQ
	IpX79/zCpQzZ82VBmR8F5KzzPZQSIysZjggj2UBXkLbLqwTM+PyRjQSN2EX/e5lk1yxx52jPLcB9X
	rTPBb0gxzVNNto47vcGLFhIFuYVS+eZfcprw0j1Rzb2DbQCJPDwCU5NDP6tU2kHJxaWvVOdgvzmcE
	Hm6qshAtTsmLJCpZ63LxxEMXhiRabLSbjYZA2KL4FuolSM7dH31KG7j7hESVLghp68JDDSI9r/3sm
	FdAYceUDhCkahNpCcm2xs6fMbLCYDToOY7oSwGnvqhU9vaBgn/DTVbyBlK8JOC/2gEdxBwuIMvuJB
	/8QLfij4TB4+fag7xbhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsNjU-00000008nc7-0GaH;
	Wed, 12 Mar 2025 15:10:56 +0000
Received: from smtp.forwardemail.net ([149.28.215.223])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsNit-00000008nUw-2CHi
	for linux-rockchip@lists.infradead.org;
	Wed, 12 Mar 2025 15:10:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1741792218;
 bh=wS+iW3PEgK6vQzywICkq9SarBtHISre1FPGbp4FqxEg=;
 b=vPcPKxBsuDobzrlIL3/j50OQrv2vqqdozEgD88VkrndikXfmFBmaWpM0tnMBuweDkCCTWvRdi
 iiGSMLNix2e4K4SwF6hUKz/4GewdAkd5eUllPfaasNd+M1ifrC83pWGTcCu7RCfy2Xb9f+2V5C+
 7UqqVhcnIA7nLoMKoo+A0ION2BwuH103Xm0ozfrolOO1I/IAb6Rq9E6ko+xgdtiiV127xVU4L+Y
 4578DShG+BZ15Y7Z+tP6fPIfKpkWdbHxYWdkf1vpH2oosihBWC8GXnLkZy3ZIFRjF6/w7B0VFlS
 QCeO2vi7gAa7mc3XzcUmvVRDPpBLhl5i+KeawBg/VTJw==
X-Forward-Email-ID: 67d1a174a3842b4a6f18d3d1
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 149.28.215.223
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
Message-ID: <b7d8d385-81ee-4947-ab8f-1da43843464b@kwiboo.se>
Date: Wed, 12 Mar 2025 16:00:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/2] arm64: dts: rockchip: Add pwm nodes for RK3528
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <a5ec9062-ca57-4748-8c0f-fb5b9c75fa28@kwiboo.se>
 <20250312143515.1225171-1-amadeus@jmu.edu.cn>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <20250312143515.1225171-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_081019_928296_833DF910 
X-CRM114-Status: GOOD (  16.61  )
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

Hi Chukun,

On 2025-03-12 15:35, Chukun Pan wrote:
> Hi,
> 
>> The pinctrl-names should be changed to "default" and not "active",
>> something you can fixup or do you want a patch?
> 
> Sorry I've been a bit busy this week and forgot to send the v2 patch.
> In rk3528.dtsi, the uart and upcoming i2c nodes do not have pinctrl,
> so I prefer to remove them.
> 
>>> Unlike other SoCs, pinctrl-names need to be in "active" state,
>>> I'm not sure about this, but otherwise the pwm-regulator will
>>> not work properly.
> 
> BTW, setting the pinctrl of pwm corresponding to pwm-regulator
> to "default" will cause kernel boot suspended.
> Sorry but do you know why?

Not an issue I have seen, do you have any more logs or details? E.g.
what board you use, full regulator node, do you have operating points
defined etc.

I have runtime tested a branch at [1], that use pinctrl-names = default,
have vdd_arm and vdd_logic defined, also an opp table for cpu and gpu.

For E20C there is a commit to enable the vdd_logic, however without gpu
enabled and a mali-supply the pwm-regulator is initialized to
max-microvolt by Linux. Have instead updated U-Boot to initialize the
pwm-regulator's:

```
&vdd_arm {
	regulator-init-microvolt = <953000>;
};

&vdd_logic {
	regulator-init-microvolt = <900000>;
};
```

[1] https://github.com/Kwiboo/linux-rockchip/commits/next-20250311-rk3528/

Regards,
Jonas

> 
> e.g.
> ```
> vdd_arm: regulator-vdd-arm {
> 	compatible = "pwm-regulator";
> 	pwms = <&pwm1 0 5000 1>;
> 	...
> };
> 
> &pwm1 {
> 	pinctrl-0 = <&pwm1m0_pins>;
> 	pinctrl-names = "default";
> 	status = "okay";
> };
> ```
> 
> Thanks,
> Chukun
> 
> --
> 2.25.1
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
