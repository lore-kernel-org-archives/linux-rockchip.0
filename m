Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37DABC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Mar 2022 02:56:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tFdrSWagAZ2ipDP3ZZiJaRWLWbXWR8COzrFYaeVo3aA=; b=JoUveCgBxoEOIK
	IYrUcxfVd3Ixi+3QAAVhamA78K1V6pC28q3mmRmL+wVlWJdGVnLEUgvHfNhnOLuxxZZXGbm1wgx+E
	bv5raHDlO2qZS3PCBrigcbcSnrPuFBWKIsikcQAnkz8BJcIF5rmBDJPtdTEiTg27YoJNUanDAvQAP
	ode392aMmwnPmUsM21mudnBrNRdvuyI3kfH0bRpvwgtmEFE64mh4kk3M8ON6u2Zd5w3Mtvd/Hpu36
	nbf+9NCclZ/akr/q8XQqxbmEcILO6lBzh0KMxbUqskYOy4hYTE72AknfqH/A8kQTcB3CT9133LbCJ
	DueYg6vKQonmwM9zPY5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPy7c-008OQn-Oh; Fri, 04 Mar 2022 02:56:48 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPy7a-008OQ0-8z
 for linux-rockchip@lists.infradead.org; Fri, 04 Mar 2022 02:56:47 +0000
Received: by mail-oi1-f180.google.com with SMTP id x193so6698566oix.0
 for <linux-rockchip@lists.infradead.org>; Thu, 03 Mar 2022 18:56:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=0TA1Wjex6JCqhMgNCVoUHGlCg7LIP94z6BQYjbk/eQs=;
 b=Oontgdtha9CqgKVyZg/w+Cllrs62aSnc0ofdBEfX9MJwe47rNxVkS5Xf6ELckvnv0o
 l+ec2bJjljj9bPOLR0kvbc9AwP/MGGGFENYJNYuXVSri4ahwH7nnGS3rYrmnvjpxu3Rj
 j+Eblt68YKU6baJ5eAOtZL0yM8nsgDk/PUkPchasUdkGcVTptTDDVYa8i0JqYrwRwGm8
 8AIvWuhfcqEEds0zzveBrc5J70c/FIqy1gee8/nV8o5IIzjYwcQfhk1+kkyl0F12OeHf
 0PynwXxL2qNf6fwV5lbQx1M7i5uPEcsk1HmC9e3JJ/I+ws+R/m/AiG+FpVPVyS3X1uxG
 AHoA==
X-Gm-Message-State: AOAM531Vafqp+0LgAkZBEnkkwXGvnrJ3OuXee5310eGzIRPr0KRqXiXu
 PpSXVMhQoTpwdEBtvsu2nw==
X-Google-Smtp-Source: ABdhPJxdjYh6WofGXsJdoKgehtLeOMME9WZOZ4bbWO60hk1ETWWc2RuVgeopCvRXthygMQ9vtdlXlQ==
X-Received: by 2002:a05:6808:1b24:b0:2d4:c828:be31 with SMTP id
 bx36-20020a0568081b2400b002d4c828be31mr7676220oib.80.1646362605257; 
 Thu, 03 Mar 2022 18:56:45 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213]) by smtp.gmail.com with ESMTPSA id
 n6-20020a056870970600b000d8a7483548sm2052052oaq.43.2022.03.03.18.56.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 03 Mar 2022 18:56:44 -0800 (PST)
Received: (nullmailer pid 2901687 invoked by uid 1000);
 Fri, 04 Mar 2022 02:56:43 -0000
Date: Thu, 3 Mar 2022 20:56:43 -0600
From: Rob Herring <robh@kernel.org>
To: Chris Morgan <macroalpha82@gmail.com>
Cc: knaerzche@gmail.com, strit@manjaro.org, mbrugger@suse.com,
 zyw@rock-chips.com, zhangqing@rock-chips.com, arnaud.ferraris@collabora.com,
 devicetree@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org, lee.jones@linaro.org,
 heiko@sntech.de
Subject: Re: [PATCH 4/4 v5] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <YiF/6zvlK6xkMZhd@robh.at.kernel.org>
References: <20220303203958.4904-1-macroalpha82@gmail.com>
 <20220303203958.4904-5-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220303203958.4904-5-macroalpha82@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220303_185646_337501_7447F535 
X-CRM114-Status: GOOD (  12.43  )
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

On Thu, 03 Mar 2022 14:39:58 -0600, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Convert the rk808 bindings into yaml format. clock-output-names varies
> in maxItems depending on whether or not the clock-cells is 0 or 1. For
> the rk805, rk809, and rk817. This preserves behavior with the existing
> driver handling setting the clock for these specific PMICs. When this
> driver is corrected and the devicetrees updated this logic can be
> removed (since the rk805, rk808, and rk817 only have one actual clock).
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 465 ------------------
>  .../bindings/mfd/rockchip,rk805.yaml          | 219 +++++++++
>  .../bindings/mfd/rockchip,rk808.yaml          | 257 ++++++++++
>  .../bindings/mfd/rockchip,rk809.yaml          | 284 +++++++++++
>  .../bindings/mfd/rockchip,rk817.yaml          | 330 +++++++++++++
>  .../bindings/mfd/rockchip,rk818.yaml          | 282 +++++++++++
>  6 files changed, 1372 insertions(+), 465 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
