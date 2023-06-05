Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1515FC7EE23
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jun 2023 13:21:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JXrcud5+R+oCMbZlOJW+Swoe+PrkvGCRvesBueZiDik=; b=CDd
	u1KGsggR3uQ7kZiCXTRcbWz7K2MyWdlailE32MZ9N6vy1sf9UPt5algjB/riRUHwZdSChEzK1ue93
	yAcQuoT2b+YbwZmNkpeUqLfQDiSroYc1B5V0Ag8Dn0RiVrl9ac7Ml7BDPLUsKmD8JhbAlltywJkT6
	5jF0ACS+I9ca9qjqR0Dn1RqxQAlwklD8ABwM6m0g2sgEO3gkPsSMWslQVRlxpA0FnFhk6ZyQhT2pj
	Zxem+oCnonOhpT1Y4ic7d9SJ+KgM3iGgmz0lXdC5/7YNlWTYGeYsX7j8m3eOLg5bd4yijNg44CSPp
	cMea/Tzw0Jn8oUQMB+Lf+JlFtGGzgQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6A9Z-00Fask-2Z;
	Mon, 05 Jun 2023 13:21:45 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6A9W-00FarX-2f
	for linux-rockchip@lists.infradead.org;
	Mon, 05 Jun 2023 13:21:44 +0000
Received: by mail-pj1-x102b.google.com with SMTP id 98e67ed59e1d1-2568caabfbfso2219336a91.3
        for <linux-rockchip@lists.infradead.org>; Mon, 05 Jun 2023 06:21:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685971302; x=1688563302;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=CYdgBdeO36hEYiU83huqGsjiF6mESG28eLgizUeyYf0=;
        b=j4oP7Aie8vaiUfQYAszPyTq4kwyHXQOJoj3TOBACu4C0eLu5Qg3Wf2YDHYo7ZxWkVu
         hBKW9ULMhgR1xgXDkpps267lKpyTJUR3QDGjokUEt9NXz6N+NHRM6mkcZ5ZYB3QFE8bP
         hj3Rj74dmTmqsJQ9bGQt6+IZfmXmcCEDin90yjlKf1eyIIYxjFOIuJBt7/QdKk+Z9BxD
         qSXqwLCHlI/kBOnB7T3+e5Qi6qd1cMtngM4Balyw7GFMConvgKOPuUMa+Cu6/1f5iEjH
         uxdaiCz25PWLjoQCvUueW+4dqXCR3hPLU7xwg1t9cNw8yPyNLe1SBJVuuQ6JO9IbEAVN
         Dreg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685971302; x=1688563302;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CYdgBdeO36hEYiU83huqGsjiF6mESG28eLgizUeyYf0=;
        b=cO/dokiWZd1bPvIE1e1OQSPvCfDXjshWE6F6xgWexZk0FPt1mN+ob240IIjQjxKTSl
         4ExZ6CL2typ+sZ1HVb9hzuGn/E5C+kZ3IcjsNEfa80HKiXagyJiBmOxWh7ziC+N30MXr
         jISKLkaA3o9uEckY01q/BIF4TbDhP+lY4Mier6tABuT4DSBy8zmjfWlPSfCe1aVQC6Fj
         /FNU2PNL/UK+Vt5LO3MGApffV1Yf2rPeOzjC3V3+/TDMl4+RRsNMXflVzGXGezWTlVZn
         WeuOeTSuUnL355MpRwt3Bp2l/2ZweHraMyjGaAb2DSwKZNWi/SCyPmoA56vWBVKZMCvY
         EUMQ==
X-Gm-Message-State: AC+VfDzSGvvSGXbmo2Jp+e41TvRx9zClTi4Q1uDb4zHp0AdFq0+Xk47n
	co/vWGRXctRSDV7Ld0viXoFtDF6FCfk9VKHjU/9UkYCsnuEB/CCMcyU=
X-Google-Smtp-Source: ACHHUZ4c4pMNq+jE+QA82eXnDpiKjccjCaC1xEUDYBOFTyf59Vcws4ZqQy71rgctGMfKG15d1sinAHmV5/Cuag1XYRo=
X-Received: by 2002:a17:90a:1a46:b0:24b:7618:2d16 with SMTP id
 6-20020a17090a1a4600b0024b76182d16mr3855378pjl.31.1685971301608; Mon, 05 Jun
 2023 06:21:41 -0700 (PDT)
MIME-Version: 1.0
From: Seonghyun Park <shp4rk@gmail.com>
Date: Mon, 5 Jun 2023 22:21:30 +0900
Message-ID: <CAJrb40DBH_fDkGik6_0sa3eZ2JQujmN1KkRWrCFeSZwNCZat9w@mail.gmail.com>
Subject: [Question] How to enable CoreSight ETMv4 on rk3399?
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_062142_864178_282625CD 
X-CRM114-Status: GOOD (  11.80  )
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

Hi, community.

I am trying to reproduce coresight-trace, a CoreSight ETMv4 trace decoder
utility, (https://github.com/RICSecLab/coresight-trace) on RockPro64 with
vanilla 6.3.1 Linux kernel and vanilla dts.

The utility depends on a library called CSAL
(https://github.com/RICSecLab/CSAL/tree/fc8c493) which is used to configure
CoreSight registers.

I found that the helper script, csscan.py
(https://github.com/ARM-software/CSAL/blob/fc8c493/csscan.py), which is
supposed to print the topology of CoreSignt components given the address
of the ROM table, but it ends up halting the whole machine when trying to
access CoreSight components within Big core cluster. Here is the failing log:

```
sudo python3 coresight-tools/csscan.py --topology 0xfe400000
@0xfe400000 0x000 0x000 r0.0 ROM table
@0xfe401000 0x23b 0x908 r2.0 CS Funnel funnel <no arch> in-ports:6
@0xfe403000 0x23b 0x906 r4.0 CS CTI CTI <no arch> channels:4 triggers:8
@0xfe404000 0x23b 0x101 r1.0 TM101 Timestamp CoreSight timestamp generator
@0xfe405000 0x23b 0x912 r4.0 CS TPIU port <no arch> TPIU
@0xfe420000 0x23b 0x4a3 r4.0 ROM table
@0xfe430000 - device excluded from scan
@0xfe431000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
aff=0x80000000 not acessing
@0xfe432000 - device excluded from scan
@0xfe433000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
aff=0x80000001 not acessing
@0xfe434000 - device excluded from scan
@0xfe435000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
aff=0x80000002 not acessing
@0xfe436000 - device excluded from scan
@0xfe437000 0x23b 0x9d3 r4.0 Cortex-A53 PMU PMU (core) Arm PMUv3 rev0
aff=0x80000003 not acessing
@0xfe438000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
aff=0x80000000 channels:4 triggers:8 gate
@0xfe439000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
aff=0x80000001 channels:4 triggers:8 gate
@0xfe43a000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
aff=0x80000002 channels:4 triggers:8 gate
@0xfe43b000 0x23b 0x9a8 r4.0 Cortex-A53 CTI CTI Arm CTI rev0
aff=0x80000003 channels:4 triggers:8 gate
@0xfe43c000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
aff=0x80000000 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
seqstates:4 extin:30 extinsel:4
@0xfe43d000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
aff=0x80000001 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
seqstates:4 extin:30 extinsel:4
@0xfe43e000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
aff=0x80000002 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
seqstates:4 extin:30 extinsel:4
@0xfe43f000 0x23b 0x95d r4.0 Cortex-A53 ETM ETM Arm ETMv4 rev0
aff=0x80000003 pdsr=0x00000023 ETMv4.0 ts:64 bb cc min-ccit:4 retstack
stall events:4 resources:16 addrcomp:4 ssc:1 pecomp:0 counters:2
seqstates:4 extin:30 extinsel:4
@0xfe600000 0x23b 0x4a4 r0.0 ROM table
@0xfe610000 - device excluded from scan
@0xfe620000 0x23b 0x906 r4.0 CS CTI CTI <no arch> channels:4 triggers:8

(halt)
```

Based on the TRM, the address it starts to fail seems to be around the
CLUSTERB_CTI0 or CLUSTERB_PMU0, implying that there are some issues with
accessing CoreSight components on the Big core cluster.

I'd like to ask if you have any recommendations on what I should do to resolve
this issue.

I suspect that the ETM registers are security-protected or not powered-on,
but I have no clue how to actually unlock them or turn them on.

Any information would be deeply appreciated.

Best Regards,
Seonghyun

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
