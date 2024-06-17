Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A18D2C27C6E
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Jun 2024 09:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrbAkGauabZH5VZKMKM0DSCF4DuZaeleWgCQAdGRSMM=; b=qY+mCAzCqBlKbC
	XOmzrgwzQTvtjjmBu/teNF/AoZi9e8DNLT1G0q+K+ZDf5oizpoz5DNi+3LT49rkux3NMy7e45/cHD
	+vk5T2WgLGXqcqYu5WpAFypYoyETvDL8z8bkspoOXmmgo6lovTORsOfHi78TxviagK8nz6GaeVC9b
	bI90+PhuLX55fPjzw6wERRPq2MZlEcV5xpshS8+okEoE1kLopXgJitPz202O+lJLvpbT1Ih1fYxuj
	48kv4PGit00XpULFB/v3nskPZSjZqEAXl9y5G9JLyHk8fPfOUPIJIjayiQHrnpXrgBGGw+2YIWHmD
	tCzD8H89Eo//PQE/EuxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ8WY-0000000A0im-2igT;
	Mon, 17 Jun 2024 09:19:38 +0000
Received: from forward501c.mail.yandex.net ([178.154.239.209])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJ8WS-0000000A0gV-3Kmf;
	Mon, 17 Jun 2024 09:19:35 +0000
Received: from mail-nwsmtp-smtp-production-main-19.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-19.sas.yp-c.yandex.net [IPv6:2a02:6b8:c24:3b2:0:640:ff71:0])
	by forward501c.mail.yandex.net (Yandex) with ESMTPS id ACBA960AA9;
	Mon, 17 Jun 2024 12:19:23 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-19.sas.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id GJDaJu1mBmI0-4F0L6Q5X;
	Mon, 17 Jun 2024 12:19:22 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=letovo.ru; s=mail;
	t=1718615963; bh=uaH0D6a92QUBHirpXx+Wuv+i1apwf/4pf2QkL5CvFUQ=;
	h=From:In-Reply-To:Cc:Date:References:To:Subject:Message-ID;
	b=PMyDpY93RUPkOuY5ieVtbzSon5cChY5q0hcC510yTVzgfRAqbFVRljl7iLks59SC8
	 tbKP76eqQ1yH2OYRCDILNYCSD/y7oiz8xxvTFEIap4xcYFiBC78PVFoZhVB823Hbap
	 PpZgA3iqxanj3H6xhf6G6UPslT4OgyevxfAwZoJw=
Authentication-Results: mail-nwsmtp-smtp-production-main-19.sas.yp-c.yandex.net; dkim=pass header.i=@letovo.ru
Message-ID: <f147be11-fc35-44c2-88e8-7421fee47ace@letovo.ru>
Date: Mon, 17 Jun 2024 13:19:17 +0400
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/5] arm64: dts: rockchip: Add bluetooth rfkill to
 Khadas Edge2
Content-Language: en-GB
To: Jacobe Zang <jacobe.zang@wesion.com>, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de
Cc: nick@khadas.com, efectn@protonmail.com, jagan@edgeble.ai,
 dsimic@manjaro.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20240617071112.3133101-1-jacobe.zang@wesion.com>
 <20240617071112.3133101-3-jacobe.zang@wesion.com>
From: Alexey Charkov <alexey.charkov@letovo.ru>
In-Reply-To: <20240617071112.3133101-3-jacobe.zang@wesion.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_021933_449845_57E54765 
X-CRM114-Status: GOOD (  14.56  )
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


On 17/06/2024 10:11, Jacobe Zang wrote:
> Add bluetooth node which managed by rfkill, bluetooth and
> wlan controller on Khadas Edge2 was BCM43438. In uart9 add
> RTS node in pinctrl.

You refer to wlan in the commit message, but there is nothing wlan 
related in the patch itself. Update the commit message perhaps?

> Signed-off-by: Jacobe Zang <jacobe.zang@wesion.com>
> ---
>   .../boot/dts/rockchip/rk3588s-khadas-edge2.dts  | 17 ++++++++++++++++-
>   1 file changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> index 8c0bc675690dd..a82f10312eacd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-khadas-edge2.dts
> @@ -77,6 +77,14 @@ blue_led: led-2 {
>   		};
>   	};
>   
> +	bluetooth-rfkill {
> +		compatible = "rfkill-gpio";
> +		label = "rfkill-bluetooth";
> +		radio-type = "bluetooth";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_reset_pin>;

Does it actually work this way? I thought you'd need to also reference 
the respective GPIO to be able to trigger its state, not just switch the 
pinctrl configuration to GPIO.


I'm also wondering if bt_reset_pin is the right one to use here. On my 
Rock 5B I had to trigger bt_wake_pin to get Bluetooth up and running.


Best regards,

Alexey


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
