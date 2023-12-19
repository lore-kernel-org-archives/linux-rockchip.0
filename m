Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E964C41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 10:02:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRtL3+OeUHA8/CWxe1eX/nz5BX3YdQCbOhQwOZB1vS4=; b=xQ84UKW2et4ih7
	AmTpejMvocR0TriU513YZjjbEQwtpBW05DH4XwLi9LbEwdDL8pK1sDGD2kWG3RLuJYwegbJ0tszcT
	4PawKrtQ3+xgEaQmQKr55JJlG/u8PoftIb5xgIufh7vkrQs6PtssoeVHGfBo0Ep6DESiAIO2zjb5K
	LtjoYzTP2xa5uMRyyZsmWiiqEap/k0YEGgNDVsHe9ecc/Y6SUkuTVPK5x1oI+5eCr0trW8xftQsN4
	h7swSaACbqHzfVqn0XRBQTc68E1raQ6wN2YAIRdqdG+W4rCc0K4A+UWDHZm3DhSWQHfw9IefAHc5q
	nPk+BPToqUncrhQpTpMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFWvG-00DWmK-0s;
	Tue, 19 Dec 2023 10:01:58 +0000
Received: from mail-m12773.qiye.163.com ([115.236.127.73])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFWvA-00DWkn-2c;
	Tue, 19 Dec 2023 10:01:56 +0000
DKIM-Signature: a=rsa-sha256;
	b=Vg1fVehVqgufqVZ0tVxwDfwc+NOpTp13wuBuQ3k4r9nofHqsGcOY/zRQxw00lc90WgNXOWNnHkKl16DXjSfwDu+rvsQ5hLqLmffoyXtDwjtKV0rsvEIWFQdJ5mzGPgTYihEqMl9o4bYRQY72eu1364+NpmeKQlKtFg38lK1F6vU=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=wxJCuegR00+qTeucqcxGWtpk2IAIp1Qkyb7anTpwc00=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.69] (unknown [58.22.7.114])
	by mail-m11877.qiye.163.com (Hmail) with ESMTPA id EE7D6400543;
	Tue, 19 Dec 2023 18:01:23 +0800 (CST)
Message-ID: <31198bf2-54c4-4483-ac31-449e5576cff8@rock-chips.com>
Date: Tue, 19 Dec 2023 18:01:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, krzysztof.kozlowski+dt@linaro.org,
 robh+dt@kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, zhengxing@rock-chips.com,
 Andy Yan <andy.yan@rock-chips.com>, heiko@sntech.de
Subject: Re: [PATCH v2 3/3] ARM: dts: rockchip: Remove
 rockchip,default-sample-phase from rk3036.dtsi
Content-Language: en-GB
To: Andy Yan <andyshrk@163.com>
References: <20231218105523.2478315-1-andyshrk@163.com>
 <20231218105523.2478315-4-andyshrk@163.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20231218105523.2478315-4-andyshrk@163.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQkwdSFYdTxgfGhkZSRhJSB5VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5JVUpLS1VKQl
	kG
X-HM-Tid: 0a8c8185e2342eb3kusnee7d6400543
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MS46Ejo*TTw4Ny48CC9PCQMp
	DEoKFDVVSlVKTEtJQkNLS0NPQ0lNVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUhNQko3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_020153_380560_2C597CEB 
X-CRM114-Status: GOOD (  18.47  )
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


On 2023/12/18 18:55, Andy Yan wrote:
> From: Andy Yan <andy.yan@rock-chips.com>
> 
> This should be a per board property, should not be put in
> a soc core dtsi.
> 
> And when this property convert from default-sample-phase
> in linux-5.7 by commit 8a385eb57296 ("ARM: dts: rockchip: fix
> rockchip,default-sample-phase property names"), the emmc
> on rk3036 kylin board get a initialising error:
> 
> [    4.512797] Freeing unused kernel memory: 8192K
> [    4.519500] mmc_host mmc1: Bus speed (slot 0) = 37125000Hz (slot req 37500000Hz, actual 37125000HZ div = 0)
> [    4.530971] mmc1: error -84 whilst initialising MMC card
> [    4.537277] Run /init as init process
> [    4.550932] mmc_host mmc1: Bus speed (slot 0) = 300000Hz (slot req 300000Hz, actual 300000HZ div = 0)
> [    4.664717] mmc_host mmc1: Bus speed (slot 0) = 37125000Hz (slot req 37500000Hz, actual 37125000HZ div = 0)
> [    4.676156] mmc1: error -84 whilst initialising MMC card
> 
> I think the reason why the emmc on rk3036 kylin board was able
> to work before linux-5.7 was that the illegal property was not
> correctly identified by the rockchip dw_mmc driver.
> 
> Fixes: faea098e1808 ("ARM: dts: rockchip: add core rk3036 dtsi")
> Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
> ---
> 

Reviewed-by: Shawn Lin <shawn.lin@rock-chips.com>

> (no changes since v1)
> 
>   arch/arm/boot/dts/rockchip/rk3036.dtsi | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index 5344803442a1..466952bf9db4 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -287,7 +287,6 @@ emmc: mmc@1021c000 {
>   		clocks = <&cru HCLK_EMMC>, <&cru SCLK_EMMC>,
>   			 <&cru SCLK_EMMC_DRV>, <&cru SCLK_EMMC_SAMPLE>;
>   		clock-names = "biu", "ciu", "ciu-drive", "ciu-sample";
> -		rockchip,default-sample-phase = <158>;
>   		disable-wp;
>   		dmas = <&pdma 12>;
>   		dma-names = "rx-tx";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
