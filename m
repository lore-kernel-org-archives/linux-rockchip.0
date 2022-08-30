Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 48B6DECAAA1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 19:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zBqG0e9wl/l4Xh0u/MEy59l/+pGeogpBL+z0skQnTgY=; b=mltTLHDOa7ZN4Q
	0/XbrhyMbf5XhFkjNqcwFYdVZCU7DoEy++oEG7Jkd6+wOY/uSOX//FMve4bhjhzQsMxsol0GRc0Tn
	wastB4KkXJOPgFg7SjuAc6AbVbpTfdtrYmFSEcpYDEJgnBT2iu8hfFyuDTEy5AkgzYDMx9ha1KyaS
	AUzlt1pk1lA91Sp2IOz1jde40L+V0KyUDDeTpJpq+BLG1MdkalmuW8HkgCG61dNlUFAW3ouTNS0cm
	5ANFSnZEAe0bj6Mw0SYaySOEktlJn8MgivJRmAHdEFpobXDOs0Xk3xa1Mg60OFLg1kUal3QeGzkx4
	cwiw/vRvrTq8WIrS4e/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT7HK-001ZaQ-Ol; Tue, 30 Aug 2022 19:52:06 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT7Gu-001ZOR-39
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 19:51:41 +0000
Received: by mail-ed1-x534.google.com with SMTP id y64so3813966ede.2
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Aug 2022 12:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=y2BsAU9V1vGdt8p536WRg36dWX8Oh3MzpJrUWzUelg0=;
        b=PKO9Ih5HCXvgFcNbUeRyybhQkiOyrhvI0hcbzTdHIAMDpYBWL9GHOUDjjY9UdWnRNU
         Z5Ojdi4hHX6CCebuGU0G1jKXT+BjL/h/yF6zBNhY0o6zuOgUIOcw5bMFsvIG9jbbgq4F
         5Iq5WrNcC4ROpyxhCYHMZPO3M5Fhv7/kemXOs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=y2BsAU9V1vGdt8p536WRg36dWX8Oh3MzpJrUWzUelg0=;
        b=uIsaK4mFSodmMU4lqpfrJGwJ2JwYXp0awhOVJelnobB7AnzucHRWMIuVsFxcvNshkr
         Pj9CpN0P20nUFJuP/hJAfxKm5MDfhfeiQEP9TTfSroaFsM0EbU1nVcOSkoer59RP9eHx
         U9az3jZvyOrYiQSmxjRz1ANSjJKGSJogNMjLS6L02pTQxtjTVkZbWgwKQjTxY/T9n7ex
         QOqvNAgDN11U/j8mCPqvClOLT/lxp9bfMXP3aHhybPr0p/WMx7U/ObL7YkNrWY++byUF
         1qRuGKamTT9aJfnG6wOjjKV1q1DeqhVCtOOSs0NYGUmzi7rEXIF3tbjNVf8D4ON2XC7s
         f8xA==
X-Gm-Message-State: ACgBeo17JIA9fSrhVBhZggYhzSgODCPVfExQvOjPtsAYzAu5ujYwaOMP
	4tMZ1muvWxT84rvjpZXz/zzn8Sj3nep2geGp
X-Google-Smtp-Source: AA6agR7CWEeYQziD/MlE8kFOQ0sC4qE2Q1Kk9oCnisuuLWCqBagxV0wVobbxRYC9l04nS9FCI0v2fw==
X-Received: by 2002:a05:6402:120d:b0:448:e049:c665 with SMTP id c13-20020a056402120d00b00448e049c665mr2393201edw.70.1661889097608;
        Tue, 30 Aug 2022 12:51:37 -0700 (PDT)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com. [209.85.221.48])
        by smtp.gmail.com with ESMTPSA id fv29-20020a170907509d00b00711edab7622sm6209784ejc.40.2022.08.30.12.51.36
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 12:51:36 -0700 (PDT)
Received: by mail-wr1-f48.google.com with SMTP id e20so15569237wri.13
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Aug 2022 12:51:36 -0700 (PDT)
X-Received: by 2002:a5d:6881:0:b0:225:28cb:332f with SMTP id
 h1-20020a5d6881000000b0022528cb332fmr9826377wru.405.1661889096492; Tue, 30
 Aug 2022 12:51:36 -0700 (PDT)
MIME-Version: 1.0
References: <20220830123231.1.I98d30623f13b785ca77094d0c0fd4339550553b6@changeid>
In-Reply-To: <20220830123231.1.I98d30623f13b785ca77094d0c0fd4339550553b6@changeid>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 30 Aug 2022 12:51:22 -0700
X-Gmail-Original-Message-ID: <CAD=FV=XO++XMrdZmupY8ED97W6AaU=H=sB2PN=6EpRxOOo4Afw@mail.gmail.com>
Message-ID: <CAD=FV=XO++XMrdZmupY8ED97W6AaU=H=sB2PN=6EpRxOOo4Afw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Set RK3399-Gru PCLK_EDP to 24 MHz
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, zain wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_125140_209096_B77D615C 
X-CRM114-Status: GOOD (  22.39  )
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

Hi,

On Tue, Aug 30, 2022 at 12:32 PM Brian Norris <briannorris@chromium.org> wrote:
>
> We've found the AUX channel to be less reliable with PCLK_EDP at a
> higher rate (typically 25 MHz). This is especially important on systems
> with PSR-enabled panels (like Gru-Kevin), since we make heavy, constant
> use of AUX.
>
> According to Rockchip, using any rate other than 24 MHz can cause
> "problems between syncing the PHY an PCLK", which leads to all sorts of
> unreliabilities around register operations.
>
> Signed-off-by: zain wang <wzz@rock-chips.com>
> Signed-off-by: Brian Norris <briannorris@chromium.org>

nit: Sinze zain wang's SoB is first then I think either the patch
needs to be "From" zain wang or you need some different tagging, like
Co-Developed-by or something.

> ---
>
>  arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> index 45796b9fd94f..ee6095baba4d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> @@ -244,6 +244,14 @@ &dmc {
>  &edp {
>         status = "okay";
>
> +       /*
> +        * eDP PHY/clk don't sync reliably at anything other than 24 MHz. Only
> +        * set this here, because rk3399-gru.dtsi ensures we can generate this
> +        * off GPLL=600MHz, whereas some other RK3399 boards may not.
> +        */
> +       assigned-clocks = <&cru PCLK_EDP>;
> +       assigned-clock-rates = <24000000>;
> +

Yeah, this looks right to me. From my memory of the problem:

* For some reason, some devices hit it more than others (maybe just
process variance?)

* The problem affected nearly any register read or write on the eDP
controller and wasn't rk3399 specific (other Rockchip models were
impacted) but the failure rate was crazy low so it wasn't discovered
until rk3399 came about and we implemented PSR and the number of
register reads/writes to the eDP controller went through the roof.

* Most other devices use GPLL at 594 so that they can use it to make
certain standard HDMI rates. Changing other devices so GPLL = 600
wouldn't be trivial.

* It's fairly hard to change GPLL to 600 without coordinating with the
bootloader. Certainly it could be possible, but you'd have to make
sure that no important devices were impacted at boot when doing the
change. gru devices bootloaders are the only known ones to set GPLL to
600 MHz.


So:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
