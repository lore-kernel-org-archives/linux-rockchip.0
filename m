Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04D4FC25B76
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Jun 2024 07:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=quqIdgBjM15j/T4ccKj1cjBuH2AGeZc5vcvow5vuPJQ=; b=aBNxfYhwPpVNnW
	GxbmoxLrQIeshLK5/4HCTTFBWxg6sjFyht0Oc/u6vyPQF2JCsy/ihdMfeecTVgV6RXJRNmOQbKQ9z
	SE3R1wiygV29nS/hxYy3A0OTL+5nsl1ryTtO5Wkyx3O6YpL4xPy3C3o5zNidDtvjFuw3Tf0jdMTa+
	aKi8ctn2BnuP8LA6aOCwHXyeJzKWbUFK8xKHfF8voLBXbX0/Ph6zKh4bIefbzUDwjOcIYXQbplENJ
	oC19uyYEfSp/2UCAYlbL48YRki87Ki9N9L+U9wTerXnrxvl2UOmWfA3+bYvY0P1aORlb1P6CzcJJh
	H+ShD4tJ7cXUpuKNHpqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEkz7-00000004zGj-2jYf;
	Wed, 05 Jun 2024 07:23:01 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sEkz4-00000004zFU-2VHB
	for linux-rockchip@lists.infradead.org;
	Wed, 05 Jun 2024 07:23:00 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-52961b77655so2043750e87.2
        for <linux-rockchip@lists.infradead.org>; Wed, 05 Jun 2024 00:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717572174; x=1718176974; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RqnZdFgvboe7tX2UKgOGW0Pa1N7zuJuJPg9c9wyxQMg=;
        b=an6+OtvgKaL1fV/BO3OdaNJBjOIoMkAGcyoDGs+OXXyhhmBDjGiwr6QU4XCUeLTJqU
         5mZMklCA3npY0zQFGvZF5VeG/hBYz0RjbTrQWKBOc1kgopMj8OfaH40ath2jm0BU7Ku5
         S83b8MGfkBw6uE5M0h8jL3bwLJhn8H2AJgljhDY4Uj82v5sC5y0+8KTnqMNZqfUXe2pT
         1a9zOgIilybhA9v9JxUEJsCx+ak7IeEXBIHl1T1HuSNpmN0hSYPXYV5FKYhOG0KbfzGx
         egHDsJWiVsUU9V/KwLFxkO3TTLvxMEg1Qm6nsp2deO2Xj/IwT0AOnWr6kMKDhahSZWJA
         BdGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717572174; x=1718176974;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RqnZdFgvboe7tX2UKgOGW0Pa1N7zuJuJPg9c9wyxQMg=;
        b=skXi4p5cU3cVMsU4P70oLNQoGDj8G/UDMILMZ2/QXtVOs+P218XBmVMNJaM6/d4lN4
         gOptgJvW/Rq2KklYeKV5g2oNAdLnA+c6/Jly05eyQn5hH6yQsFqDQ2JJl1t+XUj/36IC
         o/XpcUXyDFzUCNETwfSYs7Qeq8y2Tazk4Wzc6j9CgwwTue8tT5WfFy2Nv9ucEcLV/BXn
         3DsxBExWgyGLeCPDWR9IrplDmuaOiRLU+UK14xY00Zv84eCIOpYTgliVQtw1ugnfQM5d
         iaiUUmdGJQI4skIl44RnmO9fCI6R4dfvh7Ikvsl7e8Ao6/zshIzPeKuQBdnoVXxEa1QT
         LaWw==
X-Forwarded-Encrypted: i=1; AJvYcCWz7i6wqBRzox8TjaewaAmqC/8fC0GJrFIpSCAU3ghjn65AEZL66fGWRmvFvqwDXPk8JHAtu2umMMA6tdJXx95VwLvfFM+o50vXZ3c3Hkhv5NyE
X-Gm-Message-State: AOJu0Yxw9F3o81nfNmYWMR36W/WIKtzVaEA/CByLMyt388MuW366BapW
	sAbRjOhjNkonnIk1LnRj0WL0yHtlXql1LEueFOgCLjgqPPE5HOqW+YmgpgfOu/8=
X-Google-Smtp-Source: AGHT+IGrEUTIRlHebCjYcSxaWnRyULJcyEIEq/vcwbc8wOASvTCW7s5vwhOA3Z/T5Q0VVe7HxptVtw==
X-Received: by 2002:a05:6512:2308:b0:52b:83d5:34 with SMTP id 2adb3069b0e04-52bab2843eemr1239519e87.0.1717572173579;
        Wed, 05 Jun 2024 00:22:53 -0700 (PDT)
Received: from localhost ([102.222.70.76])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a68519892c8sm695071366b.65.2024.06.05.00.22.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 00:22:53 -0700 (PDT)
Date: Wed, 5 Jun 2024 10:22:49 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Dmitry Yashin <dmt.yashin@gmail.com>
Cc: Linus Walleij <linus.walleij@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Jianqun Xu <jay.xu@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
	devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] pinctrl: rockchip: add rk3308b SoC support
Message-ID: <b5d2d914-0c2b-4cd1-b894-f894a93a54f9@moroto.mountain>
References: <20240604141020.21725-1-dmt.yashin@gmail.com>
 <20240604141020.21725-3-dmt.yashin@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240604141020.21725-3-dmt.yashin@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240605_002258_683875_E95427CA 
X-CRM114-Status: GOOD (  13.58  )
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

On Tue, Jun 04, 2024 at 07:10:20PM +0500, Dmitry Yashin wrote:
> Add pinctrl support for rk3308b. This pin controller much the same as
> rk3308's, but with additional iomux routes and 3bit iomuxes selected
> via gpio##_sel_src_ctrl registers. Set them up in the function
> rk3308b_soc_sel_src_init to use new 3bit iomuxes over some 2bit old
> ones and update iomux_recalced and iomux_routes for the new SoC's.
> 
> Fixes: 1f3e25a06883 ("pinctrl: rockchip: fix RK3308 pinmux bits")

Why does this one have a Fixes tag?  Isn't this new hardware support?
Possibly patch 1/2 was not actually a fix but just preparation for this
patch?

regards,
dan carpenter

> Signed-off-by: Dmitry Yashin <dmt.yashin@gmail.com>
> Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
