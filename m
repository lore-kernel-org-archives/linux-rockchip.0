Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10D25C54EBC
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Jan 2023 12:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29nZg2i4COcwgbWgBcif/xKn0gn0Uvhjb92kqxd714M=; b=DC3qdxST06krnk
	3ZUEIEkvsppUW3v/2B9qkWOKr1UY022TadNcEhXGsW5hzEEliQayL7KzUSCUNQ0Jf5Ivqtni7O/Qe
	6nz3nb4aXfiehvstHwktUBIEqHc7gkZidsUhHhuIMc54DGLJkSPrJ9po27irh2y0j1HS/JCYsHS9T
	OnZPjNBAl/W4WjP9w8z+i9HeDAVySK+0YaIoc1B2LbN/CzmN9AE23PGAYXpIt2ohIqLdbV/+ZF7ym
	IcGIcZyQ0/61cair9TkQePHgmM7OXStcM1Pr2gwG/9rbXiJPAdWrcURtZgy4ZJHPJ2HYrzxZadezU
	TAqlRQ6WSX/RH8+B/bkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pE8gT-004zAX-Rc; Sat, 07 Jan 2023 12:52:25 +0000
Received: from mail-wr1-x436.google.com ([2a00:1450:4864:20::436])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pE8gR-004z8J-Dj
	for linux-rockchip@lists.infradead.org; Sat, 07 Jan 2023 12:52:24 +0000
Received: by mail-wr1-x436.google.com with SMTP id bn26so3612984wrb.0
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Jan 2023 04:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RtSSUpkTAAa0faMSMLcMFUOC97GMlBMYMzm7yGq40bY=;
        b=iJ4WHksj2oew1dt3rIq81RPdZCU9GWksJsdgW7NOvJSWseL3YoFqhKxqnAXybVofjD
         h/g5rROVjku4gGE51scJ8Ms9sikj8q8zsyZXPfJSzYX6SYVy13yMk2bcLOMnKnIdhLcR
         D3tM0vAXDzv4w91iwHJt5MgYAnHiYJLvHbPJkSRBv3wWGvek6mBA6BCvQ88Mv+WaVF4r
         6vbaRJaGkXk7M+GFPPZQ/H2tKralEeEv5APseAWNwYMa0BuDCxRsYHPTSI7TGnSdIEKG
         +ZVSnvfmo6wbkIMis5OWPknV9QEvh8ihPkbgPKoy7NXAERkoJuB+xcuU1v3yMrLEzPBo
         Ql0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RtSSUpkTAAa0faMSMLcMFUOC97GMlBMYMzm7yGq40bY=;
        b=RofJ2HagAQy3TGPWJRFXzJI9hjT0BhFnNsFDbxoW4Ec2rvT+eBP9n7pSNvWgw/aN8q
         5dmXuYUywSxrgP7vzWpA5yfxlZN3Ec0SfFsFXKs/1hhkP2cusYGpLblwLbZh2XgSAmW9
         wfvBnL+P4FEW/pKFtJk/ksnTtoaDU9ynghAgHhTo8pZPueoN8WGzseThLRKG1JrIVJZd
         S3UdUA4r2iHzwa8x3JqximHyZxUdyYCrGjTqxuVO3LO3zmoy2Ilk6lcxsC/rbpY1jNiW
         xr0UuOk2LsjJG0jnuIFf1Xsd8Tly7p7soU2vP/70ft18l8FQswbTcTAvEBE72rraYcgf
         1DKw==
X-Gm-Message-State: AFqh2kp+82cPcdhxdXvfVnqRhu2uhPrYj68CSfw7IN+WkdRjk1+34Hx5
	cjaQUZyEUreTgJO63hQF8wBNnQ==
X-Google-Smtp-Source: AMrXdXvhTbH70fsGHU1PGOG3wCiR5c7GutjmKKF07AQH50OdjrzYRUX3fRIvdFX1bTP9vN3sxbMBng==
X-Received: by 2002:a5d:5d8a:0:b0:274:fae4:a518 with SMTP id ci10-20020a5d5d8a000000b00274fae4a518mr35751416wrb.11.1673095941632;
        Sat, 07 Jan 2023 04:52:21 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t17-20020adff611000000b00236488f62d6sm3715025wrp.79.2023.01.07.04.52.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 Jan 2023 04:52:20 -0800 (PST)
Message-ID: <d28e1516-f98f-42f4-7a9a-f71c57fe2b64@linaro.org>
Date: Sat, 7 Jan 2023 13:52:19 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add dts for EmbedFire rk3568
 lubancat 2
Content-Language: en-US
To: Andy Yan <andyshrk@163.com>, heiko@sntech.de,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
Cc: lasstp5011@gmail.com
References: <20230107115159.2125308-1-andyshrk@163.com>
 <20230107115320.2125479-1-andyshrk@163.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230107115320.2125479-1-andyshrk@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230107_045223_494580_E07073CA 
X-CRM114-Status: UNSURE (   7.82  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 07/01/2023 12:53, Andy Yan wrote:
> Lubancat 2 is a rk3568 based SBC from EmbedFire.
> 
> Specificati

(...)

> +
> +&pinctrl {
> +	leds {
> +		user_led_pin: user-status-led-pin {
> +			rockchip,pins = <0 RK_PC7 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	usb {
> +		vcc5v0_usb20_host_en: vcc5v0-usb20-host-en {
> +			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc5v0_usb30_host_en: vcc5v0-usb30-host-en {
> +			rockchip,pins = <0 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc5v0_otg_vbus_en: vcc5v0-otg-vbus-en {
> +			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pcie {
> +		vcc3v3_m2_pcie_en: vcc3v3-m2-pcie-en {
> +			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +
> +		vcc3v3_mini_pcie_en: vcc3v3-mini-pcie-en {
> +			rockchip,pins = <3 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
> +		};
> +	};
> +
> +	pmic {
> +		pmic_int: pmic_int {

No underscores in node names.

> +			rockchip,pins =
> +				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
> +		};
> +	};
> +};

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
