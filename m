Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDDFEC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 21:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NSsmfgGEcjjUOUPzX/JV5U/37qF3UUJ/9UFIyc55+D0=; b=Sm5lsrE2fD3mvv
	kdHfXJvX6r4AjPPowfn0o9QfbfxPBAK9IZDOegIjjP/pmqO8L+ufE8HmYqN1j9L4zId/8G9JP7vOo
	/MMXNsUXjHFsNUNEPF6AKR5+8HIMfc/OFDmDKZwrCUk7yk0UiDKkK1+IezzK9ACRQ368o0XwcKKru
	MjftPYcbmQN3SxrA1IajgAaS6DIuxKyUoUE0cScn/xffR+tM2H1EKot2eZqkT5J2lYy6mt6ar12GN
	X9rh04AmmtQZEDFRDuLYEjFhCnrfQ+Uc7X4GKkbMKo+0u0jIg+JDFrgOZzL8mjrkaZMvenN0/VLJm
	kv91BULq9KP859xDtvNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1notST-008e6K-Ug; Wed, 11 May 2022 21:01:21 +0000
Received: from mail-oi1-x22e.google.com ([2607:f8b0:4864:20::22e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1notSP-008e47-NV
 for linux-rockchip@lists.infradead.org; Wed, 11 May 2022 21:01:19 +0000
Received: by mail-oi1-x22e.google.com with SMTP id w123so4176520oiw.5
 for <linux-rockchip@lists.infradead.org>; Wed, 11 May 2022 14:01:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Liqad/zEjO4owGRvsF06yHturrZoCWiadtMW9YDcK7c=;
 b=ZqfBOUlvhs6OKpanNWcJHJd8Ui2ebmZ56D/ffy3DR05BcxnHuF8MUze2jfyF76+1PO
 w+EOxIOnno5zi8LdsZOqAv4uHy5zULFOpBzfiYPF+khaq2NEp0/xwgLX0VDEMmyTCk2D
 cxCT/tL5T6qKRRM7Bzg/OJl2yaaBvLQXt5/eI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Liqad/zEjO4owGRvsF06yHturrZoCWiadtMW9YDcK7c=;
 b=EkOIWN6NTeXVhHl4EjnxRqJnnN1sOQ7zBneyOEy/gdrKk6J09mnA9UtjYKhvzQ8qYO
 +LCmnvZP8xRg5+yvJ9lf1OxqHruNvHyFPDrjJ097ewA2Aw63VFuih+ujoor05ECFb5yX
 UdfqIzPH4Fh+QSrKw386zjPTLf7uxPxV9wAXhM8KuwM/G4A6oP0lSWQrbAfnwF7x5k/t
 9Qqif6XUHbLDoXXiFdBcssPIlMpXkgDtIGgUZGQspazY43Wposb/d/2fcmQcmJAbuGgo
 1Qz1oRDT66W+QQlhqbMcwuid2j5skDAnu+Lq2Xqx+mgGtLBwJtcTzAzwo5Yk5jyQ/pmZ
 MoHg==
X-Gm-Message-State: AOAM5305cK85kL2WzLnquBm+owiW6iqoZ3GiWbcGcyHgfF4NVdpiEviG
 Y86ZARtj23bH8YxY7k6jiLlauo8vbAfFGQ==
X-Google-Smtp-Source: ABdhPJw00LdvAsbLGktulyWoaLONzf15V8JQc462Gwq2+l0PfC9F9D0KZBdy4rSJeZnQj6WhRsyDDQ==
X-Received: by 2002:a05:6808:1b08:b0:326:6b6b:91ce with SMTP id
 bx8-20020a0568081b0800b003266b6b91cemr3513459oib.206.1652302874491; 
 Wed, 11 May 2022 14:01:14 -0700 (PDT)
Received: from mail-ot1-f47.google.com (mail-ot1-f47.google.com.
 [209.85.210.47]) by smtp.gmail.com with ESMTPSA id
 ek17-20020a056870f61100b000d6c86ea98dsm1044254oab.1.2022.05.11.14.01.13
 for <linux-rockchip@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 May 2022 14:01:13 -0700 (PDT)
Received: by mail-ot1-f47.google.com with SMTP id
 y14-20020a9d460e000000b00605ee347da1so1317198ote.8
 for <linux-rockchip@lists.infradead.org>; Wed, 11 May 2022 14:01:13 -0700 (PDT)
X-Received: by 2002:a9d:22e9:0:b0:605:d008:c1d7 with SMTP id
 y96-20020a9d22e9000000b00605d008c1d7mr1549783ota.186.1652302872756; Wed, 11
 May 2022 14:01:12 -0700 (PDT)
MIME-Version: 1.0
References: <202205120335.LzAksOZI-lkp@intel.com>
In-Reply-To: <202205120335.LzAksOZI-lkp@intel.com>
From: Brian Norris <briannorris@chromium.org>
Date: Wed, 11 May 2022 14:01:01 -0700
X-Gmail-Original-Message-ID: <CA+ASDXO1JDKf-vBB0gWdYKD9vMMoMXYRL2E42HJtnbOvMP7jPA@mail.gmail.com>
Message-ID: <CA+ASDXO1JDKf-vBB0gWdYKD9vMMoMXYRL2E42HJtnbOvMP7jPA@mail.gmail.com>
Subject: Re: [linux-next:master 9518/11094] ERROR: modpost:
 "rockchip_pmu_unblock" [drivers/devfreq/rk3399_dmc.ko] undefined!
To: kernel test robot <lkp@intel.com>
Cc: llvm@lists.linux.dev, kbuild-all@lists.01.org, 
 Linux Memory Management List <linux-mm@kvack.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Douglas Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_140117_826270_390B943F 
X-CRM114-Status: UNSURE (   9.37  )
X-CRM114-Notice: Please train this message.
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

On Wed, May 11, 2022 at 12:53 PM kernel test robot <lkp@intel.com> wrote:
> Note: the linux-next/master HEAD 6107040c99d5dfc920721c198d45ed2d639b113a builds fine.
>       It may have been fixed somewhere.

Indeed, I think it has been. That's what this was for:

add9f6f30e54 soc: rockchip: Fix compile-testing SoC drivers
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/commit/?h=v5.19-armsoc/drivers&id=add9f6f30e54b5c07e7a0260cda459ef1d9646b7

I discovered it in parallel to this submission, so they weren't queued
together as preparation or Fixes.

Brian

> All errors (new ones prefixed by >>, old ones prefixed by <<):
>
> >> ERROR: modpost: "rockchip_pmu_unblock" [drivers/devfreq/rk3399_dmc.ko] undefined!
> >> ERROR: modpost: "rockchip_pmu_block" [drivers/devfreq/rk3399_dmc.ko] undefined!

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
