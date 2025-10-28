Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 398E3CCD1BF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 22:47:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RVr11z9e42WwrClcOFauTdCy2EpkJ/5YWKV6pREMBaw=; b=xXhxEYQVu/5t2q
	cYZFC2SdzfJM06Od7RvftgdrFoUBLqyPqGD68arp+kgdo3FPzVR40sQbIg/cbVLn3UbzhxOB2fIrn
	YIxEwlMbzfngdpSDjirQuSDsNORrQT5UTx6Sew0GfbxuA+v2z4x7tCiw7TMsEpMrbr3yTxZz8ah9z
	fTBanFxt0uEenT7ZXTo6DePMmhP+4W9tMywo6FsUpCOcS5h6aq0gLccW71xw1MbtfuhqkuqmfZJ+p
	3qU6Qcs+oZqX++GRaHAEJEdEz1TAOOCKM9t/QCRh1FXb5911kSJLmrD7ecL5L1dNfJzNm9DJWHMot
	nkOBkozHhEckRKJcEEJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDsTZ-0000000GlVK-1iJQ;
	Tue, 28 Oct 2025 22:47:37 +0000
Received: from smtpbguseast3.qq.com ([54.243.244.52])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDsTV-0000000GlUT-47z2
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Oct 2025 22:47:35 +0000
X-QQ-mid: zesmtpip4t1761691579t1a7344d0
X-QQ-Originating-IP: yt9xKjmej3y85LEm5BR5RfZpa0N3FfHfegGDCFQlBq4=
Received: from [IPV6:240f:10b:7440:1:7dcf:d79: ( [localhost])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Wed, 29 Oct 2025 06:46:13 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 7599762567883759102
Message-ID: <FAF4CA2A84F989D3+3f447970-cc22-4eba-badc-92ab9dad00fc@radxa.com>
Date: Wed, 29 Oct 2025 07:46:13 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Fix USB Type-C host mode for
 Radxa ROCK 5 ITX
To: Diederik de Haas <diederik@cknow-tech.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 liujianfeng1994@gmail.com, dmitry.baryshkov@oss.qualcomm.com,
 sebastian.reichel@collabora.com, andy.yan@rock-chips.com,
 nicolas.frattaroli@collabora.com, damon.ding@rock-chips.com,
 jbx6244@gmail.com, detlev.casanova@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20251028115040.101156-1-naoki@radxa.com>
 <20251028115040.101156-2-naoki@radxa.com>
 <DDU4P6569O9M.3DKFYS1FDBROU@cknow-tech.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <DDU4P6569O9M.3DKFYS1FDBROU@cknow-tech.com>
X-QQ-SENDSIZE: 520
Feedback-ID: zesmtpip:radxa.com:qybglogicsvrsz:qybglogicsvrsz4a-0
X-QQ-XMAILINFO: OZZSS56D9fAj1/mQGpEewTDqpMbsA7jrVu30AAk7RYphmnbIUHTaCUV8
	Twm8iwrsd1EOev0LoijUbyJvD12tEbfgPh0VbsPYlKO9NC247keP+tyi/HWaf6ZkZVe93Tn
	NMkbdi5KKXxxN75LaXlo8VnsdmBjHNZGa7auy2rfxN2UgD6mA7DrMd+xS05NpX/vVLhY0c0
	gBm7kGfLDqcMhbIzNNvxkrvAvEmY1yFZ3w+/lftwmgFuGwOTTSSNP2HWDbi1btrtvg/lJof
	IsiaIKPuk/LMU+cObJliBJfkfH3tSysnZZjQ7+pZVJ1wY+mQhKrCUOiNvv7wxsu2jWDM6yl
	/YG4axFH4XUUw3GaTmygFkw4/Llzk8zhDxaH6gzQLE87tN2xYCd9wRs8gXI/Ppgrxs9B1Kx
	CFy41H3fp0imfhCesNliwyS1vVhy/gnwlL406bhDpnGyafrJQy136DHfOl1f9D5g+MXiZY6
	GdUJRb/ZdEclRnzJWC00dBdLGLiNa7ct7Nh/og1LNq7mxw9FX28IiUhr/Fg/5YvBkMhk6L5
	jAFi0fR+8jY9UJD2ykWkLYF/ciyupucZxaNcRzWhQcptVsTVvhtLKIHqRsPcBD4rhUCM/qF
	fYg++PjX3zpK26G/z3zsnZH9HhHGOBjCNn4/8MU8vPxReA/mEzWSDtqcQwQlhpG9IaOXAXi
	jMMfxBPz7oCuVqTzXTHwi5TLFtLx0v0NLYBAp+8kVQkhApQoi0MlJRa4zrfCmNE8N+Cs8rG
	1QqC+ryhznZWCNMYHSmcasTEFDpLxhxiM0IB5V3E7kM+C+QfG4rgivkpv3E3d4huqQj+Wxf
	wEvGuOmA3Xn2nVHesm+wzLimfFRqzNsov/DeOc72/k91aDGLqTyhsm05iQC5GqAQcbn/rBm
	R4d+tIVp6Q6N891FeA+7gfgh8gMQKYCSu79MHfZs1N/UqJsZnKNf3gCRXcyLkbYpn7bibbM
	UnrLhi3POHvwx4qReKrV/21IgZpohUhLRZjmW6aKGHMfB5HiqQ0UE/oAF
X-QQ-XMRINFO: M/715EihBoGSf6IYSX1iLFg=
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251028_154734_622857_0441AD5A 
X-CRM114-Status: GOOD (  14.18  )
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

Hi Diederik,

On 10/29/25 02:24, Diederik de Haas wrote:
> On Tue Oct 28, 2025 at 12:50 PM CET, FUKAUMI Naoki wrote:
>> The USB Type-C port on the Radxa ROCK 5B+/5T supports Dual-Role-Data
>> and Dual-Role-Power. However, currently it cannot operate as host/
>> source.
> 
> You describe the ROCK 5B+/5T while modifying the 5 ITX. If the exact
> same logic applies to the 5 ITX, then ``s/5B+\/5T/5 ITX/`` above?

Oh, yes, it should be "5 ITX" :)

Thanks!

Best regards,

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

> Cheers,
>    Diederik
> 
>> By setting "power-role" to "dual" and "try-power-role" to "sink"
>> (along with adding related properties), the data role can operate as
>> host.
>>
>> Unfortunately, a remaining issue is that when a USB 3.0 SuperSpeed
>> device's orientation is reverse, the root port is detected but the
>> device itself is not. This must be addressed separately.
>> (USB 2.0/1.1 devices operate even in reverse orientation.)
>>
>> Fixes: 31390eb8ffbf2 ("arm64: dts: rockchip: add ROCK 5 ITX board")
>> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts | 7 ++++++-
>>   1 file changed, 6 insertions(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> index bc8140883de47..1664f85db4aaa 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5-itx.dts
>> @@ -484,9 +484,14 @@ usb_con: connector {
>>   			compatible = "usb-c-connector";
>>   			data-role = "dual";
>>   			label = "USB-C";
>> -			power-role = "source";
>> +			op-sink-microwatt = <50000>;
>> +			/* fusb302 supports PD Rev 2.0 Ver 1.2 */
>> +			pd-revision = /bits/ 8 <0x2 0x0 0x1 0x2>;
>> +			power-role = "dual";
>> +			sink-pdos = <PDO_FIXED(5000, 10, PDO_FIXED_USB_COMM)>;
>>   			source-pdos =
>>   				<PDO_FIXED(5000, 3000, PDO_FIXED_USB_COMM)>;
>> +			try-power-role = "sink";
>>   
>>   			ports {
>>   				#address-cells = <1>;
> 
> 



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
