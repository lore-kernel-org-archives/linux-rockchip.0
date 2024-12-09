Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B71B3E7717D
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Dec 2024 16:32:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6ToPLIZjD1pfxnXKKueo8eVWHgnBYmSP0hMfS5T0Hu0=; b=cVC40M4EpydseDB9El44YD0pcr
	aSVhRZGQjG56zjmYjIMcAZVteFL7QM9KeWh4uZJyS4YcNZ/QcG4UOZm3PSHD0on2GCQTqk8meHVEv
	08MostBjdEbmpUwlk/O3mxpsEujfT29lGtTNhw/uWlWuZ6E2B6zXEHXUqDavHJhHOe7YfmAaN1/ja
	3YEKXz1x5Y/2SQzkqmbibF/bBw8rTOE5JX0D47naAV+p35JlYHa6HPxQEv2h7PKj2o4tx2QSXRr9C
	e+LQJL9GO6PJBe2+w/DvDOc+sgD8MVbi9KLvuMxQ1veRuUY0nWr2Gyp92peOs3mUCDmU32C5cNoE8
	Blx8sNTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKgge-00000008ZNV-1sWB;
	Mon, 09 Dec 2024 16:32:44 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKggc-00000008ZN5-0zMy
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Dec 2024 16:32:43 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733761958;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=5tuPQMBx1XIFP1/5pcBpPF13/7vzl3ejELlsObI/1uU=;
	b=fy57MCqU0sFGc6J8WnklLdAJ+F2REpFqwZgQd+cYty64lWrXStJsAQXd1W8V5T37BYWyb8
	FwGsPHmd5Bykh3y/uZqr9fObEkpbYxBv3vmqwul0qDtekgPO0vfiwjCsb6/9jgzS9kiXzQ
	7f731eL62fEDG1nY0aPDe0DH7Z9+BN3yuIeXkDtyFFkxJFIdK3QMprjOf7xUdMeEmZ46VN
	PHgQoNv+jhLIJqra+K6qCFQbUkYvu3qFZHh04XmQphEK8SvggjxkpPjXw811QLIS2XcF1c
	pH+Hufl89XIJM04FKiJX2MxU439EXOs81rRHo7zQE+/anI5w4V05U4hMUMAxVA==
Date: Mon, 09 Dec 2024 17:32:38 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, sebastian.reichel@collabora.com,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 03/12] arm64: dts: rockchip: fix property for pwm-fan
 for Radxa ROCK 5C
In-Reply-To: <20241209125131.4101-4-naoki@radxa.com>
References: <20241209125131.4101-1-naoki@radxa.com>
 <20241209125131.4101-4-naoki@radxa.com>
Message-ID: <ae031ff8c8c5d9e5c266c73026d4dfab@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241209_083242_421583_06A444BC 
X-CRM114-Status: GOOD (  11.07  )
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

Hello Fukaumi,

On 2024-12-09 13:51, FUKAUMI Naoki wrote:
> fix pwm period to match with vendor kernel[1].

Instead of simply referring to the downstream vendor kernel, in this
specific case the reasons for adjusting the fan PWM parameters should
be explained by referring to the actual fan setup you're using, the
observed fan RPM behavior, etc.

> [1] 
> https://github.com/radxa/kernel/blob/linux-6.1-stan-rkr1/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> 
> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
> Changes in v4:
> - none
> Changes in v3:
> - none
> Changes in v2:
> - reword commit message
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 630f026d856c..85589d1a6d3b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -73,7 +73,7 @@ pwm-fan {
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;
>  		fan-supply = <&vcc_5v0>;
> -		pwms = <&pwm3 0 10000 0>;
> +		pwms = <&pwm3 0 60000 0>;
>  	};
> 
>  	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
