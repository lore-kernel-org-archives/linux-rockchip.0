Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD19BC433FE
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 07:16:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlFOLfvUJuDcILwGUQ53Tt7UfmQNHGj95QED4noAjJE=; b=mjwZm5cMrBrW+n
	/4eQo7BqQd6/gJzR5miezXmjVr/a+pKHE03JCNmvbV+bWRbt8UFgGPmhT4EUky6NdL7hX0ChxkdiV
	fsnJWzLybgND6x4tNVPyLSw66R7CWYx+/ZqkthLjvszyq7YMpRJgs6DmpDs0Tyi4s4ayXjPL/3x/7
	YQ+VZnMclC8z2EITpfHIIKlYCg6MFMAb7UM2tgB9CCpVR2bQgos27YJXBLx12eEQ7gB3Mt6GQ7qw3
	cgIdRHSVOEJPfmflDcW+TrxUYyUMQHXQgiLanxZ+7ACEDD6pb64aK6fyctbNP97TmIuTAxli+KM+b
	Tplp8NkhmFQSkRzbJfrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcAQ-008ioM-NL; Tue, 04 Oct 2022 07:16:38 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofcAL-008ine-UT
	for linux-rockchip@lists.infradead.org; Tue, 04 Oct 2022 07:16:35 +0000
Received: by mail-ej1-x633.google.com with SMTP id lt21so1610447ejb.0
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Oct 2022 00:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=V3DMfLQaLfL8Bqw6ozy6bYrMLBwe4yrz27viyroXSjk=;
        b=b0mYLHTP/gaKyz3UXXes2kHSrr0DO8YIDkGkj6ddQo9FfFOaoQWvwpTeCozVGvShEH
         +WGef4R3hL24U/jCTelJiqvvfXsxKtS3b6LqwXm94lT5gHf8ETCpPtc0qX3q9byu4fzu
         qaKwL+qNINzYN2RtADdKA6sTRs6eUyJb79s2pWIAFc3VwvN2KWPP/U51hhbaJ5Cd9Bmw
         q8gx7hi4k7jSqYe2uNs71nm+iYpYRhJ9/yymLGf+Y9mocTFM0zGx2N6LdOmMaVWynv4F
         T/Nn9M1e9PeU5kl4UPG7u1S5RMqhxF72dZmzh1KeCyL2y5I63sbbW2XEaQp8kFS9T6N+
         kqJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=V3DMfLQaLfL8Bqw6ozy6bYrMLBwe4yrz27viyroXSjk=;
        b=681y+/5ZTBtRfkRt5pSY8l26wQWUFAt3OFAj21d/soz+aAGo8y+M7PBBtIFcdMJFl4
         AE5TP3oOvzizWoZvuuX7hRYYRhQ00jRaE2nG3gatXZ6JxSsN7qwbNGmzHb5zArlfBT7z
         IDWGedlE3IK2B1fxsBrtfZZElkwuMKHEEKGe8/JnxpcMXi3f9H/8Adv7Zpg+EXAY9qIw
         4Oy0aCU7QbnLHu+dn+HJKiHa4RcqEdgS7H+n6Pif6zr0ILMCQB86+hfFu1+XpVWmxaeT
         5B66IFf3zPPLomJ3kUtdAh0Lm0vjuWNLq5EbRERw82D5QwTz5EEbBFhw7IKT02TjhEeX
         KDaA==
X-Gm-Message-State: ACrzQf1gS7kmUZG8saohycCOtrKsaLgc+5f0o2gS7ZkvPrrszOqLh6+Q
	7/Cm4jRXFDfoIrtfgiLlXfZJU/8y2S9CXXvATaVr+A==
X-Google-Smtp-Source: AMsMyM6DprBB1sMCJOHPvsvTaUOvQ+QNHqgTNKN+zAt7YlsZje3tU/opTJDoE6kWzGMxmFIlxqVyEXC+kdSaZg7vR34=
X-Received: by 2002:a17:906:8a46:b0:781:71fc:d23f with SMTP id
 gx6-20020a1709068a4600b0078171fcd23fmr18377783ejc.500.1664867790698; Tue, 04
 Oct 2022 00:16:30 -0700 (PDT)
MIME-Version: 1.0
References: <20220920103108.23074-1-jay.xu@rock-chips.com> <20220920103108.23074-16-jay.xu@rock-chips.com>
In-Reply-To: <20220920103108.23074-16-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Oct 2022 09:16:19 +0200
Message-ID: <CACRpkdb0wysqkSST7Qv+yy8g53oTpYWvbSqxLk6EVMEABQW4iA@mail.gmail.com>
Subject: Re: [PATCH 15/20] gpio/rockchip: disable and put clocks when gpiolib
 register failed
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: heiko@sntech.de, brgl@bgdev.pl, andriy.shevchenko@linux.intel.com, 
	robert.moore@intel.com, robh@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, lenb@kernel.org, rafael@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_001634_026301_F39DB680 
X-CRM114-Status: UNSURE (   6.94  )
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

On Tue, Sep 20, 2022 at 12:31 PM Jianqun Xu <jay.xu@rock-chips.com> wrote:

> When gpiolib register failed, the clocks should be disabled and put.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
(...)
> +err_put_clk:
> +       clk_put(bank->clk);
> +       clk_put(bank->db_clk);
> +       clk_disable_unprepare(bank->clk);
> +       clk_disable_unprepare(bank->db_clk);

Always clk_disable_unprepare() before clk_put().

I think you can drop clk_put() if you switch to devres dev_clk_get()
instead.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
