Return-Path: <SRS0=KV8+=EO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-11.3 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,NICE_REPLY_A,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 29AA4C388F9
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 16:00:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4A6D720B1F
	for <linux-rockchip@archiver.kernel.org>; Sun,  8 Nov 2020 16:00:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="ka4D5SFw"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 4A6D720B1F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=katsuster.net
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vqzvJ/gKq2rwN4QmN+xuz7h9WCplhFfov4zQtaBP6d0=; b=ka4D5SFwLZX6R/kRqNwcopvNA
	6+NwMjXT5BhtiSDY8Bi3lxI243qRTCr5fK4mzcg+H9Peb22PvXzV2jE04YhGJKN44H52J8gMT9n4f
	dRFVX4UMDVQKmH3a5qB5ojNMpedHLIM8/LqZuYfSfqFRhDwqMlnlWjdNwR6IgiXZuk3Yitxw6KVQn
	oDcU6WHthSovds7IuSoivd6rIqiQV8YGe7/N2MluZ63h8+NJRwyHQCoi7++pgB/w2YQmfbPon/SDD
	6acH0crC0mRUCYHZM8U68uByrDk+cenfU/CgiQ8WiZud/kfgjyLbheXVM0DW8OAVjdf4UzISp2ace
	GtdbxQLXA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kbn7N-00073J-Hb; Sun, 08 Nov 2020 16:00:37 +0000
Received: from www1102.sakura.ne.jp ([219.94.129.142])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kbn7J-00072V-2T; Sun, 08 Nov 2020 16:00:34 +0000
Received: from fsav401.sakura.ne.jp (fsav401.sakura.ne.jp [133.242.250.100])
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTP id 0A8G0JJE062174;
 Mon, 9 Nov 2020 01:00:19 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Received: from www1102.sakura.ne.jp (219.94.129.142)
 by fsav401.sakura.ne.jp (F-Secure/fsigk_smtp/550/fsav401.sakura.ne.jp);
 Mon, 09 Nov 2020 01:00:19 +0900 (JST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/fsav401.sakura.ne.jp)
Received: from [192.168.1.2] (80.57.232.153.ap.dti.ne.jp [153.232.57.80])
 (authenticated bits=0)
 by www1102.sakura.ne.jp (8.15.2/8.15.2) with ESMTPSA id 0A8G0Ju1062166
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=NO);
 Mon, 9 Nov 2020 01:00:19 +0900 (JST)
 (envelope-from katsuhiro@katsuster.net)
Subject: Re: [PATCH v3] arm64: dts: rockchip: add SPDIF node for
 rk3399-rockpro64
To: Johan Jonker <jbx6244@gmail.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
References: <20201005140311.2507530-1-katsuhiro@katsuster.net>
 <e5ab2c62-ad00-4cdf-8b0a-24fda59c980b@gmail.com>
From: Katsuhiro Suzuki <katsuhiro@katsuster.net>
Message-ID: <c7ecafe4-b344-9e3f-b7d2-b17adf6545c5@katsuster.net>
Date: Mon, 9 Nov 2020 01:00:19 +0900
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.4.1
MIME-Version: 1.0
In-Reply-To: <e5ab2c62-ad00-4cdf-8b0a-24fda59c980b@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201108_110033_635046_F0221D2B 
X-CRM114-Status: GOOD (  31.39  )
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Heiko, Johan,

This is ping... How about Johan's question?

> Question for the maintainer:
> Should we add a SPDIF node if the connector is not physical on a board,
> only a header?

If we don't need to add nodes for sound I/F that has only header not
physical on a board, we should drop this patch and also remove I2S0
because I2S0 has no physical connector on a board.

Additionally, I2S1 share the I2S_CLK pin with I2S0. So ROCKPro64 users
perhaps cannot use I2S0 and I2S1 (for ES8316) at same time. If users
try to use I2S1 after I2S0, I2S1 overwrites clock setting and I2S0
will face strange behavior.

I don't know why ROCKPro64 has such strange pin implementation...


For Johan:

Sorry for late reply. Thank you for your review.
And I agree with you renaming sound nodes.

- HDMI
- ES8316 (or "Analog" is more useful for media player SW??)
- SPDIF (if we need)


Best Regards,
Katsuhiro Suzuki


On 2020/10/06 18:51, Johan Jonker wrote:
> Hi Katsuhiro, Heiko,
> 
> Question for the maintainer:
> Should we add a SPDIF node if the connector is not physical on a board,
> only a header?
> 
> Thanks Katsuhiro for the "aplay -l" screen print.
> 
> **** List of PLAYBACK Hardware Devices ****
> card 0: hdmisound [hdmi-sound], device 0: ff8a0000.i2s-i2s-hifi
> i2s-hifi-0 [ff8a0000.i2s-i2s-hifi i2s-hifi-0]
>    Subdevices: 1/1
>    Subdevice #0: subdevice #0
> card 1: rockchiprk3399 [rockchip,rk3399], device 0: ff890000.i2s-ES8316
> HiFi ES8316 HiFi-0 [ff890000.i2s-ES8316 HiFi ES8316 HiFi-0]
>    Subdevices: 1/1
>    Subdevice #0: subdevice #0
> card 2: rockchiprk339_1 [rockchip,rk3399], device 0:
> ff870000.spdif-dit-hifi dit-hifi-0 [ff870000.spdif-dit-hifi dit-hifi-0]
>    Subdevices: 1/1
>    Subdevice #0: subdevice #0
> 
> 
> On 10/5/20 4:03 PM, Katsuhiro Suzuki wrote:
>> This patch adds 'disabled' SPDIF sound node and related settings
>> of SPDIF for rk3399-rockpro64.
>>
>> RockPro64 has output pins for SPDIF Tx. But RK3399 does not have
>> enough DMA channel for enabling SPDIF tx. Current settings are:
>>
>>    - I2S0     (Req num 0, 1): Enabled : Output to 40pins header CON40
>>    - I2S1     (Req num 2, 3): Enabled : Output to ES8316 on board
>>    - I2S2     (Req num 4, 5): Enabled : Output to internal HDMI core
>>    - SPDIF Tx (Req num 7)   : Disabled: Output to connector J10
>>
>> If users want to enable ALL sound I/Os, we need 7 DMA channels for
>> it. But unfortunately, RK3399 has only 6 DMA channels. So users have
>> to choose from the following:
>>
>>    - Disable one of I2S (Ex. I2S0) and enable SPDIF tx
>>    - Keep enable I2S0/1/2 and disable SPDIF tx
>>
>> Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
>>
>> ---
>>
>> Changes in v3:
>>    - Refine commit description why adding disabled node
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
> 
> 
> 	hdmi_sound: hdmi-sound {
> 		compatible = "simple-audio-card";
> 		simple-audio-card,name = "hdmi-sound";
> 
> Maybe rename to "HDMI"?
> 
> [..]
> 	};
> 
> 	sound {
> 		compatible = "audio-graph-card";
> 		label = "rockchip,rk3399";
> 
> Maybe change this to "ES8316" to prevent confusion?
> 
> 		dais = <&i2s1_p0>;
> 	};
> 
> 
>> +	sound-dit {
>> +		compatible = "audio-graph-card"
>> +		label = "rockchip,rk3399";
> 
> This would be the second sound card with the same label.
> It seems that aplay/linux? adds "-1" to it and removes the comma, so we get:
> 
> hdmisound
> rockchiprk3399
> rockchiprk339_1
> 
> Shouldn't we label it with something that reflect the function/output.
> Shouldn't we standardize to SPDIF, HDMI and Analog similar to rk3318/rk3328?
> Make a shorter label without spaces or special chars, so that chars
> don't get removed?
> 
> Proposal:
> 
> HDMI
> ES8316
> SPDIF
> 
>> +		dais = <&spdif_p0>;
> 
> Maybe disable too?
> 
> The "sound-dit" node is standard enabled and will start some process
> with a dia in a node that is disabled.
> 
> 
>> +	};
>> +
>> +	spdif-dit {
>> +		compatible = "linux,spdif-dit";
>> +		#sound-dai-cells = <0>;
> 
> Maybe disable too?
> 
>> +
>> +		port {
>> +			dit_p0_0: endpoint {
> 
>> +				remote-endpoint = <&spdif_p0_0>;
> 
> This also points to something that's disabled.
> 
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
> 
> This node is disabled.
> 
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


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
