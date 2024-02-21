Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1DA19C5478C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Feb 2024 22:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iwsz02YuCrlWIR+f/FbXbEsuzml+uB+0bTVGIyv44YI=; b=3YhW2RZcBROazE
	GLOKhryvaqotVCIwtKjSHBEwRBHHJxsGCS6ZowvSJAw22HUbJnebG1CZt5gjoKdePKPLHmaYzV0Ay
	s5ven3gUH4mc78bMFv5HJoLaev4ZsxhMwGhgRcHby1qs/j/F6gdcy+U/rlHX/KqiBoZvyM7ssTtwa
	wDR0cNNGgFk0rIqzm5H/ZIGMdhDxyAHEfeN4OvufOISCxu2i8M6wbsttc4ifsW5ScFrRGv+lNh+EW
	h82HnMgX8wcXJPx5Y+u/5cCl5tVpswYGAh3CBlIWbEZP3dRuPODyONUl1ZZKha4vQDB5XKQ6mVoyl
	5iw9IpBI0adFu73b8S2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcuke-00000002khs-2F5r;
	Wed, 21 Feb 2024 22:07:40 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcukZ-00000002kdN-1d9a
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Feb 2024 22:07:38 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-607d9c4fa90so74790787b3.2
        for <linux-rockchip@lists.infradead.org>; Wed, 21 Feb 2024 14:07:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708553242; x=1709158042; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1cIdAj9Rc9YrdEZf80SuI9gbBcjMeYE4blz3NlBPNkk=;
        b=ShOH+i9VvWiBCSwGmXJeYdc5HZfdesLRn2b0k0Uoj97VM6W+UiCL66SpGAsvUVjrqL
         0km+RQlmz4tBAR/fg9iQ7s7qv8j7GcQuPMFbddZ1M5i9dLnrp/BONo7nkzE1UeERqMKh
         EZkKJbHiD6jYZf2vEObKn2FZhlCjXSZIet1MLLqlbNoeo9yE5rqCNrfPhTQ5mzAQ4DBp
         Yv5KM7vY03yKJ+4TbMy2Fu4U1tAQOlAuL7w4GbcBAwZ3SbTVMJJbK+a5KQoHk4QJCE5M
         tPg3l30FnwTWZHC5F83/R1INaiQamCbgVqVCN15hvKxT6Y8cYZ/8h5/PSoHCoH8HUpGF
         5Kzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708553242; x=1709158042;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1cIdAj9Rc9YrdEZf80SuI9gbBcjMeYE4blz3NlBPNkk=;
        b=BpAk0HLnenjxXAmVBx55kFmLzU631VIczNU0+mH6z0bHxuD3FwxtRLRLK1N4SfApYP
         1dm600dvUc2tzSTYGZCotYYp54ms6AFNcBBssZWcErntgup5gXPz+ei1GI7KeQQ/Q/zS
         Y/SScz7oGACKCqmEoWCX38281E635pNCN2ViJFsKztTsllOVcP+gTTmUY6rAnyMD89Cf
         AlzdfvGrGZ6Yz/c0yct7b5gksP9YOKntTNhWiWWz3lOPaLG1lZ59PdOQtOmMlwH64pzH
         94BTMxfN3q9sxVw1h8M7fINGmoPjosA1U8ySz+Z32kIHs7loIUDoIOKwV7/4v18F66fM
         Gmxw==
X-Forwarded-Encrypted: i=1; AJvYcCWtAaJ7/hgnIXdHsiFdKFiZMRS4CjqcZD6KcMPamOLvcFXfJOLYwpO9M5c+NYAHKWwN12IEfpaHqeTD+K7Aa9sPkQzvIsUT755ryGzam/tvADgD
X-Gm-Message-State: AOJu0YwLYo2YDN+OYTf3xZScZv/cbvXn0rhu5/B6jeX5t1xz10PHd5vS
	k+MPHf424L7YTXF3EqYuGzD+iAf87aKUfR9m3peEUi6OMdlfUbUbPe/w6jAdBuNHkXclb3Yna/L
	6x9fOozeXIwfaoLBCTRM80KGKMRzL+SDUKsqxYA==
X-Google-Smtp-Source: AGHT+IHcXCkZHHGUkDm2xvIgiK6VurrE3eAJdP/r6uC/vcQd0YLTd8DmYtHQlaiiKrj98oMZezfQEBryKYUS8JEchGY=
X-Received: by 2002:a05:690c:86:b0:607:d9f7:e884 with SMTP id
 be6-20020a05690c008600b00607d9f7e884mr20419761ywb.4.1708553242109; Wed, 21
 Feb 2024 14:07:22 -0800 (PST)
MIME-Version: 1.0
References: <20240217093937.58234-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20240217093937.58234-1-krzysztof.kozlowski@linaro.org>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 21 Feb 2024 23:07:11 +0100
Message-ID: <CACRpkdajVH4Y2K5W+o5XAoiEr57ObVbaR+9QdFV=Cp765B+dfQ@mail.gmail.com>
Subject: Re: [PATCH] phy: constify of_phandle_args in xlate
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
	Chun-Kuang Hu <chunkuang.hu@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, linux-phy@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-amlogic@lists.infradead.org, 
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com, 
	linux-tegra@vger.kernel.org, linux-gpio@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240221_140735_466339_1474B3F4 
X-CRM114-Status: UNSURE (   7.29  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU2F0LCBGZWIgMTcsIDIwMjQgYXQgMTA6MznigK9BTSBLcnp5c3p0b2YgS296bG93c2tpCjxr
cnp5c3p0b2Yua296bG93c2tpQGxpbmFyby5vcmc+IHdyb3RlOgoKPiBUaGUgeGxhdGUgY2FsbGJh
Y2tzIGFyZSBzdXBwb3NlZCB0byB0cmFuc2xhdGUgb2ZfcGhhbmRsZV9hcmdzIHRvIHByb3Blcgo+
IHByb3ZpZGVyIHdpdGhvdXQgbW9kaWZ5aW5nIHRoZSBvZl9waGFuZGxlX2FyZ3MuICBNYWtlIHRo
ZSBhcmd1bWVudAo+IHBvaW50ZXIgdG8gY29uc3QgZm9yIGNvZGUgc2FmZXR5IGFuZCByZWFkYWJp
bGl0eS4KPgo+IFNpZ25lZC1vZmYtYnk6IEtyenlzenRvZiBLb3psb3dza2kgPGtyenlzenRvZi5r
b3psb3dza2lAbGluYXJvLm9yZz4KKC4uLikKPiAgZHJpdmVycy9waW5jdHJsL3RlZ3JhL3BpbmN0
cmwtdGVncmEteHVzYi5jICAgICAgICAgfCAgMiArLQoKQWNrZWQtYnk6IExpbnVzIFdhbGxlaWog
PGxpbnVzLndhbGxlaWpAbGluYXJvLm9yZz4KCllvdXJzLApMaW51cyBXYWxsZWlqCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
