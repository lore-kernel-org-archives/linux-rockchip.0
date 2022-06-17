Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A9F53C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 17 Jun 2022 04:22:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xJPzXJsbnnqPf/G/Rgs/dwzixCFjXjplDIsZpsQacPw=; b=qLCxvLktzMHZi6
	PkIjFCo6IPISZcFCl+zzoWqmrkMOsXUk/iU0FNsACtnLCEqZsR8k3XcX6V7C4GqbkW7b4soodFl61
	qlAjTk3QL+DYWQUyTdA/j+2GqUx2siAiznK/M/zmIoxEQ2fWGcIT1E3YyCRQx6O+lxskLY9ss+dOw
	T9ac/ig8iws4IDokZWc8PA6pyh/fnfOytcVnOrkVREk8sRHSwid5nQlNyjiOHBBrPqWnLg9U1AvV8
	tk5hYbmhoEL7DA/BDHlewikLVURp7IeLz7Y/GBxCBcO2FcvzTQUDJkVx7ksk+ttOUylLOxTyuxeKv
	mK3x4By62uv8jBhcym3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23V2-005QWb-DM; Fri, 17 Jun 2022 04:22:24 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o23Uq-005QUR-Np
	for linux-rockchip@lists.infradead.org; Fri, 17 Jun 2022 04:22:15 +0000
Received: by mail-wm1-x32b.google.com with SMTP id m32-20020a05600c3b2000b0039756bb41f2so1781706wms.3
        for <linux-rockchip@lists.infradead.org>; Thu, 16 Jun 2022 21:22:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=QzjBrAgNA1AZjNa+pTInhm7i5DXtxxCJmOaoCVhc67o=;
        b=K+++cDQdr9cYej3ks+qHgpRRO9cxfb7XdyeS8sjTpNBayehaxo6EJtoyuIU2xwI69L
         gx6rZ8BvrkJsYfiM6qT+H6b7ZC6Y4iB70vsimWPatpV5/yNeD7umpUHHG1Eq4x8S5xlk
         V1qHnN3rFJGfWJodZ5SfBe7q5+5+j4aBJrdKE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=QzjBrAgNA1AZjNa+pTInhm7i5DXtxxCJmOaoCVhc67o=;
        b=YqqHOnDwuuEZou+rF9xYwiWnbWPaTVV6yJlslcLcpL7+yufywXeklvIkUFsegUWjG9
         Scysjpqhp7Es9+NrWsW4D6rW3HvTVaZYMuolOp3Nyx1APlk0VPqonMZobh43EvrMBPWr
         BOy3+hai6L5Zq1Bze05tJ4w7KY6mYh9xRm0RPIkXAHJ6Jk6TniDpBtSNpDBRL4F72hzZ
         1v4HQnRYzOOs0Y81Wv3t2wExIwTkOMlMJ0VgaBpQU+D7YVsKFDUbBoMG+W/gFpuwNhBu
         lnXN5fo+dyGXERSLtkFQmhKLKPKexXKidRg5XGo5j6YAfrJJvIxBRNFCUCWyZO9smfIL
         w22w==
X-Gm-Message-State: AJIora8lskPMeRsf/z6vdQ24On1tbTGKn2x+jpOSSmHuqtKxBflktbQr
	kJauPT7bCWQNHFgU7q7bCVfHkf4xZgoJpvEWfmG4bw==
X-Google-Smtp-Source: AGRyM1v3sERgOBqTQVjBxagXczYgYpertg9OLvxMVM+dhQu2SW0N8tDt41W3pagb/zDh/CM+9EhiOjkIxW0HRWr5Uq0=
X-Received: by 2002:a7b:c5da:0:b0:39c:542a:a07b with SMTP id
 n26-20020a7bc5da000000b0039c542aa07bmr8159751wmk.83.1655439723483; Thu, 16
 Jun 2022 21:22:03 -0700 (PDT)
MIME-Version: 1.0
References: <20220616155836.3401420-1-judyhsiao@chromium.org>
 <20220616155836.3401420-2-judyhsiao@chromium.org> <YquXEgHkw08TkNuG@google.com>
In-Reply-To: <YquXEgHkw08TkNuG@google.com>
From: Judy Hsiao <judyhsiao@chromium.org>
Date: Fri, 17 Jun 2022 12:21:52 +0800
Message-ID: <CAJXt+b_n=B9VBvgP8hy7g48Bo2VTPXqi+qKHTX1BiwpEgUrOUQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ASoC: rockchip: i2s: switch BCLK to GPIO
To: Brian Norris <briannorris@chromium.org>
Cc: Heiko Stuebner <heiko@sntech.de>, Liam Girdwood <lgirdwood@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Jaroslav Kysela <perex@perex.cz>, Chen-Yu Tsai <wenst@chromium.org>, alsa-devel@alsa-project.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_212212_888154_61D11BC2 
X-CRM114-Status: GOOD (  13.82  )
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

PiBJdCBmZWVscyBsaWtlIGEgbG90IG9mIHRoZSBub2lzZSBpbiB0aGlzIHBhdGNoIGlzIGR1ZSB0
byBhZGRpbmcKPiBhZGRpdGlvbmFsIGVycm9yIGhhbmRsaW5nLCB1bnJlbGF0ZWQgdG8gdGhlIHJl
YWwgY2hhbmdlIHlvdSdyZSBtYWtpbmcuCj4gTWF5YmUgdGhhdCBkZXNlcnZlcyBhIHNlcGFyYXRl
IHBhdGNoPwpUaGUgZXJyb3IgaGFuZGxpbmcgaXMgdG8gZGV0ZWN0IHRoZSBmYWlsdXJlIG9mIHN3
aXRjaGluZyBMUkNMSy4KSWYgTFJDTEsgaXMgT0ZGLCB3ZSBkb27igJl0IHdhbnQgdGhlIEJDTEsg
dG8gYmUgT04uIFNvIHRoZSBlcnJvcgpoYW5kbGluZyBpbiB0aGUgcGF0Y2ggaXMgcmVsZXZhbnQu
Cgo+IEkgbWVudGlvbmVkIHRoaXMgb2ZmLWxpc3QsIGJ1dCB0aGUgMm5kLWxpbmUgaW5kZW50YXRp
b24gYWxpZ25tZW50ICp1c2VkKgo+IHRvIGJlIGluIGEgdmVyeSBwYXJ0aWN1bGFyIHN0eWxlLCBh
bmQgeW91J3ZlIG1vdmVkIHRoYXQgYXJvdW5kIGEgbG90LiBUbwo+IG1hdGNoIHRoZSBwcmV2aW91
cyBzdHlsZSwgaXQgc2hvdWxkIGJlOgo+Cj4gICAgICAgICAgICAgICAgIHJldCA9IHJlZ21hcF91
cGRhdGVfYml0cyhpMnMtPnJlZ21hcCwgSTJTX0RNQUNSLAo+ICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgSTJTX0RNQUNSX1RERV9FTkFCTEUsCj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBJMlNfRE1BQ1JfVERFX0VOQUJMRSk7Cj4KPiAo
QlRXLCBpZiB5b3UncmUgdXNpbmcgR21haWwgdG8gdmlldyB0aGlzLCB5b3UncmUgZ29pbmcgdG8g
aGF2ZSBubyBpZGVhCj4gd2hhdCBJJ20gdGFsa2luZyBhYm91dCwgc2luY2UgaXQgZG9lc24ndCBk
byB3aGl0ZXNwYWNlIG9yIG1vbm9zcGFjZSBmb250Cj4gY29ycmVjdGx5Li4uKQo+Cj4gVGhlIHNh
bWUgYXBwbGllcyB0aHJvdWdob3V0OyBtb3N0IG9mIHRoZSAybmQtbGluZSwgM3JkLWxpbmUsIC4u
Lgo+IGluZGVudGF0aW9uIGlzIGEgbGl0dGxlIHdlaXJkLgpZZXMsIGxldCBtZSBmaXggdGhlIGlu
ZGVudGF0aW9uIGluIFYzLCB0aGFua3MhCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
