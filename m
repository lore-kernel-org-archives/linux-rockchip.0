Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 99B98CD11C2
	for <linux-rockchip@archiver.kernel.org>; Wed, 10 Apr 2024 06:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BQXs+bSlG/X+WFjhyxccXlbLRFxWIs/qID/hkC6E+/8=; b=3hkUS2ffEvWtCn
	KVOgbXHFzAknQnY4+eEx2msZVLpKr3nDIoYZ96pagTVqsjxND7jbKe5ZyTqzQM8rRIgBezv/On72i
	RH5xMppr/DY3hJL8GVRQOmMjz7P3/LV7iZ4PdY9OywZqs8jk9EbiM9RgvHuJItoOIWaAT8tqUoIN2
	8zeD8l8RmuIDQJxQhZ3drdmWQQpvaSScVA/VZEuvYwarTRPPLrmpefwfjEh0fw1aOeOJ9l09NhImW
	BbBkZn4FHeFLfI0qPUIm84qszvKwnOgpScrstzrkAmJuLolSlv7sTMYM9yDkzhX/Ugqmv31+J3JD+
	m0FIxQTMWXEUt+4u6KZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruRaN-00000005Qa8-3vpV;
	Wed, 10 Apr 2024 06:37:31 +0000
Received: from mail-m24123.xmail.ntesmail.com ([45.195.24.123])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1ruRaJ-00000005QXB-0qGQ;
	Wed, 10 Apr 2024 06:37:29 +0000
DKIM-Signature: a=rsa-sha256;
	b=fuzoyrPGx8fUdZlpdp3unmisLPz6WB0BLKButewC27WNIhv4xGsS26ly9usLHFO6RDvJAs5w4u9LC0OF9PclhGZiSeD1xLJ17wzSFN1O25knPyKJjm9zOqujpFTxCKKNcRsrLnAgsv0F/bjPLaztSFw8czESdeVD5J6JP7DUL88=;
	c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=2DiFiEPKTIb4dIbL4HzejQd26iq2642UkcYkMtQkGes=;
	h=date:mime-version:subject:message-id:from;
Received: from [172.16.12.69] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id CC4D44605A2;
	Wed, 10 Apr 2024 14:30:15 +0800 (CST)
Message-ID: <432000a6-1de9-4452-beb7-6954677e34c8@rock-chips.com>
Date: Wed, 10 Apr 2024 14:30:16 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, robh@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
 sfr@canb.auug.org.au, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] arm64: dts: rockchip: remove startup-delay-us from
 vcc3v3_pcie2x1l0 on rock-5b
Content-Language: en-GB
To: Jianfeng Liu <liujianfeng1994@gmail.com>
References: <20240401081302.942742-1-liujianfeng1994@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20240401081302.942742-1-liujianfeng1994@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkJOGlZOT0lNHkIeSU1KSk1VEwETFh
	oSFyQUDg9ZV1kYEgtZQVlOQ1VJSVVMVUpKT1lXWRYaDxIVHRRZQVlPS0hVSk1PSU5IVUpLS1VKQk
	tLWQY+
X-HM-Tid: 0a8ec6b3367703aekunmcc4d44605a2
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Ogg6Pgw4DjMJLx9NSzwPUTdD
	Aw0KFDpVSlVKTEpJTEhLTUpMQkxJVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQU9PTEM3Bg++
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240409_233727_698028_2E1BED16 
X-CRM114-Status: GOOD (  25.69  )
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

Hi Jianfeng,

On 2024/4/1 16:13, Jianfeng Liu wrote:
> Property startup-delay-us is copied from vendor dts and it will
> make kernel not detect pcie wifi device. If I run command:
> "echo 1 > /sys/bus/pci/rescan", pcie wifi device is detected, but
> my wifi device RTL8822CE failed to load driver. Another device
> RTL8723BE can load driver but no wifi signal is detected.
> 
> Removing this property will fix issues above.
> 
> Signed-off-by: Jianfeng Liu <liujianfeng1994@gmail.com>

startup-delay-us just make sure the power rail is stable before
any action is taken to start the link, preventing the device from
unable to work stably. So it shouldn't be the root cause I think.

Could you help try this patch to checkout if it works for you?

diff --git a/drivers/pci/controller/dwc/pcie-dw-rockchip.c 
b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
index d684214..df30127 100644
--- a/drivers/pci/controller/dwc/pcie-dw-rockchip.c
+++ b/drivers/pci/controller/dwc/pcie-dw-rockchip.c
@@ -167,7 +167,7 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
         struct rockchip_pcie *rockchip = to_rockchip_pcie(pci);

         /* Reset device */
-       gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
+       //gpiod_set_value_cansleep(rockchip->rst_gpio, 0);

         rockchip_pcie_enable_ltssm(rockchip);

@@ -180,7 +180,7 @@ static int rockchip_pcie_start_link(struct dw_pcie *pci)
          * We need more extra time as before, rather than setting just
          * 100us as we don't know how long should the device need to reset.
          */
-       msleep(100);
+       msleep(300);
         gpiod_set_value_cansleep(rockchip->rst_gpio, 1);

         return 0;
@@ -311,6 +311,8 @@ static int rockchip_pcie_probe(struct 
platform_device *pdev)
         if (ret)
                 return ret;

+       gpiod_set_value_cansleep(rockchip->rst_gpio, 0);
+
         /* DON'T MOVE ME: must be enable before PHY init */
         rockchip->vpcie3v3 = devm_regulator_get_optional(dev, "vpcie3v3");



> ---
>   arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 1 -
>   1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index d6bf2ee07..a9af654a0 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -76,7 +76,6 @@ vcc3v3_pcie2x1l0: vcc3v3-pcie2x1l0-regulator {
>   		regulator-boot-on;
>   		regulator-min-microvolt = <3300000>;
>   		regulator-max-microvolt = <3300000>;
> -		startup-delay-us = <50000>;
>   		vin-supply = <&vcc5v0_sys>;
>   	};
> 
> --
> 2.34.1
> 
> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
