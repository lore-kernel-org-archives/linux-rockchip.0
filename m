Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E61A5C77B7A
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Jun 2023 10:42:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d67JRm2ujjI/15n1HOmxSgDrVyTXNUbtYoug61r6NRE=; b=pKWhvwLhA8Y1XB1gWcYlh8fL4Z
	5I/YpBT0fTqXCI70viwZHgvrkh+HzCAxubQgulZPSaiZRdrS1aFObp39/JBarlXKfiTsWy1MSfmnx
	YLz0az0TeMYxgYNK/A+qIboOz6b9qtxG+tX6lfmYGvV1IYeWhEmVLH9mwK5odxGgG5eOz8cDdi3LT
	ZgHnWC30B/LduK2oE3UIxWk3Lg/RFhbTW0KZ6ioeC6SdArnQgR0vr8uQ4pH/gB2J0wUAEIuhljcA6
	inIwSukXPlMkpaP0N3b6qvaltowCufCOto3QxkbvMUVOFiZ7oJn1Uc3yO6l2RtAhO2ThF9x/wpgjw
	PFaY3dOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6qcT-005Wic-1h;
	Wed, 07 Jun 2023 10:42:25 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6qcQ-005WgK-1L
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Jun 2023 10:42:24 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1432FAB6;
	Wed,  7 Jun 2023 03:43:03 -0700 (PDT)
Received: from [10.57.75.6] (unknown [10.57.75.6])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 45E9D3F587;
	Wed,  7 Jun 2023 03:42:17 -0700 (PDT)
Message-ID: <d3ea9b55-dcdc-8a21-b2a9-c2b7878492fc@arm.com>
Date: Wed, 7 Jun 2023 11:42:12 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [Question] How to enable CoreSight ETMv4 on rk3399?
Content-Language: en-GB
To: Seonghyun Park <shp4rk@gmail.com>, linux-rockchip@lists.infradead.org
References: <CAJrb40DBH_fDkGik6_0sa3eZ2JQujmN1KkRWrCFeSZwNCZat9w@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CAJrb40DBH_fDkGik6_0sa3eZ2JQujmN1KkRWrCFeSZwNCZat9w@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_034222_572615_0E7A6262 
X-CRM114-Status: GOOD (  18.63  )
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

On 2023-06-05 14:21, Seonghyun Park wrote:
> Hi, community.
> 
> I am trying to reproduce coresight-trace, a CoreSight ETMv4 trace decoder
> utility, (https://github.com/RICSecLab/coresight-trace) on RockPro64 with
> vanilla 6.3.1 Linux kernel and vanilla dts.
> 
> The utility depends on a library called CSAL
> (https://github.com/RICSecLab/CSAL/tree/fc8c493) which is used to configure
> CoreSight registers.
> 
> I found that the helper script, csscan.py
> (https://github.com/ARM-software/CSAL/blob/fc8c493/csscan.py), which is
> supposed to print the topology of CoreSignt components given the address
> of the ROM table, but it ends up halting the whole machine when trying to
> access CoreSight components within Big core cluster. Here is the failing log:
> 
> ```
> sudo python3 coresight-tools/csscan.py --topology 0xfe400000
> @0xfe400000 0x000 0x000 r0.0 ROM table
> @0xfe401000 0x23b 0x908 r2.0 CS Funnel funnel <no arch> in-ports:6
> @0xfe403000 0x23b 0x906 r4.0 CS CTI CTI <no arch> channels:4 triggers:8
> @0xfe404000 0x23b 0x101 r1.0 TM101 Timestamp CoreSight timestamp generator
> @0xfe405000 0x23b 0x912 r4.0 CS TPIU port <no arch> TPIU
> @0xfe420000 0x23b 0x4a3 r4.0 ROM table
> @0xfe430000 - device excluded from scan
> @0xfe431000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
> aff=0x80000000 not acessing
> @0xfe432000 - device excluded from scan
> @0xfe433000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
> aff=0x80000001 not acessing
> @0xfe434000 - device excluded from scan
> @0xfe435000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
> aff=0x80000002 not acessing
> @0xfe436000 - device excluded from scan
> @0xfe437000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
> aff=0x80000003 not acessing
> @0xfe438000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
> aff=0x80000000 channels:4 triggers:8 gate
> @0xfe439000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
> aff=0x80000001 channels:4 triggers:8 gate
> @0xfe43a000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
> aff=0x80000002 channels:4 triggers:8 gate
> @0xfe43b000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
> aff=0x80000003 channels:4 triggers:8 gate
> @0xfe43c000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
> aff=0x80000000 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
> stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
> seqstates:4 extin:30 extinsel:4
> @0xfe43d000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
> aff=0x80000001 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
> stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
> seqstates:4 extin:30 extinsel:4
> @0xfe43e000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
> aff=0x80000002 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
> stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
> seqstates:4 extin:30 extinsel:4
> @0xfe43f000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
> aff=0x80000003 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
> stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
> seqstates:4 extin:30 extinsel:4
> @0xfe600000 0x23b 0x4a4 r0.0 ROM table
> @0xfe610000 - device excluded from scan
> @0xfe620000 0x23b 0x906 r4.0 CS CTI CTI <no arch> channels:4 triggers:8
> 
> (halt)
> ```
> 
> Based on the TRM, the address it starts to fail seems to be around the
> CLUSTERB_CTI0 or CLUSTERB_PMU0, implying that there are some issues with
> accessing CoreSight components on the Big core cluster.

Most likely because the big cores are idle such that the cluster is 
clock-gated and/or powered off. This is one of the perils of poking 
around in /dev/mem.

> I'd like to ask if you have any recommendations on what I should do to resolve
> this issue.

You could muck about with sysfs and/or kernel parameters trying to 
disable as many power management features as possible, but the better 
option would be to add the CoreSight components to the devicetree and 
use the kernel drivers which can handle clocks and power domains 
properly. See [1] for the overview.

Robin.

[1] https://www.kernel.org/doc/html/latest/trace/coresight/index.html

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
