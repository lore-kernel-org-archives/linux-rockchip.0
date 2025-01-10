Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D569DE77188
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jan 2025 07:12:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HsawfbesuVGHSR54aMU2ua59ZkcFN/NHkq8Iatt2shg=; b=IcZPWsqp8qtIke3qSjgPXr8g69
	PreqG6v16wQmAyq2YkM+eSVMfYN7p5+vZ+WmEBowVQ2faYT5Tjg0hfrQJ2nDgaS1BuclOTWAL+00+
	ZT/g6nFNAnq/kYNYU+oz/ZOUPPSHlcfaLTCQlO1i+hzP9gIWsFXJ8APsvggh5dgmAa6up5gYAaRJJ
	0Kjf+k0m/DVKw9RLmtXyzXGaGsIMZNUt4gfFftzNRzaJYsoZWHQCHOH5Xc1V1xl4tkeKeP0I50dMs
	dc4Ti05Hmp3ggnA9BEgtFYWo8aMu1L6njiTm+GD90E1MI70k2O+Xsmiz7OQsjDdblxef2uHmDY8fX
	N2WZpUyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tW9BZ-0000000ELJf-2NUc;
	Fri, 10 Jan 2025 07:12:01 +0000
Received: from mail-pl1-x630.google.com ([2607:f8b0:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tW9BX-0000000ELJE-0Tph
	for linux-rockchip@lists.infradead.org;
	Fri, 10 Jan 2025 07:12:00 +0000
Received: by mail-pl1-x630.google.com with SMTP id d9443c01a7336-215770613dbso21169095ad.2
        for <linux-rockchip@lists.infradead.org>; Thu, 09 Jan 2025 23:11:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736493118; x=1737097918; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6JhAk3LyNeuL4pIjZ/eFDn69Yt1/tQD7RF9CVVPDAUA=;
        b=G4NhGp7ajjGjUosnPkRphI5EzR6wsT13X5XbPraARzKjBKcEkKNLKvMLxBFVXv8rv8
         q7Cxytu//eMQXEBVS3i8A0YjIGbaZwZTAx37CYXxBllPXlitsNhPW/EkZWPJ5tbS9Si/
         vjzIahAw1Nx71HFUNaVqFhzAtxguIViHIBICvqGnNnD5yr8TZ5DNGjBimEXU0LeM9SG3
         oVnOOQdQRkdx3tdUVoRM2S7PXMznvg/4TWfNY9j5z4Rpo3D82hEieiJCLjKEcKjomPoE
         NS9VRWXeemTXADvcXCptSrKM6MvVsvkXoZ28KPKtSm4bijXn4DZz+jT4UTM2+BGxN3TR
         oiow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736493118; x=1737097918;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6JhAk3LyNeuL4pIjZ/eFDn69Yt1/tQD7RF9CVVPDAUA=;
        b=Z8vTnIoqR3t+T38NScfTsLapH76Jg5TtbCMhJ1HhP2vaxurQGngnVfUBdXN8tkpD+c
         ALR2SbhItRI/M1IhAiFlTMmZbE8tXKKmZ6JvZJTZUrUHn51/ahfeGacn/vFVJmDY8fUQ
         5gjJUsz7O7n2NeTtW9OPj4ZJ1sE6bQxphJGdPxHdp9WeTCT7Ye+FJIk0YMIQBWm81fAI
         6CppDheVZfH0ZdnnsH92KwWiPcyhF7/5CXnj5hpfiZXJDZt2zlpTZQve79vQaim1nVvW
         3pd3q6ev9fb+Dd5ukLERxArQMADU5X7E44mC4zdt9cTGuz9Oc0QsMDTocpHa4AgtCz8V
         g2BA==
X-Forwarded-Encrypted: i=1; AJvYcCUb9506pKr4+jr009KVO9ZeIrD5BpsOptcMMd4dzlMvar6xLhsWANq2I9Xvo6maj98zaxddyuHGoHPKp356Uw==@lists.infradead.org
X-Gm-Message-State: AOJu0YzZhZRQgmf3cXAyo2qpnuaq77hGNsM/c6jUyWLm+g1GNnu5QN4q
	sOanbLWCh9qPDParOdh4B6zeXa+5wilqWPmFtCttYAo7ppDqDcpF/3N4vg==
X-Gm-Gg: ASbGnctbVkfjjRh1MsdLnN5ybxjethtLmuWhuQgT92Wi56cVRR7aTbveTjKYq9TXkWw
	hcakrELlOJorowotXR91pOsRb/sj4PIltrvlMeB6Me+ZkVe1ww64l8brHidrlektPaYSZX255FN
	FEao5mqfsZ2Ro7bhs43OIk2+RoBz7GPPO4sBwyWYSPQTZbKCfg5ZgjEguqH+fMsimSDaI5+Cfj1
	aJyeMci5LtGr/WTBi4vsjyCWyHO/8Zi2nUBCe6wKv4vAvsoNzSjYg8rGNUh3DQTR3B5v6I+zCse
	u2DZFbcBE44jeF7S3L5IP8BWU9NTeGM+Sw==
X-Google-Smtp-Source: AGHT+IEnOPWpuTuG+lEVsrl+ei3DCryc+gyWyFKx/UBJQdXPmi2nv1xpjm95k5fLE74i5u6BlPC3mg==
X-Received: by 2002:a17:903:192:b0:216:282d:c692 with SMTP id d9443c01a7336-21a83f76822mr141874435ad.34.1736493118077;
        Thu, 09 Jan 2025 23:11:58 -0800 (PST)
Received: from [0.0.0.0] (ec2-54-193-105-225.us-west-1.compute.amazonaws.com. [54.193.105.225])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-21a9f13a7absm8267425ad.91.2025.01.09.23.11.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jan 2025 23:11:57 -0800 (PST)
Message-ID: <af371a1f-0ed4-4db4-b531-59971d14e458@gmail.com>
Date: Thu, 9 Jan 2025 23:13:47 -0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [Question] How to enable CoreSight ETMv4 on rk3399?
To: Robin Murphy <robin.murphy@arm.com>, Seonghyun Park <shp4rk@gmail.com>,
 linux-rockchip@lists.infradead.org
References: <CAJrb40DBH_fDkGik6_0sa3eZ2JQujmN1KkRWrCFeSZwNCZat9w@mail.gmail.com>
 <d3ea9b55-dcdc-8a21-b2a9-c2b7878492fc@arm.com>
Content-Language: en-US
From: Bo Gan <ganboing@gmail.com>
In-Reply-To: <d3ea9b55-dcdc-8a21-b2a9-c2b7878492fc@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250109_231159_162954_8865447C 
X-CRM114-Status: UNSURE (   9.85  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Seonghyun,

Hope you are still around. I revived my rockpro64 for some coresight debugging.
Robin is right. We need to keep all those components clocked/enabled for a
successful scan. Easiest way is to disable cpu-sleep/cluster-sleep through
cpupower:

$ cpupower idle-set -D 2
$ cpupower idle-info
CPUidle driver: psci_idle
CPUidle governor: menu
analyzing CPU 0:

Number of idle states: 3
Available idle states: WFI cpu-sleep cluster-sleep
WFI:
Flags/Description: ARM WFI
Latency: 1
Usage: 50336
Duration: 4990394200
cpu-sleep (DISABLED) :
Flags/Description: cpu-sleep
Latency: 370
Usage: 3226
Duration: 3412630
cluster-sleep (DISABLED) :
Flags/Description: cluster-sleep
Latency: 900
Usage: 13599
Duration: 120658311

$ python3 coresight-tools/csscan.py --topology 0xfe400000

@0xfe400000    0x000 0x000 r0.0                        ROM table
@0xfe401000    0x23b 0x908 r2.0  CS Funnel             funnel         <no arch>        in-ports:6 locked
@0xfe403000    0x23b 0x906 r4.0  CS CTI                CTI            <no arch>        channels:4 triggers:8 locked
@0xfe404000    0x23b 0x101 r1.0  TM101 Timestamp       CoreSight timestamp generator
@0xfe405000    0x23b 0x912 r4.0  CS TPIU               port           <no arch>        TPIU locked
@0xfe420000    0x23b 0x4a3 r4.0                        ROM table
@0xfe430000    0x23b 0xd03 r4.0  Cortex-A53 debug      core-debug     Arm v8.0-A       aff=0x80000000 midr=0x410fd034 pfr=0x1002222 dfr=0x10305106 bkpt:6(2) wpt:4 PMUv3 pc-sampling:3 locked
@0xfe431000    0x23b 0x9d3 r4.0  Cortex-A53 PMU        PMU (core)     Arm PMUv3.0      aff=0x80000000 counters:6 64-bit prescale exportable id: 67ffbfff 00000000 00000000 00000000 locked
@0xfe432000    0x23b 0xd03 r4.0  Cortex-A53 debug      core-debug     Arm v8.0-A       aff=0x80000001 midr=0x410fd034 pfr=0x1002222 dfr=0x10305106 bkpt:6(2) wpt:4 PMUv3 pc-sampling:3 locked
@0xfe433000    0x23b 0x9d3 r4.0  Cortex-A53 PMU        PMU (core)     Arm PMUv3.0      aff=0x80000001 counters:6 64-bit prescale exportable id: 67ffbfff 00000000 00000000 00000000 locked
@0xfe434000    0x23b 0xd03 r4.0  Cortex-A53 debug      core-debug     Arm v8.0-A       aff=0x80000002 midr=0x410fd034 pfr=0x1002222 dfr=0x10305106 bkpt:6(2) wpt:4 PMUv3 pc-sampling:3 locked
@0xfe435000    0x23b 0x9d3 r4.0  Cortex-A53 PMU        PMU (core)     Arm PMUv3.0      aff=0x80000002 counters:6 64-bit prescale exportable id: 67ffbfff 00000000 00000000 00000000 locked
@0xfe436000    0x23b 0xd03 r4.0  Cortex-A53 debug      core-debug     Arm v8.0-A       aff=0x80000003 midr=0x410fd034 pfr=0x1002222 dfr=0x10305106 bkpt:6(2) wpt:4 PMUv3 pc-sampling:3 locked
@0xfe437000    0x23b 0x9d3 r4.0  Cortex-A53 PMU        PMU (core)     Arm PMUv3.0      aff=0x80000003 counters:6 64-bit prescale exportable id: 67ffbfff 00000000 00000000 00000000 locked
@0xfe438000    0x23b 0x9a8 r4.0  Cortex-A53 CTI        CTI            Arm CTI          aff=0x80000000 channels:4 triggers:8 gate-inputs locked
@0xfe439000    0x23b 0x9a8 r4.0  Cortex-A53 CTI        CTI            Arm CTI          aff=0x80000001 channels:4 triggers:8 gate-inputs locked
@0xfe43a000    0x23b 0x9a8 r4.0  Cortex-A53 CTI        CTI            Arm CTI          aff=0x80000002 channels:4 triggers:8 gate-inputs locked
@0xfe43b000    0x23b 0x9a8 r4.0  Cortex-A53 CTI        CTI            Arm CTI          aff=0x80000003 channels:4 triggers:8 gate-inputs locked
@0xfe43c000    0x23b 0x95d r4.0  Cortex-A53 ETM        ETM            Arm ETMv4.0      aff=0x80000000 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:30 extinsel:4 locked
@0xfe43d000    0x23b 0x95d r4.0  Cortex-A53 ETM        ETM            Arm ETMv4.0      aff=0x80000001 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:30 extinsel:4 locked
@0xfe43e000    0x23b 0x95d r4.0  Cortex-A53 ETM        ETM            Arm ETMv4.0      aff=0x80000002 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:30 extinsel:4 locked
@0xfe43f000    0x23b 0x95d r4.0  Cortex-A53 ETM        ETM            Arm ETMv4.0      aff=0x80000003 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:30 extinsel:4 locked
@0xfe600000    0x23b 0x4a4 r0.0  Cortex-A72 ROM        ROM table
@0xfe610000    0x23b 0xd08 r0.0  Cortex-A72 debug      core-debug     Arm v8.0-A       aff=0x80000100 midr=0x410fd082 pfr=0x1002222 dfr=0x10305106 bkpt:6(2) wpt:4 PMUv3 pc-sampling:3 locked
@0xfe620000    0x23b 0x906 r4.0  CS CTI                CTI            <no arch>        channels:4 triggers:8 locked
@0xfe630000    0x23b 0x9d8 r0.0  Cortex-A72 PMU        PMU (core)     Arm PMUv3.0      aff=0x80000100 counters:6 64-bit prescale exportable id: 7fff0f3f 00000000 00000000 00000000 locked
@0xfe640000    0x23b 0x95a r0.0  Cortex-A72 ETM        ETM            Arm ETMv4.0      aff=0x80000100 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:110 extinsel:4 locked
@0xfe710000    0x23b 0xd08 r0.0  Cortex-A72 debug      core-debug     Arm v8.0-A       aff=0x80000101 midr=0x410fd082 pfr=0x1002222 dfr=0x10305106 bkpt:6(2) wpt:4 PMUv3 pc-sampling:3 locked
@0xfe720000    0x23b 0x906 r4.0  CS CTI                CTI            <no arch>        channels:4 triggers:8 locked
@0xfe730000    0x23b 0x9d8 r0.0  Cortex-A72 PMU        PMU (core)     Arm PMUv3.0      aff=0x80000101 counters:6 64-bit prescale exportable id: 7fff0f3f 00000000 00000000 00000000 locked
@0xfe740000    0x23b 0x95a r0.0  Cortex-A72 ETM        ETM            Arm ETMv4.0      aff=0x80000101 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:110 extinsel:4 locked

ATB topology detection
ATB scan... @0xfe401000    0x23b 0x908 r2.0  CS Funnel             funnel         <no arch>        in-ports:6 unlocked integration
   0->0  @0xfe405000    0x23b 0x912 r4.0  CS TPIU               port           <no arch>        TPIU unlocked integration
ATB scan... @0xfe43c000    0x23b 0x95d r4.0  Cortex-A53 ETM        ETM            Arm ETMv4.0      aff=0x80000000 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:30 extinsel:4 unlocked integration
   0->0  @0xfe401000    0x23b 0x908 r2.0  CS Funnel             funnel         <no arch>        in-ports:6 unlocked integration
ATB scan... @0xfe43d000    0x23b 0x95d r4.0  Cortex-A53 ETM        ETM            Arm ETMv4.0      aff=0x80000001 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:30 extinsel:4 unlocked integration
   0->1  @0xfe401000    0x23b 0x908 r2.0  CS Funnel             funnel         <no arch>        in-ports:6 unlocked integration
ATB scan... @0xfe43e000    0x23b 0x95d r4.0  Cortex-A53 ETM        ETM            Arm ETMv4.0      aff=0x80000002 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:30 extinsel:4 unlocked integration
   0->2  @0xfe401000    0x23b 0x908 r2.0  CS Funnel             funnel         <no arch>        in-ports:6 unlocked integration
ATB scan... @0xfe43f000    0x23b 0x95d r4.0  Cortex-A53 ETM        ETM            Arm ETMv4.0      aff=0x80000003 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:30 extinsel:4 unlocked integration
   0->3  @0xfe401000    0x23b 0x908 r2.0  CS Funnel             funnel         <no arch>        in-ports:6 unlocked integration
ATB scan... @0xfe640000    0x23b 0x95a r0.0  Cortex-A72 ETM        ETM            Arm ETMv4.0      aff=0x80000100 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:110 extinsel:4 unlocked integration
   0->4  @0xfe401000    0x23b 0x908 r2.0  CS Funnel             funnel         <no arch>        in-ports:6 unlocked integration
ATB scan... @0xfe740000    0x23b 0x95a r0.0  Cortex-A72 ETM        ETM            Arm ETMv4.0      aff=0x80000101 pdsr=0x00000021 ETMv4.0 ts:64 bb cc min-ccit:4 retstack events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2 seqstates:4 extin:110 extinsel:4 unlocked integration
   0->5  @0xfe401000    0x23b 0x908 r2.0  CS Funnel             funnel         <no arch>        in-ports:6 unlocked integration
ATB topology detection complete.

On 6/7/23 03:42, Robin Murphy wrote:
> On 2023-06-05 14:21, Seonghyun Park wrote:
>> Hi, community.
>>
>> I am trying to reproduce coresight-trace, a CoreSight ETMv4 trace decoder
>> utility, (https://github.com/RICSecLab/coresight-trace) on RockPro64 with
>> vanilla 6.3.1 Linux kernel and vanilla dts.
>>
>> The utility depends on a library called CSAL
>> (https://github.com/RICSecLab/CSAL/tree/fc8c493) which is used to configure
>> CoreSight registers.
>>
>> I found that the helper script, csscan.py
>> (https://github.com/ARM-software/CSAL/blob/fc8c493/csscan.py), which is
>> supposed to print the topology of CoreSignt components given the address
>> of the ROM table, but it ends up halting the whole machine when trying to
>> access CoreSight components within Big core cluster. Here is the failing log:
>>
>> ```
>> sudo python3 coresight-tools/csscan.py --topology 0xfe400000
>> @0xfe400000 0x000 0x000 r0.0 ROM table
>> @0xfe401000 0x23b 0x908 r2.0 CS Funnel funnel <no arch> in-ports:6
>> @0xfe403000 0x23b 0x906 r4.0 CS CTI CTI <no arch> channels:4 triggers:8
>> @0xfe404000 0x23b 0x101 r1.0 TM101 Timestamp CoreSight timestamp generator
>> @0xfe405000 0x23b 0x912 r4.0 CS TPIU port <no arch> TPIU
>> @0xfe420000 0x23b 0x4a3 r4.0 ROM table
>> @0xfe430000 - device excluded from scan
>> @0xfe431000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
>> aff=0x80000000 not acessing
>> @0xfe432000 - device excluded from scan
>> @0xfe433000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
>> aff=0x80000001 not acessing
>> @0xfe434000 - device excluded from scan
>> @0xfe435000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
>> aff=0x80000002 not acessing
>> @0xfe436000 - device excluded from scan
>> @0xfe437000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
>> aff=0x80000003 not acessing
>> @0xfe438000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
>> aff=0x80000000 channels:4 triggers:8 gate
>> @0xfe439000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
>> aff=0x80000001 channels:4 triggers:8 gate
>> @0xfe43a000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
>> aff=0x80000002 channels:4 triggers:8 gate
>> @0xfe43b000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
>> aff=0x80000003 channels:4 triggers:8 gate
>> @0xfe43c000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
>> aff=0x80000000 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
>> stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
>> seqstates:4 extin:30 extinsel:4
>> @0xfe43d000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
>> aff=0x80000001 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
>> stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
>> seqstates:4 extin:30 extinsel:4
>> @0xfe43e000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
>> aff=0x80000002 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
>> stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
>> seqstates:4 extin:30 extinsel:4
>> @0xfe43f000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
>> aff=0x80000003 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
>> stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
>> seqstates:4 extin:30 extinsel:4
>> @0xfe600000 0x23b 0x4a4 r0.0 ROM table
>> @0xfe610000 - device excluded from scan
>> @0xfe620000 0x23b 0x906 r4.0 CS CTI CTI <no arch> channels:4 triggers:8
>>
>> (halt)
>> ```
>>
>> Based on the TRM, the address it starts to fail seems to be around the
>> CLUSTERB_CTI0 or CLUSTERB_PMU0, implying that there are some issues with
>> accessing CoreSight components on the Big core cluster.
> 
> Most likely because the big cores are idle such that the cluster is clock-gated and/or powered off. This is one of the perils of poking around in /dev/mem.
> 
>> I'd like to ask if you have any recommendations on what I should do to resolve
>> this issue.
> 
> You could muck about with sysfs and/or kernel parameters trying to disable as many power management features as possible, but the better option would be to add the CoreSight components to the devicetree and use the kernel drivers which can handle clocks and power domains properly. See [1] for the overview.
> 
> Robin.
> 
> [1] https://www.kernel.org/doc/html/latest/trace/coresight/index.html
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

Bo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
