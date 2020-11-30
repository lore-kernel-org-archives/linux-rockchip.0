Return-Path: <SRS0=Brux=FE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9F0C64E8A
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 13:36:29 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5EA5220643
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Nov 2020 13:36:28 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="0FMPQzVy"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5EA5220643
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vB7G6GcU+r50YKdMIGH1dgHVu3nO77J/N6HMAmUQdPs=; b=0FMPQzVy29frfw3AxBRoVTFAI
	hXlasiQmuaDukLV2eb904DOxeyuVCPNvmYUgdal0d6cRnjZSlsJODL7rPNT9lHpAw1uTX4JgaXjYt
	qQJ5wdVStIvTrCWva4ued3pdiOhkl9VfP4vMlFfOy04R1R2+0moBMN9IkER3I/+z1Dq3YeYNqj+G+
	eXgcCVQyJ8d6OnDq8dNzNDUEdsys57hDTa/Iu0Gp8WRbR+7sfkyCy33VjJrBIKSCYGjIZKMd85fhM
	9OnCcHwmQuiBew02HeVl9YmDT5MIDmAS94lJItJoeFqJPiu6N4cVH353r+5Uv00LbxuMcQaeSWjbg
	vkRhbGmxw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kjjLo-0003jk-SL; Mon, 30 Nov 2020 13:36:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kjjLn-0003j4-7L; Mon, 30 Nov 2020 13:36:20 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kjjLi-0002T6-9n; Mon, 30 Nov 2020 14:36:14 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Katsuhiro Suzuki <katsuhiro@katsuster.net>,
 linux-rockchip@lists.infradead.org, Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v3] arm64: dts: rockchip: add SPDIF node for
 rk3399-rockpro64
Date: Mon, 30 Nov 2020 14:36:12 +0100
Message-ID: <2753094.YVpnkQH3Kb@diego>
In-Reply-To: <e5ab2c62-ad00-4cdf-8b0a-24fda59c980b@gmail.com>
References: <20201005140311.2507530-1-katsuhiro@katsuster.net>
 <e5ab2c62-ad00-4cdf-8b0a-24fda59c980b@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201130_083619_318277_D22E00BC 
X-CRM114-Status: GOOD (  31.92  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Am Dienstag, 6. Oktober 2020, 11:51:58 CET schrieb Johan Jonker:
> Hi Katsuhiro, Heiko,
> 
> Question for the maintainer:
> Should we add a SPDIF node if the connector is not physical on a board,
> only a header?

I think so ... the connector always is just like n-pins on a board,
only "sometimes" someone solders a fancy jack to it ;-)


Heiko

> 
> Thanks Katsuhiro for the "aplay -l" screen print.
> 
> **** List of PLAYBACK Hardware Devices ****
> card 0: hdmisound [hdmi-sound], device 0: ff8a0000.i2s-i2s-hifi
> i2s-hifi-0 [ff8a0000.i2s-i2s-hifi i2s-hifi-0]
>   Subdevices: 1/1
>   Subdevice #0: subdevice #0
> card 1: rockchiprk3399 [rockchip,rk3399], device 0: ff890000.i2s-ES8316
> HiFi ES8316 HiFi-0 [ff890000.i2s-ES8316 HiFi ES8316 HiFi-0]
>   Subdevices: 1/1
>   Subdevice #0: subdevice #0
> card 2: rockchiprk339_1 [rockchip,rk3399], device 0:
> ff870000.spdif-dit-hifi dit-hifi-0 [ff870000.spdif-dit-hifi dit-hifi-0]
>   Subdevices: 1/1
>   Subdevice #0: subdevice #0
> 
> 
> On 10/5/20 4:03 PM, Katsuhiro Suzuki wrote:
> > This patch adds 'disabled' SPDIF sound node and related settings
> > of SPDIF for rk3399-rockpro64.
> > 
> > RockPro64 has output pins for SPDIF Tx. But RK3399 does not have
> > enough DMA channel for enabling SPDIF tx. Current settings are:
> > 
> >   - I2S0     (Req num 0, 1): Enabled : Output to 40pins header CON40
> >   - I2S1     (Req num 2, 3): Enabled : Output to ES8316 on board
> >   - I2S2     (Req num 4, 5): Enabled : Output to internal HDMI core
> >   - SPDIF Tx (Req num 7)   : Disabled: Output to connector J10
> > 
> > If users want to enable ALL sound I/Os, we need 7 DMA channels for
> > it. But unfortunately, RK3399 has only 6 DMA channels. So users have
> > to choose from the following:
> > 
> >   - Disable one of I2S (Ex. I2S0) and enable SPDIF tx
> >   - Keep enable I2S0/1/2 and disable SPDIF tx
> > 
> > Signed-off-by: Katsuhiro Suzuki <katsuhiro@katsuster.net>
> > 
> > ---
> > 
> > Changes in v3:
> >   - Refine commit description why adding disabled node
> > 
> > Changes in v2:
> >   - Remove redundant status property
> > ---
> >  .../boot/dts/rockchip/rk3399-rockpro64.dtsi   | 27 +++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > index 6e553ff47534..58097245994a 100644
> > --- a/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > +++ b/arch/arm64/boot/dts/rockchip/rk3399-rockpro64.dtsi
> > @@ -76,6 +76,23 @@ sound {
> >  		dais = <&i2s1_p0>;
> >  	};
> >  
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
> > +	sound-dit {
> > +		compatible = "audio-graph-card"
> > +		label = "rockchip,rk3399";
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
> > +		dais = <&spdif_p0>;
> 
> Maybe disable too?
> 
> The "sound-dit" node is standard enabled and will start some process
> with a dia in a node that is disabled.
> 
> 
> > +	};
> > +
> > +	spdif-dit {
> > +		compatible = "linux,spdif-dit";
> > +		#sound-dai-cells = <0>;
> 
> Maybe disable too?
> 
> > +
> > +		port {
> > +			dit_p0_0: endpoint {
> 
> > +				remote-endpoint = <&spdif_p0_0>;
> 
> This also points to something that's disabled.
> 
> > +			};
> > +		};
> > +	};
> > +
> >  	vcc12v_dcin: vcc12v-dcin {
> >  		compatible = "regulator-fixed";
> >  		regulator-name = "vcc12v_dcin";
> > @@ -698,6 +715,16 @@ &sdhci {
> >  	status = "okay";
> >  };
> >  
> > +&spdif {
> > +	pinctrl-0 = <&spdif_bus_1>;
> 
> This node is disabled.
> 
> > +
> > +	spdif_p0: port {
> > +		spdif_p0_0: endpoint {
> > +			remote-endpoint = <&dit_p0_0>;
> > +		};
> > +	};
> > +};
> > +
> >  &spi1 {
> >  	status = "okay";
> >  
> > 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
