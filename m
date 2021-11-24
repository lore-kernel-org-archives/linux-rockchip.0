Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFD4BC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Nov 2021 13:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pc94l6fwzrMTFTpmJlmD9htJEy1XA9JwTtRaCZ2w1hc=; b=D3GehWdaLpvDcs
	O0GDE2NEmWyMLVAlXGrdpSemEhI+OA5f01qgcPXNJkqshU2x/jKKbNh3T6c0Lw8wYX/snt9UncvRy
	KP20AvV2D5QRTIwwSixIqH5y+iiSGGcPrdYIzhC0RGYNVKQ1OtbxCtvilSZTo96RoTnkg7roYqFpu
	Upy8I6UFqnUcwR5NK2PVUCN+4etiw4lxM7sLeSkcNy+bwZ9uJ+aLpkIfp3W8VSnypdA2po36fdQFw
	d91TRz564DaNmuS4L8gHP6j1PIuoDfqHAGagOgAhCYhVOy/65XSlyqGdooatCQu30ClBEHAdz8Nyh
	9kH/19/qdal4lcH5jdsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpseJ-004vCk-1N; Wed, 24 Nov 2021 13:49:23 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpse5-004v8v-CT; Wed, 24 Nov 2021 13:49:10 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 627C6ED1;
 Wed, 24 Nov 2021 05:49:06 -0800 (PST)
Received: from [10.57.56.56] (unknown [10.57.56.56])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 46E3F3F73B;
 Wed, 24 Nov 2021 05:49:04 -0800 (PST)
Message-ID: <bf994aa8-df18-22d0-e718-2c8b406a5cc8@arm.com>
Date: Wed, 24 Nov 2021 13:49:02 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.3.2
Subject: Re: [PATCH 2/5] arm64: dts: rockchip: Add powerzones definition for
 rock960
Content-Language: en-GB
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: robh@kernel.org, arnd@linaro.org, heiko@sntech.de,
 ulf.hansson@linaro.org, rjw@rjwysocki.net, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, lukasz.luba@arm.com,
 Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>
References: <20211124125506.2971069-1-daniel.lezcano@linaro.org>
 <20211124125506.2971069-2-daniel.lezcano@linaro.org>
From: Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20211124125506.2971069-2-daniel.lezcano@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211124_054909_506905_3D103E4B 
X-CRM114-Status: GOOD (  12.63  )
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

On 2021-11-24 12:55, Daniel Lezcano wrote:
> Add the powerzones description. This first step introduces the big,
> the little and the gpu as a powerzone place.

These look more like SoC-level properties than board-level ones - should 
they be in rk3399.dtsi?

Robin.

> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> ---
>   .../boot/dts/rockchip/rk3399-rock960.dts      | 45 +++++++++++++++++++
>   1 file changed, 45 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> index 1a23e8f3cdf6..83540bdb64cd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock960.dts
> @@ -61,6 +61,51 @@ bt_active_led: led-6 {
>   		};
>   	};
>   
> +	powerzones {
> +
> +		PKG_PZ: pkg {
> +			#powerzone-cells = <0>;
> +                        powerzone = <&SOC_PZ>;
> +		};
> +
> +		SOC_PZ: soc {
> +		};
> +	};
> +};
> +
> +&cpu_b0 {
> +	#powerzone-cells = <0>;
> +	powerzone = <&PKG_PZ>;
> +};
> +
> +&cpu_b1 {
> +	#powerzone-cells = <0>;
> +	powerzone = <&PKG_PZ>;
> +};
> +
> +&cpu_l0 {
> +	#powerzone-cells = <0>;
> +	powerzone = <&PKG_PZ>;
> +};
> +
> +&cpu_l1 {
> +	#powerzone-cells = <0>;
> +	powerzone = <&PKG_PZ>;
> +};
> +
> +&cpu_l2 {
> +	#powerzone-cells = <0>;
> +	powerzone = <&PKG_PZ>;
> +};
> +
> +&cpu_l3 {
> +	#powerzone-cells = <0>;
> +	powerzone = <&PKG_PZ>;
> +};
> +
> +&gpu {
> +	#powerzone-cells = <0>;
> +	powerzone = <&PKG_PZ>;
>   };
>   
>   &cpu_alert0 {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
