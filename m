Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BF8DEA71AA
	for <linux-rockchip@archiver.kernel.org>; Sun, 19 Apr 2026 21:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MY+S0jW41PYtNH3TnM4OvX/zw6ugbte3Q8aB5CQn7H4=; b=v6Yz0M04nNME6S
	Ecq2CflopduATVAwda3GiZpyPqyNZyxd+hBne+C0knqubUNQdKsZNmTVafjWWYAAKOjTnS6bypqRL
	UczBt7AS/H+vAdoBPR99dSm6yN5eHgHgnEAjSrgX/4t71GXNDxKkvzWbFAo0RAkW9LY0gNRsu6n1n
	m/fcoNCcBJZ3oqVRkvTYMv7DXL7BZF/QF7rgn6XSo6aOpTpiMMrVXHhFAz/Zlh7LF6nEwanVbizFA
	MM+QCanrLE3ft9PpqJJv4wLZa9cy2ddT67M1Srm6v2nduq+f3/mkofRg8WYhatKsVN9Pn+lFkMpb2
	hPKqkER15NUBIei7NGUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEZv3-000000066pf-0BUb;
	Sun, 19 Apr 2026 21:43:09 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wEZuz-000000066oc-38Vv
	for linux-rockchip@lists.infradead.org;
	Sun, 19 Apr 2026 21:43:07 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id E87324456E
	for <linux-rockchip@lists.infradead.org>; Sun, 19 Apr 2026 21:43:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8636C2BCB9
	for <linux-rockchip@lists.infradead.org>; Sun, 19 Apr 2026 21:43:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776634984;
	bh=4jpSLr3O/lNvtNtYaN3mKKdH9bxXsImrwjUfU90LEqA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=hqG7RrtihfJdrJ6OZFOR462gSPMnJHMqK+JIR8x0qWYPS9EZ/Bvxqos3Una4AADqK
	 Ij/7OzGmkoPi/M90hGRcdm0syEZCHXcdLmaNcgIVUQeknor10CL21Lz/gK3pIO/YCV
	 WMXpHUq5bjTF83K9fTxRTTdIEdaeZX+B5/rw0lU5S0+YMqF87A81fnY+ZKHadB0bba
	 WKgq/b/mugd3qJXtRbOm/7eF/nZMDMyWJoRyLrRh9brrWcKtCTxRXI5usaG4XBkh5l
	 YHJbsSkWTiZL/Y7MBleNw4AU+atbQUSPAVtCJ6lhD6UTujWoo/OCmmXln70N+SgmW/
	 wQ3tJ8I1AsCcg==
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-5a283c44478so4079356e87.3
        for <linux-rockchip@lists.infradead.org>; Sun, 19 Apr 2026 14:43:04 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AFNElJ9L4TElw2P/1jjg6v2TPljIafA6zJldiGu5H3mBLfXD9S86oQt0Yh2UsdWQsffp3VOwlzcTldRpZuQt4cMw3A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzeclFJNsHdnVtYxSqLDTdbzUNiU9TYO1hT9Ne6oPsdLH9RdJDT
	YA6hVnP8qF9lxXnSBvoJxF62qdBFKZrqIa+DmOHduhMRPErYvulj+/cK3V7fAjorIYqHzfCGGF0
	9gE15VHH2dU1r0REbiacyulN7w4pf6Rw=
X-Received: by 2002:a05:6512:220c:b0:5a4:c6f:d43a with SMTP id
 2adb3069b0e04-5a4172de516mr3364349e87.36.1776634983477; Sun, 19 Apr 2026
 14:43:03 -0700 (PDT)
MIME-Version: 1.0
References: <20260416154928.2103388-1-jonas@kwiboo.se>
In-Reply-To: <20260416154928.2103388-1-jonas@kwiboo.se>
From: Linus Walleij <linusw@kernel.org>
Date: Sun, 19 Apr 2026 23:42:51 +0200
X-Gmail-Original-Message-ID: <CAD++jL=ETs2q5FYr_zWYFbnqbCx3DmT4MarAHmy_KA1GggnHcw@mail.gmail.com>
X-Gm-Features: AQROBzAepQPgH7Yy776Lv2UHkdRyF0oPi28JCu9KzCWx0YubHgHTG4J0DP8U52E
Message-ID: <CAD++jL=ETs2q5FYr_zWYFbnqbCx3DmT4MarAHmy_KA1GggnHcw@mail.gmail.com>
Subject: Re: [PATCH] gpio: rockchip: Fix GPIO after convert to dynamic base allocation
To: Jonas Karlman <jonas@kwiboo.se>
Cc: Bartosz Golaszewski <brgl@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, 
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>, linux-gpio@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260419_144306_593739_08E7E27F 
X-CRM114-Status: UNSURE (   7.84  )
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

Thanks for fixing this Jonas,

this also uses the function in the right way: instead of using
gc->base which just happened to match the pin base it passes
bank->pin_base which makes a lot of sense.

(My original response mail was a bit whimsical because I
didn't realize the offset passed as argument 1 is local and not
global.... but you figured that out.)

Reviewed-by: Linus Walleij <linusw@kernel.org>

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
