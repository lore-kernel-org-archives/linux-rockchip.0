Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78533C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Dec 2021 12:08:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XkKwohExP0sIvZppb3h5w85nLnTZ7Dw3fVpsMRCCLEA=; b=dKLefjMD1ghO8PFSy1XPsoUPwr
	a8VRZ224tzlk7p2EzCVpL1IJO3tuFh7TwD5B1lhF6KsPvplafMr/rCN4r2zOKlpT90/6Iu/PwvjTT
	5Rf/yFNR1P0LTsAp+CgNkkSt0ZC3UkpR3VdnPEZ5o/6DOovkqKczuhMVyCqUnS1S09iWuurL7lRqp
	+yE1ogCiEUwCKOpqwLgWrZwUfwYG6HtXmO4vXBr/DuMIgkCAkyNkNMMhTilIo6OMHaj5teZqD3+dz
	a3cs9MdYWxoEQq6Q/xGOOwI8YDoeFoRDNiHwlqtXtgFg1wHRNEPG8duA6JifbyJZ3T2cQZjhmLF1f
	+ilKNHJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n2BGy-000rx7-L4; Tue, 28 Dec 2021 12:08:08 +0000
Received: from mail-ed1-x535.google.com ([2a00:1450:4864:20::535])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n2BGv-000rw6-7C; Tue, 28 Dec 2021 12:08:07 +0000
Received: by mail-ed1-x535.google.com with SMTP id z29so72966579edl.7;
 Tue, 28 Dec 2021 04:08:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=shBrQLOvlvGM8s87Is6erSp89kAhjElOM3ByEm8H9Sw=;
 b=GatQEtLEWzlVYpRap1EdimbXE4NmVhdDJilB6yXhm4+rhoqwuJVfK1lNarv0BLo4TT
 4Tx5N9/fR8DOF8LH8YX9Tl7h3nmj4l0NM7ORHOyGC+78hIY+TVRjKokXoj3WGbLoNotB
 7NRCHoad5DrNhkgpmuk9cPQJ0bPmntiGIVdx6J9UJIZeT9u80qUu/PfcQ6NHSW/MvDvm
 FpRsIwO1XzAGm4OOghWi7oFxWUOCMLdD9Uxfzg9gim+8c5LMinOXOtFMXh1B4ZX9eHR8
 C79JszSQ/+wdKA/NLl/V0L04/BxqFXjc1ZjaBGJz9EURaDyUp1tj16RJeGPu1V+aDomt
 9b3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=shBrQLOvlvGM8s87Is6erSp89kAhjElOM3ByEm8H9Sw=;
 b=DMvGLk5drPz5IdTn4wHm+LC0ldwbQzNIlA7V8m6T1thoyzwuGBiIo1WK1r3ypx3VCr
 /OufA9Y+CttX+5nzZHSs+0wT3xLaXJRBOQUq8o5KndO4uCk6tx1Ivl325rFkJ++3jrsg
 5bZhrkco8mNwazDBCcUFmK3da2OZ9+uanL/U5sVkuFAoP+WNA+8NtTfpsHwEgphESyvU
 oxaV/BrWmjpWz7TI2zoyL9v7/SKtrZldWzru8qRkzIJDM3mrYzIyaHrYY2ajWgiF9WOA
 d2SXhn6pcNLQg6XVEbdQzAm3YPpFpG/vS+t39pCQboayyp1YN7AOfXiQeGdxCt3NLyZU
 FFzw==
X-Gm-Message-State: AOAM532kTBgg3Zm4aMBG/+T0iZuiqfh6LzylQPqG3DUeAATbtC+Rh1fy
 BGh5Kk7PFzhn2Zp6Aiv/cYI=
X-Google-Smtp-Source: ABdhPJyRsGWIlw4+PkSGRchYiWx5CIhsqycvCoWYUKkfIwWrrUJ2z/BGz72NUiT0cZFa9nwJ7d6FtA==
X-Received: by 2002:a05:6402:254e:: with SMTP id
 l14mr20520394edb.241.1640693281897; 
 Tue, 28 Dec 2021 04:08:01 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 h13sm1807814edt.61.2021.12.28.04.08.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Dec 2021 04:08:01 -0800 (PST)
Subject: Re: [RFC PATCH v6 1/4] dt-bindings: mfd: syscon: add naneng multi phy
 register compatible
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, kishon@ti.com, vkoul@kernel.org,
 p.zabel@pengutronix.de, lee.jones@linaro.org, yifeng.zhao@rock-chips.com,
 kever.yang@rock-chips.com, cl@rock-chips.com, linux-phy@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20211222213032.7678-1-jbx6244@gmail.com>
 <20211222213032.7678-2-jbx6244@gmail.com>
Message-ID: <50f49afa-6042-03f2-a8ed-cfffd317aa15@gmail.com>
Date: Tue, 28 Dec 2021 13:08:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20211222213032.7678-2-jbx6244@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211228_040805_304339_3ADBC4E3 
X-CRM114-Status: GOOD (  12.38  )
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

Hi Heiko,

The file grf.yaml is already pretty full with legacy stuff.
Now rockchip,rk3568-usb2phy-grf is added, would you like these two
compatible strings also there?
Could you give advice to Yifeng?

Kind regards,

Johan Jonker


On 12/22/21 10:30 PM, Johan Jonker wrote:
> Add Naneng multi phy register compatible.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index 5de16388a..9f0c8aa81 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -52,6 +52,8 @@ properties:
>                - rockchip,rk3288-qos
>                - rockchip,rk3368-qos
>                - rockchip,rk3399-qos
> +              - rockchip,rk3568-pipe-grf
> +              - rockchip,rk3568-pipe-phy-grf
>                - rockchip,rk3568-qos
>                - samsung,exynos3-sysreg
>                - samsung,exynos4-sysreg
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
