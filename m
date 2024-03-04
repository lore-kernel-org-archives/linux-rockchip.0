Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83DC4C48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 13:15:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=J6SlaJRIoQH9nUE3wflYqGNBnKTXgnPjvXbaK2hzjMY=; b=uOdppxhZ4JPNFMXtjjQQj8Liuk
	JblVGeDF2j9Qs+D+c9SJpl6Fe9VX5YmRvPKTxIeeJazg7Vitxl+fBP3QIubWxPsgzL/bE0DCzRcDD
	R0EkJHAhNjD7+S6odbnNWFgdgZDs4bGpKXaAAvNHI6GA/hKUGHwvFcsXA/exbgbhw/WA02GFumXL2
	1jh+OK/OgFbNO00RIgNmlulRIVp7kgzYcTbgEC08Szry0FaEcBMewZU5j43snzaAKDl/Ee6WlKF24
	gUvEEjEWu5LlQWiAyMfUjk+IitWq+dHSCf5Y5KzVj9E7X3Idc8rmeXtJMa3HSxnJYDR7I0LvLw+r7
	VxuB/6yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh8AD-000000097YG-3xkN;
	Mon, 04 Mar 2024 13:15:30 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh8A8-000000097XI-3pBD;
	Mon, 04 Mar 2024 13:15:27 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709558122;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=CPolhdLfMtVVriDkvDQA6ST1/9YALzy4d2oX5mVIC/c=;
	b=t0hrGqtIZaMFVXUpm4vTvUdtB++uMQCHMbFUyeRvJKC5ZSJl0YvGiRNlVIVxul+hTQM4AS
	k6RNoHAsIiMBTda9r69b0Tv1pur4RdMUApU5AOp9VK9QgBW6Tk2VWjwwgmHf0W9j+ZmLFt
	DTSsLsm5Psokdfpsi0qEEO4SGkPuoqwkZ5ybjSy+vbUyCZquw+XNxH+gXgoYMQbOPExMbS
	8LVjE+gHJRNE3ppWT/xoGKXKVOqnwLtfj+3vbKiNDVVrgSqsHjXd5nfZqE7XrjfEWyHJcD
	AHqHsr4CO4wyd1N1ii2DbftUPXrrjxHQwwK6b5GCAGDI66www0aYs8s5XeBkNQ==
Date: Mon, 04 Mar 2024 14:15:21 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK3328
In-Reply-To: <CANAwSgRRHA=njnH5q8iiUvBn3Ogm75STEZseP7Z-pZYM-OzsTQ@mail.gmail.com>
References: <e61173d87f5f41af80e6f87f8820ce8d06f7c20c.1709491127.git.dsimic@manjaro.org>
 <CANAwSgRRHA=njnH5q8iiUvBn3Ogm75STEZseP7Z-pZYM-OzsTQ@mail.gmail.com>
Message-ID: <ec418d523345c4bd04d2a8a33205001a@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_051525_329981_B6888413 
X-CRM114-Status: GOOD (  17.87  )
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

On 2024-03-04 10:22, Anand Moon wrote:
> On Mon, 4 Mar 2024 at 00:35, Dragan Simic <dsimic@manjaro.org> wrote:
>> 
>> Add missing cache information to the Rockchip RK3328 SoC dtsi, to 
>> allow
>> the userspace, which includes /proc/cpuinfo and lscpu(1), to present 
>> proper
>> RK3328 cache information.
>> 
>> While there, use a more self-descriptive label for the L2 cache node, 
>> which
>> also makes it more consistent with other SoC dtsi files.
>> 
>> The cache parameters for the RK3328 dtsi were obtained and partially 
>> derived
>> by hand from the cache size and layout specifications found in the 
>> following
>> datasheets, official vendor websites, and technical reference manuals:
>> 
>>   - Rockchip RK3328 datasheet, version 1.4
>>   - https://opensource.rock-chips.com/wiki_RK3328, accessed on 
>> 2024-02-28
>>   - ARM Cortex-A53 revision r0p3 TRM, version E
>> 
>> For future reference, here's a brief summary of the documentation:
>> 
>>   - All caches employ the 64-byte cache line length
>>   - Each Cortex-A53 core has 32 KB of L1 2-way, set-associative 
>> instruction
>>     cache and 32 KB of L1 4-way, set-associative data cache
>>   - The entire SoC has 256 KB of unified L2 16-way, set-associative 
>> cache
>> 
>> The RK3328 SoC dtsi is also used for the single RK3318-based supported 
>> board.
>> Unfortunately, no datasheet is available for the RK3318, but some 
>> unofficial
>> sources state that its L2 cache size is the same as RK3328's, so it's 
>> perhaps
>> safe to assume the same for the L1 instruction and data cache sizes.
>> 
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
> 
> Thanks. Please add my,
> 
> Reviewed-by: Anand Moon <linux.amoon@gmail.com>

Thank you once again.

>>  arch/arm64/boot/dts/rockchip/rk3328.dtsi | 37 
>> ++++++++++++++++++++----
>>  1 file changed, 32 insertions(+), 5 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> index 7b4c15c4a9c3..ac2846c33dc9 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> @@ -46,47 +46,71 @@ cpu0: cpu@0 {
>>                         cpu-idle-states = <&CPU_SLEEP>;
>>                         dynamic-power-coefficient = <120>;
>>                         enable-method = "psci";
>> -                       next-level-cache = <&l2>;
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <256>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l2_cache>;
>>                 };
>> 
>>                 cpu1: cpu@1 {
>>                         device_type = "cpu";
>>                         compatible = "arm,cortex-a53";
>>                         reg = <0x0 0x1>;
>>                         clocks = <&cru ARMCLK>;
>>                         #cooling-cells = <2>;
>>                         cpu-idle-states = <&CPU_SLEEP>;
>>                         dynamic-power-coefficient = <120>;
>>                         enable-method = "psci";
>> -                       next-level-cache = <&l2>;
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <256>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l2_cache>;
>>                 };
>> 
>>                 cpu2: cpu@2 {
>>                         device_type = "cpu";
>>                         compatible = "arm,cortex-a53";
>>                         reg = <0x0 0x2>;
>>                         clocks = <&cru ARMCLK>;
>>                         #cooling-cells = <2>;
>>                         cpu-idle-states = <&CPU_SLEEP>;
>>                         dynamic-power-coefficient = <120>;
>>                         enable-method = "psci";
>> -                       next-level-cache = <&l2>;
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <256>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l2_cache>;
>>                 };
>> 
>>                 cpu3: cpu@3 {
>>                         device_type = "cpu";
>>                         compatible = "arm,cortex-a53";
>>                         reg = <0x0 0x3>;
>>                         clocks = <&cru ARMCLK>;
>>                         #cooling-cells = <2>;
>>                         cpu-idle-states = <&CPU_SLEEP>;
>>                         dynamic-power-coefficient = <120>;
>>                         enable-method = "psci";
>> -                       next-level-cache = <&l2>;
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <256>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l2_cache>;
>>                 };
>> 
>>                 idle-states {
>> @@ -102,10 +126,13 @@ CPU_SLEEP: cpu-sleep {
>>                         };
>>                 };
>> 
>> -               l2: l2-cache0 {
>> +               l2_cache: l2-cache {
>>                         compatible = "cache";
>>                         cache-level = <2>;
>>                         cache-unified;
>> +                       cache-size = <0x40000>;
>> +                       cache-line-size = <64>;
>> +                       cache-sets = <256>;
>>                 };
>>         };
>> 
>> 
>> _______________________________________________
>> linux-arm-kernel mailing list
>> linux-arm-kernel@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
