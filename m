Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AD94C54798
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Feb 2024 12:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b6K3rKyN1EwjfTYNTpiWy7oFMyfTDuBln0ED5DlQog8=; b=S8l7niO0Nub0SI
	nHzeiZuvZnWAk/qZ2aTSPHAXLttRKET49qLSR6WiADLZy6eCGOKW6uSgmEbRuKY91w/qDURPwjiVT
	C5b15MgWmtsXRu2YqbRwEDyLQuxohko4irsIXklUT6mY5Mw2V05oQna03YX2P885hhP63mp/bkAHw
	AQb06UpDpbm3/5PqbLEtkVd8saBUX94vb6oEEdcWXduFCbddWy4AsXaYZFmRee5P53JzNDNBgB3aY
	Ulg0Uy6Tac0MmxtKKzAChQ2/iFexoQ0yk45QY50mogMPipBbNHgwC9ZTouJSU43CmzLc3M8Ijvblz
	IIq3p/ROvvSsn7G4/kzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewtW-00000005Fno-44Qn;
	Tue, 27 Feb 2024 12:49:14 +0000
Received: from mail-ed1-x52b.google.com ([2a00:1450:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rewtT-00000005FmX-0TSW;
	Tue, 27 Feb 2024 12:49:12 +0000
Received: by mail-ed1-x52b.google.com with SMTP id 4fb4d7f45d1cf-5654f700705so5598721a12.1;
        Tue, 27 Feb 2024 04:49:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709038148; x=1709642948; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=k5p1Edl1NH7byvXQfMcSs3cZtovHa/4E/zHLUVKkoBE=;
        b=jHsItMiZSjWoiiZ42v0MjHLiXk7lK/xXdF48gonh9e5CjVCjRNLssij5C8yQHvwPGT
         XMW/C3h/rE88g8gOMWaplnNdUOh+VSzurVrCmUkXI3oVO6u2hq0z0VI6yD6O9PMTGvzv
         2/HFZ7pPZXxnHpPdbFXbhzXLsvbmuZd+datoDTJON8GBIvLYsc80mV3xYVGk/J9oDV0L
         Xu/GqheWe+ObGgz9VnLj7ymrejQCLQ7h2xUXvseI7w7zsfHAr51Pjt+FTbPultx3L7uM
         lhx/XnjF8h+5gVxrgNXBqWbQefjK61zAQwgbdQURQ5/Eov2ogWWUNd6VQjqdF1aFGVwO
         lCCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709038148; x=1709642948;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=k5p1Edl1NH7byvXQfMcSs3cZtovHa/4E/zHLUVKkoBE=;
        b=r5z0MzycKr2rHNVyAMWxUQXKcQzpKHzUrZIwD4kCvKf9nhDwdCsTay6NDe2zLE7tGL
         +nWbpUK2VEb3cB1ArTvEniEF6XYOHFt6pyyMxfAlsuhaRsQWFluLnrSTanyZFTHlEtL1
         qzY075fSZDx8OpmrXFaIVZfV1J/O5gAyJ659QZM/nOEBmM3VfyAN6iLngT4gREkLClq9
         8aIfw8Cb608y24DhjXYvNGU3e+J/Jr3cEmwz50sSeI3J2bu6RtNV+IvvdG346tRmVCQR
         WlINhaeo+VVl8naYLnLNGx5SBFE2dL2zhLF08CxPmvuxCgc59PbO2fdV+Ljuurfb0IT5
         POWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhzShclVEUZKcY/oUA8QpuF47gmQ2RYBxC7rkXhywvYxQk7RJob99nrwVfcD4f8J+fUkwh9HnODvMpgVHAawfjjLUAq59kDHyHDZdWHYDenXMlj70BjYaAh68FF9l8DsXlWpwaSQG2viIDC0uphsuVurBo3jYt32c=
X-Gm-Message-State: AOJu0Yy8HL0UG8/Llz8YTh24a7AAoVP8fEF5TXjeqsHR26B2auBVvR5G
	wtGHwXUkT9gF8g2PbDZregmSUZhwjMzQQCOw5SiShOw4McTfobnbCQv4bAdMms6KVwZNoRYDadV
	rg5VfHLT5FXPaf7GGPEr8bCA2qts=
X-Google-Smtp-Source: AGHT+IFJY/Dc0FAemTrGn7dbCzMq1SVbHT1UbCSPNS1Va9TuSCF77jAwMf0Y1LLTilc0YfteM0PrAKPMqJuOxE+VeAU=
X-Received: by 2002:a17:906:7243:b0:a43:a628:ff31 with SMTP id
 n3-20020a170906724300b00a43a628ff31mr1436136ejk.26.1709038148513; Tue, 27 Feb
 2024 04:49:08 -0800 (PST)
MIME-Version: 1.0
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
 <20240223-saradcv2-chan-mask-v1-3-84b06a0f623a@theobroma-systems.com>
 <CAHp75VfVTJsQDwaPoPgGiT6jnymXAR3WpETqaKai8rXAC70iLw@mail.gmail.com>
 <6f76ffab-69fe-4afb-9d7e-d3cdfe37c28c@theobroma-systems.com>
 <CAHp75Vft3kJEF9JiuEqVsS3biQ6YsuDXON_P3FOZRjtb8NaB2w@mail.gmail.com> <d2a7954926e328cbf898aac0a42a6e24@manjaro.org>
In-Reply-To: <d2a7954926e328cbf898aac0a42a6e24@manjaro.org>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Tue, 27 Feb 2024 14:48:32 +0200
Message-ID: <CAHp75VcuRacheLt=sAJz27RMEZqvZ8CAZSPvxgUbSFS-dUAAOg@mail.gmail.com>
Subject: Re: [PATCH 3/3] iio: adc: rockchip_saradc: replace custom logic with devm_reset_control_get_optional_exclusive
To: Dragan Simic <dsimic@manjaro.org>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>, 
	Quentin Schulz <foss+kernel@0leil.net>, Jonathan Cameron <jic23@kernel.org>, 
	Lars-Peter Clausen <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Simon Xue <xxm@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240227_044911_180654_75018F10 
X-CRM114-Status: GOOD (  24.94  )
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

T24gTW9uLCBGZWIgMjYsIDIwMjQgYXQgMTA6MzHigK9QTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0Bt
YW5qYXJvLm9yZz4gd3JvdGU6Cj4gT24gMjAyNC0wMi0yMyAxNTozOSwgQW5keSBTaGV2Y2hlbmtv
IHdyb3RlOgo+ID4gT24gRnJpLCBGZWIgMjMsIDIwMjQgYXQgMzoxMOKAr1BNIFF1ZW50aW4gU2No
dWx6Cj4gPiA8cXVlbnRpbi5zY2h1bHpAdGhlb2Jyb21hLXN5c3RlbXMuY29tPiB3cm90ZToKPiA+
PiBPbiAyLzIzLzI0IDE0OjAwLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6CgouLi4KCj4gPj4gSSB3
b3VsZCBzdGlsbCBiZSByZWFjaGFibGUgYXQgdGhhdCBDYyBhZGRyZXNzIHdpdGhvdXQgaGF2aW5n
IHRvIG1vZGlmeQo+ID4+IHRoZSAubWFpbG1hcCBhZnRlciB0aGUgZmFjdCAod2hpY2ggd29uJ3Qg
bWFrZSBpdCB0byBhbiBlYXJsaWVyIHZlcnNpb24KPiA+PiBvZiB0aGUga2VybmVsIGZvciBleGFt
cGxlKS4gU29tZSBtYWludGFpbmVycyBkb24ndCByZWFsbHkgbGlrZSB0aGlzLAo+ID4+IHNvbWUg
ZG9uJ3QgbWluZCwgd2UnbGwgc2VlIGluIHdoaWNoIGNhdGVnb3J5IHRoZSBJSU8gbWFpbnRhaW5l
cihzKQo+ID4+IGZhbGwKPiA+PiBpbiA6KSAoSSBkb24ndCBtaW5kIGVpdGhlciB3YXkganVzdCB0
byBiZSBjbGVhcikuCj4gPgo+ID4gTXkgcG9pbnQgaXMgdGhhdCBDYyBhbmQgb3RoZXIgc2ltaWxh
ciAobm9uLXJlYWwtdGFncykgc3R1ZmYgaXMKPiA+IHBvbGx1dGluZyBjb21taXQgbWVzc2FnZXMu
IEl0IG1lYW5zIHRoYXQgdGhpcyB3aWxsIGJlIGNvcGllZCB0byB0aGUKPiA+IEdpdCBpbmRleCB0
byBhbGwga2VybmVsIGdpdCByZXBvc2l0b3JpZXMgaW4gdGhlIHdvcmxkIGZyb20gbm93IGFuZAo+
ID4gdGhlbiwgVGhpcyBpcyBhdCBiYXJlIG1pbmltdW0gbWFrZXMgYWRkaXRpb25hbCBidXJkZW4g
b24gZ2l0IGxvZyAoYW5kCj4gPiBwYXJzaW5nIGFuZCBzbyBvbikgYW5kIG1vcmVvdmVyLCB3YXN0
ZXMgcmVzb3VyY2VzIGJlY29taW5nIGxlc3MKPiA+IGVudmlyb25tZW50IGZyaWVuZGx5IChubyBq
b2tlcykuIFVzaW5nIC0tY2Mgb3IgbW92aW5nIHRvIHRoZSBiZWhpbmQKPiA+IHRoZSBjb21taXQg
bWVzc2FnZSB3aWxsIGtlZXAgZW1haWwgY29waWVkIHdpdGggY2xlYW5lciBjb21taXQKPiA+IG1l
c3NhZ2VzLiBZZXQsIGFsbCBlbWFpbCB0YWdzIGFyZSBhdmFpbGFibGUgaW4gbG9yZSBhcmNoaXZl
Cj4gPiAobG9yZS5rZXJuZWwub3JnKS4gUGxlYXNlLCByZWFsbHkgcmVjb25zaWRlciB0aGUgY29t
bWl0IG1lc3NhZ2VzCj4gPiBjb250ZW50IGluIHRoZSBMaW51eCBrZXJuZWwgcHJvamVjdCBhbmQg
ZWxzZXdoZXJlLCBpdCB3aWxsIGhlbHAgdG8KPiA+IG1ha2UgdGhlIHdvcmxkIG1vcmUgZnJpZW5k
bHkuCj4KPiBCZWxpZXZlIGl0IG9yIG5vdCwgSSdtIHdvcmtpbmcgb24gc29tZSBwYXRjaGVzIGZv
ciBHaXQgdGhhdCwgSSBiZWxpZXZlLAo+IHNob3VsZCBoZWxwIGEgbG90IHdoZW4gaXQgY29tZXMg
dG8gaGFuZGxpbmcgQ2M6IGFkZHJlc3Nlcy4gIFdvdWxkIHlvdQo+IGxpa2UgdG8gYmUgaW5jbHVk
ZWQgaW4gdGhlIGxpc3Qgb2YgcmVjaXBpZW50cyBmb3IgdGhvc2UgR2l0IHBhdGNoZXMsIHNvCj4g
eW91IGNvdWxkLCBob3BlZnVsbHksIHByb3ZpZGUgc29tZSBmZWViYWNrPwoKWW91IG1heSBDYyBt
ZSBpZiB5b3Ugd2FudCB0bywgYnV0IEkgY2FuJ3QgZ3VhcmFudGVlIEkgaGF2ZSB0aW1lIG9yCnZh
bHVhYmxlIGlucHV0IHRvIHRoYXQuCgotLSAKV2l0aCBCZXN0IFJlZ2FyZHMsCkFuZHkgU2hldmNo
ZW5rbwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
