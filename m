Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4239FC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 09:12:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/mmSgKF3mFxAf38waAvb0qAPPnwwe2Jc/ML+V4iiL4=; b=Ld4YCGxlNEk6o/
	RtojqI1AClCNqBPBk2vInai0MQ3L2xXUXX4ksKEFbKgZ5g+JJzyQtVM2fGNXjEubdrfy7r1k2KR/7
	xAXsYyAn9slNjgvDiBil6TzaCI6UrVmLLFC/MEQD8rvmZjw2sXqfVlFynfIJvGGiaXltalEYwS+Yv
	f3WM7C2l77QZPGqGXq2atBgYibZm+RILmIY0EOTJB//+GaCG4tLT3JFGoeKRGUmW85R1GyYjqczZa
	Zn0Jb2momWMzrh8VfgdovtFM/W9HeJEymIX8iUx06sB2ZEFbuj0j49XWMljcVtqWrjyGJi2dLtxWC
	mipp04igAEeBiUjVKQiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWaYn-00AYDh-3P; Tue, 22 Mar 2022 09:12:13 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWaYj-00AYCB-RP
 for linux-rockchip@lists.infradead.org; Tue, 22 Mar 2022 09:12:12 +0000
Received: by mail-wr1-x42f.google.com with SMTP id p9so23943683wra.12
 for <linux-rockchip@lists.infradead.org>; Tue, 22 Mar 2022 02:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=qjT77DYYL/GJDwodJ6Rapm1bpiNcBpPlg2Vo7gCqJB8=;
 b=YHPUJUn3zIjNoMGTdwff2Vfop45kQtaHqwdMY6Nf8YYhoP7j4H4GyXGENtvzHBaohP
 F2MgM6pQidOA1F9Uq+q+SVMZR6AGKPBRf8tBeqoqe6Mdq2WTxk7cNHZ6zlePagEwmM91
 Yo3oMJuAk+OfT3Hp6pPqHN1iV5UhwJ7kJcjVRcnRF9bGo8WXBUr1dmWcuxv0rxlQ5WJx
 PRn8cHwW9Q2h2QVnvyff5uKC7pk3mUtYBsAzefyp7x9sdbToS2G+u8m4HdvZUkEXYVxS
 5IAnOPoa+Rog0P93TZ+oXkPfUbVVnlAqf4smHVGah/4oE00rlX/6OLWizehJas3RtOyt
 KXtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=qjT77DYYL/GJDwodJ6Rapm1bpiNcBpPlg2Vo7gCqJB8=;
 b=65/QcfVYg4wLa07LaCL1UG4Wzu7YXvuCxAEXZqloefo6HSreL1zwfuC1A94HtrFuT8
 0/cSnC47F6c+Yiv55pE0QvJIpd+Wh1PDbxC0oLYkiMmYl1XbI2bSCVUkkCByk264gGbU
 QjEiQoY5UiWHo1KPURrrwOStbnbV6mRziRdG5rARTQeB7S25rIShgu41TubpBWwzVLHf
 KwRAa/wjLwIHAz5rUKY5Rp+7QDSAc8OAuXoYbZr0s8b/rxNXQ9yOTgXSTDQ7L2xRBmk5
 GULOHKqp4prYzl6L0PzZiz8ySXl5EG6aAPBXCrfBb12RG71WhbJy9a+0to2iXArG+UDe
 HXBg==
X-Gm-Message-State: AOAM531FW1RR2N3qprij+bEvMMg3CG5vQHJ6jbRNilN5Vs06Eaopbuw5
 VXg2+C39ufjFsumf4IkhArPx2A==
X-Google-Smtp-Source: ABdhPJwLrFHSs/rg59Z4qNL8r8Ak6OWe1nu8EXetVqZllyP8jhyj2fCHM/JwIgFdiBq/bbrEdWHwGA==
X-Received: by 2002:a05:6000:2ca:b0:204:1e6a:d2a9 with SMTP id
 o10-20020a05600002ca00b002041e6ad2a9mr3768869wry.182.1647940327256; 
 Tue, 22 Mar 2022 02:12:07 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 u7-20020a5d6da7000000b00203d9d1875bsm17176008wrs.73.2022.03.22.02.12.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 22 Mar 2022 02:12:06 -0700 (PDT)
Date: Tue, 22 Mar 2022 10:12:04 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: sboyd@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-crypto@vger.kernel.org, heiko@sntech.de, robh+dt@kernel.org,
 herbert@gondor.apana.org.au, linux-clk@vger.kernel.org
Subject: Re: [PATCH v3 21/26] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Message-ID: <YjmS5DE95xTuJMi7@Red>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-22-clabbe@baylibre.com>
 <1647913851.207213.941032.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1647913851.207213.941032.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220322_021209_980293_AF59743B 
X-CRM114-Status: GOOD (  16.04  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Mon, Mar 21, 2022 at 08:50:51PM -0500, Rob Herring a =E9crit :
> On Mon, 21 Mar 2022 20:07:34 +0000, Corentin Labbe wrote:
> > Convert rockchip-crypto to yaml
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../crypto/rockchip,rk3288-crypto.yaml        | 84 +++++++++++++++++++
> >  .../bindings/crypto/rockchip-crypto.txt       | 28 -------
> >  2 files changed, 84 insertions(+), 28 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,r=
k3288-crypto.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-c=
rypto.txt
> > =

> =

> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> =

> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> =

> Full log is available here: https://patchwork.ozlabs.org/patch/1607887
> =

> =

> cypto-controller@ff8a0000: 'reset-names' does not match any of the regexe=
s: 'pinctrl-[0-9]+'
> 	arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml
> 	arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml
> 	arch/arm/boot/dts/rk3288-firefly-beta.dt.yaml
> 	arch/arm/boot/dts/rk3288-firefly.dt.yaml
> 	arch/arm/boot/dts/rk3288-firefly-reload.dt.yaml
> 	arch/arm/boot/dts/rk3288-miqi.dt.yaml
> 	arch/arm/boot/dts/rk3288-phycore-rdk.dt.yaml
> 	arch/arm/boot/dts/rk3288-popmetal.dt.yaml
> 	arch/arm/boot/dts/rk3288-r89.dt.yaml
> 	arch/arm/boot/dts/rk3288-rock2-square.dt.yaml
> 	arch/arm/boot/dts/rk3288-rock-pi-n8.dt.yaml
> 	arch/arm/boot/dts/rk3288-tinker.dt.yaml
> 	arch/arm/boot/dts/rk3288-tinker-s.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-brain.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-fievel.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-jaq.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-jerry.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-mickey.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-mighty.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-minnie.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-pinky.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-speedy.dt.yaml
> 	arch/arm/boot/dts/rk3288-veyron-tiger.dt.yaml
> 	arch/arm/boot/dts/rk3288-vyasa.dt.yaml
> =


Hello

This should not happen since patch 20 remove it.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
