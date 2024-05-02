Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 407CEC4345F
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 May 2024 12:19:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tnRWb2QkAbCfHyD6Iv+Pg2G3SwSW69OP775YiLRGCjw=; b=EIAqOtGI5KJp77
	516KgA8ZheUUYm/3tbCAN4/oneCUTpBsV30v2laLFJQ8U+zn1cDrM4A0L9dXAUVQxwwSjJrk+p0tm
	BLXbkt5dDnEHAwT70N9cn4udvP/THsE44j0x4sQQ+yoqqlGvlPFAhZuD9yRNwXRsgLUlNX5wiw678
	9N0IKkX3GxVmfaiIE+4hCDmzhtHE0lSYxFxuQ/rnVoVLHaxEyIGCNBokGby9SjSiZgApoKTazndqT
	9QHGdOEjwKBfDzTB1Sm49ALfvLET2dr3D3tAx5OkLPXgi9tvPKkgMAmSQFF8TC1bNK3ENnIaGvay4
	M5Ws9qqH6TjUc3krqb5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2VP8-0000000CczO-3R1M;
	Thu, 02 May 2024 12:19:14 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2VP6-0000000Ccx1-0bhI
	for linux-rockchip@lists.infradead.org;
	Thu, 02 May 2024 12:19:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: Content-Type: In-Reply-To: From: References:
 Cc: To: Subject: MIME-Version: Date: Message-ID; q=dns/txt;
 s=fe-e1b5cab7be; t=1714652289;
 bh=o3dDw9/Nk0P+Y2L4RAZ5QXHC0oKEkNV6XQMxSmp6kck=;
 b=SU5oGeZd/MfXsjErycC85Xb/NfYl+hsRY84/7hp3ZwPU7iHX648DjZhCCkdxIqMdqC4AdROTe
 9SFFj/Ye3v4PCy/vNK/3pFunNzC0ZlHj9HjsWKISvjnNK2XB5GZ4wQWXiECZimBWq4FV+48DGIM
 RnDbppOwrTI0ieViykDiDHrmzzQPxPtoCtDkZ4Vn3uqNAEB46USGnnPEsMn+Ghqj6ONAFf18LQL
 zyVXyfp+JKk2SWpLzP/lhiFKJvGOfa6sKPS0ZGrjkku0Xpow1n6whbN5xG1bZkVvWQ8nwFlp/UP
 m/sZ36T9OFyuYSaVB57pyLCA9j6auLG42WMzx/nKr/wQ==
Message-ID: <832d6c37-a6c5-4468-9a23-1637b2affb90@kwiboo.se>
Date: Thu, 2 May 2024 14:17:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/2] arm64: dts: rockchip: Add Radxa ROCK 3C
To: Dragan Simic <dsimic@manjaro.org>, Folker Schwesinger
 <dev@folker-schwesinger.de>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, Heiko Stuebner <heiko@sntech.de>,
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski
 <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20240428123618.72170-1-amadeus@jmu.edu.cn>
 <20240428123618.72170-3-amadeus@jmu.edu.cn>
 <D0X7UJELGST3.2IL1AFDJ89N07@folker-schwesinger.de>
 <ded928414323ef4be51f2575d00ba7d1@manjaro.org>
Content-Language: en-US
From: Jonas Karlman <jonas@kwiboo.se>
In-Reply-To: <ded928414323ef4be51f2575d00ba7d1@manjaro.org>
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 6633847bf48eecfc8b9e7ac4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240502_051912_827033_09BA3937 
X-CRM114-Status: UNSURE (   9.73  )
X-CRM114-Notice: Please train this message.
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

Hi Dragan and Folker,

On 2024-05-02 03:28, Dragan Simic wrote:
> Hello Folker,
> 
> On 2024-04-30 07:42, Folker Schwesinger wrote:
>> On Sun Apr 28, 2024 at 2:36 PM CEST, Chukun Pan wrote:
>>> [...]
>>> +&sdhci {
>>> +	bus-width = <8>;
>>> +	max-frequency = <200000000>;
>>> +	mmc-hs200-1_8v;
>>
>> Out of curiosity, does this board also support HS400? From a very brief
>> look this board seems quite similar to Rock 4 series boards, that do
>> support HS400.
> 
> In a word, no, unfortunately.  In more detail, the Rockchip RK3566
> and RK3568 SoCs support the eMMC modes up to and including HS200, but
> not the HS400 mode.

The datasheet for RK3568 only mention HS200 mode, however, HS400 mode is
working in U-Boot after adjusting tap number for transmit clock [1].
Linux may need similar adjustment to make HS400 mode work on RK3568.

RK3566 that this board use only support HS200, as specified in datasheet.

[1] https://source.denx.de/u-boot/u-boot/-/commit/5c053f3adc69eaf83645b5d44c6adbb2d49a3fa7

Regards,
Jonas

> 
>>> +	non-removable;
>>> +	pinctrl-names = "default";
>>> +	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
>>> +	vmmc-supply = <&vcc_3v3>;
>>> +	vqmmc-supply = <&vcc_1v8>;
>>> +	status = "okay";
>>> +};
>>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
