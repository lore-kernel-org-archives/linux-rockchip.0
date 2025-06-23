Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F4141C7115D
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Jun 2025 07:27:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T1PVJBhuQ7csdCh0GUbvNVcXr/5+2sEBAEaYAgyo+qc=; b=Jl0ceLPtabyPhF
	GFUvGemZpV6zHtZ2iLAAj3dwYt6CY7QX2kXyGyfU8LtA6iXgYl2vMXG/ITEbuLnuKCYC1dNOta5/D
	uJW/MG9lhxafaU0Jw49Fg3BWnv2VJyX96MeF2qAP73LFS+2Oo3nn5m6O0NDSyU0raHYbH950nezXm
	3jq0thTGt2E+T8dUjzL3MTFdBg0P4jTIzUzWoqfeHkxMS8jvz0umO+jadvGk/kJQAQdmadDiF4p/w
	hB0neJL+u36ZdMDUyX7VjqU4vHbInuPCe7HOntp47s/Fy7RFcI+G2WQPv/RwH08N7gJOBl+3jdDiV
	/wkCNYEVfla0N6bbUPPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTbao-00000001rp5-3rm2;
	Mon, 23 Jun 2025 07:27:50 +0000
Received: from mail-wm1-x329.google.com ([2a00:1450:4864:20::329])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTbam-00000001ro7-2tyx
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Jun 2025 07:27:49 +0000
Received: by mail-wm1-x329.google.com with SMTP id 5b1f17b1804b1-45310223677so28624165e9.0
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Jun 2025 00:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1750663666; x=1751268466; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dzPqdhEKbFE4WKMT2toUuYysK0Z15a9xzSQs3F9Y55s=;
        b=aVrYYhFhHXD09Pqf+60KmiAroSvJly8mR8Zq3RRuO36MpK4gyWxgVDaK2oIDnowX3T
         CN+cxvrVf9XQqfXwWlayhbI9ebKSxc5jh7EC9ErLsWmQx6vasp5gY5Iy1Cxc6U528hX5
         nit9Ih+m5omhJjy74VnWalfG3YPoVKKl+nJSp2f0GT384lgz+KChThIsjqO9hm419dHD
         jf8MWhEO+7Be1Sw4NLtL0nUym2x42IQMZyFLtIEMx3+LLdoVykYR4yHQ0Dk5g4JoqHTG
         WXwqiOwoThZH8fLlAo9akQGOvbwGp+41hieeYANoKmblDjxIkntKOdSr06oYeJNvX41N
         jCkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750663666; x=1751268466;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dzPqdhEKbFE4WKMT2toUuYysK0Z15a9xzSQs3F9Y55s=;
        b=Ba+EWMuZOOMvIfahTQ6fFdMRaCWrq4FpJuDp558J/9uNbVf55LdiInXhflu4CYRRj5
         C7WFxX8FGnmEDhduAS7lK3pusJskAMG69lbtApOQ9PUcmqsq2zVf4CcTg+bVGokuB1ry
         4RFSarzVlQ4VUw9jSxEpP5B3kwvbJ4PiHjbqDmzV9lNw4NrKVfUI5T4qsYJ/NJXnv25P
         KIgezXYlm4gw2GrWyt4lUmb5S1oZx7alI8ZGl3ikiIW9IqPbT4wf0tiwZBqsrH2ImwB2
         k/LcMwx+re4qdMvMI26enFtv9nXl9LOIrAdFgy9avLSq5l6mH4QWH1wtACWDIO4/ZvIF
         P9UA==
X-Forwarded-Encrypted: i=1; AJvYcCXIy8qKOZzex/8J6Lg7l92xqktzi2FUbDQskUWdaUCUfJSsf27hdY7SJj4sFscFGkGHRiHN1lkS8IwWGdbXcA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwU2QddgeGY/B68nzKbl0CVYqQIXmDN47Ice3ckiodB5HQYB77y
	ptDxohrIYktIPK3EHLt2iIBMqxoMoifLC47IGmAAUasvKj5p02ZT1onmLzxpXsZxQu4=
X-Gm-Gg: ASbGncsvqfRsCpQMh8Ott6w4xz5G5H8apeTDaShU+ikAXSx2TjJ42PFdyn9N5eMMoJA
	mubt1PvFwUlr/loXwNCxfKey2xYpY5N1fDWe4ExcmdcFdwna/LyjbYm4Uy6vssz61cxD/wSCy5m
	kkh5w3qEMTOYfoo1pfanPvNwqt0rOROBIhhWgqkRoPAWRnweHjjCdEsq28fQ4rhlJUipmC3+WD2
	Kn3ubR2y5uSXWIepRZhK6QZwytZSi0hjvaeIA3FvC0u7BczxGaInbV+mcr8GqeKcfnOGrVWAY6E
	V35pIX/VNbf9XYv5dwwOjyHCaHxtmTcXQ3WbtqHvB/RzMhiGW03VKAytEP+C+g==
X-Google-Smtp-Source: AGHT+IH9rEDeNXFSSnMBqu6I5pB5WPT7zqUetHOerVAMMI8lCebpPpqi/qM3evPjb+mgZmc3Iz0qeg==
X-Received: by 2002:a05:600c:3b2a:b0:43c:fdbe:4398 with SMTP id 5b1f17b1804b1-453659b68afmr92295725e9.6.1750663666401;
        Mon, 23 Jun 2025 00:27:46 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:5ce:238e:62a6:cbbc])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-453646d7fe5sm100018525e9.16.2025.06.23.00.27.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 00:27:46 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Andy Shevchenko <andy@kernel.org>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Robert Jarzmik <robert.jarzmik@free.fr>,
	Heiko Stuebner <heiko@sntech.de>,
	Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v2 00/12] gpio: use new GPIO line value setter callbacks
Date: Mon, 23 Jun 2025 09:27:44 +0200
Message-ID: <175066365840.13100.13826929521170869175.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org>
References: <20250619-gpiochip-set-rv-gpio-v2-0-74abf689fbd8@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_002748_730911_472F1A61 
X-CRM114-Status: UNSURE (   8.41  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Thu, 19 Jun 2025 10:33:13 +0200, Bartosz Golaszewski wrote:
> Commit 98ce1eb1fd87e ("gpiolib: introduce gpio_chip setters that return
> values") added new line setter callbacks to struct gpio_chip. They allow
> to indicate failures to callers. We're in the process of converting all
> GPIO controllers to using them before removing the old ones. This series
> converts another round of GPIO drivers.
> 
> 
> [...]

Applied, thanks!

[01/12] gpio: pca9570: use new GPIO line value setter callbacks
        https://git.kernel.org/brgl/linux/c/40b71f1171da13664e9677fbd993d9098315d71e
[02/12] gpio: pcf857x: use new GPIO line value setter callbacks
        https://git.kernel.org/brgl/linux/c/4027438be823abdcfb50ee2abed06fa4e6af4b7c
[03/12] gpio: pch: use new GPIO line value setter callbacks
        https://git.kernel.org/brgl/linux/c/74260fb09cc6f6e7bb6741bedca4463079800ead
[04/12] gpio: pl061: use new GPIO line value setter callbacks
        https://git.kernel.org/brgl/linux/c/201e0f24a5b73fa73606ae2261d155f00cb6d577
[05/12] gpio: pmic-eic-sprd: drop unneeded .set() callback
        https://git.kernel.org/brgl/linux/c/fecdef830c442e4375a3bbdde26af385583fb05c
[06/12] gpio: pxa: use new GPIO line value setter callbacks
        https://git.kernel.org/brgl/linux/c/f1ff31c8ef80f4720ebf7854e6af6204dddd9ce3
[07/12] gpio: rc5t583: use new GPIO line value setter callbacks
        https://git.kernel.org/brgl/linux/c/309ea5811136a06f572c7abbeae2dcf773629a5e
[08/12] gpio: rdc321x: use new GPIO line value setter callbacks
        https://git.kernel.org/brgl/linux/c/76033f1f927cd93907c1e9eb3f86e54015e4366d
[10/12] gpio: rockchip: use new GPIO line value setter callbacks
        https://git.kernel.org/brgl/linux/c/6731ad96e8770595d4a6ceb07e587b07d22da110
[11/12] gpio: rtd: use new GPIO line value setter callbacks
        https://git.kernel.org/brgl/linux/c/d68ddf651dd2faea5cdc6f6656148b739c38645b
[12/12] gpio: sa1100: use new GPIO line value setter callbacks
        https://git.kernel.org/brgl/linux/c/cb908f3699fb137e28017a8fdf506c35762b3eb6

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
