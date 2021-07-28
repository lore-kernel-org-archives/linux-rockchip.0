Return-Path: <SRS0=Db5J=MU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-21.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,NICE_REPLY_A,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 980D1C4338F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 08:40:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5F3DD6054F
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Jul 2021 08:40:18 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5F3DD6054F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=arm.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:Cc:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hzCzj3RrNGGNov0gK0tqICqrZvgoMrNY5NejRhqdpEE=; b=h06bzhoRoGvHxUqjctlyGp8dgh
	qk47zE9xA3vxFdFWDV6TqU8vQ44c0SpVU7Eg+sh3XKr/AmrJ6abMVvSwfzQEPexMmHzPUkoilU12R
	fJnsxRJq9/22GEnqGLeZt7MSv1QNwDZGPYNsELw4rOOle2+qNKrIMHzUT1x/S70tAvjix2ywfl4zB
	ycr/oPhglo8nsN+omdh/lHnW7yF7A075P0DniHYCeEdkU04UJZg3YT2GACwsh3FwyS4ziPGUwDjCC
	LQQKeTINmERBmfUwOBQRcd/aGP7gI/ddn72G6uvoob3AsQgjN1iuAux2brdoDtiDbVR4on5Tf6ZjC
	STMJNOEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8f6t-00HaX6-6J; Wed, 28 Jul 2021 08:40:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8f6e-00HaSr-N0; Wed, 28 Jul 2021 08:40:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A7BB41FB;
 Wed, 28 Jul 2021 01:39:57 -0700 (PDT)
Received: from [10.57.36.146] (unknown [10.57.36.146])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 50A933F73D;
 Wed, 28 Jul 2021 01:39:54 -0700 (PDT)
Subject: Re: renesas/master bisection:
 baseline-nfs.bootrr.rockchip-usb2phy0-probed on rk3399-gru-kevin
To: Guillaume Tucker <guillaume.tucker@collabora.com>,
 kernelci-results@groups.io, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>
Cc: Maciej Matuszczyk <maccraft123mc@gmail.com>, Marc Zyngier
 <maz@kernel.org>, Jacob Chen <jacob2.chen@rock-chips.com>,
 Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Cameron Nemo <cnemo@tutanota.com>,
 devicetree@vger.kernel.org, Elaine Zhang <zhangqing@rock-chips.com>,
 Helen Koike <helen.koike@collabora.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Ezequiel Garcia <ezequiel@collabora.com>, Rob Herring <robh+dt@kernel.org>,
 Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Collabora Kernel ML <kernel@collabora.com>
References: <61002766.1c69fb81.8f53.9f6a@mx.google.com>
 <c52f6cfb-1316-dd6a-46fa-17abfcc4bf18@collabora.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <eb04c12b-414e-70a7-5dff-12da3eb98cd0@arm.com>
Date: Wed, 28 Jul 2021 09:39:47 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <c52f6cfb-1316-dd6a-46fa-17abfcc4bf18@collabora.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_014000_898535_E4CE0D80 
X-CRM114-Status: GOOD (  25.62  )
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

Hi Guillaume,

Not sure what I did to get CC'd on this, but since I'm here...

On 2021-07-28 07:04, Guillaume Tucker wrote:
> Please see the bisection report below about usb2phy failing to
> probe on rk3399-gru-kevin.
> 
> Reports aren't automatically sent to the public while we're
> trialing new bisection features on kernelci.org but this one
> looks valid.
> 
> The bisection was run in the Renesas tree but the same regression
> is present in mainline for both usb2phy0 and usb2phy1 devices:
> 
>    https://linux.kernelci.org/test/plan/id/6100af012344eef9b85018f3/
>    https://linux.kernelci.org/test/case/id/6100af012344eef9b85018fa/
> 
> I don't see any errors in the logs, it looks like the driver is
> just not probing.

What's the actual testcase for "rockchip-usb2phy0-probed"? If it's 
looking for a hard-coded path like 
"/sys/bus/platform/devices/ff770000.syscon:usb2-phy@e450/driver" then it 
can be expected to fail, since changing the node name is reflected in 
the device name.

Robin.

> Best wishes,
> Guillaume
> 
> 
> On 27/07/2021 16:33, KernelCI bot wrote:
>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>> * This automated bisection report was sent to you on the basis  *
>> * that you may be involved with the breaking commit it has      *
>> * found.  No manual investigation has been done to verify it,   *
>> * and the root cause of the problem may be somewhere else.      *
>> *                                                               *
>> * If you do send a fix, please include this trailer:            *
>> *   Reported-by: "kernelci.org bot" <bot@kernelci.org>          *
>> *                                                               *
>> * Hope this helps!                                              *
>> * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
>>
>> renesas/master bisection: baseline-nfs.bootrr.rockchip-usb2phy0-probed on rk3399-gru-kevin
>>
>> Summary:
>>    Start:      42d1095acf6e Merge branch 'renesas-next', tag 'v5.14-rc3' into renesas-devel
>>    Plain log:  https://storage.kernelci.org/renesas/master/renesas-devel-2021-07-26-v5.14-rc3/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-collabora/baseline-nfs-rk3399-gru-kevin.txt
>>    HTML log:   https://storage.kernelci.org/renesas/master/renesas-devel-2021-07-26-v5.14-rc3/arm64/defconfig+CONFIG_RANDOMIZE_BASE=y/gcc-8/lab-collabora/baseline-nfs-rk3399-gru-kevin.html
>>    Result:     8c3d64251ac5 arm64: dts: rockchip: rename nodename for phy-rockchip-inno-usb2
>>
>> Checks:
>>    revert:     PASS
>>    verify:     PASS
>>
>> Parameters:
>>    Tree:       renesas
>>    URL:        https://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git
>>    Branch:     master
>>    Target:     rk3399-gru-kevin
>>    CPU arch:   arm64
>>    Lab:        lab-collabora
>>    Compiler:   gcc-8
>>    Config:     defconfig+CONFIG_RANDOMIZE_BASE=y
>>    Test case:  baseline-nfs.bootrr.rockchip-usb2phy0-probed
>>
>> Breaking commit found:
>>
>> -------------------------------------------------------------------------------
>> commit 8c3d64251ac5c5a3d10364f6b07d3603ac1e7b4a
>> Author: Johan Jonker <jbx6244@gmail.com>
>> Date:   Tue Jun 1 18:47:59 2021 +0200
>>
>>      arm64: dts: rockchip: rename nodename for phy-rockchip-inno-usb2
>>      
>>      The pattern: "^(|usb-|usb2-|usb3-|pci-|pcie-|sata-)phy(@[0-9a-f,]+)*$"
>>      in phy-provider.yaml has required "#phy-cells" for phy nodes.
>>      The "phy-cells" in rockchip-inno-usb2 nodes are located in subnodes.
>>      Rename the nodename to pattern "usb2phy@[0-9a-f]+$" to prevent
>>      notifications.
>>      
>>      make ARCH=arm64 dtbs_check
>>      DT_SCHEMA_FILES=~/.local/lib/python3.5/site-packages/dtschema/schemas/
>>      phy/phy-provider.yaml
>>      
>>      Signed-off-by: Johan Jonker <jbx6244@gmail.com>
>>      Link: https://lore.kernel.org/r/20210601164800.7670-5-jbx6244@gmail.com
>>      Signed-off-by: Heiko Stuebner <heiko@sntech.de>
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/px30.dtsi b/arch/arm64/boot/dts/rockchip/px30.dtsi
>> index 4e243d72e16f..248ebb61aa79 100644
>> --- a/arch/arm64/boot/dts/rockchip/px30.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/px30.dtsi
>> @@ -822,7 +822,7 @@
>>   		#address-cells = <1>;
>>   		#size-cells = <1>;
>>   
>> -		u2phy: usb2-phy@100 {
>> +		u2phy: usb2phy@100 {
>>   			compatible = "rockchip,px30-usb2phy";
>>   			reg = <0x100 0x20>;
>>   			clocks = <&pmucru SCLK_USBPHY_REF>;
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> index bc0bdc3d86ff..8c821acb21ff 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
>> @@ -819,7 +819,7 @@
>>   		#address-cells = <1>;
>>   		#size-cells = <1>;
>>   
>> -		u2phy: usb2-phy@100 {
>> +		u2phy: usb2phy@100 {
>>   			compatible = "rockchip,rk3328-usb2phy";
>>   			reg = <0x100 0x10>;
>>   			clocks = <&xin24m>;
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index a2eba5357693..c1a253507ac4 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -1418,7 +1418,7 @@
>>   			status = "disabled";
>>   		};
>>   
>> -		u2phy0: usb2-phy@e450 {
>> +		u2phy0: usb2phy@e450 {
>>   			compatible = "rockchip,rk3399-usb2phy";
>>   			reg = <0xe450 0x10>;
>>   			clocks = <&cru SCLK_USB2PHY0_REF>;
>> @@ -1445,7 +1445,7 @@
>>   			};
>>   		};
>>   
>> -		u2phy1: usb2-phy@e460 {
>> +		u2phy1: usb2phy@e460 {
>>   			compatible = "rockchip,rk3399-usb2phy";
>>   			reg = <0xe460 0x10>;
>>   			clocks = <&cru SCLK_USB2PHY1_REF>;
>> -------------------------------------------------------------------------------
>>
>>
>> Git bisection log:
>>
>> -------------------------------------------------------------------------------
>> git bisect start
>> # good: [3b9234c27991cbe7e6f97f22c3c7fef521fe34d3] Merge branch 'renesas-arm-dt-for-v5.15' into renesas-devel
>> git bisect good 3b9234c27991cbe7e6f97f22c3c7fef521fe34d3
>> # bad: [42d1095acf6e228a6baeec100d31a57c0c4d7704] Merge branch 'renesas-next', tag 'v5.14-rc3' into renesas-devel
>> git bisect bad 42d1095acf6e228a6baeec100d31a57c0c4d7704
>> # good: [514798d36572fb8eba6ccff3de10c9615063a7f5] Merge tag 'clk-for-linus' of git://git.kernel.org/pub/scm/linux/kernel/git/clk/linux
>> git bisect good 514798d36572fb8eba6ccff3de10c9615063a7f5
>> # good: [a16d8644bad461bb073b92e812080ea6715ddf2b] Merge tag 'staging-5.14-rc1' of git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging
>> git bisect good a16d8644bad461bb073b92e812080ea6715ddf2b
>> # good: [6e207b882159ed3e35a4cd4ff0fc155cce5e3cbc] Merge tag 'arm-soc-5.14' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
>> git bisect good 6e207b882159ed3e35a4cd4ff0fc155cce5e3cbc
>> # bad: [8b9cc17a46215af733c83bea36366419133dfa09] Merge tag 'scsi-misc' of git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi
>> git bisect bad 8b9cc17a46215af733c83bea36366419133dfa09
>> # good: [f82c6e6dd149757022ba3ed8502d56201652fb0f] Merge tag 'v5.14-rockchip-dts32-1' of git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip into arm/dt
>> git bisect good f82c6e6dd149757022ba3ed8502d56201652fb0f
>> # bad: [071e5aceebebf1d33b5c29ccfd2688ed39c60007] Merge tag 'arm-drivers-5.14' of git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
>> git bisect bad 071e5aceebebf1d33b5c29ccfd2688ed39c60007
>> # good: [1eb5f83ee936de6a69b2bcee95088a6e0ab7c202] Merge tag 'memory-controller-drv-tegra-5.14-2' of https://git.kernel.org/pub/scm/linux/kernel/git/krzk/linux-mem-ctrl into arm/drivers
>> git bisect good 1eb5f83ee936de6a69b2bcee95088a6e0ab7c202
>> # bad: [c21cc3d8927350db675957bb44633eea9607da85] Merge tag 'qcom-arm64-for-5.14-1' of https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux into arm/dt
>> git bisect bad c21cc3d8927350db675957bb44633eea9607da85
>> # bad: [e1d635bc94bce69e45a2d4e93c94178613e01229] arm64: dts: rockchip: add ir-receiver for rk3399-roc-pc
>> git bisect bad e1d635bc94bce69e45a2d4e93c94178613e01229
>> # good: [837188d49823230f47afdbbec7556740e89a8557] arm64: dts: rockchip: add #power-domain-cells to power domain nodes
>> git bisect good 837188d49823230f47afdbbec7556740e89a8557
>> # bad: [9fcf74b274a1dc5bcda37c34470061ef1e1130dd] arm64: dts: rockchip: add USB support to rk3308.dtsi
>> git bisect bad 9fcf74b274a1dc5bcda37c34470061ef1e1130dd
>> # good: [5a65adfa2ad1542f856fc7de3999d51f3a35d2e2] arm64: dts: rockchip: Add support for PCIe on helios64
>> git bisect good 5a65adfa2ad1542f856fc7de3999d51f3a35d2e2
>> # good: [18d5c7bf50c6d820c366c2a23d71d468b14c87d6] arm64: dts: rockchip: add rk817 codec to Odroid Go
>> git bisect good 18d5c7bf50c6d820c366c2a23d71d468b14c87d6
>> # bad: [8c3d64251ac5c5a3d10364f6b07d3603ac1e7b4a] arm64: dts: rockchip: rename nodename for phy-rockchip-inno-usb2
>> git bisect bad 8c3d64251ac5c5a3d10364f6b07d3603ac1e7b4a
>> # first bad commit: [8c3d64251ac5c5a3d10364f6b07d3603ac1e7b4a] arm64: dts: rockchip: rename nodename for phy-rockchip-inno-usb2
>> -------------------------------------------------------------------------------
>>
>>
>> -=-=-=-=-=-=-=-=-=-=-=-
>> Groups.io Links: You receive all messages sent to this group.
>> View/Reply Online (#14460): https://groups.io/g/kernelci-results/message/14460
>> Mute This Topic: https://groups.io/mt/84484486/924702
>> Group Owner: kernelci-results+owner@groups.io
>> Unsubscribe: https://groups.io/g/kernelci-results/unsub [guillaume.tucker@collabora.com]
>> -=-=-=-=-=-=-=-=-=-=-=-
>>
>>
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
