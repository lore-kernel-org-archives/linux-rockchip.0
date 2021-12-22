Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 93DE5C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Dec 2021 12:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GyUNWasgBsg4nsp6kJtL9myaiOyzQgnm4Fd/Ac/sLTI=; b=2rWsmE9+rK7xQQ
	mlV8YWLo1xP0IYBVvg+b8SWJ3tbNP1gd5dlb1v/bWkabrMuLG5+E2H7uEOfFcv/0XCQOk/NN58fHm
	ca1QggdjD4VgDrP3FsnqGMXIwov+y49tRRIRr7yXNwc31Dnafq8ovZOMVwPM3CdP5OMGkjVYBMUhX
	ud87bpCXMFei23Cguk7Rc11XTO2FAiOVIeQne7W4eq15H40oQYAzLp1wQJjjAIDd8wPN4gBrn9YOP
	l38M020pHRPo3yegDPhjqkKlUmwTXqUhdw7o6lC2/39GgzMvipO7w+nip5r/s3U9MTsRWi+p60lBu
	8iodnX45snFFyyI67FtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n018Y-00AMDX-EP; Wed, 22 Dec 2021 12:54:30 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n018I-00AM6a-Ho; Wed, 22 Dec 2021 12:54:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C5E5D6E;
 Wed, 22 Dec 2021 04:54:12 -0800 (PST)
Received: from [10.57.34.58] (unknown [10.57.34.58])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2B1563F5A1;
 Wed, 22 Dec 2021 04:54:11 -0800 (PST)
Message-ID: <baa1603a-a6e2-4a32-a5fb-dc1eff01189c@arm.com>
Date: Wed, 22 Dec 2021 12:54:06 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.4.1
Subject: Re: [PATCH 3/4] soc: rockchip: power-domain: Add regulator support
Content-Language: en-GB
To: Sascha Hauer <s.hauer@pengutronix.de>, Mark Brown <broonie@kernel.org>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Heiko Stuebner <heiko@sntech.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, kernel@pengutronix.de
References: <20211217130919.3035788-1-s.hauer@pengutronix.de>
 <20211217130919.3035788-4-s.hauer@pengutronix.de>
 <20211220094435.GU6003@pengutronix.de> <YcB85mzJHrirUEDA@sirena.org.uk>
 <20211222104036.GY6003@pengutronix.de>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20211222104036.GY6003@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211222_045414_730880_E9F7C188 
X-CRM114-Status: GOOD (  17.30  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 2021-12-22 10:40, Sascha Hauer wrote:
> On Mon, Dec 20, 2021 at 12:53:58PM +0000, Mark Brown wrote:
>> On Mon, Dec 20, 2021 at 10:44:35AM +0100, Sascha Hauer wrote:
>>
>>> Well, all true and on one specific board the regulator is indeed not
>>> optional. However, on all other power domains that don't need a
>>> regulator and all other boards and all other SoCs this driver is used we
>>> now get:
>>
>> This seems unlikely to be board specific, if the chip requires power the
>> chip requires power.  If there are power domains that don't take
>> external supplies then they shouldn't be requesting any regulators and
>> should be fixed.
>>
>>> [    0.185588] rk-power-domain rk-power-domain.8: supply power not found, using dummy regulator
>>
>> It seems vanishingly unlikely that the SoC takes a single supply called
>> "power" shared by everything in the SoC but that is what the code
>> appears to be requesting - the power domains should be requesting the
>> supplies they actually use, and as ever the supplies should be named
>> such that someone looking at the schematic can hook them up.  The
>> general recommendation is to use the names used in the datasheet.
> 
> Ok. I'll change the patch in a way that only for the GPU power domain on
> rk3568 a supply is requested. That's the one power domain I know that a
> regulator is needed. I'm sure there are more, if not on rk3568 then
> probably on other SoCs the driver handles. Once we notice that other
> domains need a supply we'll have to add the supply name to driver data
> for that domain.

Certainly RK3399 (and I guess RK3288 too) suffers from the same 
priority-inversion issue of being unaware that VD_GPU needs power before 
PD_GPU can be successfully turned on to probe the GPU to claim and 
enable the regulator (via "mali-supply" for DVFS purposes) that needed 
to be on in the first place. Currently all the boards are bodging around 
this with "regulator-always-on" (e.g. commit 06b2818678d9).

Thanks,
Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
