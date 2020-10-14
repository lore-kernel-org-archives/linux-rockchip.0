Return-Path: <SRS0=XvIT=DV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D06D7C433E7
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 16:43:05 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 541EE214D8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Oct 2020 16:43:05 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="dTu3fGf1"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 541EE214D8
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l86pVjULLjT9GN0gaUqMKO50tPoNJkoZ5lSZOOGNOO8=; b=dTu3fGf1fZ9IRXoE8p5TNc5Lf
	mD3hQ9pujpRo7i/7zUZLZ2tPVozIqiqMXDihwMd5xMbzads27QAIysErtyBaGkUzcBUeGuYJvpFLA
	rjLQsxxwAPnlk7fjiK/uC85WnySUSnuXnc57nt+FYnJ3JEpIcqG/S3yP6nee7I8MUuA02CVRh7C2S
	7I6OnrZxqHuC3GaDQvv4ogaeQP/F5rJpLRO4LLPSbE8Y/ZbJA5VjFkY/I2IGm+DDYXqVBz8OzF0UI
	SmU4Kc+WMuDS3HdMWS3bMo0AH09sckiH8iJxKwFF9WdoCRwxzRMYLH0fchQwk2ZNvBCIhmupWLIrv
	NKexGIgfQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kSjrf-0001xm-FV; Wed, 14 Oct 2020 16:42:59 +0000
Received: from foss.arm.com ([217.140.110.172])
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSjrd-0001wt-AJ
 for linux-rockchip@lists.infradead.org; Wed, 14 Oct 2020 16:42:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A2DFDD6E;
 Wed, 14 Oct 2020 09:42:55 -0700 (PDT)
Received: from [10.57.48.76] (unknown [10.57.48.76])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 939793F71F;
 Wed, 14 Oct 2020 09:42:52 -0700 (PDT)
Subject: Re: [PATCH v5 8/9] arm64: dts: rockchip: add isp0 node for rk3399
To: Helen Koike <helen.koike@collabora.com>, Tomasz Figa <tfiga@chromium.org>
References: <20200722155533.252844-1-helen.koike@collabora.com>
 <20200722155533.252844-9-helen.koike@collabora.com>
 <20200926130005.GC3781977@chromium.org>
 <905118dd-f108-6bc0-4cf0-9544fab51690@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <49005dd4-4467-2c93-a294-3760b98a7b92@arm.com>
Date: Wed, 14 Oct 2020 17:42:51 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.3.2
MIME-Version: 1.0
In-Reply-To: <905118dd-f108-6bc0-4cf0-9544fab51690@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201014_124257_482704_704E9463 
X-CRM114-Status: GOOD (  21.95  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devel@driverdev.osuosl.org, devicetree@vger.kernel.org,
 eddie.cai.linux@gmail.com, dafna.hirschfeld@collabora.com, heiko@sntech.de,
 zhengsq@rock-chips.com, linux-kernel@vger.kernel.org,
 karthik.poduval@gmail.com, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, hverkuil-cisco@xs4all.nl, mark.rutland@arm.com,
 kernel@collabora.com, ezequiel@collabora.com, jbx6244@gmail.com,
 linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2020-10-14 17:27, Helen Koike wrote:
> Hi Tomasz,
> 
> On 9/26/20 10:00 AM, Tomasz Figa wrote:
>> Hi Helen,
>>
>> On Wed, Jul 22, 2020 at 12:55:32PM -0300, Helen Koike wrote:
>>> From: Shunqian Zheng <zhengsq@rock-chips.com>
>>>
>>> RK3399 has two ISPs, but only isp0 was tested.
>>> Add isp0 node in rk3399 dtsi
>>>
>>> Verified with:
>>> make ARCH=arm64 dtbs_check DT_SCHEMA_FILES=Documentation/devicetree/bindings/media/rockchip-isp1.yaml
>>>
>>> Signed-off-by: Shunqian Zheng <zhengsq@rock-chips.com>
>>> Signed-off-by: Jacob Chen <jacob2.chen@rock-chips.com>
>>> Signed-off-by: Helen Koike <helen.koike@collabora.com>
>>>
>>> ---
>>>
>>> V4:
>>> - update clock names
>>>
>>> V3:
>>> - clean up clocks
>>>
>>> V2:
>>> - re-order power-domains property
>>>
>>> V1:
>>> This patch was originally part of this patchset:
>>>
>>>      https://patchwork.kernel.org/patch/10267431/
>>>
>>> The only difference is:
>>> - add phy properties
>>> - add ports
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3399.dtsi | 25 ++++++++++++++++++++++++
>>>   1 file changed, 25 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> index dba9641947a3a..ed8ba75dbbce8 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>>> @@ -1721,6 +1721,31 @@ vopb_mmu: iommu@ff903f00 {
>>>   		status = "disabled";
>>>   	};
>>>   
>>> +	isp0: isp0@ff910000 {
>>> +		compatible = "rockchip,rk3399-cif-isp";
>>> +		reg = <0x0 0xff910000 0x0 0x4000>;
>>> +		interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH 0>;
>>> +		clocks = <&cru SCLK_ISP0>,
>>> +			 <&cru ACLK_ISP0_WRAPPER>,
>>> +			 <&cru HCLK_ISP0_WRAPPER>;
>>> +		clock-names = "isp", "aclk", "hclk";
>>> +		iommus = <&isp0_mmu>;
>>> +		phys = <&mipi_dphy_rx0>;
>>> +		phy-names = "dphy";
>>> +		power-domains = <&power RK3399_PD_ISP0>;
>>
>> Should this have status = "disabled" too? The mipi_dphy_rx0 node is
>> disabled by default too, so in the default configuration the driver
>> would always fail to probe.
> 
> I'm thinking what is the overall guideline here.
> Since isp and mipi_dphy are always present in the rk3399, shouldn't they always be enabled?
> Or since they are only useful if a sensor is present, we should let the dts of the board to
> enable it?

Yes, the usual pattern is that anything which needs additional hardware 
outside the SoC to be useful is disabled by default in the SoC DTSI, and 
enabled in individual board DTSs as appropriate. See USB, HDMI, etc. for 
instance.

There's probably a further debate about how much the board itself should 
enable if it only breaks out a connector for the user to add their own 
camera module, but hey, one step at a time ;)

Robin.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
