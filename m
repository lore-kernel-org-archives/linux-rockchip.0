Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDD63C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Feb 2022 14:55:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GmWN2d1W8E4iPZ4w/hvl6MSeRxuwrRkRDiwLbPsap2Y=; b=FtMrFHNkxhC7Ub
	91m929lrZIwa3UarH42htHTH6k9tlY9nyHqju5ISvpjGSVpIJ4dmNDiA62chEjm8cTbsS2FstmjW9
	iTWaQeXP1L04d2oUuevQVrIMpSKWPlBszQ9NUK8z3Iz7TcoDtV5ARiFZZM7/tUxL2MX73QWue6PiQ
	fvTl1Uvo16o9OtrnBBwv8TQpJ11pzkpFKrj7d38Hc7GGfPLQUHvmM4DBPvaVr02Gmkpej84aNMfZx
	NdG4E3xsoxxMbv8ilS1FZ5rGcT2xocFRUeo8YcPyKiqUrzQ5P0L2uZxiFQRZIz03KZXE4s5LUEXsy
	vBYM9YuHnF/zkswyMgyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKLib-007Ozc-KM; Wed, 16 Feb 2022 14:55:45 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKLiY-007Owp-Re
 for linux-rockchip@lists.infradead.org; Wed, 16 Feb 2022 14:55:44 +0000
Received: by mail-ed1-x52c.google.com with SMTP id t21so4358266edd.3
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Feb 2022 06:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=bgdev-pl.20210112.gappssmtp.com; s=20210112;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iuYrqVGn1TXdwN+P98XHhqL2+XquzgdKMr559j4kzX0=;
 b=m7KLBnpGSaAT+kElQbyWCpRqg8l5Xarj7SE9j9Q+Gl2zvdSTaYahgURCT8X5H2Ni2L
 vKgECZZX8XD2Y+QnZUn27ISb3qicevOkHpXjolTw4zvDUEZ72k1XrDUvmMrxR54sLgeY
 n13R9STJnkboF2nq0JYVV0CkTfuV7LwJVNvxNS5xWP5B6cH2rixzqtQf2Cdo2K3XlnwY
 Y3/XG4x8s2oNS9/DZTMyIJntOp4KAtdJtIzNeA4e5c8HhqkwQdzAK+3eH3jMcrW9BiHV
 j3lDpWbx9LLmAtuLKrS+VdGFzIfr2OJ8Hil2kSdMkWrSio4XnljeNfior5cdXBv/M9nm
 55Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iuYrqVGn1TXdwN+P98XHhqL2+XquzgdKMr559j4kzX0=;
 b=UdzbpuVtVC6ei6+vJ6XiHzPJgYWG0KWhNRc5BeiFcoiYer8SYSGShd4ZNgg0uxw2Hd
 TpBc9HkPC3KZkGyLIM+JwSzKsyXVYOrO45wadiJiAkxfNNs4VT65/f8ReFz+uds28JBv
 YrmK7dHQ2E7wuHJ0J0EaG6GOP2hWEwWz+ji/us/KIu3S8P1W6WLTfQqGHntGGnUap1kn
 acFSkZUvzZfnGnVaK1MpsPrvQAaz7wiKEUqkyXt6is8vpg8KVt3esWcK8Q1R9sbmBUZn
 /mERW17M1hAK36tJWoqiOIP2zt/duXfuiP53eAtZ+ddUbzT6hQHm8bs1Gm+F9E/+dg+7
 WkdQ==
X-Gm-Message-State: AOAM532Lg4j8Pq9VetZzKA1u6Ge1M/h9HMzLhX24smU+bOZ2hYhZJEsy
 d/wwD0xBmPyTarWAEj1L4ndBYttWHxfajYWZl1nSSojooWI=
X-Google-Smtp-Source: ABdhPJzRulNtz/zoAWp3FH3AaM0DWDfR2fpgNtKv4EW2Sx9/HjO3bwTxfgHobgEyuXG7kSkT/MQf3yK3aZjoHeh44u4=
X-Received: by 2002:a05:6402:5194:b0:409:97ec:3bdc with SMTP id
 q20-20020a056402519400b0040997ec3bdcmr3466054edd.314.1645023340859; Wed, 16
 Feb 2022 06:55:40 -0800 (PST)
MIME-Version: 1.0
References: <20220212205048.43862-1-samuel@sholland.org>
In-Reply-To: <20220212205048.43862-1-samuel@sholland.org>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 16 Feb 2022 15:55:30 +0100
Message-ID: <CAMRc=Me8cmiJSu3dKDgzhKZchSYyC0KmnrLSDL0ckr_uASLv-g@mail.gmail.com>
Subject: Re: [PATCH] gpio: rockchip: Reset int_bothedge when changing trigger
To: Samuel Holland <samuel@sholland.org>
Cc: Linus Walleij <linus.walleij@linaro.org>, Heiko Stuebner <heiko@sntech.de>,
 Jianqun Xu <jay.xu@rock-chips.com>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Guillaume Savaton <guillaume@baierouge.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220216_065542_916603_A86B0109 
X-CRM114-Status: GOOD (  10.97  )
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

On Sat, Feb 12, 2022 at 9:50 PM Samuel Holland <samuel@sholland.org> wrote:
>
> With v2 hardware, an IRQ can be configured to trigger on both edges via
> a bit in the int_bothedge register. Currently, the driver sets this bit
> when changing the trigger type to IRQ_TYPE_EDGE_BOTH, but fails to reset
> this bit if the trigger type is later changed to something else. This
> causes spurious IRQs, and when using gpio-keys with wakeup-event-action
> set to EV_ACT_(DE)ASSERTED, those IRQs translate into spurious wakeups.
>
> Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
> Reported-by: Guillaume Savaton <guillaume@baierouge.fr>
> Tested-by: Guillaume Savaton <guillaume@baierouge.fr>
> Signed-off-by: Samuel Holland <samuel@sholland.org>
> ---

Queued for fixes, thanks!

Bart

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
