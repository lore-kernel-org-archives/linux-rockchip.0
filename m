Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45C76C433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Oct 2022 07:15:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqTUUO9gGpJDO8DIA1oAnRjx6Mu0Fneh9NZyblnHqyE=; b=bOgVcW8e/mIhKZ
	aYhlWf3DAZYgNm5Vz4ly2yjKnQZVdY0bLA58zYs5/bZMgnZUkr4bYTV+tLS67Daiu0i4uLKGKwcd/
	lYgQKShPOhAkmKGR67M/9P8Ph+FtyZfPRQzVYgYgQORBgyvr0QxM+Gtf8p6NjVdEWqkj9A1v4NKRz
	RW9hMBfU3Da02QYyMeyUHL382CwboLUfLgOB63nYHihjVoFfs4IUyuoNXmUQEwA0TuggDCK8TzOf3
	MIgZAVqEeQnLNqbGcQD6/MB9pwtl4jZvqtTR1N4Yy9Qwm3SlEiPyyldyB9jJFafpqAmd5Al5JFm4P
	UwgWb5KxuFPuqhpdwvXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofc8p-008ias-AW; Tue, 04 Oct 2022 07:14:59 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ofc8i-008ia1-8B
	for linux-rockchip@lists.infradead.org; Tue, 04 Oct 2022 07:14:58 +0000
Received: by mail-ed1-x531.google.com with SMTP id e18so17589743edj.3
        for <linux-rockchip@lists.infradead.org>; Tue, 04 Oct 2022 00:14:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=8lUiUrJnUBbr2TetiSbk2ULFX/npuKxk7xCCUT6/pmk=;
        b=l6HQGIuIAIT7P8HWAiTV0NOzg4gTn+gHR5DnvM1MRmzZkJ3s+pb5y9ZSVlkB2/ZP9T
         odApFGDtbC9fKQu1LU4mCnM8T4ADyMjVVwczHsH93Qkc2lKnobbO6IkHyQXelq47YcId
         TV8T0fnw0WLaOafvkNLktD2VSZcWBs9Fzr3h0VpYtw0rEkw5OAq48SN4kES7EecebeZg
         DDuzgCF9QvI8aQSh/F9Xbq5zQbf+ESJMXjMoBgj93jpJbvCoyDZTExrLxmUh0T4HSq7d
         B2ZiltXhQUK/vtXRuTCQ9qwGwUTFKcXl2/xAPoFjkyx+AW2S6ivvMUAWV9Cr89uilrcG
         SujQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=8lUiUrJnUBbr2TetiSbk2ULFX/npuKxk7xCCUT6/pmk=;
        b=8Itdj5/p31YLvgnELBeyreV5SRBAd+KZkT4okju+lMk3j3mXeXk5QbZ0OVD6fQ/8ll
         BfOmJDc5eb7W/yVbgGnPsaljpdbuEGylt65aT5BvAF+gtKhkG/mxMHtpV2FakyC+vkB5
         x4XgcPuc3q9yteGL3bct+zFHo7U9Y1XHJ9Yc3gTKeiagUhgizIFgPmc/fUJAsmOlH8ae
         WU26PlA9z/Vnzz3Nc7qpJtC/o2ca5o0vFMDaAaVP+3smQQiEKS7nwnHXmBP1MRxmRhHb
         o8oCDsg9dE4jBr+CzY1VEMUEKVcwOK4AN/hDtZSymekIHOqMuSnVece6ZE8ttbdMMobu
         hrwQ==
X-Gm-Message-State: ACrzQf1U1rkt1kj9isUeUlx7r7JAP92Vz2INOXG3aBpIPxxBSJtS6+x0
	ps4GcfK8W56FN83MwZzxoep3e8Hh5ZGlINkSUw4EHg==
X-Google-Smtp-Source: AMsMyM7EBy4VOsG7D/5qITmjKJmrweVpeNFearcT/8xnrgcZPvj6nuOkdydX0Mw78iZ5czGOZncDmx95bg8jVMf7kxo=
X-Received: by 2002:a05:6402:4517:b0:443:7fe1:2d60 with SMTP id
 ez23-20020a056402451700b004437fe12d60mr22078723edb.133.1664867689182; Tue, 04
 Oct 2022 00:14:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220920103108.23074-1-jay.xu@rock-chips.com> <20220920103108.23074-12-jay.xu@rock-chips.com>
In-Reply-To: <20220920103108.23074-12-jay.xu@rock-chips.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Tue, 4 Oct 2022 09:14:38 +0200
Message-ID: <CACRpkdZSCamhBD-M8CkZt6B3N9c2Jo_D3kwgOykj8+VJ_otYGQ@mail.gmail.com>
Subject: Re: [PATCH 11/20] gpio/rockchip: add of_node for gpiochip
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: heiko@sntech.de, brgl@bgdev.pl, andriy.shevchenko@linux.intel.com, 
	robert.moore@intel.com, robh@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, lenb@kernel.org, rafael@kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221004_001457_044134_8B5DA6E9 
X-CRM114-Status: UNSURE (   8.48  )
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

> The Rockchip GPIO driver will probe before pinctrl and has no parent dt
> node, lack of the of_node will cause the driver probe failure.
>
> Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>

> +#ifdef CONFIG_OF_GPIO
> +       gc->of_node = of_node_get(bank->dev->of_node);
> +#endif

Any introduction of of_node_get() needs to be balanced with a
corresponding of_node_put().

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
