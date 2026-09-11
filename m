Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9C32C88E4D
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 13:04:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:From:Subject:
	Cc:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8VVagBLjJKHiof3MVHiGMD3BwVhKn48s+DZWcIRpf8A=; b=LgqoWHIVfwvMho
	wop/cCg9PSfH8cb2zTuaOegIjNxmLDNtIjQ70tjI3q+jVrKtXW6UgCBN2n5NS5QI/NBpZ3LCr2lC+
	FUmp7SxJ8Qepbjt+iXjXMYHr80eYI5rkKZumg4wvoS/bIdPJbQHyACLr2cXfyP95bileZLJVCZUi4
	myizXyA7BOlnIsII7wLD5hbAzcbRPRc0kaRrVhjb1yu/JPHOvMYIlECNEsWWTggvyBXbXx/mowPbJ
	VW67v8JKsuaEaC3y9k1/rI4WrDS8m8K8kFyOR7LveBExHkEkmzlB0tjKM8z8Ccw0r/VMt7aLZ6CIs
	5Cb8wxSJtQ9Y5QN2oEQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x50vh-0000000Gi34-0v2J;
	Fri, 11 Sep 2026 13:04:33 +0000
Received: from out-43.mta0.migadu.com ([2001:41d0:1004:224b::2b] helo=mta0.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x50va-0000000Gi1r-1WLk
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Sep 2026 13:04:32 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=PmYOkXyCWA/NCJ3Eaz4VkslDAeMkWeUxEDpJ52XTEKI=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1789131862; v=1; x=1789736662;
 b=SeZrlmTPjOuIDx8MQtVUJroc0kBdPHhlX36ebOT/Pr2/wyxh5tP9osmuOzKkZiL+WbBVXdBW
 8Cc2YqItUGdmsUTl13eFk7wNqveN76dC3A76qYRPKM4GXx3VnbmWuD1Eg7Rucv0TIVWhuMdz8Tm
 DOrW0gQIG9JuLcJ0Tp2JSYXIdZ4JmV3W+TOdIrxYWBhFziSxXorfVXkACkDvTEI8iQE0xlHub/l
 F5jwMgZhBg6o5EuOwRBny5rHypS395QB3jlU5qWS5TUy21Y/v1QaHQ0pb3yN2KmwTplbC5uyAMv
 V5cbtusEd30A+cvSQU/v8PMmftp8a4Zsvlg64Xfgr7xzA==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id c06cdbb5f92d0953;
	Fri, 11 Sep 2026 13:04:22 +0000
X-Mizu-Trace-ID: c06cdbb5f92d0953
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Fri, 11 Sep 2026 15:04:21 +0200
Message-Id: <DLCIBAHNWQ3M.KN3L9LK8HRU6@cknow-tech.com>
Cc: "Sebastian Reichel" <sebastian.reichel@collabora.com>,
 <netdev@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v5 2/7] arm64: dts: rockchip: describe PCIe RTL8125
 Ethernet on NanoPC-T6
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Ricardo Pardini" <ricardo@pardini.net>, "Diederik de Haas"
 <diederik@cknow-tech.com>, "Heiner Kallweit" <hkallweit1@gmail.com>,
 <nic_swsd@realtek.com>, "Andrew Lunn" <andrew+netdev@lunn.ch>, "David S.
 Miller" <davem@davemloft.net>, "Eric Dumazet" <edumazet@google.com>, "Jakub
 Kicinski" <kuba@kernel.org>, "Paolo Abeni" <pabeni@redhat.com>, "Rob
 Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>,
 "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>
X-Mailer: aerc 0.22.0-9-ge948bb7230f4
References: <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-0-c1b9e5f10cd6@pardini.net> <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-2-c1b9e5f10cd6@pardini.net> <DLCE8BRWYCBL.2UH33L4RQMAGN@cknow-tech.com> <bd032333-c557-4595-ae0c-6cb2971a9a86@pardini.net>
In-Reply-To: <bd032333-c557-4595-ae0c-6cb2971a9a86@pardini.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_060429_986286_845B2568 
X-CRM114-Status: GOOD (  20.58  )
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

On Fri Sep 11, 2026 at 2:19 PM CEST, Ricardo Pardini wrote:
> On 11/09/2026 11:52, Diederik de Haas wrote:
>> On Thu Sep 10, 2026 at 10:07 PM CEST, Ricardo Pardini via B4 Relay wrote:
>>> From: Ricardo Pardini <ricardo@pardini.net>
>>>
>>> The FriendlyElec NanoPC-T6 carries two on-board Realtek RTL8125 NICs
>>> behind pcie2x1l0 and pcie2x1l2.

Forgot to mention: thanks for this series :-)

>>> Describe the fixed function nodes and attach ethernet0/ethernet1
>>> aliases, so that U-Boot's fdt_fixup_ethernet() can fill in the MAC
>>> from its ethaddr/eth1addr env. The on-NIC EEPROMs on this board are
>>> not pre-programmed with a unique MAC, so this gives a stable MAC
>>> across boots that both U-Boot and the kernel agree on.
>>>
>>> Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
>>> ---
>>>   arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 30 ++++++++++++++++++++++
>>>   1 file changed, 30 insertions(+)
>>>
>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>>> index cfdb5c13f8606..550358a756618 100644
>>> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
>>> @@ -20,6 +20,8 @@ / {
>>>   	compatible = "friendlyarm,nanopc-t6", "rockchip,rk3588";
>>>   
>>>   	aliases {
>>> +		ethernet0 = &rtl_eth0;
>>> +		ethernet1 = &rtl_eth1;
>>>   		mmc0 = &sdhci;
>>>   		mmc1 = &sdmmc;
>>>   	};
>>> @@ -644,6 +646,20 @@ &pcie2x1l0 {
>>>   	pinctrl-names = "default";
>>>   	pinctrl-0 = <&pcie2_0_rst>;
>> 
>> The new pinctrl reference is ``pcie_25glan_perstb_b_pin``, so this patch needs
>> to be rebased.
>
> Indeed; I sent v5 vs v7.3-rc2 which doesn't have your recent series 
> fixing those. I've rebased onto next-20260910 which does, will send in a 
> v6 - but it's really just fuzz/context changes.
>
> I'll wait a bit until Heiner/Krysztof/Heiko chime in ref the binding and 
> its wording as that has been contentious in the previous versions. And 
> who knows what Sashiko will find this time.

Agreed, their feedback is more important.

>>>   	status = "okay";
>>> +
>>> +	pcie@0,0 {
>>> +		reg = <0x200000 0 0 0 0>;
>>> +		#address-cells = <3>;
>>> +		#size-cells = <2>;
>>> +		ranges;
>>> +		device_type = "pci";
>>> +		bus-range = <0x21 0x2f>;
>>> +
>>> +		rtl_eth0: ethernet@0,0 {
>>> +			compatible = "pci10ec,8125";
>>> +			reg = <0x210000 0 0 0 0>;
>>> +		};
>> 
>> Described on page 23 of the schematic titled '2.5G Ethernet B' and ``U12``
>> (ie RTL8125BG) is connected to LAN2 which has ``ETH2`` as label on the case.
>
> Confirmed.
>
>> 
>>> +	};
>>>   };
>>>   
>>>   &pcie2x1l1 {
>>> @@ -660,6 +676,20 @@ &pcie2x1l2 {
>>>   	pinctrl-names = "default";
>>>   	pinctrl-0 = <&pcie2_2_rst>;
>> 
>> The new pinctrl reference is ``pcie_25glan_perstb_pin``.
>
> Will also be fixed by rebasing onto linux-next.
>
>> 
>>>   	status = "okay";
>>> +
>>> +	pcie@0,0 {
>>> +		reg = <0x400000 0 0 0 0>;
>>> +		#address-cells = <3>;
>>> +		#size-cells = <2>;
>>> +		ranges;
>>> +		device_type = "pci";
>>> +		bus-range = <0x41 0x4f>;
>>> +
>>> +		rtl_eth1: ethernet@0,0 {
>>> +			compatible = "pci10ec,8125";
>>> +			reg = <0x410000 0 0 0 0>;
>>> +		};
>> 
>> Described on page 22 of the schematic titled '2.5G Ethernet A' and ``U10``
>> (ie RTL8125BG) is connected to LAN1 which has ``ETH1`` as label on the case.
>> 
>> So this results in:
>> ETH1 -> rtl_eth1
>> ETH2 -> rtl_eth0
>> 
>> This sounds like a recipe for confusion and/or potential future mistakes.
>> I think using ``rtl_eth1`` and ``rtl_eth2`` would be less confusing, but
>> I'm fine with another construct which achieves a similar thing.
>
> Yeah, that will result in aliases `ethernet0 = &rtl_eth1;` and 
> `ethernet1 = &rtl_eth2;`. It could also be `rtl_lan1`/`rtl_lan2`, or as 
> the schematics seems to to use the `_b` suffix, just `rtl_lan` and 
> `rtl_lan_b`, I don't mind. Raise if you do, otherwise I'll send v6 as 
> you suggested.

I'm not a fan of the `_b` suffix (also not in the schematic; without an
`_a` suffix). Do the aliases have to be 0-based? If not, then `ethernet1`
and `ethernet2` would be my preferred solution. If it needs to be 0-based
then the off-by-one 'confusion' seems like the best solution.

> Userspace will be off-by-one vs the printed case labels, thus _some_ 
> confusion will remain, but it's already better than the current 
> enP2p33s0/enP4p65s0.

Indeed :-)
I triple checked whether my findings were correct before responding.

Thanks to your series, I had a look at NanoPi R5S and found a few issues.
There it's even worse:
PCB/schematic: LAN1=GbE and 'WAN' on the case; LAN2=2.5GbE and LAN1 on the
case; LAN3=2.5GbE and LAN2 on the case. 
And those result in `end0`, `enp1s0` and `enP1p17s0` respectively :-P

Cheers,
  Diederik

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
