Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 345B5C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Mar 2023 08:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJedSoX1GDQl4qrvudeEBv68YX+Wv/TNQk8h1hLkgFA=; b=QnvyjT+k//Jt4d
	VUoT73emVlMzCaQi7B60bvqTCBrgO5mBfqdoUClOj+Tc2GRS0JjlekdO6OoQjwI1E3/xwSd6WUHcb
	KJ7JjoRhFWYwIL0fnGpXSikcBmxK/6R4JcN1+Fvxdw4n+/xQvQ1V3wHuHku0tLij8NGng803w+jL2
	MzA00rDkeCss8hFkyojCSEzHa9Z5HRXU67aFLawqAD3FxxASfw/r5T2ZJp/cK/RB2xZATP1jhJRbi
	PpsAnrUOEH1B55LcZFOk+D5VvStHI/0YjPxltAUVgPrxD8kZFtDQ0vwUT/3okBxQ/CzsOehVjq2VE
	MGzP7tQL8Iwws4Ol5XlA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pd5VA-001V71-2n;
	Fri, 17 Mar 2023 08:31:52 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pd5V7-001V4v-1o
	for linux-rockchip@lists.infradead.org;
	Fri, 17 Mar 2023 08:31:51 +0000
Received: by mail-ed1-x531.google.com with SMTP id x3so17287879edb.10
        for <linux-rockchip@lists.infradead.org>; Fri, 17 Mar 2023 01:31:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679041907;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=F22xKzaXQ16zz1R+nPdvOmBcImJHM2RC64dPlAyscLI=;
        b=aWHmZxuyjKoQeJE36fh5yBR6stqa3XOEzB1SVT5U3CDiWrUEUqd2msGm72CQst+RK/
         Vkvm0winBTSa9GH01ItcF++wZbeu9Ca1O3OtCD+slaX2sfyNvwLNaP1kIkpF3YZUMRQn
         HfvmrKvHVhT+8utKUDchex+GgFH/jLaIYm4bbhg36sw75vbB0yaziDmmZIytqIRMJ/g7
         is+q5vtZXQM8KHDf43TQvE+c6zwdlCIA18cenpVd/XaOf8fvgq8Nh1BPceGza5/jL5BR
         uck6vWW5VahlzU7RL2fq2660WI4kK3wtWgp/dcDhr9zyW0GxJp9pXvMbmxOhPThJ0YhX
         8BDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679041907;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=F22xKzaXQ16zz1R+nPdvOmBcImJHM2RC64dPlAyscLI=;
        b=QLzEKf1oekvYmUhZ5rkAu6nUOpy8b3ntzegcLQ9RK5vXwZajaDNQfGfxU9RBL4pTPL
         q/g+j4zk0V7cFs1C3QG7bnvS0OoGnIBUwj4eO06RvOn+1fLidhsQpKQkaGpLqZLrjdDz
         phua3YjvTHpT4C2TCRbyHqFwsjwNJSebDHVm0ThwKqmp8daqw0mAkgEN3y3FrM+prz8O
         dRuN4keZtmMxm6PFlSDRIDXtmMrDRJH0imyKa4iJHJZbF2ttHLyZtHeLhh+zP/O2EwED
         meCAHtXGHJKcRuYd5t1P3vJigJttTpPMCBncr3f+hqA/2510y6vzxMP5Bu363AYSGKGg
         grLg==
X-Gm-Message-State: AO0yUKXBk9Rb5GM1ORDsfwQiwXr16AsXlkoTgZdlmOzuOMZlH0afx0yo
	put8FB5pUQYKF1EvQMHDStJcXkzu/kDIczUaCsI=
X-Google-Smtp-Source: AK7set9P1SuFct7TKYsl2uFH88M5Njs8psB88aLuEx8C2MfAzct4blZqPVjveqZ3ledMk3g6rAb+8Q==
X-Received: by 2002:a17:907:6eab:b0:932:3942:f28f with SMTP id sh43-20020a1709076eab00b009323942f28fmr618319ejc.61.1679041907355;
        Fri, 17 Mar 2023 01:31:47 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id e18-20020a170906845200b009222eec8097sm692325ejy.75.2023.03.17.01.31.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 01:31:46 -0700 (PDT)
Message-ID: <3679f2d0-55f0-1710-abc2-b268b6fc6969@linaro.org>
Date: Fri, 17 Mar 2023 09:31:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 02/11] dt-bindings: serial: snps-dw-apb-uart: Relax
 dma-names order constraint
Content-Language: en-US
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 Sudeep Holla <sudeep.holla@arm.com>,
 Cristian Marussi <cristian.marussi@arm.com>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Jaroslav Kysela <perex@perex.cz>,
 Takashi Iwai <tiwai@suse.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Daniel Drake <drake@endlessm.com>, Katsuhiro Suzuki <katsuhiro@katsuster.net>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 alsa-devel@alsa-project.org, linux-rockchip@lists.infradead.org,
 linux-riscv@lists.infradead.org, kernel@collabora.com
References: <20230315114806.3819515-1-cristian.ciocaltea@collabora.com>
 <20230315114806.3819515-3-cristian.ciocaltea@collabora.com>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315114806.3819515-3-cristian.ciocaltea@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230317_013149_603004_D52C8294 
X-CRM114-Status: GOOD (  10.37  )
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

On 15/03/2023 12:47, Cristian Ciocaltea wrote:
> Commit 370f696e4474 ("dt-bindings: serial: snps-dw-apb-uart: add dma &
> dma-names properties") documented dma-names property to handle Allwiner
> D1 dtbs_check warnings, but relies on a strict rx->tx ordering, which is
> the reverse of what a different board expects:
> 
>   rk3326-odroid-go2.dtb: serial@ff030000: dma-names:0: 'rx' was expected
> 
> A quick and incomplete check shows the inconsistency is present in many
> other DT files:

Why not fixing the DTS? The properties should have fixed order.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
