Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 685AACD0427
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Jan 2026 01:14:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TJa8Shrsi4Tcj6yZ5r7sOcF3nODp22ZY+hiQ/T/5xjE=; b=o72xH+I5Qs2zRc
	7xqcGBXNsml1OPNoih2WFVCv0mqFNaNjxROZQ3XrH7jiE0pGWPHh9ePcJkylcH0EnZbe5oVUsNfyE
	Ie2gBsRmO54+Ue6SAEVMdTZj9JQMJDYHVrCbg66UqTY4JT3UXYw07qXo4tXskhZc/lvpdGfpnls1d
	cG5pnoZ+gZj47AONDG9TnpnCiDmucIh9gmyPCUx/AGVZNm6CcPxc2LCTP0hkYrqumvF4HOUYWWvZV
	vtOV9/FzuAxY/69fW61nbJNiwbcZyb5Eu7jADaYqndKhsJI3fweRPmMnV2RZ/jcd9GEGK0/xqFyqw
	kP+xR185EvTO2c9d/baQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcve3-0000000CIzv-2ASd;
	Tue, 06 Jan 2026 01:13:59 +0000
Received: from mail-m1973179.qiye.163.com ([220.197.31.79])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vcvdz-0000000CIzC-0OPp;
	Tue, 06 Jan 2026 01:13:58 +0000
Received: from [172.16.12.51] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2f99dbbaf;
	Tue, 6 Jan 2026 09:13:44 +0800 (GMT+08:00)
Message-ID: <04e32805-fe8c-43d6-831a-ae79d39dcd7b@rock-chips.com>
Date: Tue, 6 Jan 2026 09:13:42 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Fix wrong register range of rk3576
 gpu
To: Sebastian Reichel <sebastian.reichel@collabora.com>,
 Chaoyi Chen <kernel@airkyi.com>
References: <20251230090246.46-1-kernel@airkyi.com> <aVwIukddZTukxH_8@venus>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <aVwIukddZTukxH_8@venus>
X-HM-Tid: 0a9b90ddf73403abkunm320fd065c0ed6b
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxpIHVZJGkJKGkhPS04fGB9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=KJKNHdO8zd5QpFKLyPRseVQdRnjRcXTeUWRdEp8cXUzLye5TzE7wQKb1CgZ8tlsclIHzau975iQjEN9zgpf4vs5trW297tbMsPVNz6+yp6cVHD6A49n3WtoZjCUAwWR+MbZvUVMr62ufbVy6/pyiGSVYA44nAuRhBhhYOan8RwU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=PDL61oCstf3etehVdwrYEki4PJaxTvOdDdF6kgLRUsk=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260105_171355_637319_4FA9B388 
X-CRM114-Status: GOOD (  20.40  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org, Frank Wang <frank.wang@rock-chips.com>, Yifeng Zhao <yifeng.zhao@rock-chips.com>, Elaine Zhang <zhangqing@rock-chips.com>, Kever Yang <kever.yang@rock-chips.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, Alexey Charkov <alchark@gmail.com>, linux-arm-kernel@lists.infradead.org, Finley Xiao <finley.xiao@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, Liang Chen <cl@rock-chips.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Sebasitian,

On 1/6/2026 3:24 AM, Sebastian Reichel wrote:
> Hi,
> 
> On Tue, Dec 30, 2025 at 05:02:46PM +0800, Chaoyi Chen wrote:
>> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>>
>> According to RK3576 TRM part1 page13, the size of the GPU registers
>> is 128 KB.
> 
> RK3576 TRM V1.2 has the address mapping on page 15. Maybe just
> reference "Table 1-1 Address Mapping" instead of giving a page
> number?
> 
> I think it makes sense to add the following extra text:
> 
> The current mapping incorrectly includes the addresses of multiple
> following IP like the eInk interface at 0x27900000. This has not
> been detected by the DT tooling as none of the extra mapped IP is
> described in the upstream RK3576 DT so far.
>

I will add these info in v2. Thank you :)

>> Fixes: 57b1ce903966 ("arm64: dts: rockchip: Add rk3576 SoC base DT")
>> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
>> ---
> 
> Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> Greetings,
> 
> -- Sebastian
> 
>>  arch/arm64/boot/dts/rockchip/rk3576.dtsi | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3576.dtsi b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> index 6284e7bdc442..b375015f0662 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3576.dtsi
>> @@ -1271,7 +1271,7 @@ power-domain@RK3576_PD_VO1 {
>>  
>>  		gpu: gpu@27800000 {
>>  			compatible = "rockchip,rk3576-mali", "arm,mali-bifrost";
>> -			reg = <0x0 0x27800000 0x0 0x200000>;
>> +			reg = <0x0 0x27800000 0x0 0x20000>;
>>  			assigned-clocks = <&scmi_clk SCMI_CLK_GPU>;
>>  			assigned-clock-rates = <198000000>;
>>  			clocks = <&cru CLK_GPU>;
>> -- 
>> 2.51.1
>>

-- 
Best, 
Chaoyi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
