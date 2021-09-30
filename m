Return-Path: <SRS0=3LcM=OU=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44F2FC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 16:17:47 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0AF5B61350
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Sep 2021 16:17:47 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 0AF5B61350
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KbRHkKk0U19OLPyyI0sl+aBbxaDnpIFJUTo/oYEy1Jc=; b=JC5frH2iA3JSDA
	D6ygQFd4cONO4DcTWkFBB9Zbvbp3vdWGaeEEuRYg4s7OEzLJTASj5Wr6R8V30xj2xsd+kXaICuY2s
	T4X3mCS5EY8ocE2T0k4ZG87ZZx7IGbJT4X4E6iP3vxyh85KeALB0bFt3YOzBX/nR5GZkT8KuJJDDn
	pPU4CFUAomRY4VxAAjDb1qd+WKbRypvWBprpLy53w8a/AjFM4eEb2o5u/hdEOi/w37VE3nyBwSadz
	Hd+Kbpznhvz5Lv/1ZiS+oEfs5Qst/PpbU15YN/VrKrUf4qFVmB6GsAOLoZTk6DSf5jYtH5QaW50T7
	ZSkDIRRVmuXrfy+0zgow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVykf-00FC3h-PM; Thu, 30 Sep 2021 16:17:41 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVykc-00FC1M-Nv
 for linux-rockchip@lists.infradead.org; Thu, 30 Sep 2021 16:17:40 +0000
Received: by mail-lf1-x130.google.com with SMTP id b15so27421036lfe.7
 for <linux-rockchip@lists.infradead.org>; Thu, 30 Sep 2021 09:17:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=9AydplMO/OhchranFJNxsujjEB+Eo9pfrveqj6lBlFg=;
 b=qUffUWOuFP3/0X04i77M7wE7tr9M3z9zUShjb3xRJsb7HIXmRnl2l3AxGvVjar7aFA
 unF5eCBPPT8czCY8/I4w32GSWCvamltkC677hJ2bFllO97iK036m/SlqreWhRTvmPLHQ
 4s2kSLW1ppCmS1NeQY3xYj2+0YKirmOPQhblVrGWGe+t4ZjIGZIP7wSWoJrRdXG7wSuW
 xL48DAlsGwZkwhAl3NEq4/XTb8i9C/M9x0JWQZw1pJ2ii6viWDd/GD+dghS7TTzjTKGa
 cPHyik+7LLS2fCB3XJkPyzqyg53L8yltVZITOkM4M/zR9KPrXiSqbMWZD9JeST//3i11
 9rSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=9AydplMO/OhchranFJNxsujjEB+Eo9pfrveqj6lBlFg=;
 b=hiiphuRZFX7+N7yNX8maKFsp0QDRHo8ouiyUWPlwFsBQeA+3nAQCRwxOj+UXIIh8GQ
 xuIlrENzINstVGULNcP9U04fpQYcHMOY19XRspGLltGRfMw0RMCl16pDOi4qrA955qHt
 8avWuwM52PELjlB/BVi/uracPW0mK79EBNR4/RiB/i5RVoqufIfWVpmWZ64uMScE7Ucr
 HCCJpQpU55i/f2FVgsztbXssTPObeBi+pr10CkFq181GBRkjAfzy8cBZyUp+eDK9AVY7
 Vu6+lIZvokSjSUX1qDzQrdwwqYM0hxlnve0u6Fy4ZHIZnl4l0yeS6JJlMoby5O+Le0vY
 H+fA==
X-Gm-Message-State: AOAM532IadwiEQNOel1H2E+2k5k0ByXFMyWKEJrsI1YuhrZs6ofIAMgN
 1yWt3clqShaOrGBoSLQwgpR8zTe5tSJsQn8OsS2/Mw==
X-Google-Smtp-Source: ABdhPJy+kwam2qnCIJA421Yva4o4+CPlZrt6f87kDQGjhOta3fQWnFUPvQVO3ABPx0RiMmhb2e/ysCCV5bMgqrYfB1A=
X-Received: by 2002:a2e:4e11:: with SMTP id c17mr6598678ljb.19.1633018656196; 
 Thu, 30 Sep 2021 09:17:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210930095225.9718-1-jbx6244@gmail.com>
 <20210930095225.9718-3-jbx6244@gmail.com>
In-Reply-To: <20210930095225.9718-3-jbx6244@gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 30 Sep 2021 18:17:24 +0200
Message-ID: <CACRpkdZfzQK4LcwkwY-AbfXUaMssfUpKSa4VOSnuVLQPdapCYg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: change gpio nodenames
To: Johan Jonker <jbx6244@gmail.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Rob Herring <robh+dt@kernel.org>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, 
 Linux ARM <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, 
 linux-kernel <linux-kernel@vger.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210930_091738_828582_B55A1E27 
X-CRM114-Status: UNSURE (   8.75  )
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

On Thu, Sep 30, 2021 at 11:52 AM Johan Jonker <jbx6244@gmail.com> wrote:

> Currently all gpio nodenames are sort of identical to there label.
> Nodenames should be of a generic type, so change them all.
>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Please funnel this through the SoC tree.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
