Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B00B3EEE26C
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Sep 2024 12:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b3cdSUblF6qdzXiwvtSFOrsggJSG8KG3jBEzuH6ziiI=; b=GY7qH8JT08qTOl
	LO+tq2zerb2TYFpW86d5lR9/FMgYHnhTTJPptgvD8xvtMVa3wgQNo5j/Zq+F9TnXvTEQqhuz8oRCO
	zR9NayM2+CkZbmVWF119iEssuF++9v8grvetAesxRBrr50ptThwgbGk6H/MXYJ/B1hwB8ZIm5yTyU
	9vBqOV/CzDoFw+RGGy4cGXsjHsb5x/J0TngnOvaxNQ687zIZhGl2tnU9bQOKi+HTpKl6OsaWQz3oc
	Hzr0ORuzhYc14aYYIgmRnhjaw0/LJHxCVN94z6wgz0CAWMLuIlJ+qJwJZLSwnR+NKVqqM9gzy7KkS
	fAelZIU4H5An51RRW84g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp51K-0000000Fp0K-3ECy;
	Fri, 13 Sep 2024 12:03:26 +0000
Received: from mail-yw1-x112e.google.com ([2607:f8b0:4864:20::112e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sp50F-0000000FomX-12pr
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Sep 2024 12:02:21 +0000
Received: by mail-yw1-x112e.google.com with SMTP id 00721157ae682-6da395fb97aso16776237b3.0
        for <linux-rockchip@lists.infradead.org>; Fri, 13 Sep 2024 05:02:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1726228938; x=1726833738; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=VZUveVe5ug6pUVY95Hk2rZagT2tEgT+khEe5hqljA6o=;
        b=Tv2vb/wyZB7v1HEVrUdZnHTqQ3rcssRZZY8kloa3lmD7kKPmYtaOZyTjoyA2LhNcz9
         LaKCrTzDFB9uYKMThy7xGs4CATJwF0NW97d3XFO+5QsPElFAl/LhYOxJeOfFWcYH1RUb
         0KF3asHFo7leufeb9+9E8ybwv2pM9ysm2wIEUvjrfneEB1pfA3TvZU25HgBlRnh0v63L
         oR3cyCLkhJPpaspyYAruQ/fR/TFFIAz7x2AbvIms69wXlZ1GpY73EkzoY4H7oiyH2MI9
         TfKY6bu2AuuGio9LPdGe5TmEo/q65wENo13qsgbjIT2kgVzZP0OyPR8/4wJv+eWAvrRf
         tufw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1726228938; x=1726833738;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VZUveVe5ug6pUVY95Hk2rZagT2tEgT+khEe5hqljA6o=;
        b=Sh5UH2dHCvoloy/GUt4rJar5Ss+rie7hXZWO+kCTor3v/FQxikIuOdeYYc/NMAMzZG
         GoXvhT/IRxXT3m2vl1viJqCP4vVz6bduytMgjgXMV626z1M4ljIR5OgXSW742LBOMWbX
         FUN208SOFbcpaJSAiSkS7MK+KGHC4kcws0f8c7n6iK3NfMr2u1rGm8WASEQF02hOYWNb
         SePW+lmP/yXBEPPUFL+SXmcg0Hw3MyddFDIckzonmfC0NXMNh52SozAtBR3oKqAI71ap
         2b3ha579B/Or4XvAnu9lcn5+ryOYYP0VtWv+EjFPsReF5Avba8+tjBF0JPaYAvMqbcv/
         DNqw==
X-Forwarded-Encrypted: i=1; AJvYcCWzdhKcwNF9/RR91w4Djsd1HoaIpfPxnkUtq7BxWjrEHyFVO8OXxhDDzRDkvs36qiCxFt3MD0WmlzafdsM+aQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzTO2ESS7talJEM8i/EZAS7LuBPaaqeJvg+gkvy6XKLlUOH1oxw
	b9HFrBNPOfWiZ3FAoTXQDwOLKpNAxJb14kn+5Agx591HGb/+GklK1UwpBFbgkFKaM72iy8KuU4e
	b3jYSRkBKLGN9w9/IZlZ/wQVfssV2dZ/g8uFHEw==
X-Google-Smtp-Source: AGHT+IHvWAtjRL3HNkWkaP3coSzhpDLefItiLLMliColzEkeBMjyYypjXfXV6VN6sYk4ULxR/arxmws/Y1dWw592ffI=
X-Received: by 2002:a05:690c:1d:b0:6b0:d687:3bd3 with SMTP id
 00721157ae682-6dbb6b20d8amr53618377b3.21.1726228936095; Fri, 13 Sep 2024
 05:02:16 -0700 (PDT)
MIME-Version: 1.0
References: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
In-Reply-To: <20240823-cleanup-h-guard-pm-domain-v1-0-8320722eaf39@linaro.org>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Fri, 13 Sep 2024 14:01:40 +0200
Message-ID: <CAPDyKFr51pccY4Wx3x_NcuVrJcsG0U_xMptdC-2hf_5BnjaR0Q@mail.gmail.com>
Subject: Re: [PATCH 00/10] pmdomain: Simplify with cleanup.h
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Bjorn Andersson <andersson@kernel.org>, 
	Konrad Dybcio <konradybcio@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, linux-pm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-msm@vger.kernel.org, linux-renesas-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240913_050219_314138_C85B9EC0 
X-CRM114-Status: GOOD (  11.85  )
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

On Fri, 23 Aug 2024 at 14:51, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>
> Simplify the code with scoped loops, guards and __free().
>
> Best regards,
> Krzysztof
>
> ---
> Krzysztof Kozlowski (10):
>       pmdomain: rockchip: Simplify with scoped for each OF child loop
>       pmdomain: rockchip: Simplify locking with guard()
>       pmdomain: imx: gpc: Simplify with scoped for each OF child loop
>       pmdomain: imx: gpcv2: Simplify with scoped for each OF child loop
>       pmdomain: qcom: cpr: Simplify with dev_err_probe()
>       pmdomain: qcom: cpr: Simplify locking with guard()
>       pmdomain: qcom: rpmhpd: Simplify locking with guard()
>       pmdomain: qcom: rpmpd: Simplify locking with guard()
>       pmdomain: renesas: rcar-gen4-sysc: Use scoped device node handling to simplify error paths
>       pmdomain: renesas: rcar-sysc: Use scoped device node handling to simplify error paths
>
>  drivers/pmdomain/imx/gpc.c                | 14 +++-----
>  drivers/pmdomain/imx/gpcv2.c              |  8 ++---
>  drivers/pmdomain/qcom/cpr.c               | 58 ++++++++++++-------------------
>  drivers/pmdomain/qcom/rpmhpd.c            | 11 +++---
>  drivers/pmdomain/qcom/rpmpd.c             | 20 ++++-------
>  drivers/pmdomain/renesas/rcar-gen4-sysc.c | 26 ++++++--------
>  drivers/pmdomain/renesas/rcar-sysc.c      | 28 ++++++---------
>  drivers/pmdomain/rockchip/pm-domains.c    | 25 ++++---------
>  8 files changed, 68 insertions(+), 122 deletions(-)
> ---
> base-commit: e188fd67a69319f3d105d9b90e424b8d1ff9580c
> change-id: 20240823-cleanup-h-guard-pm-domain-35eb491f35f9
>
> Best regards,
> --
> Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Patch 1 -> 8 applied for next, thanks!

Kind regards
Uffe

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
