Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71EBCC64EC4
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Mar 2023 16:10:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZiQI0docw3VeLWyalRuZkOd7IXH6lNTCzpeRV5u5V8=; b=L9I6kQxz7lumg9
	4iegWV4REMfr7/pPmmZnlTpBVgn4WhgyRRNi7dv/xpS0JLltxZXB3dkP1lMjv9LTFfC4tAT1YnEJr
	sShKq3+Bf8+wPLGgfArAnK7yJ+V57EiwZppNy5RlSHY/s5Cu1/ax93mUjx+b7hRJ6Sq4aGriTXfE/
	astzu/XkWQCvjnlh9WSD/6PRl6BxPsef6WhwmRwqAPVcZk+v4M5PAvKHuusSwRXeKT1S+Z8y8TPBE
	xbLjpTvSRJHNDC6LHyGriTU28UDkOI+Aloqd63WM214sFyk48Br+SfddSWIV3uXK54hlO5pkbsUX9
	pI/FRokvPiKuCG3mpkWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZwMe-005rwt-Sm; Wed, 08 Mar 2023 16:10:04 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZwMR-005rr1-KK; Wed, 08 Mar 2023 16:09:52 +0000
Received: by mail-wm1-x333.google.com with SMTP id j19-20020a05600c191300b003eb3e1eb0caso1682464wmq.1;
        Wed, 08 Mar 2023 08:09:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678291788;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L+dYWSqa/ZOUrUL1r8q0LpgzDp7Tt9DA2CXNGpPqdso=;
        b=azSMzAOW9FuJWqRn2SbptxwSUxQXTBWdLmGq+oIfVbGZoebTgMTqP58raNghgqTiIi
         nHVo450JZWQ8UxhfZOlgB6IYO/+j/y1aYFtMElOp9MC5KQ9EJZ5WqjV+U3dZiLrHaMU/
         82hhMkxhmo6FdFxTHQMDuulwtQpYIGVO4wV+f0nUxq+sTXs2lis6RAIaDgQ0syc+26In
         5HKaJirzKA3I6gk+VQmM4GbBRV38/R+7KPrtasf+orr1MUAjEykSik/eenj/kUPBUhLk
         Pz8dm3JUEgBbJ8CZiApJgYXkNuSSDSWR0rPYAIVJjchySpWKVUmfVxUYFzpqEkIDiGw8
         wTmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678291788;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L+dYWSqa/ZOUrUL1r8q0LpgzDp7Tt9DA2CXNGpPqdso=;
        b=gcSazGryaXUOhsSBvbLP6+aK0y5VBYbzAw8H0SyzEH1v+dJG5o9rmw+umhf5xQZgOR
         HiP3llykKfmVoy78CPndls2uch4UaIgMgiO0OoMtlmukIv4Lqv7u5y/vGL3MSQWdtvzV
         Hb069weDYFfn3ApRqSoib5/LcOOqqtb/l+tJ8gThlDyiTGFaTAAGF2b2R2FjUnmwFxHu
         gI/ZM92PL9G85weo5Qei4qkdosZiM1WzYKBtc3QuDj7hH+naaNnhzVLOZ/W9CsZ9q4AM
         2VQ4nKQn7Phc0VRC58esaRQ4e0+xPqxHx6SPSsGaDjwDRG1N1PJHAX2J788IbFr5qNoG
         WeBA==
X-Gm-Message-State: AO0yUKXFUdsHjHDWM/XV+cn1q+6L/M8N6l4egFbc58cdrLRAvu8h+n69
	6yoPxrGSxgKq0FxGCyNKNw8Ymd2BH1MN1426lEE=
X-Google-Smtp-Source: AK7set9z6R4A9KaMfNYvy1lKGvlnpbKKO6hcw1gFadDpG1l9Ii+ICzQ/NIFpZr3WgwWhxV0xv4eaIFcX7T21ikloZuA=
X-Received: by 2002:a05:600c:16c6:b0:3eb:2e68:5c86 with SMTP id
 l6-20020a05600c16c600b003eb2e685c86mr4385123wmn.6.1678291787690; Wed, 08 Mar
 2023 08:09:47 -0800 (PST)
MIME-Version: 1.0
References: <20230308063240.107178-1-anarsoul@gmail.com> <4204317f-6715-cdeb-343d-611aea0d554a@linaro.org>
In-Reply-To: <4204317f-6715-cdeb-343d-611aea0d554a@linaro.org>
From: Vasily Khoruzhick <anarsoul@gmail.com>
Date: Wed, 8 Mar 2023 08:09:20 -0800
Message-ID: <CA+E=qVepknVmYjC8+uxp+TUF=uqvm3t4rLk8yjs+h5zYm6HiSw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: Add doc for FriendlyARM NanoPi R5S
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jagan Teki <jagan@amarulasolutions.com>, Peter Geis <pgwipeout@gmail.com>, 
	Andy Yan <andyshrk@163.com>, Chris Morgan <macromorgan@hotmail.com>, 
	Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, Brian Norris <briannorris@chromium.org>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andrew Lunn <andrew@lunn.ch>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Maya Matuszczyk <maccraft123mc@gmail.com>, 
	Chukun Pan <amadeus@jmu.edu.cn>, Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Tianling Shen <cnsztl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_080951_688760_9E265966 
X-CRM114-Status: GOOD (  13.50  )
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

T24gV2VkLCBNYXIgOCwgMjAyMyBhdCAzOjMx4oCvQU0gS3J6eXN6dG9mIEtvemxvd3NraQo8a3J6
eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+IGRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiA+IGluZGV4IDM1
Zjc0ZWRhMzBhZS4uMDgxM2FkMjJkYzc2IDEwMDY0NAo+ID4gLS0tIGEvRG9jdW1lbnRhdGlvbi9k
ZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4gPiArKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPiA+IEBAIC0yMDEsNiAr
MjAxLDExIEBAIHByb3BlcnRpZXM6Cj4gPiAgICAgICAgICAgICAgICAtIGZyaWVuZGx5YXJtLG5h
bm9waS1yNHMtZW50ZXJwcmlzZQo+ID4gICAgICAgICAgICAtIGNvbnN0OiByb2NrY2hpcCxyazMz
OTkKPiA+Cj4gPiArICAgICAgLSBkZXNjcmlwdGlvbjogRnJpZW5kbHlFbGVjIE5hbm9QaSBSNVMg
Ym9hcmQKPiA+ICsKPgo+IERvZXMgbm90IGxvb2sgbGlrZSBvcmRlcmVkIGFscGhhYmV0aWNhbGx5
LiBBcmUgeW91IHN1cmUgdGhpcyBpcyBjb3JyZWN0Cj4gcGxhY2UgZm9yIGl0PwoKSG1tLCBzdHJp
Y3RseSBzcGVha2luZywgIkZyaWVuZGx5RWxlYyBOYW5vUGkgUjVTIGJvYXJkIiBzaG91bGQgZ28g
aW4KYmV0d2VlbiBvZiAiRnJpZW5kbHlFbGVjIE5hbm9QaSBSMlMiIGFuZCAiRnJpZW5kbHlFbGVj
IE5hbm9QaTQgc2VyaWVzCmJvYXJkcyIgaWYgd2Ugd2FudCBpdCBpbiBhbHBoYWJldGljYWwgb3Jk
ZXIsIG5vdCBhZnRlciAiRnJpZW5kbHlFbGVjCk5hbm9QaTQgc2VyaWVzIGJvYXJkcyIgbGlrZSBp
biB0aGlzIHBhdGNoLiBCdXQgaXQgZG9lc24ndCBsb29rIG5pY2UKKGJlY2F1c2UgUjVTIHdpbGwg
Z28gYmVmb3JlIFI0UykuCgpUaGVyZSBpcyBhbHJlYWR5IHNpbWlsYXIgb3JkZXJpbmcgKGFscGhh
YmV0aWNhbC9jaHJvbm9sb2dpY2FsIGZvcgptb2RlbCkgZm9yIFJhZHhhIFJvY2sgUGkgLSAiUmFk
eGEgUk9DSyBQaSBTIiwgIlJhZHhhIFJvY2syIFNxdWFyZSIsCiJSYWR4YSBST0NLMyBNb2RlbCBB
IiwgIlJhZHhhIFJPQ0sgNSBNb2RlbCBBIi4KCkhvd2V2ZXIgaWYgeW91IHdhbnQgbWUgdG8gc29y
dCBpdCBzdHJpY3RseSBhbHBoYWJldGljYWxseSwgSSBjYW4gc2VuZCBhIHYyLgoKUmVnYXJkcywK
VmFzaWx5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
