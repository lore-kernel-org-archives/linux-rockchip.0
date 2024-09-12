Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 47C2FEEB585
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 10:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2MOHh5ow01a2clFSFSuc1v4A/3byVB85hHlnzdY9Imw=; b=b2xHJuDt5ZBuht
	YnouUKwYD2+Zp0nK6/VdksFb7EQc3bZQVXU7TpkLXT8VOKsvLq/JrYeEj6hq52jaic7j4cjr+ZUy0
	i8uJBAfJph9U7U/Z1JLX/3rtBZpefGecAqBU5iAdfamOcGxpaJiFT0/VTac4+en8vASKdwWRjaicB
	o0GbXWQVwS/+9GA0Uc8PNsDFx54NlalcI1jkUFchfORJS3dGgbhk1X1NORHX6Cc67Fhr8E+bqZoT9
	CNWDuqZUdyAQanoXcZrJvtJQM5ylO0suIkfsuN+azmlUq2pL7TMMBsv6srnsA26ZonAofswn1WDko
	1tZDKb11vQ/UJ7AyVQvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soh2f-0000000ChYE-2AO3;
	Thu, 12 Sep 2024 10:27:13 +0000
Received: from mail-m24125.xmail.ntesmail.com ([45.195.24.125])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1soh2a-0000000ChXc-0Hj8
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Sep 2024 10:27:11 +0000
DKIM-Signature: a=rsa-sha256;
	b=jjLWYZW2/7k3ggTDYipqkgmDgFY/pTxmOTvJxzY5vtJe7j/XVvxz+px9s3HVrkxxj+zEk+m4M1iOI1e4+QYsCwb2tJ1PUHCepl63amaGPBxYFNUTkkbxvYIMblqNgP20StyOySvJIuYP6maRCmKR7UKs4jAwHGewBmDTQin8vtM=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=0GXIUc6xG/GGsPFZhO+ucHCg3q0s0E/+IDeCgVQl8YE=;
	h=date:mime-version:subject:message-id:from;
Received: from [192.168.60.65] (unknown [103.29.142.67])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 06B29900C0D;
	Thu, 12 Sep 2024 18:26:46 +0800 (CST)
Message-ID: <e534f0b2-8d30-4175-9616-105e53d25811@rock-chips.com>
Date: Thu, 12 Sep 2024 18:26:39 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] Revert "arm64: dts: rockchip: remove redundant
 cd-gpios from rk3588 sdmmc nodes"
To: FUKAUMI Naoki <naoki@radxa.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240611120645.457-1-naoki@radxa.com>
 <20240613001757.1350-1-naoki@radxa.com>
Content-Language: en-US
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <20240613001757.1350-1-naoki@radxa.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWS1ZQUlXWQ8JGhUIEh9ZQVlCTh4aVhlJTE9KQ01CGENPSFYVFAkWGhdVEwETFh
	oSFyQUDg9ZV1kYEgtZQVlKS0hVSUJVSk9JVU1MWVdZFhoPEhUdFFlBWU9LSFVKS0lPT09LVUpLS1
	VLWQY+
X-HM-Tid: 0a91e5c570ba03a3kunm06b29900c0d
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PU06Myo5PTIyNyM9Nw8TCEg6
	DSFPCTZVSlVKTElNSkhNQ0tDSUJIVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlKS0hVSUJVSk9JVU1MWVdZCAFZQU9NTkI3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_032708_682546_37753847 
X-CRM114-Status: GOOD (  15.30  )
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

Hi Naoki, Heiko,

On 2024/6/13 08:17, FUKAUMI Naoki wrote:
> This reverts commit d859ad305ed19d9a77d8c8ecd22459b73da36ba6.
>
> Inserting and removing microSD card is not detected since above commit.
> Reverting it fixes this problem.
>
> This is probably the same thing as 5 years ago on rk3399
> https://lore.kernel.org/all/0608599d485117a9d99f5fb274fbb1b55f6ba9f7.1547466003.git.robin.murphy@arm.com/

Sorry for didn't notice this patch.

The SD card hotplug can not work because the controller is getting into 
runtime low power mode,

so we need the fix in mmc driver to make the CD function work as below:

https://lkml.org/lkml/2024/9/12/323


Thanks,
- Kever
>
> So we'll go back to cd-gpios for now.
>
> this patch is tested on Radxa ROCK 5A and 5B.
>
> Fixes: d859ad305ed1 ("arm64: dts: rockchip: remove redundant cd-gpios from rk3588 sdmmc nodes")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
>
> Changes in v2:
> - reword commit message
> - remove empty line
> ---
>   arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts | 1 +
>   arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts     | 1 +
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts         | 1 +
>   arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts        | 1 +
>   4 files changed, 4 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> index 1a604429fb26..e74871491ef5 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts
> @@ -444,6 +444,7 @@ &sdhci {
>   &sdmmc {
>   	bus-width = <4>;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	max-frequency = <150000000>;
>   	no-sdio;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> index b4f22d95ac0e..e80caa36f8e4 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts
> @@ -435,6 +435,7 @@ &sdhci {
>   &sdmmc {
>   	bus-width = <4>;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	max-frequency = <150000000>;
>   	no-sdio;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 4e2bf4eaef2b..df845929b084 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -390,6 +390,7 @@ &sdmmc {
>   	bus-width = <4>;
>   	cap-mmc-highspeed;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	sd-uhs-sdr104;
>   	vmmc-supply = <&vcc_3v3_s3>;
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> index 8e2a07612d17..b070955627be 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5a.dts
> @@ -366,6 +366,7 @@ &sdmmc {
>   	bus-width = <4>;
>   	cap-mmc-highspeed;
>   	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
>   	disable-wp;
>   	max-frequency = <150000000>;
>   	no-sdio;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
