Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6AD50C5478C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Feb 2024 13:03:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GBjfxvlvZy+nuJI888wWzUmGNf0KveLQrtJRZHB1GVY=; b=U+sovrT5SUQtbG
	euf1O8AZpLs+DMQrrWcy4griAlEWQuEshMLOXYJz6dwGcbdF9zAaVrAlrmku6xPp8lu40v90wofVB
	l5ZThisfWavQLmvI7spI9WZLAXzJ70mbHzCEixvMMoEzb6eKxsoije0mIEgBFM+JeARQnmCHYOhBN
	kGKdl/RxHsOdo+0h8tTp3SowMt2XWQNTi6uDzRzfajGH+UVWK63RPeMZ6O2CJclNlhOdKBseh657O
	rz9WGNhLlCJrU8//VmTINJnDkx7JkNQdoaLt8l0NdKpW4e4G5nknRdpHwJrmPZluNaL9liq28mL3q
	w/qZDtw7Up/8/iOLu6lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVCM-00000009SK8-2jHY;
	Fri, 23 Feb 2024 13:02:53 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdVBo-00000009SBM-2ZEU;
	Fri, 23 Feb 2024 13:02:10 +0000
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-a3fd9063261so52396666b.1;
        Fri, 23 Feb 2024 05:02:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1708693326; x=1709298126; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wjq07PpYymrZKKAoQVhq2BQc76gSpF0DqGU+6ncJhNo=;
        b=CXE1HQIgI9mA47RCLNqyRmuZeM7ItiQVAdtZLEoHX7ajPBRx6+A7UbRkCg+X9wHf5e
         yiXMa8Djzc0/M0HV7c8Qi88JV+I0AZBDpN6iL+SfkpiLI4uS+SQ39z+iNfjJjYvshsu3
         4NVKblQ2s7Cxxf53LVrlVgZaODsq1L5+hKLETMyyBgI3x8azFWnCgKX+FKbfKYQvgn8+
         4MYJ608ScaWpuMNgoD2oI08wIRAQhII2AMujGIgyftQ6Gps/ShKCCB1tW07Wyd/mAA8s
         P/U59+3qkckjIokSPWK8i+uIaXn+KdLOh/dub7A/X9SIRYvFb2FM9uXCHbGDrbm2fcGP
         +ROA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708693326; x=1709298126;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wjq07PpYymrZKKAoQVhq2BQc76gSpF0DqGU+6ncJhNo=;
        b=G+bd/ZZuhd3MnTtU07hG6ws43zMRVhbVc0KXMOTCaErsP1dOGTsfSj2crxr1VXYE0h
         xmJwIRXEiA3oS2Xuxf33V/gmMjtSkiD9nLl3M6qkAwToCL9TK+9KGNA1dIv53vjajl9r
         0XqY3skyygVevwg3D15Km39ppjGKL4rjnUlO3MFUIZGMw1GmHBn8E2eodGk4HDM0DM8Q
         xDlE7yVHzCQYfd9FSTqmEJ9GnPKb0UvgJUN74IjZpz5efpFcIsmL2qM9nWjgZA9DTFOC
         J5XXYcxXbwCGBWkp691YTguOIw3rDTMCnWKPCMCeIhIrhXjgPqVgsTNSw+PDYaG43qz/
         B3pw==
X-Forwarded-Encrypted: i=1; AJvYcCV1oxjN+h2JMbcNf8wj7BCBcU5+RxIuqVwpHfaZog7VTiH8sKwCKUmALDyecWaVCfIkRutMQPvJqcQzC1TqvB1Z51dHK1ht9yt8mPvxdn7ErDvQ5wBdvnnco6TP1J9iyOEAEr5J0qs2hXAT7UIijkp5GYKIrxujhbU=
X-Gm-Message-State: AOJu0Yw5bLqx9ImehGGCjUqykaDxdXoBUkB0oY+gqKZf4BPc9kEx0h08
	MKNR3y/pAxG8nhspN2pqGGmRhjKJ1SZNNghTUWpEz+EjGP6QFAjG+U8sP+7YOzlPHIKOznMz/WP
	VaHpMsavXp6WpB6GTcjLsdDZicEU=
X-Google-Smtp-Source: AGHT+IFJicXo49jcPmF3ozTCIntOPHZaNICbV+q4qp+G0h6fLVfkxYx5SfT0LbSBWWGkkoGdw+ja5cEeSVfLsSgJPVQ=
X-Received: by 2002:a17:906:688f:b0:a3e:9df6:7f0a with SMTP id
 n15-20020a170906688f00b00a3e9df67f0amr1215288ejr.68.1708693326401; Fri, 23
 Feb 2024 05:02:06 -0800 (PST)
MIME-Version: 1.0
References: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
In-Reply-To: <20240223-saradcv2-chan-mask-v1-0-84b06a0f623a@theobroma-systems.com>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Fri, 23 Feb 2024 15:01:30 +0200
Message-ID: <CAHp75VfmsDeTP97srRJU09gA988xw68+ZHsXvXT3W_wv1HEauA@mail.gmail.com>
Subject: Re: [PATCH 0/3] iio: adc: rockchip_saradc: fix bitmasking and remove
 custom logic for getting reset
To: Quentin Schulz <foss+kernel@0leil.net>
Cc: Jonathan Cameron <jic23@kernel.org>, Lars-Peter Clausen <lars@metafoo.de>, Heiko Stuebner <heiko@sntech.de>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Shreeya Patel <shreeya.patel@collabora.com>, Simon Xue <xxm@rock-chips.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Jonathan Cameron <Jonathan.Cameron@huawei.com>, 
	linux-iio@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240223_050209_137291_29CBC6B0 
X-CRM114-Status: GOOD (  18.97  )
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

T24gRnJpLCBGZWIgMjMsIDIwMjQgYXQgMjo0NuKAr1BNIFF1ZW50aW4gU2NodWx6IDxmb3NzK2tl
cm5lbEAwbGVpbC5uZXQ+IHdyb3RlOgo+Cj4gVGhlIG1hc2sgZm9yIHRoZSBjaGFubmVsIHNlbGVj
dGlvbiBpcyBpbmNvcnJlY3QgYXMgaXQncyBzcGVjaWZpZWQgdG8gYmUKPiAxNmIgd2lkZSBieSBp
cyBhY3R1YWxseSBvbmx5IDQuCj4KPiBBbHNvLCB0aGUgMTYgbG93ZXIgYml0cyBpbiB0aGUgU0FS
QURDX0NPTlZfQ09OIHJlZ2lzdGVyIGFyZSB3cml0ZQo+IHByb3RlY3RlZC4gV2hhdGV2ZXIgdGhl
aXIgdmFsdWUgaXMgY2FuIG9ubHkgYmUgd3JpdHRlbiB0byB0aGUgaGFyZHdhcmUKPiBibG9jayBp
ZiB0aGVpciBhc3NvY2lhdGVkIGJpdCBpbiB0aGUgaGlnaGVyIDE2IGJpdHMgaXMgc2V0LiBDb25z
aWRlcmluZwo+IHRoYXQgdGhlIGNoYW5uZWwgYml0bWFzayBpcyA0YiB3aWRlIGJ1dCB0aGF0IHdl
IGNhbiB3cml0ZSBlLmcuIDAgaW4KPiB0aGVyZSwgd2Ugc2hvdWxkbid0IHVzZSB0aGUgdmFsdWUg
c2hpZnRlZCBieSAxNiBhcyBhIG1hc2sgYnV0IHJhdGhlciB0aGUKPiBiaXRtYXNrIGZvciB0aGF0
IHZhbHVlIHNoaWZ0ZWQgYnkgMTYuIFRoaXMgaXMgY3VycmVudGx5IE5PVCBhbiBpc3N1ZQo+IGJl
Y2F1c2UgdGhlIG9ubHkgU29DIHdpdGggU0FSQURDdjIgSVAgaXMgdGhlIFJLMzU4OCB3aGljaCBo
YXMgYSByZXNldAo+IGRlZmluZWQgaW4gdGhlIFNvQyBEVFNJLiBXaGVuIHRoYXQgaXMgdGhlIGNh
c2UsIHRoZSByZXNldCBpcyBhc3NlcnRlZAo+IGJlZm9yZSBldmVyeSBjaGFubmVsIGNvbnZlcnNp
b24gaXMgc3RhcnRlZC4gVGhpcyBtZWFucyB0aGUgcmVnaXN0ZXJzIGFyZQo+IHJlc2V0IHNvIGVm
ZmVjdGl2ZWx5LCB3ZSBkbyBub3QgbmVlZCB0byB3cml0ZSB6ZXJvcyBzbyB0aGUgd3JvbmcgbWFz
awo+IHN0aWxsIHdvcmtzIGJlY2F1c2Ugd2hlcmUgd2Ugc2hvdWxkIGJlIHdyaXRpbmcgemVyb2Vz
LCB0aGVyZSBhcmUgYWxyZWFkeQo+IHplcm9lcy4gSG93ZXZlciwgbGV0J3MgZml4IHRoaXMgaW4g
Y2FzZSB0aGVyZSBjb21lcyBhIGRheSB0aGVyZSdzIGFuIFNvQwo+IHdoaWNoIGRvZXNuJ3QgcmVx
dWlyZSB0byByZXNldCB0aGUgY29udHJvbGxlciBiZWZvcmUgZXZlcnkgY2hhbm5lbAo+IGNvbnZl
cnNpb24gaXMgc3RhcnRlZC4KPgo+IExhc3RseSwgbGV0J3MgdXNlIHRoZSBhcHByb3ByaWF0ZSBm
dW5jdGlvbiBmcm9tIHRoZSByZXNldCBzdWJzeXN0ZW0KPiBmb3IgZ2V0dGluZyBhbiBvcHRpb25h
bCBleGNsdXNpdmUgcmVzZXQgaW5zdGVhZCBvZiByb2xsaW5nIG91dCBvdXIgb3duCj4gbG9naWMu
Cj4KPiBUaG9zZSB0aHJlZSBwYXRjaGVzIHNob3VsZCBub3QgYmUgY2hhbmdpbmcgYW55IGJlaGF2
aW9yLgoKTmljZSBzZXJpZXMsIEkgaGF2ZSB0aGUgY29tbWVudHMgaW4gcGF0Y2ggMywgYnV0IG5v
IG5lZWQgdG8gcmVzZW5kCnVudGlsIEpvbmF0aGFuIGFza3MgZm9yLiBIZSBtaWdodCBhZGRyZXNz
IHRoYXQgd2hpbHN0IGFwcGx5aW5nLgoKUmV2aWV3ZWQtYnk6IEFuZHkgU2hldmNoZW5rbyA8YW5k
eS5zaGV2Y2hlbmtvQGdtYWlsLmNvbT4KCi0tIApXaXRoIEJlc3QgUmVnYXJkcywKQW5keSBTaGV2
Y2hlbmtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
