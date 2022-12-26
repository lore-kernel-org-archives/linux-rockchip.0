Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 221C7C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 26 Dec 2022 09:51:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+7L6MuHG5e1PJoB7IcbwqaMEP2/rbXcLrJeE0oCJuc=; b=zn2V3PQr+GMAKu
	w0/96485GDIQ5VkXIQckOZEqnHz2+eaaXVVeDqASRTMTEqnS7zCy6fOWTJMTaMGq4SDmaTukX+iEE
	JNiwK0jv6/hLDKssQvlIk5lSEnZ+Cx2Pewq0PSPBESpwnw6orz9lW7mXkAK2zTnYxQ0Ct06lh5icp
	MrLWN5Q/4mEe0xYU/DDg+pXTUxqoY0JSvH3jzOotHDhVYssmNh8lSViDfSjr15UNqAnMVCqwJZPcM
	CgZzUFHFioIAohhJKYPxO3s63fJyYTkc/huTPMBRhMoILTeDPe7pC7xAMMjW8T2ntSYeEE26P9WWR
	6OsuMEysLKdQEQBwkGPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9k8f-002ymZ-In; Mon, 26 Dec 2022 09:51:21 +0000
Received: from mail-yb1-xb2c.google.com ([2607:f8b0:4864:20::b2c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p9k8E-002yVY-Vv
	for linux-rockchip@lists.infradead.org; Mon, 26 Dec 2022 09:51:00 +0000
Received: by mail-yb1-xb2c.google.com with SMTP id 83so10407208yba.11
        for <linux-rockchip@lists.infradead.org>; Mon, 26 Dec 2022 01:50:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MVRMGgw5dZzGQ0O6oGmpkNqTNghKBHu8OTMDeKct+WY=;
        b=z3wKFmZq4nKiUjZ8HaFH8u9iM0e6RXTdhqrNMXgLwtAt00KRkaNxgaUek5hp3jdnIi
         M5oNVjuNvrxN3x+KoKxy5g7RsTuYqoXJpaLQR6Akte4Jz5VQXORt/R3+I9PkXIIFV770
         /1TbsgwknqWA3dMNAAF6EMje0KLRIobWr72dIVYmNnpa12pmVYWVcyWFrzcfrvZ/MbTB
         iGsDCA25JeFDcdfPmTfqnQHJSc1mffTtIfB9xUSB640gWeo6QWeJGnL4umK7JTsZRUtT
         pZF7KmhzaVfg9JrKg4WDW04Yd1lqrNjWbNHbOq2Y3P3q87Do4MFWj8m7NjrX4v//Y0fw
         GX3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MVRMGgw5dZzGQ0O6oGmpkNqTNghKBHu8OTMDeKct+WY=;
        b=y1deloLdCnljnMJLG2HvDgQPFjhugxqOZBS4ACvJmFqXRhj5gJPy9Bg6PVCIzYPP3e
         +QvbDygKUwPA9vYhrTN++6+AhAvBZbFM28996mGGrqR5a6x40j1pXaPEkvFSvc/o99vW
         z8xqPmb1WqLfXFGjxBF6txwfVi8DqO0YVhQq29Ogpq3UqMG1BeXJc4td/PmLhpeGinpQ
         y+ZU3xw07uKsTMkfDzkYWB+Z2aD/rI0aTc9Byil/rvP87UEI9XwlSeI9BvIRjGhAPmrM
         nUsF/nct+0RuA/EklF2aNUODW9/E0VetjtErdB+EPyAp86ERGkL1QAzGYwvq5Db49ZCJ
         ebjA==
X-Gm-Message-State: AFqh2kp6U9rB3SsVSujcH9Ae080OIu0lcdAwaUTp5JGPpI5RDb0toGRC
	ub6crSGaSFpDTcu+HM1Qk2/U2+GKh2f2t7MA1pkBtw==
X-Google-Smtp-Source: AMrXdXvqf1hQEjhW4lczrPyf4YLQcHk253xaw8k5GNKURUZpf5nY94o373rSr1jZnnV9kbH/Dxwnjfrs5J7a0B/+Q50=
X-Received: by 2002:a25:c616:0:b0:706:d51a:bf7e with SMTP id
 k22-20020a25c616000000b00706d51abf7emr2167083ybf.416.1672048253769; Mon, 26
 Dec 2022 01:50:53 -0800 (PST)
MIME-Version: 1.0
References: <20221226063625.1913-1-anand@edgeble.ai> <20221226063625.1913-3-anand@edgeble.ai>
In-Reply-To: <20221226063625.1913-3-anand@edgeble.ai>
From: Jagan Teki <jagan@edgeble.ai>
Date: Mon, 26 Dec 2022 15:20:43 +0530
Message-ID: <CA+VMnFwq=iHBMtpu6QQKdPDoMz8zU-4WyNOJmvHaCRgXx4RVNg@mail.gmail.com>
Subject: Re: [PATCHv2 linux-next 3/4] ARM: dts: rockchip: rv1126: Add GMAC node
To: Anand Moon <anand@edgeble.ai>
Cc: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
	Richard Cochran <richardcochran@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, netdev@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221226_015055_530378_403C0698 
X-CRM114-Status: GOOD (  13.17  )
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

On Mon, 26 Dec 2022 at 12:07, Anand Moon <anand@edgeble.ai> wrote:
>
> Rockchip RV1126 has GMAC 10/100/1000M ethernet controller
> add GMAC node for RV1126 SoC.
>
> Signed-off-by: Anand Moon <anand@edgeble.ai>
> ---
> drop SoB of Jagan Teki
> ---
>  arch/arm/boot/dts/rv1126.dtsi | 63 +++++++++++++++++++++++++++++++++++
>  1 file changed, 63 insertions(+)
>
> diff --git a/arch/arm/boot/dts/rv1126.dtsi b/arch/arm/boot/dts/rv1126.dtsi
> index 1cb43147e90b..bae318c1d839 100644
> --- a/arch/arm/boot/dts/rv1126.dtsi
> +++ b/arch/arm/boot/dts/rv1126.dtsi
> @@ -90,6 +90,69 @@ xin24m: oscillator {
>                 #clock-cells = <0>;
>         };
>
> +       gmac_clkin_m0: external-gmac-clockm0 {
> +               compatible = "fixed-clock";
> +               clock-frequency = <125000000>;
> +               clock-output-names = "clk_gmac_rgmii_clkin_m0";
> +               #clock-cells = <0>;
> +       };
> +
> +       gmac_clkini_m1: external-gmac-clockm1 {
> +               compatible = "fixed-clock";
> +               clock-frequency = <125000000>;
> +               clock-output-names = "clk_gmac_rgmii_clkin_m1";
> +               #clock-cells = <0>;
> +       };

These seems not needed,

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
