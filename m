Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AADCC83F27
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Jul 2025 14:34:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DHH3wCHCw92SeBTM27LaG0vM4qJMC19qmm7YieXHvA4=; b=c8avyQXnEY5yMZ
	6BOeQTuqyTwf9QOgMnHfROXp27s/+qmLEeMvuc0GE+5o0ZDK6ssvDQD6oyGO9Vjhk4ZBqPl5XldMJ
	gyGYfcb/oVdm8BXVP138NgY8GJnjEQB7Wq3MrfFMI2/aBDk+rxsYpqm2RbtuO0+66Gg+n7XhXv5fo
	sygV52X8EhMabi6EYEjXaGQaqIl68nEGgYVms/X5P4Zo3ld39Dqr4PjA3kixCQpNG9CTgOzO4g8f0
	erOW6TwS+UqqFHHHqvsw+vD9w4EosEoSLRj9aIbweQbk9gR1VZ1YYwuPAPHeawIvUytfqCvvq28LN
	0OiyR22CvAo69j0WWPxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uc3DU-00000007v7w-1vR5;
	Wed, 16 Jul 2025 14:34:40 +0000
Received: from mail-m49198.qiye.163.com ([45.254.49.198])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uc39W-00000007uSD-0HCN;
	Wed, 16 Jul 2025 14:30:35 +0000
Received: from localhost.localdomain (unknown [119.122.214.181])
	by smtp.qiye.163.com (Hmail) with ESMTP id 1c3b8f49f;
	Wed, 16 Jul 2025 22:30:22 +0800 (GMT+08:00)
From: Chukun Pan <amadeus@jmu.edu.cn>
To: alchark@gmail.com
Cc: amadeus@jmu.edu.cn,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	ziyao@disroot.org
Subject: Re: [PATCH v2 1/1] arm64: dts: rockchip: rk3528: Add CPU frequency scaling support
Date: Wed, 16 Jul 2025 22:30:16 +0800
Message-Id: <20250716143016.620430-1-amadeus@jmu.edu.cn>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <CABjd4YzCL3U9yf65FUBE6EMqFjZHosULU7fUcjVo9VJ_=Ov+Dw@mail.gmail.com>
References: <CABjd4YzCL3U9yf65FUBE6EMqFjZHosULU7fUcjVo9VJ_=Ov+Dw@mail.gmail.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVkaSk9CVhpJT0lLSUgdHk5PGVYeHw5VEwETFhoSFy
	QUDg9ZV1kYEgtZQVlKSkJVSklJVUlKT1VKQ0pZV1kWGg8SFR0UWUFZT0tIVUpLSEpOTE5VSktLVU
	pCS0tZBg++
X-HM-Tid: 0a9813a4c74803a2kunm62c672118974a5
X-HM-MType: 10
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ODI6Hgw*EzExDQ1LVk0MNTM8
	DTxPCz5VSlVKTE5JTUxNSUlIQ0pNVTMWGhIXVRoWGh8eDgg7ERYOVR4fDlUYFUVZV1kSC1lBWUpK
	QlVKSUlVSUpPVUpDSllXWQgBWUFITk9LNwY+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250716_073034_302473_70256A7E 
X-CRM114-Status: GOOD (  19.56  )
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

Hi,

> > There has often been the argument that selecting a frequency that has
> > the same voltage as a faster frequency does not save any power.
> >
> > Hence I remember that we dropped slower frequencies on other socs
> > that share the same voltage with a higher frequency.

Sorry, but soc.dtsi on rockchip doesn't seem to have dropped slower
frequencies with the same voltage?

rk3562.dtsi: CPU 408MHz -  816MHz 825mV | GPU 300MHz - 600MHz 825mV
rk3566.dtsi: CPU 408MHz -  816MHz 850mV | GPU 200MHz - 400MHz 850mV
rk3576.dtsi: CPU 408MHz - 1200MHz 700mV | GPU 300MHz - 600MHz 700mV

> I.e. here the mainline kernel will always choose opp-1008000000 as
> long as the regulator voltage is 875000 uV, unless explicitly
> prevented from doing so by userspace. Whereas the BSP kernel [1] would
> request different frequencies for different silicon, e.g.
> opp-1200000000 for a silicon specimen with a leakage value of L4 and
> opp-1416000000 for a silicon specimen with a leakage value of L8 - all
> for the same regulator voltage of 875000 uV.
>
> So my 2 cents would be: no added benefit in having "lower frequency,
> same voltage" OPPs defined here until we implement an OPP driver
> reading the NVMEM programmed leakage values and selecting different
> *-L* voltages for each OPP depending on those. Once there is this
> support in the drivers, those OPPs can be added together with
> leakage-specific voltages (opp-microvolt-L0..11).

I assume this has nothing to do with the NVMEM driver?

From [1], we can see that the voltage used by the same board from
408MHz to 1008MHz is the same. The actual test is also like this:

The first  board: CPU 408MHz - 1008MHz both 850mV | 1200MHz 862mV
The second board: CPU 408MHz - 1008MHz both 875mV | 1200MHz 875mV

[1] https://github.com/rockchip-linux/kernel/blob/develop-5.10/arch/arm64/boot/dts/rockchip/rk3528.dtsi#L227-L271

> Right now OPP values with frequencies lower than 1008000000 won't be
> selected by any of the energy-aware cpufreq governors anyway, because
> their voltages are the same. Exercise for the reader: try to convince
> e.g. the "schedutil" governor to select anything below 1008000000
> without touching
> /sys/devices/system/cpu/cpufreq/policy0/scaling_max_freq :) This may
> change if OPP tuning logic is implemented such as in [2]: that will
> try and find the _voltage_ resulting in PVTPLL providing a frequency
> closest to what cpufreq requested, and use that for the in-memory OPP
> table instead of what was provided by the DTS.

Thanks for the clarification, so should we remove 408MHz, 600MHz and
816MHz from the opp-table? Is this also the case with GPU's opp-table?

Thanks,
Chukun

--
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
