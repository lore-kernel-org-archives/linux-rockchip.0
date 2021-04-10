Return-Path: <SRS0=4pKU=JH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAFB2C433ED
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Apr 2021 18:31:15 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5E8D861056
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Apr 2021 18:31:15 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 5E8D861056
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ujTV9oIo0PvYXVGkTy03hGIz6q4AHZH5X2ZcFdZFpv8=; b=VIp1cwoic9xMAKWmdqZM5Dzxi
	gO9YYzpuPzwIX3QzndPgPCJPqDwKcw2XhWL+8JNWNIIshddkYpjFhXBx8IN3Sj4eC+tw8bBux5zHa
	IVDS8Z5VUUHo4RNCJNuA7+qf3xyJv97iQD5BauRqf23olYXbl0Z7gbmdd6/SFCARtEoqaWVoVy8FD
	8NuTd4bLGV8aHiyXE5nypXJhdrlQsSZK4LDHpgY8g8XjGvdi5sw7Vcx2sLgH6w6z1syI3Ua7+b7oW
	CT6Q8gcYWnzqm9w/BBUR2LhGvg1BxDaPGA83shTIac7sMNAxUQJQAHZH1CJWFWCtqrO1+B1lcWtgF
	ZrZneVvyQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVINx-003G7n-Nd; Sat, 10 Apr 2021 18:31:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVINv-003G6v-UL
 for linux-rockchip@desiato.infradead.org; Sat, 10 Apr 2021 18:31:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=LkUZZwgRVdPAw6SfJBLkYKXJMvX4yLBFHqIQSj02keY=; b=NR/7wmeXyN2rofoQHVcCn1fLeD
 4Ndrg0Jp5l9mR206BA9VBh88FVdcfavtTAqgIkv8K0euOAjzKautBnVRdIn7iOqYPaw6s4a0ezq21
 EN8mRlvTu2ZPB/UxyOYHaDOQ1/oUfFKoqRBeGRz/1R0fWSLOusV5dx6iG3TUVV2Se9/wI+BFWVx5y
 nt9xD3+C9YSf0WOAamIj4eadGjgnVHInbnT9LxQG/z+Ce7jtmS44JyqIIzj8/3Erj1ybS6przNSg7
 bHbzSFfoV59oMkopxJEhfmhNd1Tkg2ARv0K/E+TxF8iQJqCJ6gEYyjsKAne55jNA9N+lf9Le1XgEj
 4obDkcEQ==;
Received: from mail-qv1-xf30.google.com ([2607:f8b0:4864:20::f30])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVINt-005DHh-Aa
 for linux-rockchip@lists.infradead.org; Sat, 10 Apr 2021 18:31:06 +0000
Received: by mail-qv1-xf30.google.com with SMTP id h3so3581115qve.13
 for <linux-rockchip@lists.infradead.org>; Sat, 10 Apr 2021 11:31:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=LkUZZwgRVdPAw6SfJBLkYKXJMvX4yLBFHqIQSj02keY=;
 b=GM3DEtG69NU3Ma6nlXcAjCqsr9X33+vSX4lvQpotPN/wZx0uEUY9h5tNvBkFiv8rBe
 F/89hF4pFNtoeEFsOIy7RwxKQgHcNCqXExh4ljR0BUXrhpxy0KpXgHnqkb55n+FItdeO
 hy2NGzh9glSGAqpdq/uXe5v9dQyWPQS/29E3c/+AOqYYz462DOhAKe0ZEiC4jpN3SdPg
 EzyM8e8S2Uq1n5cZehYJVt7nIGBUzBwArbx0Jk8HJx6LpoRanrouunzT7DnjQcjs5bW4
 /Jmxvt3YU3sYrxUlEMPn+WGfijkCQSgvW64dPBiyYuf4AaxIGjRYcL6xIOjjgMut3Mdi
 qvbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=LkUZZwgRVdPAw6SfJBLkYKXJMvX4yLBFHqIQSj02keY=;
 b=dU853EO3m1B7USW+tzQORtqpXSYIxjBVjqEw3jHGAV6sQ0/Vn87NPXM0aeHqJUUCHc
 OLJjsbDdMrEhaFS4nr2H3opHoUjqKGznGTyIDEAkwHi0evR1wK4mL/wpQT5/8Y8hPKJg
 oNvjCywaKlNXAw7eAdcdUXvjSnjZKQ1gTvoGM0Ei9PiWgB6RFO4djJJqLIVo+umSpVnl
 VvSHXl0w8d8cQ2MwR0tqN3VVZiLAVs8Kcb+DQ+zUq9p+UbmEFiWYKqmKlqbby4ezoknu
 B9vGJKagHKWhMvD6NFFbUa2EFZa/kWF+Qvj7MoplJarc13nBLlF0/PjrZ+/5UWRy6tEF
 03mA==
X-Gm-Message-State: AOAM532v2QP/poDSTPieOadSNwJiguVPxKaoX5hOzDbJ2FHlUkBPU037
 3TXDaWLp1w1o8zZfVCxCW8R3fVVeOzLD0yNuJYI=
X-Google-Smtp-Source: ABdhPJxD+03g3bW2o3Wm0k4uauFUOuHCFCfaUHZuWaYB0v9YC846umySpnMOycHOVXpvrV+xYJdjEUedybGGdzR81gg=
X-Received: by 2002:a05:6214:7e6:: with SMTP id
 bp6mr990801qvb.37.1618079463452; 
 Sat, 10 Apr 2021 11:31:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210304013342.1106361-1-jay.xu@rock-chips.com>
 <20210319081441.368358-1-jay.xu@rock-chips.com>
 <CACRpkdY+A4bsW28yXRGeGVnK_UcR70sMeX3jpABGVJc49A-xcg@mail.gmail.com>
 <CAAEAJfB3csiXBtAioV768PYMb4Sv8UYvmaVaOXZDhJWEzXPLeA@mail.gmail.com>
 <CACRpkdYYpgFWH9pVOT=o7unWXRqVeHtvsJgbByNGZ170CZ_FXA@mail.gmail.com>
In-Reply-To: <CACRpkdYYpgFWH9pVOT=o7unWXRqVeHtvsJgbByNGZ170CZ_FXA@mail.gmail.com>
From: Peter Geis <pgwipeout@gmail.com>
Date: Sat, 10 Apr 2021 14:30:52 -0400
Message-ID: <CAMdYzYqk3k0UqCyFwB+W1tKKKTg39Mx0Vdsrj+eeC58nARaumQ@mail.gmail.com>
Subject: Re: [PATCH v4] pinctrl: rockchip: add support for rk3568
To: Linus Walleij <linus.walleij@linaro.org>
Cc: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_113105_411954_9ECA0B4B 
X-CRM114-Status: GOOD (  15.57  )
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

Good Afternoon,

I'm currently working on the rk3566 early bringup support in mainline
and encountered an issue with this patch set.
Unfortunately in the rk3568/rk3566 the gpio registers switched to the
(16 bits write enable / 16 bits config) register format that other
rockchip registers use.
This differs from previous chips where all 32 bits were used for gpio
configuration.
The patch fails to account for this, which causes all gpios to fail to function.

For clarity, this only affects GPIO_SWPORT_DR and GPIO_SWPORT_DDR.

I'm currently working on a patch to fix this issue, but I know that
you are planning on breaking out the gpio functions into a separate
driver and wanted to make you aware of this immediately.

Very Respectfully,
Peter Geis

On Fri, Apr 9, 2021 at 8:38 AM Linus Walleij <linus.walleij@linaro.org> wrote:
>
> On Fri, Apr 9, 2021 at 6:17 AM Ezequiel Garcia
> <ezequiel@vanguardiasur.com.ar> wrote:
>
> > Seems we are missing the dt-bindings for the new compatible string
> > "rockchip,rk3568-pinctrl". Is there a patch for it somewhere?
>
> Nope please send one :)
>
> Yours,
> Linus Walleij
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
