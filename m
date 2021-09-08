Return-Path: <SRS0=E4Dv=N6=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6D5C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 19:44:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 1CD6F61178
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Sep 2021 19:44:53 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 1CD6F61178
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=udcB/CN1QpJCM78Nl+tgcNrZN4ZFs+55P6YDzNfHnXw=; b=1HRxupQQ0Qti+6
	FNMdZQDZzu0BbxpfpK/Eg+3nRN2U6axgfZ/EXnR4kasT7UPOMinu0Qmg4hLFZ0BG5rUXH/TR9+imA
	J9oBJT3Cs5S7ym79R+3BGzS+KL99PEc13uguIeZ9sYvdA5xpECMWeyfNTNB1quIq2FzVvMwIL0oc9
	BWXI2qUMm5bgM6kJVCuG8gklwJmZjyABXIgT/qtODj4XAPU63JSTsknemVFPt8AmGRsjR2040mVem
	+oNm0Kcf7xT+sXm8LtOWSXGsoHngdvJC4itd9aopCnR4GoOdN6qnLaNowpZe7Hw0G2vqyMbFYFpbP
	BsSTH+MXzckvw1JfFXeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mO3V1-007Uql-UC; Wed, 08 Sep 2021 19:44:47 +0000
Received: from mail-io1-xd36.google.com ([2607:f8b0:4864:20::d36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mO3Uo-007UoA-8A
 for linux-rockchip@lists.infradead.org; Wed, 08 Sep 2021 19:44:35 +0000
Received: by mail-io1-xd36.google.com with SMTP id y18so4846079ioc.1
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 12:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=pEG9NavySLWdy1upAVmaIf1dDuKJCYTqEzed8oQQGD8=;
 b=CyIBEhnLQsXDqwARbirekG1YFjYcD7oCdYRow3tyboeFb2XGoxYLtD/l0BL7Bk6YuR
 VEri7WBhM4wJhhos/70mFl1baUzbF7QxtuXIcXDif2oN5A4UNXoK2kAVr+j7VQxqYp0/
 GOicdMMTXJOOZzusEjRQZxvyE8i5sPbVxqc0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=pEG9NavySLWdy1upAVmaIf1dDuKJCYTqEzed8oQQGD8=;
 b=AzjEddWQ7KsU3YG36U/FFpHFYiPUhjyNqCEsDTGLw6GCl4XMuRuq/ru2ElVjM1pqL4
 IKSz7ERsblWqsyvKHLMK+pvhpTP6JoTxTFz9qL5whGsXgszGs1+KTM+OUqLI4Bqq4v7P
 PSyShUHITtsFc/yX3sWBamluZ7Zt2RDOuMEA1kZLkkJ+9WA6K2yq1q97RMpfuo3Sq5Ma
 pmRtTAVUruVhVvxkEQfWxysJkOo3du244y9iX6EGXGmYspvTQBpK6we6Szdb+7vMZwvx
 AJfEShNQf+FJsXOVdpsV5SD1QM1gGyjjIKbfsenuiNG8flLkVFtJz9AaZukrTKHav6HB
 8ZQg==
X-Gm-Message-State: AOAM533fEX9ris6L3zCg55ILW4iq5M3D2LW+MzWOzcdGs5/WEEeqNMAF
 Achw/6smBNQAmTnbR7SqdBW9vfFuFMl3Qw==
X-Google-Smtp-Source: ABdhPJyjeYn2xHCvxZhRn/h7z/f/IJeabEuTHPOPK2uFtEsn82pD2O+FhMBROlB2IpxCE5qEu4iG6g==
X-Received: by 2002:a05:6602:3284:: with SMTP id
 d4mr1271720ioz.100.1631130272438; 
 Wed, 08 Sep 2021 12:44:32 -0700 (PDT)
Received: from mail-il1-f171.google.com (mail-il1-f171.google.com.
 [209.85.166.171])
 by smtp.gmail.com with ESMTPSA id a9sm16527ilr.36.2021.09.08.12.44.31
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Sep 2021 12:44:31 -0700 (PDT)
Received: by mail-il1-f171.google.com with SMTP id b4so3537790ilr.11
 for <linux-rockchip@lists.infradead.org>; Wed, 08 Sep 2021 12:44:31 -0700 (PDT)
X-Received: by 2002:a05:6e02:214e:: with SMTP id
 d14mr1096154ilv.142.1631130271165; 
 Wed, 08 Sep 2021 12:44:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210908111337.v2.1.I006bb36063555079b1a88f01d20e38d7e4705ae0@changeid>
In-Reply-To: <20210908111337.v2.1.I006bb36063555079b1a88f01d20e38d7e4705ae0@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Wed, 8 Sep 2021 12:44:19 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wp=zqx4j=srryypAfpRusHQinuhXjmu4G_HuBo7+PN1g@mail.gmail.com>
Message-ID: <CAD=FV=Wp=zqx4j=srryypAfpRusHQinuhXjmu4G_HuBo7+PN1g@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] clk: rockchip: rk3399: make CPU clocks critical
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-clk <linux-clk@vger.kernel.org>, 
 Chen-Yu Tsai <wenst@chromium.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210908_124434_340074_3C159BE9 
X-CRM114-Status: GOOD (  18.51  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Wed, Sep 8, 2021 at 11:14 AM Brian Norris <briannorris@chromium.org> wrote:
>
> The CPU clocks don't currently have any owner (e.g., cpufreq-dt doesn't
> enable() them -- and even if it did, it's not early enough compared to
> other consumers -- nor does arch/arm64/kernel/smp.c), and instead are
> simply assumed to be "on" all the time.
>
> They are also parents of a few other clocks which haven't been
> previously exposed for other devices to consume. If we want to expose
> those clocks, then the common clock framework may eventually choose to
> disable their parents (including the CPU PLLs) -- which is no fun for
> anyone.
>
> Thus, mark the CPU clocks as critical, to prevent them from being
> disabled implicitly.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
> Changes in v2:
>   - New, split from the patch that requires this change
>
>  drivers/clk/rockchip/clk-rk3399.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
