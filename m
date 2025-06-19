Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07493C7115A
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 09:20:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yFloHNtWywWsnt8SipM/sv1Koj2jXbQeGBKMU9bi1mY=; b=IOUDITzRWy22qi
	as7+/I0fiyvezJFfcjWNIP5C1bKRM1z0h8ES9JdUo7j2jLzXYXScGbR8H2pD8l/uhIIkI470WYQue
	4hA0Dp4IZDTvWazvlo0oPDiM3HoAkOm6oVDoPFULYT/cHFijQ8AGCFjlqnir7D9opOBpFU9Zlr0sb
	WVUNk7jefwXWhqTAloKFW1QQ5vHXV8K0BceWiylUznO0wZ80k1X3YCxcWrG/OfhO6qGWjJkhugj2X
	OtuSOyK5xdMXFxN2XdbHPmGHkD4Z9Iq8j+rZ4AZmOcU9oOVoRvEZyZG1pWVihFFMP0/N2qbQoSfzO
	pLlsYKoTyZUGF8oAOglA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSBRN-0000000CbHz-0ilM;
	Thu, 19 Jun 2025 09:20:13 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSAjO-0000000CRYZ-2xDr
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Jun 2025 08:34:47 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-553bcba4ff8so508284e87.2
        for <linux-rockchip@lists.infradead.org>; Thu, 19 Jun 2025 01:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750322085; x=1750926885; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j0nhDKpQpxXWzr1mFcT2IFoKimPE79WTa7ayNr/hzWs=;
        b=hfb4TwbE0yuaQe/OoJBgvcs1Wg9MAteVtAtuZgPsGOyLrOI3qBjK5hvUHjjVaLwyXt
         jokXwwQp4J3gu/KbieaZq6V3h9Yf0ODlxrIU2uGHt2sKIOTD/O7VKNp68zLdg4wQxdeu
         CaEuQAbiiV3vzd069IhPEezUWhz23+y8Hsmm9q1iALXg37izPt/RC0OGgWP8U9473kAR
         QCP9VcgYCHLQVIM7Lpq7E5mZesRyAnihtjVMR81heW4bW6p0Mtxl96lf9G2fZYGxc43y
         po1HRV1lIVtWypDIoDLKhrKKs+ing3gg/yHTTpjPiagyUq9jR9rxmMwbCnTnRXS3WKAB
         X6Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750322085; x=1750926885;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j0nhDKpQpxXWzr1mFcT2IFoKimPE79WTa7ayNr/hzWs=;
        b=KgmRphxQlFsLRqnRhNrGH+KhLaKwDxggZhJjNvAn7s4Hm2AbtD8fcGT8/kaXs7JDuF
         qdj8C95kls/vaThotyu9kJPjMlPRjTOZDFftv0o4icfXOmdc0aAuHHU936fwpbzkB34l
         TX+MdeFKKitEz2t2tLoQccvw7eC2r48XZ8HA5c/qLLUwq+YOA5dgekfLHjDXZKw7nKzk
         e0zcnDmsA8zgNNNaebeBUekv4vaKh1r1sHooeQiCzoOmAQQaJE4NNQWx04MT8+l15mV2
         nh8Xi6LFwknMYibDz9w83bkJKXARcWhEuOKnU4bNJdUCjKrCbBhsUgR5MdRgXXJFNPXF
         1n5g==
X-Forwarded-Encrypted: i=1; AJvYcCWWfWbU9Rt7ucJSnePmD37eTRLrr9IiO2kLIHRmnwYZC3uPc5gdEEq7gCNVDehNPy4HCHUzcgAIa/4RW0U4rg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yz6vZSAEb7mbTyItJdSOkT9WeuWbgSgBsKrMg26djvBnT0NkPM6
	hshlSs+sVkEefXbdm8+eyRvQcqBiDTp+6i5687YUPTafNeKVf9fzTP4ABVtJAqqRdqg7Tf+LYHf
	ewHDedXaqxs/Fknx1kTzeJ8pAvpVqq4+S+JtKAQ+UjQ==
X-Gm-Gg: ASbGncstW7Udoy7XYTX6Q1LxgFh3OIUfDSeG2mvGIQLmU/8C7W8YHalcSaxzsbfIul/
	S+tmVRl19Oxka0UG4dFU6ofL53GUBC1MFNRuEa+jJGeZ1h5Ssh/avb+NJcrE86waWsQ9OXC+lAD
	MjzGmNLCLlGdp1ODcL4MUD/1W+cK76D4EeJcifOUQAiXTiojtpPCgivGYWTFsL74cM7D4qE1OFE
	tSh3ZSWj0wH6g==
X-Google-Smtp-Source: AGHT+IFDp85PzWD62QjUEKS6MevtLH60iV1DaBb/nwT7ioJL8BslMyztOttEsa1fNI7Da/cNBk6S/D+nhCaUS1yFP4Q=
X-Received: by 2002:a05:6512:b26:b0:553:252f:adf3 with SMTP id
 2adb3069b0e04-553b6ea5ce8mr6017773e87.16.1750322084921; Thu, 19 Jun 2025
 01:34:44 -0700 (PDT)
MIME-Version: 1.0
References: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org> <20250619-gpiochip-set-rv-gpio-v2-3-74abf689fbd8@linaro.org>
In-Reply-To: <20250619-gpiochip-set-rv-gpio-v2-3-74abf689fbd8@linaro.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Thu, 19 Jun 2025 10:34:34 +0200
X-Gm-Features: AX0GCFuzcvha5PSQAEYMfe3d61ki6vxUCoj5DyKshbRkn7FeS0Wil9VqaZ6ngBs
Message-ID: <CAMRc=McmNfQHVpDtvJMJwGJmoVTkgQG6riGxfxYMed1Xre=GLg@mail.gmail.com>
Subject: Re: [PATCH v2 03/12] gpio: pch: use new GPIO line value setter callbacks
To: Linus Walleij <linus.walleij@linaro.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Andy Shevchenko <andy@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Robert Jarzmik <robert.jarzmik@free.fr>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250619_013446_741029_493B06C3 
X-CRM114-Status: UNSURE (   9.06  )
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
c3ouZ29sYXN6ZXdza2lAbGluYXJvLm9yZz4KPiAtLS0KCkZvcmdvdCB0byBwaWNrIHVwIHRoZSB0
cmFpbGVycy4gOi8KClJldmlld2VkLWJ5OiBBbmR5IFNoZXZjaGVua28gPGFuZHlAa2VybmVsLm9y
Zz4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
