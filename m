Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 934BEC433FE
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Nov 2022 11:08:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SjX2lc9Cupws05VoLMetgP3UfU17RlKO6MiIVcMxmG0=; b=vsHDS3MZQLIQCK
	hJpdKhHpc79L/t4Ao6UM0YYRtfCD2ZbQ97232xIT10TFHPW3Smu9aDzGv+htmQNMdLd896BtVLzcZ
	K58lsTrsr/4tUDLGYev/bmtoQHlEL8awUe4iqpALmWE+FJx4pdsgKrvs4JHMaKceHtBBrPFtgKg/b
	G/+t74LlhsoMFy4YHbnnhwmlGLS7Mum46ZSmYqugj7Gy3fVx9goX0dgKF1f83ChsJY9DwrDIO20Lw
	NztquJoeDFaWqXjJQRiJV07GTeD28O0GW0xrl9GAjAifmecIEwyLaHbfyoo/X9Ewf0droXWu1iHLA
	5twRdJk+kSH6CyKMJeDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovckN-00CwjT-GM; Thu, 17 Nov 2022 11:07:55 +0000
Received: from foss.arm.com ([217.140.110.172])
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovcXF-00Cp9Q-N5; Thu, 17 Nov 2022 10:54:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2CAB9D6E;
	Thu, 17 Nov 2022 02:54:25 -0800 (PST)
Received: from [10.57.69.157] (unknown [10.57.69.157])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 257C73F73B;
	Thu, 17 Nov 2022 02:54:17 -0800 (PST)
Message-ID: <99849c5e-5bd9-386b-99c5-fbc8c8df9656@arm.com>
Date: Thu, 17 Nov 2022 10:54:13 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [linux-next-v2 5/5] arm64: dts: rockchip: Add missing of
 ethernet-phy-id to reset the phy on Rock 3A SBC
Content-Language: en-GB
To: Anand Moon <linux.amoon@gmail.com>, Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Chukun Pan <amadeus@jmu.edu.cn>,
 Michael Riesch <michael.riesch@wolfvision.net>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20221116200150.4657-1-linux.amoon@gmail.com>
 <20221116200150.4657-7-linux.amoon@gmail.com>
 <CAMdYzYo_DGiO0UxJEb3xues7Um=X9AgPvz+Xp_YWb9pp9HaScg@mail.gmail.com>
 <CANAwSgQJGH-+aXyUF18kGks4YKfBYvQ4-B7S2m8eaAr=yNS7vQ@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <CANAwSgQJGH-+aXyUF18kGks4YKfBYvQ4-B7S2m8eaAr=yNS7vQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221117_025421_901374_9A9FB9CF 
X-CRM114-Status: GOOD (  19.91  )
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

On 2022-11-17 05:57, Anand Moon wrote:
> Hi Peter,
> 
> On Thu, 17 Nov 2022 at 02:16, Peter Geis <pgwipeout@gmail.com> wrote:
>>
>> On Wed, Nov 16, 2022 at 3:02 PM Anand Moon <linux.amoon@gmail.com> wrote:
>>>
>>> Add MDIO description with ethernet-phy-id compatible string
>>> which enable calling reset of the phy. The PHY will then be probed,
>>> independent of if it can be found on the bus or not,
>>> and that probing will enable the GPIO.
>>>
>>> ethernet-phy-id is read from ethenet register dump reg2 and reg3.
>>>
>>> Fix following warning.
>>> [   12.323417] rk_gmac-dwmac fe010000.ethernet eth0: Register MEM_TYPE_PAGE_POOL RxQ-0
>>> [   12.324078] rk_gmac-dwmac fe010000.ethernet eth0: no phy at addr -1
>>> [   12.324099] rk_gmac-dwmac fe010000.ethernet eth0: __stmmac_open: Cannot attach to PHY (error: -19)
>>>
>>> Signed-off-by: Anand Moon <linux.amoon@gmail.com>
>>> ---
>>> V2: new to the patch series.
>>>
>>> alarm@rock-3a:~$ sudo ethtool -d eth0
>>> [sudo] password for alarm:
>>> ST GMAC Registers
>>> GMAC Registers
>>> Reg0  0x08072203
>>> Reg1  0x00000000
>>> Reg2  0x00000404
>>> Reg3  0x00000000
>>> Reg4  0x00000002
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> index 9f84a23a8789..fe36156a5017 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
>>> @@ -585,7 +585,7 @@ &i2s2_2ch {
>>>
>>>   &mdio1 {
>>>          rgmii_phy1: ethernet-phy@0 {
>>> -               compatible = "ethernet-phy-ieee802.3-c22";
>>> +               compatible = "ethernet-phy-id0000.0404", "ethernet-phy-ieee802.3-c22";
>>>                  reg = <0x0>;
>>>                  pinctrl-names = "default";
>>>                  pinctrl-0 = <&eth_phy_rst>, <&eth_phy_int>;
>>
>> Have you tried instead moving the reset to the mdio bus? I've had
>> success with this, though you'll need to change the reset assert and
>> deassert timing handles, they are different for the bus.
>>
> No can you share some examples?
> If you got a better way to solve this issue please let me know.
> I will give this a try.

Note that the Rock 3A schematic says the phy is configured for address 
1, not 0. From what I remember of adding the MDIO node for NanoiPi4, 
that didn't work if I got the address wrong, despite the fact that the 
auto-detection when the MDIO node is omitted claimed to find the same 
phy on both addresses 0 and 1.

Robin.

> 
> Thanks
> -Anand
>>> --
>>> 2.38.1
>>>
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
