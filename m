Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DBE08C77B6E
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Apr 2023 10:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YtljC2jCtMYMNOzt0TuZwTXJBEZ52g6q1tQ6CtiVMWY=; b=yWP/tdYqu0KtIl
	9wim4LOHdALs64IUgnJr7Ml8goXB6BKAaKVaOBbJ2ppUA42/6m/WpOwrk5SO1aXnZ3Yr0a4MscQnQ
	JZYmfm1us5iiUu35Y2oDLJa8Nhj/pERaUF+ZRFaDc94xlPzpBkHCEOxN7DWWbAZGke7m32ha9KDcK
	bEEb9LmBeosfEDey/VJGyT1O6ID+Z6juqqrlNj7ppTouZNx9gf7o9UhTeJPV94chevcQTgbbgSn7q
	2i5FgT2SbKdvvJjxd13QZ+wOhvfYHD6AQ1jkSwZ/zJs+REP+j7x1b4JJtMQOywZkU5BFCrVLqYdYq
	jREyzqC7namWPl0r3TiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGdP-0097Na-00;
	Fri, 14 Apr 2023 10:26:27 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnGdM-0097JI-34
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Apr 2023 10:26:26 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-504eb1155d3so11352080a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 14 Apr 2023 03:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681467981; x=1684059981;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8BUA25suHxulD4h8h8Ed5YSUpG0AWCiE6eu6o5CSqZQ=;
        b=r+9GrPNHUWonE+1iJu8Gj9vKbD8RASLQeG/VSb3udb6n//Vmg6VLrDb1neA11Pp+e+
         10pdWhXL/0O4OYnvs1fX041x+4LCIPgnF36cgKp5MChMJ65PXPeX38yaM7WANtztw2zO
         7WaQBf2q5KA0tZyGMqV8gc8gpZ6oCzo1WC9Sh2TyDyQjpOx3SXqVfueS9La3cvN2HEOA
         0JVFc9A+jd7QSILSvawjv7Zhx7i67a2574kW6xBywufRn4GjdNmBuzPH05ysnJ/OXkfr
         oxjjjqfz30OjQL/JyjIFucnDumiNuy1QBkXai19eiCfW63lH1lD/MClsHsISHCmsyeIr
         /9mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681467981; x=1684059981;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8BUA25suHxulD4h8h8Ed5YSUpG0AWCiE6eu6o5CSqZQ=;
        b=T6SHVN9SLROgi4ZvQ9enPvhLfporu4FT9B7aSJklYE9Vtc4qEcCCAYZDxtiOJgJsE9
         wSI85kaHH5uCvwL7VetD8QyALl6DQeVg79RbmXS0aFW4K0q+/NRqJ4+/faxHzoJyAzQ6
         mUsGXpp3LLWat0bWJqKceX1fPdvh7fLGRDQa02FaX4LggayKRQHNdhS1e0OcOarVAn7o
         j/NgwxXiwIOl6WJDsqrrIhNqmeZEXDOtzInqcSD8LIhqLQXno4XgQxNtknY2TMmw1Y1E
         uPcnu9lC05sBtW7wc3xKpjEkXkZb13e4C1xnvbq0DVUczRTd37hAdD/e64E6TEpbY/AP
         nGCw==
X-Gm-Message-State: AAQBX9drkjxjUzczrFmJHgifTt3rI4X1C1CU3TYsoKPHcrXopgFVnBTN
	I0RukYUWD/ppo0tP2htWV7P0D57LHfBgP+Qgc64=
X-Google-Smtp-Source: AKy350bmKBLAazy18u092/q4UOoH8FGLrv5xZiozb2JD87u6Jz8fplX4+HuDdSHDOgiARsXEVdaxvw==
X-Received: by 2002:a05:6402:42d6:b0:506:70a3:2aa0 with SMTP id i22-20020a05640242d600b0050670a32aa0mr5511669edc.3.1681467981125;
        Fri, 14 Apr 2023 03:26:21 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:40b9:8c57:b112:651d? ([2a02:810d:15c0:828:40b9:8c57:b112:651d])
        by smtp.gmail.com with ESMTPSA id l12-20020a056402344c00b00504803f4071sm1962444edc.44.2023.04.14.03.26.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 03:26:20 -0700 (PDT)
Message-ID: <fe746692-fed3-6635-8658-4e91d30f2aa8@linaro.org>
Date: Fri, 14 Apr 2023 12:26:17 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Use generic name for es8316 on
 rk3588-rock-5b
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Christopher Obbard <chris.obbard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Shreeya Patel <shreeya.patel@collabora.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 kernel@collabora.com
References: <20230414093411.113787-1-cristian.ciocaltea@collabora.com>
 <20230414093411.113787-3-cristian.ciocaltea@collabora.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230414093411.113787-3-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_032624_997481_6B6D41DA 
X-CRM114-Status: GOOD (  13.86  )
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

On 14/04/2023 11:34, Cristian Ciocaltea wrote:
> Use generic 'audio-codec' name for es8316 node on Rock 5B board.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> index 62750beb12aa..8cc97d146a73 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
> @@ -72,7 +72,7 @@ hym8563: rtc@51 {
>  &i2c7 {
>  	status = "okay";
>  
> -	es8316: es8316@11 {
> +	es8316: audio-codec@11 {

This is a trivial change. Fix all instances in all subarch/platform DTS.
Not board-per-board.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
