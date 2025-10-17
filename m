Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7CAE2CCD1A2
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Oct 2025 10:26:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EylNPCqXhCHNI2+MkrxmIpYgR/MUH7BDM/anHE0p/sY=; b=wFW+kJEBokrEKp
	2zUGsD/kR8FJrFWCkQPdRbzwWmwmylNgRMhjiWOVXc447XaOMpF0l+ajOh8bP6xaZYPxZYBgy0Eh1
	Z0CihIYMamY5SPdpDq1ZLilboRBaH/ILEOo3lSoxROOcqmxGaR+7Ek4P1GRWejqXjFG3FCDrHPGtT
	uxi2kn3b78X7kW2MIaUlzaIW1t31w97NqzAqBsGsIibvLPvRT08qENG02LpqIVhRidHwQKwG5kgY9
	V6+47LevCsvUZL/Tjq4SCy1vmszEQiCtlEUdG7x7l+P24x0iSgdCqPQaDYaE2tEUr2ipTt34P9bbB
	Qb+Wpd2lgm8YJS2Op5Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9hfY-00000007Wwh-2ta7;
	Fri, 17 Oct 2025 10:26:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9hfW-00000007Ww9-48HS;
	Fri, 17 Oct 2025 10:26:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Subject:
	Message-ID:MIME-Version:To:Cc:Date:References:Content-Type:In-Reply-To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=WBX1XXPozKbB39+0x+/YaeCYQ4Nq3QF5+0oeXCbgTdE=; b=JM8DAtnddHKEBxSv+lbNIezQ3+
	Pc11nXtyGR40sH0Y04yRga+UbiENOZfan2Ulqh4HXlj8Ix4Q7CGQY4Vy6shrSWyrL1V9QcJUDiePs
	3ZiuL0TV9RkbaJL9g0KO22ucD/YXmRhINsqHPOCpRRj7F1eSXMKs9cvGZgJtm9nc0FCvg70TADc/C
	QegNHczKsDR7jsq7qP9YfhU/TH5GLkYTj33oBC7KbMk7k/1aVibAeBV2LvZv+8NBHqplgz32VFFyi
	J2pJwQ0WBZouiqt4LPPIYCccNbjKExiFy6txpE/CFm1n4DqPcx0XhlU0iZXeDhIscY7emPoHNS6YB
	yf/WvIlA==;
Received: from mail1.manjaro.org ([142.132.176.110])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v9heo-00000007TCT-3h5F;
	Fri, 17 Oct 2025 10:26:37 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id C31BB40AB5;
	Fri, 17 Oct 2025 12:25:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1760696710; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=WBX1XXPozKbB39+0x+/YaeCYQ4Nq3QF5+0oeXCbgTdE=;
	b=kfZagfkTEDuqNuedgWnadskCBrPVOaZ7tFLUl6BKfIDdggV7sfWW5Uw96w2Pk3j18SVw0u
	9CE7L+jqWc44830qtyPcJ3i0hCCUitBa1bWs3zY8oP0ZYs/TS6Z4kY4pI281t8u4QR/WYO
	BORe+kFr6OrFc8GZmyZO4ZfvnMsI7F9EZseLP4J7ol+eO9Wa5Pj3Pa8K0Ysg1yp9WgJ51v
	kAA9e2gaKKketA/KAt1NvEA59iEyKIr70mHhhoKeEtI9uBEiFwiNsX5lYVWVUIIE3AwL9X
	BwE+IXMlKiiWGpraekOKOc3pW77DREOtNDqjLQvsKykELoekEho+g9pZ8zZyUQ==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20251017073954.130710-1-cnsztl@gmail.com>
References: <20251017073954.130710-1-cnsztl@gmail.com>
Date: Fri, 17 Oct 2025 12:25:07 +0200
Cc: "Rob Herring" <robh@kernel.org>, "Krzysztof Kozlowski" <krzk+dt@kernel.org>, "Conor Dooley" <conor+dt@kernel.org>, "Heiko Stuebner" <heiko@sntech.de>, "Grzegorz Sterniczuk" <grzegorz@sternicz.uk>, "Jonas Karlman" <jonas@kwiboo.se>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
To: "Tianling Shen" <cnsztl@gmail.com>
MIME-Version: 1.0
Message-ID: <7f0b1747-87eb-0b0b-6fb0-304811a4be21@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= fix eMMC corruption on NanoPC-T6 with A3A444 chips
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251017_112633_971055_B3DE041A 
X-CRM114-Status: GOOD (  12.35  )
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

Hello Tianling,

On Friday, October 17, 2025 09:39 CEST, Tianling Shen <cnsztl@gmail.com> wrote:
> From: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
> 
> Some NanoPC-T6 boards with A3A444 eMMC chips experience I/O errors and
> corruption when using HS400 mode. Downgrade to HS200 mode to ensure
> stable operation.

Could you, please, provide more details about the troublesome eMMC
chip that gets identified as A3A444, i.e. what's the actual brand
and model?  Maybe you could send a picture of it?  It might also
help if you'd send the contents of "/sys/class/block/mmcblkX/device
/manfid" from your board (where "X" should equal two).

I'm asking for that because I'd like to research it a bit further,
if possible, because some other eMMC chips that are also found on
the NanoPc-T6 seem to work fine in HS400 mode. [1]  It may be that
the A3A444 chip has some issues with the HS400 mode on its own,
i.e. the observed issues may not be caused by the board.

[1] https://github.com/openwrt/openwrt/issues/18844

> Signed-off-by: Grzegorz Sterniczuk <grzegorz@sternicz.uk>
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> index fafeabe9adf9..5f63f38f7326 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dtsi
> @@ -717,8 +717,7 @@ &sdhci {
>  	no-sd;
>  	non-removable;
>  	max-frequency = <200000000>;
> -	mmc-hs400-1_8v;
> -	mmc-hs400-enhanced-strobe;
> +	mmc-hs200-1_8v;
>  	status = "okay";
>  };


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
