Return-Path: <SRS0=Dydn=CJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69AA0C433E7
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 01:10:54 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 3A30A20757
	for <linux-rockchip@archiver.kernel.org>; Mon, 31 Aug 2020 01:10:54 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="OtJ6K7aD"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 3A30A20757
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=katsuster.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0vKIvc0VBoT3vYpygbT+f7fmhVEVGodyp7rVJKB0pr8=; b=OtJ6K7aDBwgyGRTis3lN7quMa
	tzM+PW0AhwCD4Fo2S0cwYg7e8NrRPRAFDK0sWG76OycPPsUPPUiFarky7TANPYJ6maXcU0aooPEtq
	IUnhrF/qw4WYtUEyppVKSjfQRCIn2ONcEdExmORkLjRWeusXk2kYWR+NP6j/7AT9JKrZ3g2Feuytg
	Ny4PM72O11lfUrnrTakEa2yqpv2t7o26CY2AuBIHDqUB/X4yC58VvrbqDhfDmYYImWlLNfPPz5i4k
	cjP30WP6cvsmJXxjaLwHt0uC6Kybo9exa+fBZ0Fzd8X6PglpgHJH/2v1i+X4BKznrhwDz5ZST4yQH
	omzdnYAng==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kCYLO-0000sx-LG; Mon, 31 Aug 2020 01:10:46 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kCYLK-0000rp-QK; Mon, 31 Aug 2020 01:10:44 +0000
Received: from fsav107.sakura.ne.jp (fsav107.sakura.ne.jp [27.133.134.234])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 07V1AU7J008966;
 Mon, 31 Aug 2020 10:10:30 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav107.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav107.sakura.ne.jp);
 Mon, 31 Aug 2020 10:10:30 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav107.sakura.ne.jp)
Received: from [192.168.1.2] (80.57.232.153.ap.dti.ne.jp [153.232.57.80])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 07V1ATDa008961
 (version=TLSv1.2 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
 Mon, 31 Aug 2020 10:10:30 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH v2] arm64: dts: rockchip: add SPDIF node for
 rk3399-rockpro64
To: Heiko Stuebner <heiko@sntech.de>
References: <20200810091619.3170534-1-katsuhiro@katsuster.net>
 <9694178.H46bfk3Hth@phil>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <6aea0d8d-00a7-6697-4085-bd2cdcd98f26@katsuster.net>
Date: Mon, 31 Aug 2020 10:10:29 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <9694178.H46bfk3Hth@phil>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200830_211043_465869_F60E989D 
X-CRM114-Status: GOOD (  21.88  )
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
Cc: linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Heiko,

On 2020/08/31 4:08, Heiko Stuebner wrote:
> Hi,
> 
> Am Montag, 10. August 2020, 11:16:19 CEST schrieb Katsuhiro Suzuki:
>> This patch adds 'disabled' SPDIF sound node and related settings
>> for rk3399-rockpro64.
>>
>> There are 2 reasons:
>>    - All RK3399 dma-bus channels have been already used by I2S0/1/2
>>    - RockPro64 does not have SPDIF optical nor coaxial connector,
>>      just have 3pins
> 
> I don't really understand what you mean here.
> 
> Like is there spdif on the board or not? Because you call it "disabled"
> and also indicate that no i2s is available anymore, yet you mention 3 pins.
> What do they do then?
> 

RockPro64 has output pins for SPDIF Tx. But RK3399 does not have enough DMA
channel for enabling SPDIF tx. Current settings are:

   - I2S0     (Req number 0, 1): Enabled  : Output to 40pin headers (CON40)
   - I2S1     (Req number 2, 3): Enabled  : Output to ES8316 on board
   - I2S2     (Req number 4, 5): Enabled  : Output to internal HDMI core
   - SPDIF Tx (Req number 7)   : Disabled : Output to other connector (J10)

If we want to enable ALL sound I/Os, we need 7 DMA channels for it.
But... Unfortunately, RK3399 has only 6 DMA channels for sounds, PWM and SPIs.

So users of RockPro64 have to choose from the following:

   - Disable one of I2S (Ex. I2S0) and enable SPDIF tx
   - Keep enable I2S0/1/2 and disable SPDIF tx

> Thanks
> Heiko
> 
> 

Best Regards,
Katsuhiro Suzuki


>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>>
>> ---
>>
>> Changes in v2:
>>    - Remove redundant status property
>> ---
>>   .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 27 +++++++++++++++++++
>>   1 file changed, 27 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> index 6e553ff47534..58097245994a 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
>> @@ -76,6 +76,23 @@ sound {
>>   		dais = <&i2s1_p0>;
>>   	};
>>   
>> +	sound-dit {
>> +		compatible = "audio-graph-card";
>> +		label = "rockchip,rk3399";
>> +		dais = <&spdif_p0>;
>> +	};
>> +
>> +	spdif-dit {
>> +		compatible = "linux,spdif-dit";
>> +		#sound-dai-cells = <0>;
>> +
>> +		port {
>> +			dit_p0_0: endpoint {
>> +				remote-endpoint = <&spdif_p0_0>;
>> +			};
>> +		};
>> +	};
>> +
>>   	vcc12v_dcin: vcc12v-dcin {
>>   		compatible = "regulator-fixed";
>>   		regulator-name = "vcc12v_dcin";
>> @@ -698,6 +715,16 @@ &sdhci {
>>   	status = "okay";
>>   };
>>   
>> +&spdif {
>> +	pinctrl-0 = <&spdif_bus_1>;
>> +
>> +	spdif_p0: port {
>> +		spdif_p0_0: endpoint {
>> +			remote-endpoint = <&dit_p0_0>;
>> +		};
>> +	};
>> +};
>> +
>>   &spi1 {
>>   	status = "okay";
>>   
>>
> 
> 
> 
> 


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
