Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 847ABE7718B
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Dec 2024 10:18:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=96cdy23Cj0gVAGDKAhlZhGmYfkfr/U0MY0VmnvGtRw4=; b=xFWeCMs3tvripf
	RtoaMjrcDxcGNvDUP9HHH+8CUwDTZ4e3sFkG/fbuOmi+/F4c7DF1x/PJNO8ucnZlxpARAyccnO4uh
	wRC0SL+NdFPpyu1g0PrY048izZ5wy2jvf/Stbr1Dp8ivFek3ihlo6P83fsc9scJgLXJe0sDTkJbXc
	pqVa3w5/8jMma6hwo+FlEvHuIUoliKOAk50sVb6ndLu23QlmpTICeofwSqmwiVSv93pJNCi9oZBY2
	5LROX+/71Fk4KCcobfuPDty38zPEhZU64vL17yULppAJ/jhW1URodna3qXkHpsjjrwLOVjCBTXufQ
	sgsJIjS+8N8HTFP4/58A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tPfW4-00000009mFh-0EeN;
	Mon, 23 Dec 2024 10:18:24 +0000
Received: from smtpbgau1.qq.com ([54.206.16.166])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tPfUh-00000009lyz-1t0C;
	Mon, 23 Dec 2024 10:17:02 +0000
X-QQ-mid: bizesmtpip3t1734948976t5gkrex
X-QQ-Originating-IP: ZxDPKnbKuj2Qa08eDRwWnduxaDxo448WGeNSucLk2qA=
Received: from [IPV6:240f:10b:7440:1:5968:fbf4 ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 23 Dec 2024 18:16:06 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 9580999618302068927
Message-ID: <5EDFB980DF778743+9f26c8cc-d86d-46ed-9642-cdca10fe7e91@radxa.com>
Date: Mon, 23 Dec 2024 19:16:04 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: Add Radxa E52C
To: Marc Zyngier <maz@kernel.org>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, tglx@linutronix.de, jonas@kwiboo.se,
 macromorgan@hotmail.com, andyshrk@163.com, liujianfeng1994@gmail.com,
 dmt.yashin@gmail.com, dsimic@manjaro.org, tim@feathertop.org,
 marcin.juszkiewicz@linaro.org, michael.riesch@wolfvision.net,
 alchark@gmail.com, sebastian.reichel@collabora.com, jbx6244@gmail.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20241222030355.2246-1-naoki@radxa.com>
 <20241222030355.2246-4-naoki@radxa.com> <87zfkmrb4u.wl-maz@kernel.org>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
Organization: Radxa Computer (Shenzhen) Co., Ltd.
In-Reply-To: <87zfkmrb4u.wl-maz@kernel.org>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtpip:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-QQ-XMAILINFO: MrfJYRspGRl/8N2fDQkbayoTMxQuPn4cDgFhRSzEilfisYXS+w3lAdv3
	Q3m0/Y+9yAKfUb6LgU82PDp5GoV2bjUdXYM58nhIAyDkaKV6ofzGyzAK0MRKdqtBpdpdyP6
	ZbAwM7NT1hAdymntz7nEqpAQOVD+Ssti3Vz+5Okm7skH5/zwjUS9Ons4I65mluNHmQTDhDT
	gJJ/SwlrroKHNH6Yjs/3PRR3ShH1nv3BKIzaLlgbzM0HRy4i8j/w3RwLdgb6YIOnmUXZo1k
	9xyD/Zk7THU9c3MX/7uXguoPV0PthiS5Q/1PcY2f93sVMemriUScpi/yg0wmh1LHTWi/lDx
	bhO0r/Z5WW/GcDCxgWVaFRNaS6WXe8Y6T9lDDOGmIr+vVyOVriSaEoNv+EhATB0HLxj+a1j
	vVGPuw+Ba4swFRZwciRY50CNXtSGQ2CScQftz/4vQX4xbpADqKrvkDZqOR7ihqWLpEJCpWF
	c+6hl05wXZJjTvwTPQ4II6R1DYzYZQAX5QKmYbeHOPY0Kzx22bGNdTBfavRgcFNp5orrbiw
	09d14SH65Psph2r4CkBusDdwmlziQgVHMUXpWIVL2kkE3EObt2tx9LKHNqHlg7H/pnu47jL
	DjylDnejLeFbgtDFPCQpFAlmbuR9ebFlgO6HrafIUOi0wwyAfy4Wic8QVH7SAFgHLq62Qey
	C/S2xo00O1CHUsssIQqx6wQhaRkCz4TaHRS/TmRfhO7fmefE576lSKkXqIVcqLd4xagRR6r
	+dJ8fzZjh97Tfe/lyKBOdGC3YjEDkLKW8PUYKLKFu07lunNbBLCfd4e3YbAHHG53vUbRtR+
	yMH65cZvvWky0ImcJP6M47krCqd1si2CLi4RMhWduk4bVJcJvqV+MSHLlmmp9zrNf3TXODH
	r0Zn8zWmEeCtsXx8cgK4d8pAfl+D3tOSdJ0DSMmLVPyi/V7Rs8pbMBBMYfmaafRucPvyU/Z
	4VZC5bjiAJsvcEA==
X-QQ-XMRINFO: MSVp+SPm3vtS1Vd6Y4Mggwc=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241223_021659_918749_3A54B6A2 
X-CRM114-Status: GOOD (  13.63  )
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

Hi Marc,

On 12/23/24 18:39, Marc Zyngier wrote:
> On Sun, 22 Dec 2024 03:03:55 +0000,
> FUKAUMI Naoki <naoki@radxa.com> wrote:
>>
>> Radxa E52C is a compact network computer[1] based on the Rockchip
>> RK3582 SoC:
>>
>> - Dual Cortex-A76 and quad Cortex-A55 CPU
> 
> So you have *two* big cores.
> 
>> - 5TOPS NPU
>> - 2GB/4GB/8GB LPDDR4 RAM
>> - 16GB/32GB/64GB on-board eMMC
>> - microSD card slot
>> - USB 3.0 Type-A HOST port
>> - USB Type-C debug port
>> - USB Type-C power port (5V only)
>> - 2x 2.5GbE ports
>>
>> [1] https://radxa.com/products/network-computer/e52c
>>
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>>   .../boot/dts/rockchip/rk3582-radxa-e52c.dts   | 729 ++++++++++++++++++
>>   2 files changed, 730 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/rockchip/rk3582-radxa-e52c.dts
> 
> [...]
> 
>> +&cpu_b0 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b1 {
>> +	cpu-supply = <&vdd_cpu_big0_s0>;
>> +};
>> +
>> +&cpu_b2 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
>> +
>> +&cpu_b3 {
>> +	cpu-supply = <&vdd_cpu_big1_s0>;
>> +};
> 
> And yet you configure 4. If your HW only has 2 A76s, surely something
> should remove these cores for this platform rather than keep them
> around.

One of the four cores may be defective. This information is stored in 
the OTP, so we need to run our software to detect which core is 
defective. Then we disable the cluster that contains the defective core.

please refer
  https://patchwork.ozlabs.org/project/uboot/patch/20241210222341.3537543-2-jonas@kwiboo.se/

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Thanks,
> 
> 	M.
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
