Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1C3BC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 12:14:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hnUqmBMH2P9QLqBM4Vb7+1yFrZ7o4Ao4IYn3gQ6eXU8=; b=VfVwugADsxZKde
	dr6rJpH4yW1/ZH8WE3PMPdBNIvwN2ivXX7Gr/YsYn0yIjtmAbOj9xQ4AeJVRmwQD456yTKRRe/mfh
	Zdl8Y1iSD7k9j4ZfLVB2LuCpRj/AlDr7HNpvW7/N5CWBOUi+WWqE4GfBm5rIRVCK7auLODl1v2Bvh
	cgL3wjmmm53sMoLmsDBokyi9BnonegjhZaEPb6HPU5Y/UAsL8BF4dvMKZwIgOIgrqiEwY5HH0Ew1D
	zOByJ2osusWGK3df9UhZC9uH6XTMabbZZusseLP7cfSVDG/0VdpYxmcttsoPUW/deVUBKrCrPok+Z
	6/sUqQ3FjtbOBoyvbAnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCKid-007kQH-Br; Tue, 25 Jan 2022 12:14:39 +0000
Received: from mail-ej1-x634.google.com ([2a00:1450:4864:20::634])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCKiO-007kMI-Ta; Tue, 25 Jan 2022 12:14:26 +0000
Received: by mail-ej1-x634.google.com with SMTP id d10so30369627eje.10;
 Tue, 25 Jan 2022 04:14:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=vvFgFjh/h8Rzded/DiWiu2ZGRJkVIhHilEl7/kR6X8M=;
 b=k+TGVTJJ7eqYdNfHflsvQ0/CtFdbBeyJUdmt0tPSKVTZwZpnQWB0AqQ7OowpIVboW+
 f+BeYrtvnbGdpstNuxicHa9jJOnpnLJ+6q7vTx6tBuKY79FZXNWDhYmhz6pHLnNnI9eE
 C3YTjGB4s37lbKmD8tPz/H1r/g3zy4F5HQxqpS7J7j6tCXWUElEEVWhYHKt28I2kUgTO
 jZzCGwis0NR/jBYNu8veItHwD9Kp0wtBwYWiz2oceRB0YwQiazbvnZb1YT13h3ZnMvgF
 TWeq44HJuMwpzLOFgfwpkBUca7QGUPoAsjWGe689iKFNt99XpE4PFhgSxd5dsR739K+u
 TcHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=vvFgFjh/h8Rzded/DiWiu2ZGRJkVIhHilEl7/kR6X8M=;
 b=ITFQt6UFQZ6jUF1p8vSKQ6O1xXWpuetRE2cG4CDJ9eTcP6vMbI04uEv/X5AQxvZapz
 t/kXctAB8vCUs3vaAHeCl/E8iZIHitMI/tQZ5a2fK+NUU8YkSl8olrGg1xNWClFSLLiw
 L0UU/0SMDQtBaSpRjzusAzIEJegjk1RGptNoCpqxYbfy+E5MG3wyCpkZfbILAfIHD4q7
 9Mn7F6nFSkBao99tniLlpVEkIkk0HSY+Ge4+rWv5bzD7rToz2RoXHIz8uo1hCYR+Bebk
 he63mZaXNWxUeaGpBfDVTF0a+UoJimlBiuCpy+EfkAAboIWmElRISq43K/I6WLM84WHg
 O0Qw==
X-Gm-Message-State: AOAM533f0pKTh8dUXyKSSlkzZ8MKQtQR79QNVCvs91GVTDjLUJy27Aq6
 kiHv2vctiX/hUG4stI2HKwpFQn89XEmIuA==
X-Google-Smtp-Source: ABdhPJzNj7jDwhu3m6E+S4oK27aeFpCkMtpa7L9AlQobvrCSyRqA3TwmwStawhWD+mzUWp69QrW1VA==
X-Received: by 2002:a17:906:d542:: with SMTP id
 cr2mr16059095ejc.720.1643112862686; 
 Tue, 25 Jan 2022 04:14:22 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 o11sm8173097edh.75.2022.01.25.04.14.21
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 25 Jan 2022 04:14:22 -0800 (PST)
Message-ID: <7e935740-66a3-da07-a196-0584dab310b9@gmail.com>
Date: Tue, 25 Jan 2022 13:14:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] ARM: dts: rockchip: fix MMC compatibles for rk3288
Content-Language: en-US
To: John Keeping <john@metanate.com>, Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20220125115007.3138311-1-john@metanate.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220125115007.3138311-1-john@metanate.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_041424_995973_DD7D43B5 
X-CRM114-Status: GOOD (  17.20  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi John,

MMC aliases should go in the dts board files.
Sort on reg address, based on availability and without number gab.
(For rk3288 a lot of boards to change. That's why it wasn't done
yet...Could someone pick that up?)

Johan

On 1/25/22 12:50, John Keeping wrote:
> Prior to commit 4bac670aa5cb ("mmc: dw_mmc: rockchip: use common_caps")
> the mshcN aliases were used in an unusual way by the dw_mmc driver and
> affected behaviour.  Now that this has been fixed, rename the mmc
> aliases to use the standard form.
> 
> Signed-off-by: John Keeping <john@metanate.com>
> ---
>  arch/arm/boot/dts/rk3288.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
> index aaaa61875701..50fa0a4652b5 100644
> --- a/arch/arm/boot/dts/rk3288.dtsi
> +++ b/arch/arm/boot/dts/rk3288.dtsi
> @@ -25,10 +25,10 @@ aliases {
>  		i2c3 = &i2c3;
>  		i2c4 = &i2c4;
>  		i2c5 = &i2c5;
> -		mshc0 = &emmc;
> -		mshc1 = &sdmmc;
> -		mshc2 = &sdio0;
> -		mshc3 = &sdio1;
> +		mmc0 = &emmc;
> +		mmc1 = &sdmmc;
> +		mmc2 = &sdio0;
> +		mmc3 = &sdio1;
>  		serial0 = &uart0;
>  		serial1 = &uart1;
>  		serial2 = &uart2;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
