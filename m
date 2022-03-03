Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B422C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Mar 2022 19:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9WDHgFVcW7saZjx48hY1bJSSSfqfUWWwiFx8hiLE/NQ=; b=K1ApJGMVGvnuTr
	vSZ8C0oYHxmq/GR99UCOo0Xg4E9zjmWIdOUQ+f6mDC0uEJUK7cUfS5+5roJNCWVy8cupxBIfwiHzA
	AHVE1jgdtwDP3H88g2wsJj3WPY/yScR++FtU+J3uMxV3k0Wktg3qNj+AFUKCMXtMpu1cN9WdG74dj
	mELBotbpM6MzGO5S4W6Mz1AChIYJooW7fAzgGoWu9+JrlI9khwYM36rPMEP1EIFlhTjm0tsj3v5P6
	23TU58r0GMRPk11izFgUncut6x95gb2ImgMqHAoFcEPEKUQ17fLj4tTH3oBee0K1IrPYQfI/h6ZPp
	cAnKAwjI8G93ziLfXUzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPrJy-007bqZ-WD; Thu, 03 Mar 2022 19:41:07 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPrJm-007bnF-D6
 for linux-rockchip@lists.infradead.org; Thu, 03 Mar 2022 19:40:56 +0000
Received: by mail-wm1-x32a.google.com with SMTP id
 bi14-20020a05600c3d8e00b00386f2897400so192324wmb.5
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 11:40:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=2iz36OqO+jJdVuW+N+ZU8T8BnAKilg+w/Ds7DOBUBqc=;
 b=ue5oc5VPyETrPzFUI5tMGWXNiS185SPWKtF65IQwQ8xjOEJBTsqlkLW11dFs9AUawE
 /DqBBuqSIaymgZxjn4q4XebOpM61LpRpAasj3CBwMmaltTCAgz8RrZDoWQVARRBYOWLM
 ZATUI/FMIHvt/Oj55HEb5KU+vio6s5llgv1ytHRWDrpdhkBny//uqi426HgraMzr8bV/
 9DrLkA6uquYAc4QYPmNe39H/9Wg1OgFxUaJ7IV9FTiGv8nEHb8C+43FVJq1s151WMbKO
 B4SpRlna1oorMDGQ39I4TkITXj/lN3y/5QwDPJkvW7jgaE9N/PbCjYVIi3crn9Fc/GTk
 LHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=2iz36OqO+jJdVuW+N+ZU8T8BnAKilg+w/Ds7DOBUBqc=;
 b=sFELrQp/pfWZpCxf1/IHzOcJYw7OVMxHwmPizeg44TcUC4Fbv0E4hoCBKWs+lsmj2p
 uCIIM88M8fIJzViirEC1KvBigxJwGz+eZqHAj00DM52rrO/+PBEOyXrOxkcoBmJsgVrI
 ijHqVwMGkBG4KQxIEV8ftLW4eY2tIRwbFq3Dn36lckF3z9LHOKHQqrHWuLCZDJrsAMLX
 aOEoqdAaZhEQEbe8q/ZTaorsKWUguRMg37DjO6DyiVOWnOOouGL0Y5Qj7WwR8fObF7Nx
 JZ/Ou7cDUP3UG3Ooq0Jd62G72QFgb35rwPpEBS1g18Bt6jP+b6Tb5QjpcJmqVz7Tzeqh
 uodg==
X-Gm-Message-State: AOAM533Ig7ZYSUQ4ApSeVmpbXFg5EeTh5lS5Jfif+6qHRuO6VepK/7IG
 hqGPN/4CFYuhUXF27kOC5zNtXAfr6Oc8tQ==
X-Google-Smtp-Source: ABdhPJxeRW34laxVBvgaVBv3M2eH0QaO9wO8gWc12fv7n8JCsG+wcXFQzJGW9RUr1sYLQWexnzqMCw==
X-Received: by 2002:a7b:c382:0:b0:388:2e76:49ed with SMTP id
 s2-20020a7bc382000000b003882e7649edmr3351768wmj.195.1646336452447; 
 Thu, 03 Mar 2022 11:40:52 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 e15-20020a5d6d0f000000b001ef7dca67fasm3255157wrq.114.2022.03.03.11.40.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 11:40:51 -0800 (PST)
Date: Thu, 3 Mar 2022 20:40:49 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: Rob Herring <robh@kernel.org>
Cc: devicetree@vger.kernel.org, heiko@sntech.de,
 linux-crypto@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 john@metanate.com, robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 17/18] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Message-ID: <YiEZwetOpRhZ4iCa@Red>
References: <20220302211113.4003816-1-clabbe@baylibre.com>
 <20220302211113.4003816-18-clabbe@baylibre.com>
 <1646315078.991896.1495435.nullmailer@robh.at.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1646315078.991896.1495435.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_114054_514977_74D03AFB 
X-CRM114-Status: GOOD (  14.50  )
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

Le Thu, Mar 03, 2022 at 07:44:38AM -0600, Rob Herring a =E9crit :
> On Wed, 02 Mar 2022 21:11:12 +0000, Corentin Labbe wrote:
> > convert rockchip-crypto to yaml
> > =

> > Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> > ---
> >  .../crypto/rockchip,rk3288-crypto.yaml        | 64 +++++++++++++++++++
> >  .../bindings/crypto/rockchip-crypto.txt       | 28 --------
> >  2 files changed, 64 insertions(+), 28 deletions(-)
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

> Full log is available here: https://patchwork.ozlabs.org/patch/1600075
> =

> =

> cypto-controller@ff8a0000: clock-names: ['aclk', 'hclk', 'sclk', 'apb_pcl=
k'] is too long
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

> cypto-controller@ff8a0000: clocks: [[7, 199], [7, 461], [7, 125], [7, 193=
]] is too long
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


The patch fixing thoses warning is in the serie.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
