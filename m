Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 09B5DC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Apr 2022 22:37:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeP0O5j+umfHZHX/q9zk9Vn+lWbL3Rv5PeBejjmb7UY=; b=abA/r0edNc8DOj
	xtckbTaWl0ZCI8Vf28u9HC8rcEqKnd9lqVQOfo0CGyyBRKKe7nudQ7QVXGl5gSc7UpP1SyBAeZ8sS
	KsI035Suu2Jb7bFCWrD8yIqbWMjuNhu+M0T4AHBZ5kacpnl7Jtv42d1ljuxYq5s+qN5e8bH3Cg3de
	ODAXzknnlOTTijV6bHBudlaaQ8Sgut0lPaZ2Dt7ZiyVYBEIUoFkFUjtS16nZZhZ6dYqRgplcmutFT
	Fr1tSqTmUobLSpO5CVE/4FFZQvt0Rllm3tqevoowWD0iV0Lw/6wRz5ujxi9jQfjSPvGA+tOiYLoRx
	ZV1dm3v0Zski5MtRSP4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngwTV-006XnM-7H; Tue, 19 Apr 2022 22:37:33 +0000
Received: from mail-yb1-xb36.google.com ([2607:f8b0:4864:20::b36])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngwTS-006Xkz-2T
 for linux-rockchip@lists.infradead.org; Tue, 19 Apr 2022 22:37:31 +0000
Received: by mail-yb1-xb36.google.com with SMTP id f17so33646418ybj.10
 for <linux-rockchip@lists.infradead.org>; Tue, 19 Apr 2022 15:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=VHvW+03ED2tYu4Zc1Qx/QXTIQqIJndOUJvkwVF3dUzw=;
 b=KC1Vt+5i5fAy2PedzcgEhblxFonWCsWxZpgTS3ljUOCjn93WSPU4jpdQBgWt3mjRF8
 41qJaRHQ+sEjHpeonxCeuEz7a8/lbqS3c2u9kkrNFPwCuIEcvp0JwKLJ/b5T9/B2E7up
 VSG7LmWs28u/snGIGkbpFnNxqMCX1ah4wXYQSyr/vhGaC9DpweEVspQNWhcgF1x5UKP+
 oLqNKs5v0v9VoV6RdMWBWE/ENlCV634aNlHybelCyX5NiakDK6uLkwnVbIe3SZ/kYArb
 mMGkuaDtTlUY6otE+kIax2JVTDq9ruMVWGWXR50C+wO+uJPr+NtPRbB1Eg7qU7r7OlOJ
 gEUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VHvW+03ED2tYu4Zc1Qx/QXTIQqIJndOUJvkwVF3dUzw=;
 b=ZUwuQGYPjvZO++Tf1kVFneIdYL+L8g6Z/yTgljgTZ0TFHvldK+jYsav0xTj3vwNSoL
 F4OJpKmBeF/GQm2mGhDX6rXBNeM0zCiYxTQK7ZkvRZ/wDj4WcOcmyOXc8FDUF1Zoz5hr
 lAEaIeBinYxnrZp0HqvJDVUHljXb7VCbeKfAVHb9OOpr0dJQWZU8nPHYDNwtk+OEs1Ur
 tW6KOT1XFV8dNhe/jFrLDaaXWNWkVX/GuYq2SrxDCsehLe+a+wwFOWfeiIQ7oovRV1g6
 gTPmxPcd3xv2IQlm595D/W1gQTBqEAC+j5msY5ZFqCSOXPGLFcXfJNu1zjVL7WEPDvsc
 Te0g==
X-Gm-Message-State: AOAM531/V53kkrbZNLgBgRY1mcQL+yejjlq47Vck7EoRDQkICUYGlwA0
 t75hAd9w99RhYR1s+s+dvSxfOagiJ7YlBOrTUXBzqw==
X-Google-Smtp-Source: ABdhPJx4/6P6ZK+hWY3bx2/guKCQWn8dYwnr5RG5P2rZ+wpt/zD6Cml54rdbvZGo6SimeEMhGwlprEEA8+tCwbNRQ/s=
X-Received: by 2002:a25:73cc:0:b0:644:f4a3:6f4f with SMTP id
 o195-20020a2573cc000000b00644f4a36f4fmr12801929ybc.369.1650407841127; Tue, 19
 Apr 2022 15:37:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220328005005.72492-1-kc@postmarketos.org>
In-Reply-To: <20220328005005.72492-1-kc@postmarketos.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 20 Apr 2022 00:37:09 +0200
Message-ID: <CACRpkdb=V_ZbtRw8_wyTyKLPO1b4VtscfHCa_40Fd0hSABZObA@mail.gmail.com>
Subject: Re: [PATCH 0/4] rockchip: support configuring pins as input
To: Caleb Connolly <kc@postmarketos.org>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Bartosz Golaszewski <brgl@bgdev.pl>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org, 
 ~postmarketos/upstreaming@lists.sr.ht, martijn@brixit.nl, 
 Arnaud Ferraris <arnaud.ferraris@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_153730_136877_50366508 
X-CRM114-Status: UNSURE (   8.16  )
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

Hi Caleb,

On Mon, Mar 28, 2022 at 2:50 AM Caleb Connolly <kc@postmarketos.org> wrote:

 Caleb Connolly (4):
>   pinctrl/rockchip: support deferring other gpio params
>   pinctrl/rockchip: support setting input-enable param
>   gpio/rockchip: handle deferring input-enable pinconfs

Those three applied to the pinctrl tree.

>   arm64: dts: rockchip: rk3399: add an input enable pinconf

Please submit this through the SoC tree.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
