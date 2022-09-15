Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9F4BECAAA1
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Sep 2022 16:53:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6L07I4vKJ26/mn8qfIv3+GP4459FEYcFblVL3S9/zpE=; b=f/+Q8yzCa1YUEg
	ocJKkGUIniozTCUgF18fRg391bImb6fTziKdOHKEoYsdbDUX+COBpd6ccxJpdSRJwqhf+TfyIYRXK
	wNmmTyQ1yXkjYtz5lFnDmrUY6J1AP0BCcCcMVXRriCyCyIWZ+9eLgc+RO3hGBK6feWkG2LQlT1U6W
	8tg0lx9WLzDzBw9JAGUnCfO3wyXEcKkIUdrdbP5yoOfSs9uBX5cwwwGX1EInUexjcpFflVBs2aHdS
	CkoWwSVdUzV/80yh5vnAUL9YaHp4ViR/VwrSdhLP2KHsEAEoEZd45cUOPf7q4z89wCW96qjrQilMT
	aw8puvVFN0qvrwMom2mQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYs72-00Dftt-IL; Thu, 15 Sep 2022 16:53:16 +0000
Received: from mail-il1-x136.google.com ([2607:f8b0:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oYs70-00Dfrn-4s; Thu, 15 Sep 2022 16:53:15 +0000
Received: by mail-il1-x136.google.com with SMTP id x2so3727488ill.10;
        Thu, 15 Sep 2022 09:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:from:to:cc:subject:date;
        bh=Ctva506wfgkNUCjN4L6nhIaTESGYUbw4ZySDGQZBtV8=;
        b=oc7ESAuTdyerQ1dAIB3KzibBp3CNpWKq62EdBV7wU0Z2uItCGQMPyWdPnvV3H9TT25
         0QuVHaVipjp3A0ZN7t62m/G7r7yefFahy0w+4uVZdMw2DBIaMC3qj9V7Seq+C5YKozVj
         yneXcOL0pL1HSE5vO0jjrl90X19SyevnynQLQMNMAJr+cVklx2EPcmfaL5bcNA3snsc8
         PmvzTNepfrObWYrBhaIb1xN8yFTkDzI/1C47FZv0WcmKWWZWL6voby+YTa+utTZbdki3
         Vbd9GpmPCbvMIWOs8a4noOHpdhcx3v9jubIp2TNLkSOmwj5x1MMLSOxsdVLVMoAUwFlT
         hnYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=Ctva506wfgkNUCjN4L6nhIaTESGYUbw4ZySDGQZBtV8=;
        b=lgtq6dLjNy3yv7oGe7h3YMzrlOPi3fBNhPN+2X+qG1tA1mqIRLCl7MAzi6Ui0DD8u5
         AnCylSNz8dzBpCzllozCCRi1hV7FJi9wp6Z5MM6jNbC1F6P/sgBUb/PBnu6Q8fM1Ntns
         gwpCJRgKUiXZYrMA6cYyssyGHqTIN1xZjhBY6NQOxcy35JwQc7OiP59dWqT76uTydnpa
         cwI1X4+Z7E6CnrawrzFh9A0xZPQWNrKM3h1V+JLWWnVz7jlfbmvJ9m0FMSNQ9DiEtnvC
         y1PMVTIyAjpSfHJgp1nD1021BeaItZIzrzHgt95p8qdHFsIta2GaXYTBqJSi9bMVpe4I
         LXpQ==
X-Gm-Message-State: ACrzQf0lrHbpSQ+7fHpwikcJdp5+1WkzZxW+wk/xJt2d0IhTL6q1DldB
	eeWU9ecxcvm53DogWOoPXKRJd0IE+zfZrw==
X-Google-Smtp-Source: AMsMyM4XSl+CKPYQP2VV2gOIV41ixVw4PiE9yGwFMqjXF1MGteHZTFrpA9iF45BxUtlB84ik5K6u2g==
X-Received: by 2002:a05:6e02:178c:b0:2ee:3296:4c5 with SMTP id y12-20020a056e02178c00b002ee329604c5mr401656ilu.265.1663260791394;
        Thu, 15 Sep 2022 09:53:11 -0700 (PDT)
Received: from smtpclient.apple (ebrouter.sigmaris.info. [82.69.107.165])
        by smtp.gmail.com with ESMTPSA id x12-20020a92d64c000000b002e97becb248sm8083874ilp.29.2022.09.15.09.53.09
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2022 09:53:10 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3696.120.41.1.1\))
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: enable gamma control on
 RK3399
From: Hugh Cole-Baker <sigmaris@gmail.com>
In-Reply-To: <9196035b-273a-adca-2b87-c70bbab7f5c9@arm.com>
Date: Thu, 15 Sep 2022 17:53:07 +0100
Cc: heiko@sntech.de,
 hjc@rock-chips.com,
 dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 ezequiel@collabora.com
Message-Id: <7B966E6B-1D3F-4975-AC44-1840951257F1@gmail.com>
References: <20211019215843.42718-1-sigmaris@gmail.com>
 <20211019215843.42718-4-sigmaris@gmail.com>
 <9196035b-273a-adca-2b87-c70bbab7f5c9@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
X-Mailer: Apple Mail (2.3696.120.41.1.1)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220915_095314_208108_5234A080 
X-CRM114-Status: GOOD (  16.59  )
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


> On 15 Sep 2022, at 15:40, Robin Murphy <robin.murphy@arm.com> wrote:
> 
> On 2021-10-19 22:58, Hugh Cole-Baker wrote:
>> Define the memory region on RK3399 VOPs containing the gamma LUT at
>> base+0x2000.
>> Signed-off-by: Hugh Cole-Baker <sigmaris@gmail.com>
>> ---
>> Changes from v1: no changes in this patch
>>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
>>  1 file changed, 2 insertions(+), 2 deletions(-)
>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> index 3871c7fd83b0..9cbf6ccdd256 100644
>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
>> @@ -1619,7 +1619,7 @@ i2s2: i2s@ff8a0000 {
>>    	vopl: vop@ff8f0000 {
>>  		compatible = "rockchip,rk3399-vop-lit";
>> -		reg = <0x0 0xff8f0000 0x0 0x3efc>;
>> +		reg = <0x0 0xff8f0000 0x0 0x2000>, <0x0 0xff8f2000 0x0 0x400>;
>>  		interrupts = <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH 0>;
>>  		assigned-clocks = <&cru ACLK_VOP1>, <&cru HCLK_VOP1>;
>>  		assigned-clock-rates = <400000000>, <100000000>;
>> @@ -1676,7 +1676,7 @@ vopl_mmu: iommu@ff8f3f00 {
>>    	vopb: vop@ff900000 {
>>  		compatible = "rockchip,rk3399-vop-big";
>> -		reg = <0x0 0xff900000 0x0 0x3efc>;
>> +		reg = <0x0 0xff900000 0x0 0x2000>, <0x0 0xff902000 0x0 0x1000>;
> 
> Doesn't the second range still need to be shorter than 0xf00 to avoid overlapping the IOMMU?
> 
> Robin.

This should be OK, the other registers are in the range ff900000-ff902000, the
gamma LUT occupies the range ff902000-ff903000, and then the IOMMU registers
begin at ff903f00. I don't see any overlaps with the IOMMU unless I'm
misreading the dts.

>>  		interrupts = <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH 0>;
>>  		assigned-clocks = <&cru ACLK_VOP0>, <&cru HCLK_VOP0>;
>>  		assigned-clock-rates = <400000000>, <100000000>;

br, Hugh.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
