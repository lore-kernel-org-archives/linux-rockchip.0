Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 37EABCDD1CD
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WCFD1pTpS9Ryq2j0MPgPwFwyQtSVo4t+cVuoqs7vn74=; b=kdy0GRJHUudKHZ
	Yz+9z2BsgZCeAl0oiYg7TTjf+xW2Wx2SM3riLLADTJUKSbaOGnr9/gMMmRCeUs1iHMvjVIxXWyjmF
	MUDlKvJHTDCxnnrUXbnP3mzACOoCRC0e1cXfV5B2v3p1XYie/MES39J71U8WeUjhmki8YRwJlmmK6
	LJXY4GTIyL2Z5ErVGNZUyAn1/liDMyT5v9QWICWECsACFvn6yHr9cV+L73pCgmEGhBW4eJ5XZOToK
	eBn4aB36UE+7HMh6zPsEBohbCYTgtqD9KLkX7eAShtfL4jleIlhi14+1u7WMCcCUBG3JFIrAhh1z6
	xnGMufcnSXb+mo0lHHUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1suEUx-0000000BlGw-40MU;
	Fri, 27 Sep 2024 17:11:19 +0000
Received: from mail-yw1-f182.google.com ([209.85.128.182])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1suETk-0000000Bl94-1EeF;
	Fri, 27 Sep 2024 17:10:05 +0000
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-6dbb24ee2ebso23638127b3.1;
        Fri, 27 Sep 2024 10:10:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727457002; x=1728061802;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xoY6H2xihm8sOHd6/SknfHzEtRV3+jpw8m+Q4KMLP+g=;
        b=cCQ5BOm2wgyh1azTZN7P9dqiFgT6LoCg7OreR/oeSzoSAHZXhi3gHOMiuoXzbmpTDn
         Tl9dBFpv22TwTfqHDSsYfUngcsxG7UwdmYBWUZuJRZeHd/OZInAnwfqtMA1jhUoauX09
         ZPXWknzu65+9wf8dqS6vlyU8QlyamRBa9yGD2pzyeTJCGdPEr8D0I+H9n0dxvSMReT8d
         cR9Q3L+bEk1uSxhZKreikew1ED9Rtm33F4sK7SLpdjTxcqhBLs4fdFjRteE+uEP35IiH
         ynqvavnV8q/M2BfoYkEJ6xoWLXx1xy+ufpjnnFA8A/OTlx9tA8U6L5L4zdGkYkccH12z
         +jzQ==
X-Forwarded-Encrypted: i=1; AJvYcCVOZI6VxXhGDcwO4vcViLiSEZUjsgxfUdI0GD8+HIt+bLuTJqfUhrLP47kYqArZJdTd4ss3CnjcsFJXT7O5VFWM@lists.infradead.org, AJvYcCXSii+cckVcs6SHb/2A6KkpD/zfLEhuWrK2Hsc8nBbCeLpMfZgsoxqJssxMtgJ7oKjAaJE0RhRuTEwO7Dl+nqo=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxb9jTIMLBGG9oDxSv/3ZgqQyqV98IKe4ThLUWXkzsIIaty42v6
	aUmMGgKIHBEwDEItActKgqn0rFNUT2k3xmDVT6VP265JQgRfvwf8iu4Moput
X-Google-Smtp-Source: AGHT+IEl4ccM5gQdOLm/8Nt/k6HRNkyfEKtWEhjCC35P8WJ2MhTldejQYbahcmUmYYed/N/o7Vgd6A==
X-Received: by 2002:a05:690c:4289:b0:6dd:eb45:cf11 with SMTP id 00721157ae682-6e2475faa25mr27037667b3.43.1727457001797;
        Fri, 27 Sep 2024 10:10:01 -0700 (PDT)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com. [209.85.128.179])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-6e245369915sm3595667b3.90.2024.09.27.10.09.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Sep 2024 10:09:59 -0700 (PDT)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-6ddceaaa9f4so20371277b3.2;
        Fri, 27 Sep 2024 10:09:59 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCWLiUfdsvOv/WdPng2fCDMYIef04tj8D4oGoaD5XrtXlk82sVjlmS1b+lSlLuR+CPn2pTpTZT6vTzb4Swmn1vjq@lists.infradead.org, AJvYcCWOIMmm3jxGKu7GRJXJ8sjsuNPkCKjeHg4nE187XJIXtBAyeebdTSDFdNKyLyjeQQrFDvSArDg8O5CN1Yx/K1I=@lists.infradead.org
X-Received: by 2002:a05:690c:112:b0:6e2:985:f4df with SMTP id
 00721157ae682-6e24dc9c710mr22157267b3.44.1727456998718; Fri, 27 Sep 2024
 10:09:58 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1727438777.git.geert+renesas@glider.be> <4455919.MSiuQNM8U4@phil>
In-Reply-To: <4455919.MSiuQNM8U4@phil>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Fri, 27 Sep 2024 19:09:45 +0200
X-Gmail-Original-Message-ID: <CAMuHMdXVBfp0ZJ5Me93p1fB9-ac00WcAYOb9jkG=D+wm01j+qw@mail.gmail.com>
Message-ID: <CAMuHMdXVBfp0ZJ5Me93p1fB9-ac00WcAYOb9jkG=D+wm01j+qw@mail.gmail.com>
Subject: Re: [PATCH treewide 00/11] ASoC: Clean up {hp,mic}-det-gpio handling
To: Heiko Stuebner <heiko@sntech.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Lubomir Rintel <lkundrak@v3.sk>, Shawn Guo <shawnguo@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, Magnus Damm <magnus.damm@gmail.com>, 
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Paul Cercueil <paul@crapouillou.net>, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, 
	Shengjiu Wang <shengjiu.wang@gmail.com>, Xiubo Li <Xiubo.Lee@gmail.com>, 
	Nicolin Chen <nicoleotsuka@gmail.com>, Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
	Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
	Adrien Grassein <adrien.grassein@gmail.com>, Adam Ford <aford173@gmail.com>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, linux-sound@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	imx@lists.linux.dev, linux-renesas-soc@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-mips@vger.kernel.org, 
	alsa-devel@alsa-project.org, linuxppc-dev@lists.ozlabs.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_101004_360463_A1EFF435 
X-CRM114-Status: GOOD (  19.50  )
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

SGkgSGVpa28sCgpPbiBGcmksIFNlcCAyNywgMjAyNCBhdCA0OjQ14oCvUE0gSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4gd3JvdGU6Cj4gQW0gRnJlaXRhZywgMjcuIFNlcHRlbWJlciAy
MDI0LCAxNDo0MjoxNSBDRVNUIHNjaHJpZWIgR2VlcnQgVXl0dGVyaG9ldmVuOgo+ID4gICAtIFRo
ZSBzZWNvbmQgcGF0Y2ggdXBkYXRlcyB0aGUgQXVkaW8gR3JhcGggYW5kIFNpbXBsZSBBdWRpbyBD
YXJkIERUCj4gPiAgICAgYmluZGluZ3MsCj4gPiAgIC0gUGF0Y2hlcyAzLTkgY29udmVydHMgdmFy
aW91cyBEVFMgZmlsZXMgdG8gdXNlIHRoZSBuZXcgcHJvcGVydGllcywKPiA+ICAgLSBUaGUgbGFz
dCAyIHBhdGNoZXMgY29udmVydCBGcmVlc2NhbGUgc291bmQgZGV2aWNlIG5vZGVzIHRvIHVzZSB0
aGUKPiA+ICAgICBuZXcgcHJvcGVydGllcy4KPiA+Cj4gPiBBbGwgcGF0Y2hlcyBjYW4gYmUgYXBw
bGllZCBpbmRlcGVuZGVudGx5LAo+Cj4gdGhvdWdoIEkgZ3Vlc3MgZHRzIHBhdGNoZXMgc2hvdWxk
IHdhaXQgdGlsbCBwYXRjaCAyIGdldHMgYXBwbGllZAo+IHNvbWV3aGVyZSwgc28gdGhhdCBjaGFu
Z2VkIGR0cyBhbmQgY2hhbmdlZCBiaW5kaW5nIGNhbiBhZ2FpbiBmaW5kCj4gdG9nZXRoZXIgaW4g
bGludXgtbmV4dD8KClllcywgaWYgd2Ugd2FudCB0byBhdm9pZCBpbnRyb2R1Y2luZyBuZXcgZHRi
c19jaGVjayB3YXJuaW5ncyBpbiBsaW51eC1uZXh0LgoKR3J7b2V0amUsZWV0aW5nfXMsCgogICAg
ICAgICAgICAgICAgICAgICAgICBHZWVydAoKLS0gCkdlZXJ0IFV5dHRlcmhvZXZlbiAtLSBUaGVy
ZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2VlcnRAbGludXgtbTY4ay5vcmcKCklu
IHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNobmljYWwgcGVvcGxlLCBJIGNhbGwgbXlz
ZWxmIGEgaGFja2VyLiBCdXQKd2hlbiBJJ20gdGFsa2luZyB0byBqb3VybmFsaXN0cyBJIGp1c3Qg
c2F5ICJwcm9ncmFtbWVyIiBvciBzb21ldGhpbmcgbGlrZSB0aGF0LgogICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIC0tIExpbnVzIFRvcnZhbGRzCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
