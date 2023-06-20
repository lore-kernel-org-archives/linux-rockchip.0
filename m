Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B805EB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 06:19:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rw09KF3rdXsoO/UXg/And8HbQ2BLx2rpDr9Lh7GEB2s=; b=MI6b7pFhUYanqx
	63SejejQqkJ/3e9xGODG33P195ICbAbJu3kzpdKIYMTiRg3KkSXKDsg1rsAKjf0fy3txzewhKZpzy
	n4RmcrPVQz3fc30jdn24mjgBuLY23J2G5EbP0U/Kd6arBFp3K02N8cFeAScszj+msvHLfrBEYOJuZ
	FtOfda9YXv3Q+jqGKaPITAcrAjJ00I/ti8Y1Apuz78krR2KuFV9Rj3uz11uTGygtmkAWzYJ3zPn5q
	qnbQQSCsddysqYt0zY1LZvb6oSlfWIKQ6YkC1AOve6505IQGfM5QSg5nbE4ONJ5vjOe7EIIV1/QPu
	avLyvV58sYS6YQz2lWUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBUiA-00AGJ3-32;
	Tue, 20 Jun 2023 06:19:31 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBUi7-00AGHI-1j
	for linux-rockchip@lists.infradead.org;
	Tue, 20 Jun 2023 06:19:28 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f86fbe5e4fso2491411e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 19 Jun 2023 23:19:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687241965; x=1689833965;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oO29vTyH00u9Cnemrj5+OqL3rJnNJVkGd7KyzUdckJc=;
        b=hhdBu0W0qX/0/mlBgaMXaWbidX+xQtAYl6qYY+nmVWaza8SKXp8lBxfRt5xhYLWeKs
         PhgczPVyujwWmSC3ENjjPyOBy68r7jBItGsyQJfBSfKe1Z0p1sFMZFGhHgKMtOcOPlRY
         L1u/Ip5qIvpvReKWaCRb250l26d6M5goqG8H4r9Sk+OnFl/2OuvTszgDkCGu3VqqyLBI
         ZNEdyBYQ+amc3AxWZ9rzjXyTNWYbUQj2yzg/P3fX3AUn2tgMr40B0JdBvQ0FX1amZZim
         UgZgYdaInNdGZ4WUU/IFcmKxqEWecp5ryF3B2ms5whBegxaZQ91ilzhe5laJK9Ri9jro
         aSmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687241965; x=1689833965;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oO29vTyH00u9Cnemrj5+OqL3rJnNJVkGd7KyzUdckJc=;
        b=CQwETANQF/KvkZZ6jCKtyJa45t7za4OZjq+p9u8kgdw3LsLDDA3+YFXxJg9M+l8ek9
         i3GUbYauQPPECjqrjZ+fpiRQ9Z/Zy+2aou6I/8Z2+M3ssgssYTJnZNjrKMnQGEM3G2XY
         HnKtUj4ibkaxwjEDl6WRxA3LWdB24aPyyRfrFNz0gaIiLvdmRI+cAMU8918wo+htNDAy
         F/jGTYdObtEHLriqcTE73p7MET1WPdstlvJFlnqO6+V3IeNpEH/rT0f+VFioDnh6JhDI
         gL5eSMyTlWlUnutKzPboBr+z9S087XXxP06YFrcI2NT4ttYs8Kmb+nNJ5qfE7sW1QvHq
         v/Vw==
X-Gm-Message-State: AC+VfDylphC3JvDirvWcWtIt1TgM7rQmRcUapbxhEHRY7gcXwRriKyEl
	6F7Ckl8QZrkw+u78OwTTvAukOw==
X-Google-Smtp-Source: ACHHUZ7usY0XPsrJHRsdCyO8q/9zfJ/EGU8VDFSPYhYiP4eZgWJnkQnPQtutOJF8jpavCoGfWRglig==
X-Received: by 2002:a19:6909:0:b0:4f8:6d54:72fb with SMTP id e9-20020a196909000000b004f86d5472fbmr2856355lfc.62.1687241965041;
        Mon, 19 Jun 2023 23:19:25 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id x7-20020a5d54c7000000b0031270cf1904sm1181896wrv.59.2023.06.19.23.19.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jun 2023 23:19:24 -0700 (PDT)
Message-ID: <c020531e-c56e-7606-1846-5ca7332de96f@linaro.org>
Date: Tue, 20 Jun 2023 08:19:22 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCHv3 2/2] arm64: dts: rockchip: add dts for Firefly Station
 P2 aka rk3568-roc-pc
To: Furkan Kardame <f.kardame@manjaro.org>, robh+dt@kernel.org
Cc: krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, heiko@sntech.de,
 broonie@kernel.org, deller@gmx.de, dsterba@suse.com, arnd@arndb.de,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230619184856.23066-1-f.kardame@manjaro.org>
 <20230619184856.23066-3-f.kardame@manjaro.org>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230619184856.23066-3-f.kardame@manjaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230619_231927_573496_12B95F68 
X-CRM114-Status: UNSURE (   8.52  )
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

On 19/06/2023 20:48, Furkan Kardame wrote:
> Add dts for Firefly Station P2.
> Working IO:
> * eMMC
> * HDMI
> * LAN
> * LED
> * SD Card
> * UART
> * USB2
> * USB3
...

> +	};
> +
> +	hdmi-con {
> +		compatible = "hdmi-connector";
> +		type = "a";
> +
> +		port {
> +			hdmi_con_in: endpoint {
> +			remote-endpoint = <&hdmi_out_con>;

Missing indentation.

...

> +
> +	vcc3v3_lcd0_n: vcc3v3-lcd0-n-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_lcd0_n";
> +		regulator-boot-on;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;

How do you turn this regulator off in suspend?

> +		};
> +	};
> +
> +	vcc3v3_lcd1_n: vcc3v3-lcd1-n-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "vcc3v3_lcd1_n";
> +		regulator-boot-on;
> +
> +		regulator-state-mem {
> +			regulator-off-in-suspend;

Same question here.

> +		};
> +	};
> +};



Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
