Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30415C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=28vHeIZt/wwPeaw/dGwT5+/DrNLXmGen46VSUzsUl+c=; b=YvYYs5nAsdRxXU
	28WgK1uw0JuAtlHGCquHgVi6kO6MDwOmOLyenh2PeYlmZ/P1l+ZWa+qYT4RDbESXjQjulz9UMgCsd
	20yuh8YWoWAmEI6tU1u6xFzEMQ2yZezq16zykfsPfkIEFpDiwZMG95zNhGBIB8OeOragguaOafYaX
	QceR+8gwTH+JuBvUN4mtV8yv3I26I4DMGBSNBysgexIFqWvcfQxkcEEtJqCsp835L6VSRKp0DAbHW
	VDy0VSU11qaoCF+J3G/c4f+++JGoiMLs2O67NqfJqeQKQ0vUdezYMolNVEiSPtA4awdXsJJJdwTHM
	DcbfSKXo4iEHeJiOO3NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPWFG-004BMX-Da; Wed, 02 Mar 2022 21:10:50 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPWF4-004BI7-Tm
 for linux-rockchip@lists.infradead.org; Wed, 02 Mar 2022 21:10:40 +0000
Received: by mail-wm1-x32a.google.com with SMTP id p4so1971350wmg.1
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Mar 2022 13:10:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=dQsFhF1/hV1naVDlbcCm3YVz6Er9ziLGvWW482VtK3Q=;
 b=K/eASSZiHGsNk3WKGGcy7BgI65UgOtLPWPoWEFkbEMo59l5HNvPWcYR35FHdrlShr4
 5xFuug7BnHoGw67glt0a72xAbnihBvVm6v+CuFacgR2DF6phuBwCBp8u2pN830W67Jhw
 3Wpt24zx6BQWyRtJWnXmuKtir+/oesk7s9JaRJkv0KH4bkO8kf2AexzLLYUKRHrZUlNE
 6l6MffU3UWBbLsCVN3VLYsUSHIJoUe/FAJ4k9riNqikL1KcZw4EXoSHKM54vc/0sZQ7B
 Phh2Aks98ecZihS5NKjdgM+5BtRC0PggapwU7Y91IhVOOp0euvhRplyo8KdN5EFph8+d
 kHHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=dQsFhF1/hV1naVDlbcCm3YVz6Er9ziLGvWW482VtK3Q=;
 b=Pp5I+zXUVIjJgwEzIC0ZOcm1iMS2SvKD9AVW2P4UWcj3i1Os9chFwagHw1occFEjFZ
 bND+pg1zMu0+Am6eKdD2rY/UVC/DG+uKacR68kaY9L6uzSFX2RVrPsuXZTZbS6FX3lq4
 9ZQKg2vzZwexT+h/+0xsNfrp1k36lITYr4MXhyevXZLBnE/aa75L47BUpzPfCWSIkU52
 eH4h/vr/K5e5Mv1Kjg2UgbX58Bikulan4lAOtGX9Vv/m5UTTvOfS7NhBQq6BIZTxQpBt
 3pOiyl0UbsM6l5axgPm/pCIcQZc+wZurZmCZWMO6xgnE61SlR99NSjJhDHQUyzxGcNAc
 hOCw==
X-Gm-Message-State: AOAM531D/tI6H66tN6Z6QFmTEtxm5N0dqMdthFqDgIHpSfLI9INRCfOB
 sltsp35eYquY+9dWT7AJDzpEIRyUsFJC2A==
X-Google-Smtp-Source: ABdhPJz3l7hSdXw5FPBP4h5QrTtNeUrO/cpc7nHx9qcYgH+e/DxuEe7f9waYf+ZJ40PnOn5vzrIFQA==
X-Received: by 2002:a05:600c:5118:b0:381:71f6:bb93 with SMTP id
 o24-20020a05600c511800b0038171f6bb93mr1342536wms.169.1646255437350; 
 Wed, 02 Mar 2022 13:10:37 -0800 (PST)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
 by smtp.googlemail.com with ESMTPSA id
 b13-20020a05600c4e0d00b003816cb4892csm12624945wmq.0.2022.03.02.13.10.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 02 Mar 2022 13:10:36 -0800 (PST)
Date: Wed, 2 Mar 2022 22:10:35 +0100
From: LABBE Corentin <clabbe@baylibre.com>
To: John Keeping <john@metanate.com>
Cc: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski@canonical.com, robh+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 00/16] crypto: rockchip: permit to pass self-tests
Message-ID: <Yh/dS1LBmUlM2zPD@Red>
References: <20220228194037.1600509-1-clabbe@baylibre.com>
 <Yh4Y99KCi+1lbrve@donbot>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Yh4Y99KCi+1lbrve@donbot>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_131038_971333_2A2BCF44 
X-CRM114-Status: GOOD (  16.55  )
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

Le Tue, Mar 01, 2022 at 01:00:39PM +0000, John Keeping a =E9crit :
> On Mon, Feb 28, 2022 at 07:40:21PM +0000, Corentin Labbe wrote:
> > The rockchip crypto driver is broken and do not pass self-tests.
> > This serie's goal is to permit to become usable and pass self-tests.
> > =

> > This whole serie is tested on a rk3328-rock64 with selftests (with
> > CONFIG_CRYPTO_MANAGER_EXTRA_TESTS=3Dy)
> =

> I previously noticed this breakage on rk3288 but never got time to
> investigate (disabling the driver was quicker).
> =

> This series fixes everything on rk3288 as well, thanks!
> =

> I hit the same warnings as the kernel test robot as well as a missing
> new kconfig dependency (see separate reply to patch 10), but this is
> =

> Tested-by: John Keeping <john@metanate.com>
> =


Thanks for the test, but since I have added some code in v2, could you re-t=
est it ?

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
