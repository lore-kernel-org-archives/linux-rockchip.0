Return-Path: <SRS0=LkMs=CZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5CA3C43461
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 12:16:31 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EFE99208E4
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2020 12:16:30 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qRt7Vv1S";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=amarulasolutions.com header.i=@amarulasolutions.com header.b="Me3fWKlB"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EFE99208E4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=amarulasolutions.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MTUJvFyg/xw/6+VFcJ/ODObbFluAKwNI/WvVpGsaDlg=; b=qRt7Vv1SQi8ISZLs5JvF+yOnz
	CyY9rxoWqFJ+mFXfrkFHnf575QbL3p3AVNVxXx2QDgrJlZDNrYV12ip9wPz7lpnPB4J+Nf4gKwU5N
	tMGabV58VC4fGMxVtgrPjlKONcI2ZT4l4UwZ1BEQtkbOVGr50Uco40MXYWPI/KRlmCTDwSTqiC4dQ
	oAbHcoXH19hwXKijeo4FSTI+ZJrCj/cY991hn2oURXjotEzyRnbGT4vAVIm3ZTPLKX7EXD0Al4MF2
	NeD8TiDmMlinpp6cvfRijkcp21w2Cg12XQq7+4V11UM88+3LnGt7iQgbyE24r7sOZ9RguoNc1xZPo
	oq8iF9kNQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kIWMK-0003AE-W1; Wed, 16 Sep 2020 12:16:25 +0000
Received: from mail-ej1-x643.google.com ([2a00:1450:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIWMH-00038z-4z
 for linux-rockchip@lists.infradead.org; Wed, 16 Sep 2020 12:16:22 +0000
Received: by mail-ej1-x643.google.com with SMTP id nw23so10023254ejb.4
 for <linux-rockchip@lists.infradead.org>; Wed, 16 Sep 2020 05:16:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wkEKY9veHTwPibIHFpbD04kPDOQlB3REzNn2vqHPLEE=;
 b=Me3fWKlBz/bqv1qyH6RCJiLuuY/IJw7XNFXLrVrwKYKHruhMxmGWqHk9uy41rfgEVY
 LZqjwAG/jqihFG/PL/OHw5RvGAFiWrp4Hy/kLOSYPdzzZrN7Vcygd82ikdCqFLFyRcCr
 CCaE+kAbk3zaBPabqbIojCrQ5S54k+tX8KPbs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wkEKY9veHTwPibIHFpbD04kPDOQlB3REzNn2vqHPLEE=;
 b=TQXes2KB1Imk5lxzAkN8pwThPQyDgqy+CEh0eg8KwU2WQoSlIVim1hPhvE4chIhIHU
 FlPXpmQ8MVp+lVbFbQw+aSIfwWxj763Lxp6GL1D8CPFlNYrKtVmS9B09EQXPwg3x4qIz
 iCeCtgfaHBIPCholPANXDLSzKQLrG3gPPfK37fOpzmBj/w8JZsDWRqpZ7kZM6fC3m9TV
 DGjdVK4NeN03PiCJYD1ZQSuQOmcaMCSSx79yAFbhGNJFYjH+JZLu9DGkbxCOt0eubGQg
 0F6vSdN5/nu/YyyIeQawVbiDlqPAmaMfITwNruOi8qx23LBYkr8h7Rb9PqkNOGppOGoi
 P3eA==
X-Gm-Message-State: AOAM532pJL4U8E+oVPYP2hl56Wu8x1Kf44T7qZ+Ay3Fqee33tMuc+/pv
 0Zn2WGCENxDbiJLUjRZd0DQ354vZfWtQAh/VB02dWA==
X-Google-Smtp-Source: ABdhPJyA99M6JuluYGiUPYdhAAyel9XALtRQxBmx8btvP1d+cDssH7Igzx6HlNtOGtIsFZ4JDWuY/U+IkJrWfmIyos8=
X-Received: by 2002:a17:906:46d5:: with SMTP id
 k21mr24564281ejs.247.1600258577984; 
 Wed, 16 Sep 2020 05:16:17 -0700 (PDT)
MIME-Version: 1.0
References: <20200831161436.134186-1-jagan@amarulasolutions.com>
 <6d3de17f-1922-e565-6a6d-b11b2f4be04b@rock-chips.com>
 <8e9567e3-cb75-7d74-1e50-728658a1b0e0@rock-chips.com>
In-Reply-To: <8e9567e3-cb75-7d74-1e50-728658a1b0e0@rock-chips.com>
From: Jagan Teki <jagan@amarulasolutions.com>
Date: Wed, 16 Sep 2020 17:46:06 +0530
Message-ID: <CAMty3ZAtZr_OoEVQxP-YdqLeT4SUbz6BqBGd9fZmrsVROS+xxw@mail.gmail.com>
Subject: Re: [PATCH] clk: rockchip: Fix overflow rate during fractional
 approximation
To: "elaine.zhang" <zhangqing@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200916_081621_526536_967B4AB5 
X-CRM114-Status: UNSURE (   9.93  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Heiko Stuebner <heiko@sntech.de>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Finley Xiao <finley.xiao@rock-chips.com>,
 =?UTF-8?B?5byg5pm0?= <elaine.zhang@rock-chips.com>,
 linux-amarula <linux-amarula@amarulasolutions.com>,
 linux-clk <linux-clk@vger.kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

On Tue, Sep 15, 2020 at 7:10 AM elaine.zhang <zhangqing@rock-chips.com> wrote:
>
> hi,
>
> We have two submissions which I hope will be helpful to you.
>
> https://patchwork.kernel.org/patch/11272465/
> https://patchwork.kernel.org/patch/11272471/

I can see this, I have reconstructed the fractional divider handling
for px30 instead of all rockchiip platforms, is it okay to send
px30-alone fractional div handling support?


>
>
> A few more notes:
> 1. DCLK does not recommend the use of fractional frequency divider.
> Generally, DCLK will monopolize a PLL, and the relationship between DCLK
> frequency and PLL frequency is 1:1.
> 2, half-div, not all SOC support, detailed need to see TRM.

Can you point me the Page number on TRM?

Jagan.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
