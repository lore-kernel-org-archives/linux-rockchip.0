Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BB912C52D7D
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Aug 2024 02:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3dAprctlMeOmTMg8Dty5C5VbNY4ygJ6tp5DDdW8/BxI=; b=HxDoK1KOlM+Ad9
	1V7qnnTuPAg7fE5Kfv0bAxE24RMuc9j9OBYHJWNiL76ZYsJGKqMpWm00gTDljxRdCFIj77ULKxFuQ
	VmJWqlflcP0CODgy1z89AfSttoBmUBdGjx32YcXXkyRmXhmJlyApOkeRBK6qM19lcRkLc+h72aeIR
	Zb/bx4bMSSRz4ut2PXrpN3tNLK7MRgrilPTZIzROFz26DNSXzFW3FNAD/FQrHDUiLLNJ+02Vd0Nnd
	l/D1C5UkDfwNfQWn04JeNzTXC6lp42OkbKbfUIcMXVxR4jgiNnNJRJT4OkRFzPslc4MIYM4ibo2cP
	aMiCjEisSJ2ZRv5O7YhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1semtn-0000000Bbi1-3kWp;
	Fri, 16 Aug 2024 02:41:07 +0000
Received: from smtpbgsg1.qq.com ([54.254.200.92])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1semti-0000000BbbL-2Ou7
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Aug 2024 02:41:05 +0000
X-QQ-mid: bizesmtp89t1723776008tawgbe5g
X-QQ-Originating-IP: jbScS2UcZxac6RbZEF8W0Qbtl1SKBvP+W+/7u65jV98=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 16 Aug 2024 10:40:05 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 10602312911380447263
Message-ID: <BC8349733563E035+f32d703d-6329-437a-b684-4e82888cef5d@radxa.com>
Date: Fri, 16 Aug 2024 11:40:05 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: make "multi-led" controllable
 under sysfs for Radxa E25
To: heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 catalin.marinas@arm.com, will@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
References: <20240816023243.487-1-naoki@radxa.com>
 <20240816023243.487-2-naoki@radxa.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20240816023243.487-2-naoki@radxa.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_194102_989254_AD3FD40A 
X-CRM114-Status: UNSURE (   9.75  )
X-CRM114-Notice: Please train this message.
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

Hi,

sorry, commit message was not correct. I'll fix it in v2.

--
FUKAUMI Naoki
Radxa Computer (Shenzhen) Co., Ltd.

On 8/16/24 11:32, FUKAUMI Naoki wrote:
> Radxa E25 carrier board has 16x RGB PWM LEDs. This patch make it
> controllable under sysfs.
> 
> $ ls /sys/class/leds/rgb\:status
> brightness  max_brightness  multi_intensity  subsystem	uevent
> device	    multi_index     power	     trigger
> 
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>
> ---
>   arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> index 72ad74c38a2b..1eaf304d94b9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-radxa-e25.dts
> @@ -16,6 +16,7 @@ pwm-leds {
>   
>   		multi-led {
>   			color = <LED_COLOR_ID_RGB>;
> +			function = LED_FUNCTION_STATUS;
>   			max-brightness = <255>;
>   
>   			led-red {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
