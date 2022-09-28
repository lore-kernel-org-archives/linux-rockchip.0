Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 41B0AC04A95
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Sep 2022 10:38:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EwXN9XhfuOgUlcQ5UAxsopAU6uAd1AJRtBM+5OST6gg=; b=1eWX5zzvC1EqL7
	XOt9wVP8yrN+v/A8u53q5HZLmij52QFfgqVG2XPEsb2P5l1mAHviZoB/L+fWAVmCju5j1ZIgSR3hI
	QNI/NSIwA19PEODw/dOTUgY1q/GOR0xlC+WG9d1BBEdlWjeLTd5d7s76AQC6OWxTS7GcB4y6w+FqX
	gkpXXEMOIkUR9VdDHTscyxUjGw/BVOFxlQ4kKBCk2hH+37AFcdrucpaZmMGhYEoXu2vckzCPjBvKm
	PZvK0nR2OhLeBlPdkWlkGEKpEPUIvZi0b0fZaBZrK1K1YzO7/pOllmCqE3z/MC11FTkFfYltXS637
	kpH6702q5XZ2ry4YJmog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUSV-00FgGO-0Z; Wed, 28 Sep 2022 10:38:31 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odUSJ-00Fg9z-N8; Wed, 28 Sep 2022 10:38:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 123F41595;
	Wed, 28 Sep 2022 03:38:25 -0700 (PDT)
Received: from [10.57.65.170] (unknown [10.57.65.170])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0EB9C3F792;
	Wed, 28 Sep 2022 03:38:16 -0700 (PDT)
Message-ID: <ebb55252-f78b-e988-8a35-c41e6b6d7cda@arm.com>
Date: Wed, 28 Sep 2022 11:37:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH-next v1] arm64: dts: rockchip: Enable NVM Express PCIe
 controller on rock3a
Content-Language: en-GB
To: Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux.amoon@gmail.com, heiko@sntech.de, robh+dt@kernel.org,
 michael.riesch@wolfvision.net, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
References: <e75cc292-ff7a-0daa-e2f9-fde376b5e26e@arm.com>
 <20220928100520.3886-1-amadeus@jmu.edu.cn>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220928100520.3886-1-amadeus@jmu.edu.cn>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_033819_828534_B8DFC8B6 
X-CRM114-Status: GOOD (  14.96  )
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

On 2022-09-28 11:05, Chukun Pan wrote:
> Hi,
> 
> On 27-09-22, 18:47, Robin Murphy wrote:
> 
>> (as a side note, is pcie2x1's vpcie3v3-supply as queued in -next
>> actually correct? AFAICS the other socket is effectively powered
>> straight from VCC3V3_SYS so shouldn't have needed VCC3V3_PCIE,
>> but at least it's there now ready for this one)
> 
> Thanks for the correction, I didn't notice this before. You are right,
> the supply of pcie2x1 comes from VCC3V3_SYS. But if we change supply
> of pcie2x1 to VCC3V3_SYS, it will cause pcie30phy to fail to initialize
> normally. The error is the same as the following:
> 
>> phy phy-fe8c0000.phy.4: rockchip_p3phy_rk3568_init: lock
>> failed 0x6890000, check input refclk and power supply
>> phy phy-fe8c0000.phy.4: phy init failed --> -110
>> rockchip-dw-pcie: probe of 3c0800000.pcie failed with error -110
> 
> If both vpcie3v3-supply of pcie2x1 and pcie3x2 use VCC3V3_PCIE like
> the vendor kernel, they can initialized normally.

Presumably that only works because you happen to be probing pcie2x1 
first, so it's not robust if that is disabled or probes later.

Looking again, it seems the answer was right there in the error message 
all along - the PCIe 3.0 phy wants its external reference clock 
describing correctly, and it's *that* clock which depends on 
VCC3V3_PI6C_03, which happens to be turned on in parallel with VCC3V3_PCIE.

Cheers,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
