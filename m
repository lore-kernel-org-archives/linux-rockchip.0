Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 868B5C9830B
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 18:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIGoT9wfdPN8UKcScbIgJZlO+XH+ggEpFzKtp0x3Uvs=; b=s853+NkIqHi7mc
	wxiNI0zvB92xEZKagkaR2IxEmAKN3OZBrQo91gOd1VQgQGrqDbl/+rh3QtN2D9DqlncZJISRMIqGv
	3LlbyBRs5uhIptMPlQiywY+If1wi+Z0Bfu3H5bNOqQCfNWPhOWvgcK1db//luDs3wKGUprChNfVvB
	6qZzu5z1pWeBbQaSYbsxC1hc9rXr/rv4Ud6usvRe1PEijwLzpLfDu8KUOSchUwyl5nnxcymoX9dF5
	+ea5QvZvJoOs1I0UfLPKlaaGuts5y/zlVmg2LvuoCdm0buPcpj+WC3MsbNqaoQscsPkIWmddKEWm3
	wcX3lTOVrhLfcCgbFleg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9RIR-000000097in-0bYn;
	Wed, 23 Sep 2026 18:02:19 +0000
Received: from mail-ej2-x0f.google.com ([2a00:1450:4864:34::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9RIH-000000097el-1VeO
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 18:02:10 +0000
Received: by mail-ej2-x0f.google.com with SMTP id a640c23a62f3a-c2a4fbc5586so185895566b.2
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 11:02:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pardini.net; s=google; t=1790186524; x=1790791324; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=DBO6ysXqxsewkyeoBpzt8RskMK/dx24xXh3/dEMcXyQ=;
        b=f3vohH6BFau60T6p5SXVODMRPO+eykLvrBN0hUVncquvTrhGP6M2jkDsZ4hTexGaRW
         SYDmjnJAjRqWf1JfLhWD5URooz1vkZCFV8YRN/3lIt38aqabjJSfGRuP/XWBchsVBQ+f
         F70IU7o9srUEC+neQxSlBace4kFBPYuxkCq5A4W6YllP4yon52eS8ditYlmZH68p6gwh
         ECyXfVh1bya40PtOVRauEHkcL7840oO0twi9VH77HS0ZNm0YbqpUQSYpe0WVC82aSZpH
         TGcOziA1SjXSDXAAlrtWU1tmOLzxmsX5Ll54kjGOidthZuMhb+OS1vz/T8LIeojwyXcj
         ZnUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790186524; x=1790791324;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=DBO6ysXqxsewkyeoBpzt8RskMK/dx24xXh3/dEMcXyQ=;
        b=GMPDouqn8UfBEkt6C+XMi51kNgauFmZBloBT3USKxKNGqmOArst35iYNwu0ASKxOzo
         X8CKzPrUw6TQED210egdKnjucqUzlnQ0SrOiWeQSTg596hqhZ0e2YkhwntQaur4XrY/o
         lqRtU+QJyC6ZD0l6kEJ8z0AIrNhBVuf0pYGesOsQ41NTONirot/JrrS33MVXaJjzrY8Y
         Rhg7hYkRkdK0ol6cYxG9ARFTzv2gZAgWYnpMTBWZ9dLNKt3GZ9aDBMnj17vk0Jlv9u5a
         dClxPHbdm4wN/ptbWWdelNh4pdIcG9VT1VVDHidt6hpqExDaIrMGBDyVygWt8N8D4xVc
         w63A==
X-Forwarded-Encrypted: i=1; AKwUvBz+wyTfULa5XRty8vs2m/lgPTP6PkugDblJM4/SZt5TKPxhX/boYRVehCBbym7NVhl/6teOWQvzH+aHV2divw==@lists.infradead.org
X-Gm-Message-State: AFuF++neVFEtdaExT6O5BxY5qHbiIMkYWj/wRa7C2WOn1ih6+cE4VXqY
	IfEBTtS7Dnykwb5MAsgRIsxwUsvKSSnP+o7sK5i8nZ+tKPTCrvqASiYLVKvvDYAa9U9+pSF7gqf
	P5RwoBQ==
X-Gm-Gg: AYBFou3OqBXTzwYzqB7jUiGACvcZ1P127wi671ecdd1ujHjLj4OkAaate5GS7lCdr4x
	GQVb+0mfVhDJGeRH38PrMIgDpf/tjB4PCONkgj5b6usuv0ghRSeY4fcCMU2qg3psrO0UXndCaUS
	Qo1j/T8CkJeWFwiFg3wH1yR1CLPcpCNrN78ak3baLkC95iz4SMPnTOCL7Iieeo0htNivZ7h5+Fo
	oC743ghO7osmuaXDwpUJ8F7QTXeuAtd945OeyYEUSPBKcElPsIT9p9pFdrrGzv2MIPOcz6P9kPt
	i8wNGd17nKrqoVqFyYqx2VzPz5+FxXueiJsBldXwte759ZrQ3ivqmDeZAYIrs8V+2JzpUldbg7v
	rUB7JHuTmlBYR70np5uQwxcBzEqk7RgSstVPdh7vd5IRe+qfL+rTzVGhTA/CQqKBaHjZNqr76Ma
	0dpHbbXx7/H0wYBJvsMQBTqbS44uw0bbJdYYyx6GPNaJZrRAsY7WGUSutsImN4r193EhBD6qTGP
	zBMsXnOgQtcw2t98B8hbBaRkqhl90V4bR6HbmRzMdKsUzKBDQEeiArv9SnWXBFxtazjOLvNZhOe
	rehfo0/Fgn+b5DcN92H2cfXpQDd9uDpq0tJsrQGTAwC+ZQ==
X-Received: by 2002:a17:907:9288:b0:c29:f5d8:9c6c with SMTP id a640c23a62f3a-c2aadc48f8dmr294406666b.27.1790186523723;
        Wed, 23 Sep 2026 11:02:03 -0700 (PDT)
Received: from ?IPV6:2a02:a466:4d7a:0:1072:bb1c:c0f3:280f? (2a02-a466-4d7a-0-1072-bb1c-c0f3-280f.fixed6.kpn.net. [2a02:a466:4d7a:0:1072:bb1c:c0f3:280f])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-c2aae5c6f35sm166925266b.12.2026.09.23.11.02.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2026 11:02:02 -0700 (PDT)
Message-ID: <12e5e5ad-7d55-469d-a63e-d19e3279c6c1@pardini.net>
Date: Wed, 23 Sep 2026 20:02:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 5/7] arm64: dts: rockchip: describe PCIe RTL8125
 Ethernet on NanoPi R5S
To: Diederik de Haas <diederik@cknow-tech.com>,
 Heiner Kallweit <hkallweit1@gmail.com>, nic_swsd@realtek.com,
 Andrew Lunn <andrew+netdev@lunn.ch>, "David S. Miller"
 <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: Sebastian Reichel <sebastian.reichel@collabora.com>,
 netdev@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, Jonas Karlman <jonas@kwiboo.se>
References: <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-0-c1b9e5f10cd6@pardini.net>
 <20260910-rk3588-dts-rtl-eth-describe-dt-alias-v5-5-c1b9e5f10cd6@pardini.net>
 <DLMV5WTF5TR1.BXDY94L4J4H7@cknow-tech.com>
Content-Language: en-US
From: Ricardo Pardini <ricardo@pardini.net>
In-Reply-To: <DLMV5WTF5TR1.BXDY94L4J4H7@cknow-tech.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_110209_464704_196F7B36 
X-CRM114-Status: GOOD (  27.95  )
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

On 23/09/2026 19:15, Diederik de Haas wrote:
> Hi,
> 
> On Thu Sep 10, 2026 at 10:07 PM CEST, Ricardo Pardini via B4 Relay wrote:
>> From: Ricardo Pardini <ricardo@pardini.net>
>>
>> The FriendlyElec NanoPi R5S (rk3568) carries two on-board Realtek
>> RTL8125 NICs behind pcie2x1 and pcie3x1, alongside the existing gmac0
>> RGMII PHY.
>>
>> Describe the fixed function nodes and attach ethernet1/ethernet2
>> aliases (ethernet0 stays mapped to gmac0), so that U-Boot's
>> fdt_fixup_ethernet() can inject mac-address properties from its
>> eth1addr/eth2addr env, for stable MACs across boots that both U-Boot
>> and the kernel agree on.
>>
>> Signed-off-by: Ricardo Pardini <ricardo@pardini.net>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts | 30 ++++++++++++++++++++++
>>   1 file changed, 30 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
>> index 90ce6f0e1dcff..9ed11663c31c9 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3568-nanopi-r5s.dts
>> @@ -15,6 +15,8 @@ / {
>>   
>>   	aliases {
>>   		ethernet0 = &gmac0;
>> +		ethernet1 = &rtl_eth1;
>> +		ethernet2 = &rtl_eth2;
>>   	};
> 
> With my NanoPi-R5S I'm still getting the following warning:
> 
>    r8169 0001:11:00.0: can't read MAC address, setting random one
> 
> ```
> root@nanopi-r5s:~# ip link
> 1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue state UNKNOWN mode DEFAULT group default qlen 1000
>      link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
> 2: end1: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc fq_codel state DOWN mode DEFAULT group default qlen 1000
>      link/ether 4e:52:85:9e:22:f9 brd ff:ff:ff:ff:ff:ff
>      altname enp1s0
>      altname enx4e52859e22f9
> 3: end2: <NO-CARRIER,BROADCAST,MULTICAST,UP> mtu 1500 qdisc fq_codel state DOWN mode DEFAULT group default qlen 1000
>      link/ether 12:e5:47:9e:e2:f1 brd ff:ff:ff:ff:ff:ff
>      altname enP1p17s0
> 4: end0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq state UP mode DEFAULT group default qlen 1000
>      link/ether 4e:52:85:9e:22:f8 brd ff:ff:ff:ff:ff:ff
>      altname enx4e52859e22f8
> ```
> 
> I did not do anything (explicitly) in U-Boot, but it seems it created a
> non-random MAC address for end0 and end1 ... and then stopped.
> AFAIK gmac0=end0 already had a non-random MAC address and I hoped/expected
> it would create non-random addresses for end1 and end2, which would've made
> the above warning go away too.
> 
> Is this an issue with this patch, with U-Boot or me?

Hi Diederik, in this case (3 ethernet's) I think it's down to U-boot.
Check the output of `printenv` in u-boot, you'll probably find it only 
pre-computes 2 MAC addresses, and doesn't feed the ethernet2 alias 
during its fdt_fixup_ethernet().

Try doing `setenv eth2addr xx:xx...` in u-boot before booting -- it 
should work. I think that's what I did when testing the R5S with this 
series, but it has been a very long time ago.

One way around this (without u-boot) would be to use Alexey's series [1] 
which could compute as many MACs as needed out of the CPU serialnum - 
but that also won't work as-sent vs rk356x, I believe he's checking an 
alternative proposed.

[1] 
https://lore.kernel.org/linux-rockchip/20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net/

> 
> Full details:
> https://paste.sr.ht/~diederik/8ae7d354985afcd1c3464e3a4ad81da1b4442364
> 
> Side note:
> I wonder how 'random' those addresses are as during testing ``ssh rock5b``
> landed me on another device (NanoPC-T6 Plus), f.e. My router has DHCP
> reservations based on MAC addresses and it looks like it got confused ;-)

Interesting. I dunno what seed is used, as I've been fully set on making 
it non-random, but I wouldn't discard the possibility of conflicts 
across different machines. One more reason to have this series ;-)

I'll soon send a v6 to linux-rockchip/dt (with small fixes Sashiko found 
to DTs, and without the binding) and split a single-patch v1 to net-next 
with only the binding, collecting Rob's review. If and when those land, 
we'd have open road both for u-boot local-mac-address and Alexey's 
nvmem-cells for the RTLs.

Regards,
Ricardo


> 
> Cheers,
>    Diederik
> 
>>   	gpio-keys {
>> @@ -107,6 +109,20 @@ &pcie2x1 {
>>   	num-lanes = <1>;
>>   	reset-gpios = <&gpio0 RK_PB6 GPIO_ACTIVE_HIGH>;
>>   	status = "okay";
>> +
>> +	pcie@0,0 {
>> +		reg = <0x000000 0 0 0 0>;
>> +		#address-cells = <3>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +		device_type = "pci";
>> +		bus-range = <0x00 0x0f>;
>> +
>> +		rtl_eth1: ethernet@0,0 {
>> +			compatible = "pci10ec,8125";
>> +			reg = <0x010000 0 0 0 0>;
>> +		};
>> +	};
>>   };
>>   
>>   &pcie30phy {
>> @@ -119,6 +135,20 @@ &pcie3x1 {
>>   	reset-gpios = <&gpio0 RK_PA0 GPIO_ACTIVE_HIGH>;
>>   	vpcie3v3-supply = <&vcc3v3_pcie>;
>>   	status = "okay";
>> +
>> +	pcie@0,0 {
>> +		reg = <0x100000 0 0 0 0>;
>> +		#address-cells = <3>;
>> +		#size-cells = <2>;
>> +		ranges;
>> +		device_type = "pci";
>> +		bus-range = <0x10 0x1f>;
>> +
>> +		rtl_eth2: ethernet@0,0 {
>> +			compatible = "pci10ec,8125";
>> +			reg = <0x110000 0 0 0 0>;
>> +		};
>> +	};
>>   };
>>   
>>   &pcie3x2 {
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
