Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4E9DDC07E9D
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Sep 2022 17:48:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lhDpmB6py8mZyrLLQkZgRis6RJ+vXO7ymJlYT6UReM0=; b=HgS9jNqp/oh7gN
	N0UEbM1ylCRhBmOJ0onxp9PUyqTwlND0wZvLSNknDUec5cOE23Xa2j/qgF1MpUU9mVFAjohuSDbix
	RPFuEDPAI5yNTt9Q600btb9ZX7chHsWOOGLXMsz/FpKIMgflcSl6gRpwmAhhzAAC9pKPEm2T4MYiN
	LS8ZkP/yrP97o6TBKaYYcBc1tiNPOEF2j4bt2yyeHILYhoUz9cM7l8X+QmfvwNl0WP7j4bdfelIcC
	oLvfU/xDmSEmlJeMdDk6CsyuOyE0nGm0ZJHscPYyLVnMd4KlIqrwM9RoB6mD/PP0fshdp/KmGeZd+
	ad8XRakDFGv2W3r5yrhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEgz-00C2OU-Vc; Tue, 27 Sep 2022 17:48:26 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odEgP-00C22G-1x; Tue, 27 Sep 2022 17:47:51 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 29A271042;
	Tue, 27 Sep 2022 10:47:49 -0700 (PDT)
Received: from [10.57.65.170] (unknown [10.57.65.170])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 026E43F73B;
	Tue, 27 Sep 2022 10:47:40 -0700 (PDT)
Message-ID: <e75cc292-ff7a-0daa-e2f9-fde376b5e26e@arm.com>
Date: Tue, 27 Sep 2022 18:47:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH-next v1] arm64: dts: rockchip: Enable NVM Express PCIe
 controller on rock3a
Content-Language: en-GB
To: Anand Moon <linux.amoon@gmail.com>, Chukun Pan <amadeus@jmu.edu.cn>
Cc: heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 michael.riesch@wolfvision.net, robh+dt@kernel.org
References: <20220926061420.1248-1-linux.amoon@gmail.com>
 <20220926180102.37614-1-amadeus@jmu.edu.cn>
 <CANAwSgTyt2D-aEMMowO6d+0ddTQb46o0pWMahnr7ny2rjY7iaQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CANAwSgTyt2D-aEMMowO6d+0ddTQb46o0pWMahnr7ny2rjY7iaQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220927_104749_269087_FF9AD6AF 
X-CRM114-Status: GOOD (  22.15  )
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

On 2022-09-27 14:46, Anand Moon wrote:
> Hi Chukun,
> 
> On Mon, 26 Sept 2022 at 23:31, Chukun Pan <amadeus@jmu.edu.cn> wrote:
>>
>> Hi,
>>
>> On 26-09-22, 06:14, Anand Moon wrote:
>>
>>> +     pcie30_3v3: gpio-regulator {
>>> +             compatible = "regulator-gpio";
>>> +             regulator-name = "pcie30_3v3";
>>> +             regulator-min-microvolt = <100000>;
>>> +             regulator-max-microvolt = <3300000>;
>>> +             gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
>>> +             gpios-states = <0x1>;
>>> +             states = <100000 0x0>, <3300000 0x1>;
>>> +     };
>>
>> This is actually no different from vcc3v3-pcie regulator?
>>
>>> +&pcie30phy {
>>> +     data-lanes = <0 1 2 3>;
>>> +     phy-supply = <&vcc3v3_pi6c_03>;
>>> +     status = "okay";
>>> +};
>>
>> It seems that there is no need to define additional data-lanes when
>> the pcie3x1 node is not enabled, and phy-supply seems unnecessary on
>> this board.
>>
> As per the schematic below pice support with 2 regulators
> 
> VCC3V3_PCIE        (SCT2250FPA)
> VCC3V3_PI6C_03  (PI6C557-03 is a spread spectrum clock generator
> supporting PCI Express and Ethernet requirements)

Neither of which have anything to do with the phy, which is in the SoC 
and runs off VDDA_0V9 and VCCA_1V8, see page 12. VCC3V3_PCIE is the 
general power supply for the M.2 socket, which I doubt is supposed to 
deliver 100mV when disabled.

(as a side note, is pcie2x1's vpcie3v3-supply as queued in -next 
actually correct? AFAICS the other socket is effectively powered 
straight from VCC3V3_SYS so shouldn't have needed VCC3V3_PCIE, but at 
least it's there now ready for this one)

Robin.

> 
> [0] https://dl.radxa.com/rock3/docs/hw/3a/rock3a_v1.3_sch.pdf
> 
>> Excuse me, can you try the patches I posted? Lspci can recognize
>> pcie3x2 normally, but I don't have a spare nvme hard drive right
>> now to test if it works.
>>
> 
> No, it did not work on my board, see bool logs.
> [0] https://pastebin.com/Lk93VFxg
> 
> [ 0.725985] phy phy-fe8c0000.phy.4: lane number 0, val 1
> [ 0.726975] phy phy-fe8c0000.phy.4: rockchip_p3phy_rk3568_init: lock
> failed 0x6890000, check input refclk and power supply
> [ 0.728172] phy phy-fe8c0000.phy.4: phy init failed --> -110
> [ 0.728704] rockchip-dw-pcie: probe of 3c0800000.pcie failed with error -110
> [ 0.745193] ALSA device list:
> 
> Thanks
> -Anand
> 
>> Thanks, Chukun
>>
>> ---
>> Chukun Pan (3):
>>    arm64: dts: rockchip: Add regulator suffix to ROCK3 Model A
>>    arm64: dts: rockchip: Rename pinctrl label of pcie2x1 on rock-3a
>>    arm64: dts: rockchip: Add PCIe v3 nodes to rock-3a
>>
>>   .../boot/dts/rockchip/rk3568-rock-3a.dts      | 36 ++++++++++++++-----
>>   1 file changed, 27 insertions(+), 9 deletions(-)
>>
>> --
>> 2.25.1
>>
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
