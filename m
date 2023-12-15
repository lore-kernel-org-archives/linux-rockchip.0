Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5889BC4332F
	for <linux-rockchip@archiver.kernel.org>; Fri, 15 Dec 2023 18:21:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QeiBAEVGSUSn57wtcVBASqrBL+DRxof3Xkc8c1Ax0oI=; b=C1sHL29TZHpwVZDTVCKUeLNZ3a
	mN2nCIXKRBYZsxteNNrWSSTR7SGz8Xc4BD/bI7Nxar2Hu1kFozNuhpT2el4IAf+Wambi/oJvzdFdX
	DmTiFA/3fSyq7oY/6A6ZakjPSwshm5dbj/V8U9w9ZkuHRtwLuZWyIP2LRZib7v6KRkklc3L70f0MX
	RtVQ9+6zz9TViYrZOVR7Ftfo+yLdfnVj/7vIhYAU1Isi+w8YchCaacC13JgfDPZThOSKIdpRfuKTH
	Hb2eFXM/VPh6WHq9+euUuPlgtXlX1lWhXumBLQkxHoe7F1GB8VXbODiWqEyWUlEumyIwj9DcHLKCD
	f7nDlOdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rECny-004EXA-2k;
	Fri, 15 Dec 2023 18:20:58 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rECnu-004EUo-1o;
	Fri, 15 Dec 2023 18:20:56 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702664451;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kdamCqjRtgR4H2j8cWSZZKks1yiKAdE2PPQajEtV960=;
	b=K4D21S36po9STPxTJatpUcsaVOOhhFAeaDCcHOXV2QkyxFUv/02KPsHyvImWXz6DuZMQW+
	YGiN8M+jUjFoBcWhThuScNK3j/QV+11ijxq5K/3RYSkbbBMyemuD2/g0gLmfxUP+Fv0Ap4
	eD63ztjYxKsGncRkgAXqPAbSdCBWS2wgz39EkN22ImQMDFg1ExnpoSKSms3xBPW9gXc5SM
	UbLUAOEG/v5muxM198w920kUkuxswpIrEjdPeNwf1wQSwwWxBlrH4kFggX+oJPi9aSKf8X
	k1ixsAwmCx7KyfHD4eFIeZmz3MEaSRB4PDHMgGm00t1DlYjO6+2vny3u0ncE/w==
Date: Fri, 15 Dec 2023 19:20:51 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Stefan Nagy <stefan.nagy@ixypsilon.net>
Cc: Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Increase maximum frequency of SPI
 flash for ROCK Pi 4A/B/C
In-Reply-To: <33e632c38fa57053585c0016652ed8c8@manjaro.org>
References: <20231215122848.59534-1-stefan.nagy@ixypsilon.net>
 <33e632c38fa57053585c0016652ed8c8@manjaro.org>
Message-ID: <4fce0de996d6cc3056d972cd3fc3fb93@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231215_102054_899801_DCA30D24 
X-CRM114-Status: GOOD (  17.02  )
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

On 2023-12-15 19:15, Dragan Simic wrote:
> On 2023-12-15 13:28, Stefan Nagy wrote:
>> The ROCK Pi 4A/B/C boards come with a 32 Mbit SPI NOR flash chip (XTX
>> Technology Limited XT25F32) which has a maximum clock frequency of 108
>> MHz. However, the Rockchip SPI controller driver limits the maximum
>> SPI clock frequency to 50 MHz. Use this limit for spi-max-freq.
>> 
>> This patch has been tested on ROCK Pi 4A.
>> 
>> Signed-off-by: Stefan Nagy <stefan.nagy@ixypsilon.net>
>> ---
>>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts | 2 +-
>>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts | 2 +-
>>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts | 2 +-
>>  3 files changed, 3 insertions(+), 3 deletions(-)
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
>> b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
>> index d5df8939a..30e63e62a 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4a.dts
>> @@ -19,6 +19,6 @@ &spi1 {
>>  	flash@0 {
>>  		compatible = "jedec,spi-nor";
>>  		reg = <0>;
>> -		spi-max-frequency = <10000000>;
>> +		spi-max-frequency = <50000000>;
>>  	};
>>  };
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
>> b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
>> index bee6d7588..7122bf6c0 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4b.dts
>> @@ -37,7 +37,7 @@ &spi1 {
>>  	flash@0 {
>>  		compatible = "jedec,spi-nor";
>>  		reg = <0>;
>> -		spi-max-frequency = <10000000>;
>> +		spi-max-frequency = <50000000>;
>>  	};
>>  };
>> 
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
>> b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
>> index de2ebe4cb..8af75bc7c 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4c.dts
>> @@ -49,7 +49,7 @@ &spi1 {
>>  	flash@0 {
>>  		compatible = "jedec,spi-nor";
>>  		reg = <0>;
>> -		spi-max-frequency = <10000000>;
>> +		spi-max-frequency = <50000000>;
>>  	};
>>  };
> 
> It would be better to upstream these changes to the Linux kernel
> first, and then sync them back to U-Boot.

Oops, my bad, sorry, I got confused with your other patch on the U-Boot 
mailing list.

Regarding the new spi-max-frequency value, it should be better to have 
it set to what the SPI chip actually supports, and let the SPI driver do 
its thing.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
