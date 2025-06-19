Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AAD3C7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:22:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qA4NnrmY/CqpuYkW2zjT3xWb2H7tZc7OzMfEgYppZg=; b=D6L9ky3RNDeXoB
	CQNaobOq7bL2GxGrGevI5/QIC+L2q6opouloPtyfNqF3OhAqnUCGx14qqudD5irVzkhdHxnLFEeXt
	8pc1nUa7BO490BKNBu4hQrMII0dDwCpSF55/HkzaHY4Oza5YwgNuw6+7SMaDO7EhDXNuQ6NSXqq6U
	rN0yTT8lgMzAHw50NmbdCq2CofMBOA+DhLQ8S0fzmfbZ8szl9QJlYHiSLXgIBrHVX0YdNddyddPoD
	skQhAWShhueEaFJOMbZpAh9qkwwkEC4Q/1hH37OoIRvlNYpxopXQTOwG9b/ibM6sCefLQdrm6/oRk
	4SyrjiAmmImzAoRmPDNw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSBTZ-0000000Cbac-1I4F;
	Thu, 19 Jun 2025 09:22:29 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAkQ-0000000CRrd-2TLt
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:35:51 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-553dceb345eso463424e87.1
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:35:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322149; x=1750926949; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KUz46dv/HPNmmRvM6Il6GhBzQK5zF9Q9c+15wuOarxk=;
        b=z1/nCRRUPNjCeodQi81zt50zoiN6k4ldjrdYaYh+MLRJI0xFSxPAkGKRnQvWedJIEH
         ggTgtItvheMWbNf4+E6lwrX257psbqzEIyyfgVbxl9xPo7ZajhYBbTWYFKhf3wizKEuj
         TRKpLqBp4pPkxLQXd6FrElsj1mUGnTAk3i7mRPuQmldxEbuXew8HovDzS4ppQcHnI5EM
         aCJa4JKHXAYusHB+xJ9NMzhf9QP/0sQbf6ffqEjkyeEq2UmzI/7jBr+m4oXfXROdF/S0
         XmFcgzWbNR18dvjn4aeko609C2d5Gb5VStK5TDKeWegd93kdZ1xsraLk3mOtoYzZ12uD
         YdCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322149; x=1750926949;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=KUz46dv/HPNmmRvM6Il6GhBzQK5zF9Q9c+15wuOarxk=;
        b=Tt6Vz//wo+e/XUxAmWB6KPcv1d1VXhC+M/48Nkhqe9Xy+09lAoucS1leT6dudHvI1b
         /ylwszRsIeuMMPaFSlPvWeo7Y9216/Ux3r6WO8uHlFw+L5EZeE6xbglKd/zRre8E1FW7
         VXOUNEO/1UobJE+woSsQQbB7UTmKFBrkgUJv2hL+gihgZPcOwB0SA/WYVvUjRgxMtJz9
         qp+71NU/i+n/k4cwE5nl5pnTxK2pDI/FDpFA6QJbroEM8TlbGuzvFx6MB2bmzwNoOIhE
         uSwmatmkBbE/bcSiepxd9SQ10dLWD68KY0J8JgkH1QHiAcaghNOM4ckAcZLzySgGJWEm
         u29Q==
X-Forwarded-Encrypted: i=1; AJvYcCUdbCE5BdIT/1FawjvhWH8odTp6fnrDFROb3EL7cEnwood++PBw7FroJz6LpUm4VR5i1HTOeR3LTi4uT25WHA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxO1bScDVjYao0y4v0zi+DFhgnx7rMux3RxRuAeU//IIY00G/oI
	taKD3kvdsdhuj0Od+ffO8O46Tcz9egKW4N9wgxlgpvslzrYDFE2oEkyVM3CwBFT1IypfAFhfbB/
	tVdwfAoK8/ah+pkudnvKaF+83EJYlEFpjxEJ2eZMvYA==
X-Gm-Gg: ASbGncuEM+xLSUNCx6Yn8tQb82AYnpqBAlRbNXeiBCg6iYa1VyFnCEJ3buOdEj8qeRO
	Ck2Icly/6vaQelCydB0Exj2Q8tA714AO85v2n9uX1xL2XkLoPvV5bEN6i+bxTmieawjSPHaqmET
	wTpaUD8vNyFbJa6UAKmpwoQykjBJGY2v9R146VwrvDRmEka2dSYa0Ogc63U64/im5kjJJrr0hqp
	GE=
X-Google-Smtp-Source: AGHT+IH8gdDhvgqHv68xYgng8lKIS2cL5/HDET6GaBoi/sUwyPhdyhtejDnh77c/sFHn8pTtyC9K0nsXpo0/Zf7DZT0=
X-Received: by 2002:a05:6512:3e24:b0:553:291f:92d with SMTP id
 2adb3069b0e04-553b6f74d65mr6198225e87.57.1750322148760; Thu, 19 Jun 2025
 01:35:48 -0700 (PDT)
MIME-Version: 1.0
References: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org> <20250619-gpiochip-set-rv-gpio-v2-4-74abf689fbd8@linaro.org>
In-Reply-To: <20250619-gpiochip-set-rv-gpio-v2-4-74abf689fbd8@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:35:37 +0200
X-Gm-Features: AX0GCFsIiQS81dI7axg97KmA9gzmGEG_3kUmqhJIMLm18HQZTbPd7_8gMWe8jkc
Message-ID: <CAMRc=MdhuQJvTwQRoXxCVa+AOt3ryYrXG1ECsqYwDKqFfAnWEw@mail.gmail.com>
Subject: Re: [PATCH v2 04/12] gpio: pl061: use new GPIO line value setter callbacks
To: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_013550_625205_5FF77C22 
X-CRM114-Status: UNSURE (   9.00  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBKdW4gMTksIDIwMjUgYXQgMTA6MzPigK9BTSBCYXJ0b3N6IEdvbGFzemV3c2tpIDxi
cmdsQGJnZGV2LnBsPiB3cm90ZToKPgo+IEZyb206IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJhcnRv
c3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPgo+IHN0cnVjdCBncGlvX2NoaXAgbm93IGhhcyBj
YWxsYmFja3MgZm9yIHNldHRpbmcgbGluZSB2YWx1ZXMgdGhhdCByZXR1cm4KPiBhbiBpbnRlZ2Vy
LCBhbGxvd2luZyB0byBpbmRpY2F0ZSBmYWlsdXJlcy4gQ29udmVydCB0aGUgZHJpdmVyIHRvIHVz
aW5nCj4gdGhlbS4KPgo+IFNpZ25lZC1vZmYtYnk6IEJhcnRvc3ogR29sYXN6ZXdza2kgPGJhcnRv
c3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPiAtLS0KClJldmlld2VkLWJ5OiBMaW51cyBXYWxs
ZWlqIDxsaW51cy53YWxsZWlqQGxpbmFyby5vcmc+CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
