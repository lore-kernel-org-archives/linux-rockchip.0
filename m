Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 987DEEB64D8
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Jun 2023 16:36:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pQMeCcJDnql4/sKtsAx4RQnDmRtV74AJHqtMOZPYaAg=; b=zweVY30YO8Zgtj
	UgVKYO3JnRvfUyP+AjY+XIyor2YE/wI2v70r7c0BfFLfA0PsDrNLpoSKuuGjoBpuGC8BaU6C1maav
	ivz5HuuE0fa778b99K+0nDChGcD6HPSMyhw72qx2iBhTDN6NeZotdQ2vfaBjsHoJ7mjZ2FWKGKalt
	vrpM5Z06npUaDKNBrdMtY0fl71UrSx/XomtpJ1mPK2d6uJikzaTqy6l2XCbjq3dz7jrvm9xWHi1NZ
	25mB3yjUfZklxT5tmqyzhTmA2Tkq0YY5eRuCmqxbhBCPIowUj5gavrmju1sX+V1RsgwJbp6vdrkXJ
	6e8qbFet+LcyeBSIRvBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qBeLQ-00Bq2E-0R;
	Tue, 20 Jun 2023 16:36:40 +0000
Received: from mail-il1-f179.google.com ([209.85.166.179])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qBeLM-00Bq1K-2j;
	Tue, 20 Jun 2023 16:36:38 +0000
Received: by mail-il1-f179.google.com with SMTP id e9e14a558f8ab-341c14e495fso24762845ab.0;
        Tue, 20 Jun 2023 09:36:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687278995; x=1689870995;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=85ycF3hecAMuGXOhwj9jJJFOE19UT7fZCAss7kLUOhg=;
        b=J+8hMqYs6oBM4i2KNmWXhDVdhIcb72UyXKLQDbryhq0DPnqEwAYGDM8yZWkuwIvn/0
         xIQm3YBm1wsHBBcG5Bu5bBYXYBm06ki8wvnRgMYLd/LZ5G2xs0Q05F1H9n9h2fwwgeFK
         +5W6XJClltK8xZos2yYx7CJ8GeSoiL8TYYqBi1q3SXF/rhTuKLmfeBDPdvJ19fFhgFm9
         TP5+zNEQzicS+UaWSbWYU0MqKokbaGU2SCDrZbNKPBdZpU1DMmONLmw2eeEzChB//Lhj
         g9+JtXdtryNX2TuhbfOLHT1SZAjQK3HuRTdaAaes1184v0/4g4vx1cfPvwbYZ+Q8mu0r
         K6Pg==
X-Gm-Message-State: AC+VfDy42SoqyITtc4wnwPZK0FcHwmfT/Zi9Li+XCMqMtIJQ8rxxtHMp
	oaIaH8Yii7p8K701RhhC9g==
X-Google-Smtp-Source: ACHHUZ4riU11u7eu+RnQQlZcN7Q/lf8OrfPR1grO+uL6MNJjLsR6F7z2sKzW0av3kxeX/tTgYurw1Q==
X-Received: by 2002:a92:c647:0:b0:342:89b4:b8c1 with SMTP id 7-20020a92c647000000b0034289b4b8c1mr5080768ill.21.1687278995655;
        Tue, 20 Jun 2023 09:36:35 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id l14-20020a92290e000000b003427601b77esm708354ilg.21.2023.06.20.09.36.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 09:36:34 -0700 (PDT)
Received: (nullmailer pid 3787225 invoked by uid 1000);
	Tue, 20 Jun 2023 16:36:32 -0000
Date: Tue, 20 Jun 2023 10:36:32 -0600
From: Rob Herring <robh@kernel.org>
To: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Tony Lindgren <tony@atomide.com>, Conor Dooley <conor+dt@kernel.org>, Pengutronix Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>, linux-omap@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>, Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>, Heiko Stuebner <heiko@sntech.de>, Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>, Shawn Guo <shawnguo@kernel.org>, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, Rob Herring <robh+dt@kernel.org>, =?iso-8859-1?Q?Beno=EEt?= Cousson <bcousson@baylibre.com>, AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH v2 1/3] dt-bindings: extcon-usb-gpio: convert to DT
 schema format
Message-ID: <168727899219.3787165.585753030890671451.robh@kernel.org>
References: <20230615145838.1526919-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230615145838.1526919-1-alexander.stein@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230620_093636_902795_4F2B2B33 
X-CRM114-Status: GOOD (  13.52  )
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


On Thu, 15 Jun 2023 16:58:36 +0200, Alexander Stein wrote:
> Convert the binding to DT schema format. Change the GPIO properties to new
> naming convention using -gpios as well.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> ---
> Changes in v2:
> * Mark extcon-usb-gpio as deprecated
> * Fix YAML format
> * Fix example node
> * Remove unneeded consumer node in example
> 
>  .../bindings/extcon/extcon-usb-gpio.txt       | 21 --------
>  .../bindings/extcon/extcon-usb-gpio.yaml      | 51 +++++++++++++++++++
>  2 files changed, 51 insertions(+), 21 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.txt
>  create mode 100644 Documentation/devicetree/bindings/extcon/extcon-usb-gpio.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
