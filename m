Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 305CAC433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:51:41 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 78D0961206
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:51:40 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 78D0961206
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=manjaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:Subject:
	From:References:Cc:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TV6lHlHKEWaq9p551kjYOujJEYcgqerOWON/Pej+wMc=; b=L72+czSa/3B/mWji7FgMmBo4U
	388vJNEdx71FaYMv/RwKIlNrs7auaKS+Qsaw/zzBKLpN9IEo+syhJiaIhErOVDpd5PkPqAsucBwNI
	/bp5x8/85jLaoIar7fw+38iohAyv5/2sb+GJiriKhQFevKDiij8yt9E24Yzq5TQ8vO3N7N2R5i9E0
	B5bVFDXgrDAOeF68e3mpI8ro3tqvGtzjFc2vlJjHRAl+00NKLrVZaYKUPSKsxAjDfVs/bq2G0Ev7w
	41v4iPHCHIzpyopCnbNrolk9CWpAsXKzC5TgDjRWfmwRTTAGC8dP3C7Z1gSUj+Un07zU1jkVUPQiH
	M5TBfFipQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhXHw-0084b1-Vu; Fri, 14 May 2021 12:51:33 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhXHj-0084Ym-8p; Fri, 14 May 2021 12:51:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:Subject:From:References
 :Cc:To:Sender:Reply-To:Content-ID:Content-Description;
 bh=iSA4kxaO3mjEDeUsblF0CKuWTnc5YMdGUPk1E5AgEZM=; b=H97PNp62VS0oTFfYDYJp8a9CtV
 /Ya0RCvmjvH/mMkNcembR5xdX9ro7hwGgLtCvtN09NA49Hax1NpFxxRT+DgH+ujjFSeNZHSNPuuQm
 oVhc5HcOYFCPOZlfU3zL7IBxD4zRriJ4jTQFENgdOawr1I6/0dkQXQMEKa30XYmlYPtYX2zbOqWUi
 KkK30B9J7DZtkhT7BujWW0HWrlZc1X1Xg0klGBitVsoVAZ0pI8Umx9MvrcMVX7WpSf89Dit0QyT1T
 /6jLaRKMN8L/dk7Eu2yHeZju4+djCvLCZvILfLrN/UGdfoywxzHDSWwoliP6gE1EqxQyod8TZh4bE
 0rdKl0qA==;
Received: from mail.manjaro.org ([2a01:4f8:150:448b::1])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhXHg-00Bz4A-At; Fri, 14 May 2021 12:51:17 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.manjaro.org (Postfix) with ESMTP id 83FE022253A;
 Fri, 14 May 2021 14:51:14 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at manjaro.org
Received: from mail.manjaro.org ([127.0.0.1])
 by localhost (manjaro.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id dat1wKKJdGXb; Fri, 14 May 2021 14:51:10 +0200 (CEST)
To: Johan Jonker <jbx6244@gmail.com>, Tobias Schramm <t.schramm@manjaro.org>, 
 linux-usb@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Kishon Vijay Abraham I <kishon@ti.com>, Vinod Koul <vkoul@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20210514102734.2091238-1-t.schramm@manjaro.org>
 <20210514102734.2091238-5-t.schramm@manjaro.org>
 <01388394-603e-6a43-2044-ae1e93eb0ff3@gmail.com>
From: Tobias Schramm <t.schramm@manjaro.org>
Subject: Re: [PATCH 4/4] arm64: dts: rockchip: add USB support to RK3308 dts
Message-ID: <e0545fee-70db-ce38-1bd4-6520dc585bad@manjaro.org>
Date: Fri, 14 May 2021 14:52:47 +0200
MIME-Version: 1.0
In-Reply-To: <01388394-603e-6a43-2044-ae1e93eb0ff3@gmail.com>
Content-Language: en-US-large
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_055116_560265_137BC5E4 
X-CRM114-Status: GOOD (  23.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

 > Hi Johan,

Am 14.05.21 um 14:09 schrieb Johan Jonker:
> Hi Tobias,
> 
> Just sent a patch for grf.yaml and rockchip-usb-phy.yaml conversion myself.
> 
Ah wonderful, thanks! I was not quite happy with touching the old .txt 
documentation anyway. I'll adjust my next version to depend on your 
patches then.
> Added { .compatible = "rockchip,rk3308-usb2phy", .data =
> &rk3308_phy_cfgs }, to phy-rockchip-inno-usb2.c
> 
> Added is "rockchip,rk3308-usb-phy" to rockchip-usb-phy.txt
> 
> compatible = "rockchip,rk3308-usb2phy"; is used in this patch.
> 
> Maybe try phy-rockchip-inno-usb2.yaml?
> 
Right. Somehow ended up in the wrong file there. Will fix it in the next 
version.
> "rockchip,rk3308-usb2phy-grf", "syscon", "simple-mfd" document missing.
> 
> Could someone recheck the reg memory size?
> Is this still correct then?
> 
> ===
> compatible = "rockchip,rk3308-grf", "syscon", "simple-mfd";
> reg = <0x0 0xff000000 0x0 0x10000>;
> 
> Do we still need "0x0 0x10000" here?
The technical reference manual specifies it as 64k in size. However, 
since the dts has separate nodes for the other grfs it should probably 
be "0x0 0x8000" at max. Technical reference manual indicates there is 
nothing beyond 0x0803 in the main grf.
> ===
> compatible = "rockchip,rk3308-usb2phy-grf", "syscon", "simple-mfd";
> reg = <0x0 0xff008000 0x0 0x4000>;
> ===
> compatible = "rockchip,rk3308-detect-grf", "syscon", "simple-mfd";
> reg = <0x0 0xff00b000 0x0 0x1000>;
> ===
> compatible = "rockchip,rk3308-core-grf", "syscon", "simple-mfd";
> reg = <0x0 0xff00c000 0x0 0x1000>;
> ===
> 
> Johan
> 
> On 5/14/21 12:27 PM, Tobias Schramm wrote:
>> The Rockchip RK3308 features an integrated USB 2.0 phy, an USB OTG
>> controller and OHCI/EHCI interfaces.
>> This patch adds all of those to the RK3308 dtsi and thereby enables USB
>> support on the RK3308.
>>
>> Signed-off-by: Tobias Schramm <t.schramm@manjaro.org>
>> ---
>>   arch/arm64/boot/dts/rockchip/rk3308.dtsi | 75 ++++++++++++++++++++++++
>>   1 file changed, 75 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>> index 0c5fa9801e6f..80fd802d6c15 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
>> @@ -177,6 +177,43 @@ reboot-mode {
>>   		};
>>   	};
>>   
>> +	usb2phy_grf: syscon@ff008000 {
>> +		compatible = "rockchip,rk3308-usb2phy-grf", "syscon",
>> +			     "simple-mfd";
>> +		reg = <0x0 0xff008000 0x0 0x4000>;
>> +		#address-cells = <1>;
>> +		#size-cells = <1>;
>> +
>> +		u2phy: usb2-phy@100 {
> 
>> +			compatible = "rockchip,rk3308-usb2phy";
>> +			reg = <0x100 0x10>;
>> +			clocks = <&cru SCLK_USBPHY_REF>;
>> +			clock-names = "phyclk";
>> +			clock-output-names = "usb480m_phy";
>> +			#clock-cells = <0>;
>> +			assigned-clocks = <&cru USB480M>;
>> +			assigned-clock-parents = <&u2phy>;
>> +			status = "disabled";
>> +
> 
> Looks like
> 
>> +			u2phy_otg: otg-port {
>> +				#phy-cells = <0>;
>> +				interrupts = <GIC_SPI 67 IRQ_TYPE_LEVEL_HIGH>,
>> +					     <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>,
>> +					     <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
>> +				interrupt-names = "otg-bvalid", "otg-id",
>> +						  "linestate";
>> +				status = "disabled";
>> +			};
>> +
>> +			u2phy_host: host-port {
>> +				#phy-cells = <0>;
>> +				interrupts = <GIC_SPI 74 IRQ_TYPE_LEVEL_HIGH>;
>> +				interrupt-names = "linestate";
>> +				status = "disabled";
>> +			};
>> +		};
>> +	};
>> +
>>   	detect_grf: syscon@ff00b000 {
>>   		compatible = "rockchip,rk3308-detect-grf", "syscon", "simple-mfd";
>>   		reg = <0x0 0xff00b000 0x0 0x1000>;
>> @@ -579,6 +616,44 @@ spdif_tx: spdif-tx@ff3a0000 {
>>   		status = "disabled";
>>   	};
>>   
>> +	usb20_otg: usb@ff400000 {
>> +		compatible = "rockchip,rk3308-usb", "rockchip,rk3066-usb",
>> +			     "snps,dwc2";
>> +		reg = <0x0 0xff400000 0x0 0x40000>;
>> +		interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
>> +		clocks = <&cru HCLK_OTG>;
>> +		clock-names = "otg";
>> +		dr_mode = "otg";
>> +		g-np-tx-fifo-size = <16>;
>> +		g-rx-fifo-size = <280>;
>> +		g-tx-fifo-size = <256 128 128 64 32 16>;
>> +		phys = <&u2phy_otg>;
>> +		phy-names = "usb2-phy";
>> +		status = "disabled";
>> +	};
>> +
>> +	usb_host_ehci: usb@ff440000 {
>> +		compatible = "generic-ehci";
>> +		reg = <0x0 0xff440000 0x0 0x10000>;
>> +		interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
>> +		clocks = <&cru HCLK_HOST>, <&cru HCLK_HOST_ARB>, <&u2phy>;
>> +		clock-names = "usbhost", "arbiter", "utmi";
>> +		phys = <&u2phy_host>;
>> +		phy-names = "usb";
>> +		status = "disabled";
>> +	};
>> +
>> +	usb_host_ohci: usb@ff450000 {
>> +		compatible = "generic-ohci";
>> +		reg = <0x0 0xff450000 0x0 0x10000>;
>> +		interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
>> +		clocks = <&cru HCLK_HOST>, <&cru HCLK_HOST_ARB>, <&u2phy>;
>> +		clock-names = "usbhost", "arbiter", "utmi";
>> +		phys = <&u2phy_host>;
>> +		phy-names = "usb";
>> +		status = "disabled";
>> +	};
>> +
>>   	sdmmc: mmc@ff480000 {
>>   		compatible = "rockchip,rk3308-dw-mshc", "rockchip,rk3288-dw-mshc";
>>   		reg = <0x0 0xff480000 0x0 0x4000>;
>>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
