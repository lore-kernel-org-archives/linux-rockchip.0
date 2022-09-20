Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6CB36C6FA8E
	for <linux-rockchip@archiver.kernel.org>; Tue, 20 Sep 2022 09:36:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LN8WBIzoJXCeoAmOnC8xQjo6ylas5o6MbT95YIOmpvc=; b=06B1neEHSC/rZI
	uea4XIJ1KarhD7jj8cVNBryN8wI18pPtfVG0Abu7eyhB1mENwy5TJp8KcvW5+u08ascmBq/4WbjhX
	lt6ovPKetoXeDno0bDT6NqoJizPeLLDIQhKL0UMSA43AuoDq3qDWk7zsGGEzsB6KJoHz/EhY/nPJk
	UIFW3dpEaRvPiCm7YbH0Eb1jUZ0uT7JAUCNOnZFPk81axBk8AMehGvJqs8q5PvJrZcgiOOoenSquD
	8reEsrd3FTZrFM2TuSyUuVZUDZ87K+pY3f6iinYee+vbszn/qkcF+Csa+fPCqKr4YQE/izkQpCn17
	GXzzhD0Wkf5vnzVP3eLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZfI-002SNW-36; Tue, 20 Sep 2022 09:35:40 +0000
Received: from mail-ej1-x62e.google.com ([2a00:1450:4864:20::62e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaZWc-002NHe-PT
	for linux-rockchip@lists.infradead.org; Tue, 20 Sep 2022 09:26:44 +0000
Received: by mail-ej1-x62e.google.com with SMTP id r18so4598372eja.11
        for <linux-rockchip@lists.infradead.org>; Tue, 20 Sep 2022 02:26:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=30Rp9NEli57SuAH4dgCyjCBOrkO4jr8HK882zdNyibE=;
        b=XMHJ5Z/Om4h6VkvDGwQLnGlLreGXUekF8n4ZKei1o3RSIgoDXOobVnKz3u9NDp3p8D
         fb/tV3M+N4QWIh44H11Bs1AmfT1Jlojhc4PRqjn87r/p3LvoXsyxdjiqf9FaJA6MhN8e
         p2ftc/BExJJ0Or04NVZd/aq2tt6XYndptGZIbR1AkV9MnZXV1B4tPwBd3QWmyeJrIH3M
         uUwaiPzVneirDHSpn/PCxefyB5PeYv+0tnibBvS9EyduZqFbOcTAhA4qED0xUBLRiUxi
         4Ijcg93v0aNh8BRmbSnrraxsDZXmD8eRkI5tAySFc3sjm8tWJ0EIawKMjdjG1erBcxyU
         QzYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=30Rp9NEli57SuAH4dgCyjCBOrkO4jr8HK882zdNyibE=;
        b=5eccsrBR7pzd5+GaSMVuhH4odwS5iNDXFj9JTRi4oBglej55h1419Ly6ZjhjuaXU/n
         FrV8Au8+eKVuG3+Buvy9VnULDIPKRDLGD8d6x9QHgUTUTk+6uMlC6AeNoqRjGIilA3Gf
         BNpjknWvlgSO2Z6YSQhGzRuaczJOD2H8QPCUwW0JgJAL14Oxbd9yMs/wKfRKji402Ccj
         w+8X4yC8ery0j7RB+LijkXJZ/UyAPj2BG3i54XtU2fh0sef5w1+KIBhb4daN0Lv/InCE
         TBflvHQANhM7E/S1kM+3i7hs8jjRjg9mxt8X2JNkbHedsDjxMoFfNcY7E6NghNNBX/Rn
         Gl4Q==
X-Gm-Message-State: ACrzQf2D4k2IzPhnkQkFmnJmJN8hJZ+CynJ9pt3Y4uJz4exMFN2ITqMk
	LgVsl/yyp6FFW7D0ai1PYQIGwQj1vo86Sbmo9m2j0g==
X-Google-Smtp-Source: AMsMyM5ZWYCS+erppaMkXm3Adtd5u3ROxOslRO8q+DpEQjz/DuPmleCPR1igpZDvPOpH31i5ucLgxVgJMomIovSMO90=
X-Received: by 2002:a17:907:e9e:b0:77f:9688:2714 with SMTP id
 ho30-20020a1709070e9e00b0077f96882714mr16438316ejc.208.1663665998141; Tue, 20
 Sep 2022 02:26:38 -0700 (PDT)
MIME-Version: 1.0
References: <20220917060929.657778-1-jay.xu@rock-chips.com>
In-Reply-To: <20220917060929.657778-1-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 20 Sep 2022 11:26:26 +0200
Message-ID: <CACRpkdanniba+TUAeqei93dmkBT82HY5D95KxTsc8aE7jV+5VQ@mail.gmail.com>
Subject: Re: [PATCH v2 RESEND 0/2] rockchip pinctrl for acpi
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: jbx6244@gmail.com, heiko@sntech.de, andriy.shevchenko@linux.intel.com, 
	brgl@bgdev.pl, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220920_022642_885371_C5613CE7 
X-CRM114-Status: UNSURE (   9.73  )
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

On Sat, Sep 17, 2022 at 8:09 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> These patch fixes to support acpi by:
> 1. populate gpio platform before pinctrl to probe
> 2. get gpiochip by finding from gpiochip list
> 3. get match data by device api
>
> Jianqun Xu (2):
>   pinctrl: rockchip: find gpiochip by name from gpio module
>   pinctrl: rockchip: get match data by device_get_match_data

These look OK to me but I would feel better if Heiko or Andy ACK:ed
them so I give them a few more days to comment.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
