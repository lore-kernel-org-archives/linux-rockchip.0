Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E7FECC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Feb 2022 21:13:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3E4Kk1+WS75JCPn6rMrXoQ/KpwtQJQ9p3x2OZrRaOIs=; b=mBmS5gx+uBx85Y
	DU2D6gU/oqp9UiPHHi+0WWcGYuvH8Qbb7405jzkrjMTBuxkEQmbkAvCNVgwFV85bkkfzahwtZ7MWC
	YR2Eh3iUPondooRx00m5oIG99ayOSnBAJRHlxBbSWAzi/7VtWSqQJL+ESkLG1CKmZ7hzSjsdZvtPZ
	H+FKW0cMxfEaKUQhyFmPHDQOrBXt6nV1GJw/7nmHTylv+53sawywMwL3ti+jypo0L9fcL+Y0H8va7
	d5WSXrUTT2esskPotcqqaPCdU2/xXOCqvslLGUDcel+VuQwe2RhbdoFqLtS1EClOPDopr/XENB2Nb
	LNC8PHIwQuudC2cJZ35w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nMcTa-00Bd0O-Sn; Tue, 22 Feb 2022 21:13:38 +0000
Received: from mail-oo1-f51.google.com ([209.85.161.51])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nMcTW-00Bcyt-Rr; Tue, 22 Feb 2022 21:13:36 +0000
Received: by mail-oo1-f51.google.com with SMTP id
 j7-20020a4ad6c7000000b0031c690e4123so10361736oot.11; 
 Tue, 22 Feb 2022 13:13:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=cgkndvT1T4jmwO27r780XgLtHhcjKRbYMWE4rDOy7BI=;
 b=nP6yjc1HvV9hbzQQEB9pVtS7zLwCVnN9GtzxUqPtvKe8kpweXltLTSyuMgFf7S5XUe
 j9CmJhP0oL3wzhhYLB3WxVRovbmq9ZZCXSrT2SoTvFJHyX1ekL758KiCkVC+kxcC5X7Y
 mybkDxJ1mF6bLhKvzyiVdF6zE7vLIJfvVWNlniP5B6XU1/HpeSBxTpM1X3Q0yPMke2Ia
 VAsklLn2rw7gEMxdS8RL8CuZ3dB4B4ITB9DbwBswjG1fADEPUv1Y9CQEnse8SUx1sGZY
 iWSg9jy6Fyqu+KTuzcxmE2ZyBZuBPRd80QACRIJr7X2DdRVZ2lp4Hdm6vxOqlTmh/T/C
 z/Qw==
X-Gm-Message-State: AOAM531ZJwChl3sD2oJuaoZNvgV0T7gogPBTb6LJHTUBlndycJXEnzTQ
 TgfeEjFVTNkI66/X/7MNIA==
X-Google-Smtp-Source: ABdhPJy2NX8pMjrtMgNUu4fjsnzN/bbxQgfvS1zRIpcdc0Lc8SuOVgeKX9OsMW7ynJcbMh2oqPNIZw==
X-Received: by 2002:a05:6870:e38e:b0:d5:20e6:2b63 with SMTP id
 x14-20020a056870e38e00b000d520e62b63mr1599153oad.141.1645564413901; 
 Tue, 22 Feb 2022 13:13:33 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id bj38sm6235745oib.20.2022.02.22.13.13.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Feb 2022 13:13:33 -0800 (PST)
Received: (nullmailer pid 3597239 invoked by uid 1000);
 Tue, 22 Feb 2022 21:13:31 -0000
Date: Tue, 22 Feb 2022 15:13:31 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc: Thierry Reding <thierry.reding@gmail.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, devicetree@vger.kernel.org,
 Andy Gross <agross@kernel.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Lee Jones <lee.jones@linaro.org>, Benson Leung <bleung@chromium.org>,
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, linux-arm-kernel@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, chrome-platform@lists.linux.dev,
 Guenter Roeck <groeck@chromium.org>, linux-pwm@vger.kernel.org,
 Douglas Anderson <dianders@chromium.org>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Subject: Re: [PATCH 1/4] dt-bindings: pwm: google,cros-ec: include generic
 pwm schema
Message-ID: <YhVR+66zwVrqs1QQ@robh.at.kernel.org>
References: <20220214081916.162014-1-krzysztof.kozlowski@canonical.com>
 <20220214081916.162014-2-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220214081916.162014-2-krzysztof.kozlowski@canonical.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220222_131334_923336_C2BA5C71 
X-CRM114-Status: GOOD (  11.48  )
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

On Mon, 14 Feb 2022 09:19:13 +0100, Krzysztof Kozlowski wrote:
> Include generic pwm.yaml schema, which enforces PWM node naming.  Keep
> the old name in bindings as deprecated.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> ---
>  Documentation/devicetree/bindings/mfd/google,cros-ec.yaml    | 4 ++++
>  .../devicetree/bindings/pwm/google,cros-ec-pwm.yaml          | 5 ++++-
>  2 files changed, 8 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
