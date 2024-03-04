Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5442CC48BF6
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 13:12:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b6frrke8qvCa1cu7Yo73BTtmujoYM4SAP08m0so06NM=; b=28pQ/b40FovcmEuBb/LBU22YJd
	IfYcpMjc59ZSIEzu6oIDmksm39xLw3Csv9iM95fj89VXLk9Ew4o8ULC1ejbAxzH6xT05gif3o0mC8
	QJDmsTY4S2qHWVRSPFXUHcA/XMIyzzmM9UVxUYSzxmqaxvsiQTUOu7JkklefbIjNBy31HqSWrHg1I
	B2AufNOdrGl0XAKgY2oVOjy9cMb+piVDMfdMaP2r7YhkUzdHR7cpU+9+zCmLcE3SJgCHVSTC9ADpM
	9SqjicaqqeBbVCguAT3NgsCsLz6wmuSiKzkBmHXed6hF5zwle/vCxZ8QhBPsNKuY0N01zkylfcnBq
	HjYtF7oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh87F-0000000976v-18ii;
	Mon, 04 Mar 2024 13:12:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh87B-0000000974h-1OxW;
	Mon, 04 Mar 2024 13:12:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Message-ID:References:In-Reply-To:Subject:Cc:To:From:Date:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=9cpsE+L2azdJH3agdL084pTpCyY9lSCsXj9FgOAjtRc=; b=CiKKxplzNkYPc1K/wjqKBv57RB
	z0rnpUbq5BlEgHbeVqWnTqipItzUqZiePVS+bYazeXhN3wNdRQKIhAPyx4hzSOW6ZRXL2q4sbd6O5
	Vs/ADWIlzvZ5nLjzPuigzVNQO5qOBsL7e6vEzVxJiNOZoQ6iPa8VJCRcwCHeWm8o9mji4uGDjYwyI
	h0ihHjnfFnkCpqxV1MxfVuze/VPkWJItTUz9LFwBUIFIcPAC00b8GKtuXn+OG1FNzFJpKJK1wMfy9
	tIihQ6Uk+P4EWrBiE9UdBDb/AvFpe33EeHSpfDaSsmU/IXdu1oTgwObN3MCeOrRiAmfUJkaaITHFs
	wH++Oh7Q==;
Received: from mail.manjaro.org ([116.203.91.91])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh874-00000004stF-1Q5z;
	Mon, 04 Mar 2024 13:12:18 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1709557921;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9cpsE+L2azdJH3agdL084pTpCyY9lSCsXj9FgOAjtRc=;
	b=loPKmt0/Vm2InjIYdY4wvQYlnkX2PFAO7E91agZe8raoFpIGnEXNkrFTOoN+4H2HrcaF3J
	FbvEyLiQox17HVBS8xiFKpU3gVfzFwmrmqkPXlLkdphfEMasmf8pBYRDCaZKV32dIEfJSh
	jxyxXFMAbiczz1ulQ3tOMkp+GpMd6XjkIzkZlH9cBqtQsrMK+tSwNBXz2SKFsmdhpA9dqP
	XP2nCAxBoUEnyYhr/hAhDOw13XmIXBQYkNX9KWW66+6OahchnStHv6Y7WqM+21RZPDz2/k
	b4uymx7ebzjBTa4CzBWl/gqyLQp3hYM1nW7y+oEBRYZcWD/2t0nPWi+hRNJ4Ww==
Date: Mon, 04 Mar 2024 14:12:00 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add cache information to the SoC
 dtsi for RK356x
In-Reply-To: <CANAwSgTnsPWypWSoqzFfJBMLEdN=UdSz0n0vhDBD0QCsvXPYdA@mail.gmail.com>
References: <2285ee41e165813011220f9469e28697923aa6e0.1709491108.git.dsimic@manjaro.org>
 <CANAwSgTnsPWypWSoqzFfJBMLEdN=UdSz0n0vhDBD0QCsvXPYdA@mail.gmail.com>
Message-ID: <9100ca3393b415b369d2c5d63322e1a2@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_131214_733844_31B00561 
X-CRM114-Status: GOOD (  23.17  )
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

Hello Anand,

On 2024-03-04 10:21, Anand Moon wrote:
> On Mon, 4 Mar 2024 at 00:35, Dragan Simic <dsimic@manjaro.org> wrote:
>> 
>> Add missing cache information to the Rockchip RK356x SoC dtsi, to 
>> allow
>> the userspace, which includes /proc/cpuinfo and lscpu(1), to present 
>> proper
>> RK3566 and RK3568 cache information.  Also, it gets rid of the 
>> following
>> error in the kernel log:
>> 
>>   cacheinfo: Unable to detect cache hierarchy for CPU 0
>> 
>> The cache parameters for the RK356x dtsi were obtained and partially 
>> derived
>> by hand from the cache size and layout specifications found in the 
>> following
>> datasheets and technical reference manuals:
>> 
>>   - Rockchip RK3566 datasheet, version 1.1
>>   - Rockchip RK3568 datasheet, version 1.3
>>   - ARM Cortex-A55 revision r1p0 TRM, version 0100-00
>>   - ARM DynamIQ Shared Unit revision r4p0 TRM, version 0400-02
>> 
>> For future reference, here's a rather detailed summary of the 
>> documentation,
>> which applies to both Rockchip RK3566 and RK3568 SoCs:
>> 
>>   - All caches employ the 64-byte cache line length
>>   - Each Cortex-A55 core has 32 KB of L1 4-way, set-associative 
>> instruction
>>     cache and 32 KB of L1 4-way, set-associative data cache
>>   - There are no L2 caches, which are per-core and private in 
>> Cortex-A55,
>>     because it belongs to the ARM DynamIQ IP core lineup
>>   - The entire SoC has 512 KB of unified L3 16-way, set-associative 
>> cache,
>>     which is shared among all four Cortex-A55 CPU cores
>>   - Cortex-A55 cores can be configured without private per-core L2 
>> caches,
>>     in which case the shared L3 cache appears to them as an L2 cache;  
>> this
>>     is the case for the RK356x SoCs, so let's use "cache-level = <2>" 
>> to
>>     prevent the "huh, no L2 caches, but an L3 cache?" confusion among 
>> the
>>     users viewing the data presented to the userspace;  another option 
>> could
>>     be to have additional 0 KB L2 caches defined, which may be 
>> technically
>>     correct, but would probably be even more confusing
>> 
>> Helped-by: Anand Moon <linux.amoon@gmail.com>
>> Signed-off-by: Dragan Simic <dsimic@manjaro.org>
>> ---
> 
> Thanks, Please add my
> Reviewed-by: Anand Moon <linux.amoon@gmail.com>

Thank you for your review.

>> Notes:
>>     As already agreed upon with Anand Moon, this patch replaces the 
>> submission
>>     of a similar, albeit a bit incorrect patch [1] that appeared a bit 
>> earlier
>>     on the linux-rockchip mailing list.
>> 
>>     [1] 
>> https://lore.kernel.org/linux-rockchip/20240226182310.4032-1-linux.amoon@gmail.com/T/#u
>> 
>>  arch/arm64/boot/dts/rockchip/rk356x.dtsi | 41 
>> ++++++++++++++++++++++++
>>  1 file changed, 41 insertions(+)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi 
>> b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> index c19c0f1b3778..6dfb2d47d3d0 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
>> @@ -57,36 +57,77 @@ cpu0: cpu@0 {
>>                         #cooling-cells = <2>;
>>                         enable-method = "psci";
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <128>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l3_cache>;
>>                 };
>> 
>>                 cpu1: cpu@100 {
>>                         device_type = "cpu";
>>                         compatible = "arm,cortex-a55";
>>                         reg = <0x0 0x100>;
>>                         #cooling-cells = <2>;
>>                         enable-method = "psci";
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <128>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l3_cache>;
>>                 };
>> 
>>                 cpu2: cpu@200 {
>>                         device_type = "cpu";
>>                         compatible = "arm,cortex-a55";
>>                         reg = <0x0 0x200>;
>>                         #cooling-cells = <2>;
>>                         enable-method = "psci";
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <128>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l3_cache>;
>>                 };
>> 
>>                 cpu3: cpu@300 {
>>                         device_type = "cpu";
>>                         compatible = "arm,cortex-a55";
>>                         reg = <0x0 0x300>;
>>                         #cooling-cells = <2>;
>>                         enable-method = "psci";
>>                         operating-points-v2 = <&cpu0_opp_table>;
>> +                       i-cache-size = <0x8000>;
>> +                       i-cache-line-size = <64>;
>> +                       i-cache-sets = <128>;
>> +                       d-cache-size = <0x8000>;
>> +                       d-cache-line-size = <64>;
>> +                       d-cache-sets = <128>;
>> +                       next-level-cache = <&l3_cache>;
>>                 };
>>         };
>> 
>> +       /*
>> +        * There are no private per-core L2 caches, but only the
>> +        * L3 cache that appears to the CPU cores as L2 caches
>> +        */
>> +       l3_cache: l3-cache {
>> +               compatible = "cache";
>> +               cache-level = <2>;
>> +               cache-unified;
>> +               cache-size = <0x80000>;
>> +               cache-line-size = <64>;
>> +               cache-sets = <512>;
>> +       };
>> +
>>         cpu0_opp_table: opp-table-0 {
>>                 compatible = "operating-points-v2";
>>                 opp-shared;
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
