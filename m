Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6A496C4345F
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Apr 2024 12:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GDmyx/DQ/GR8lF5jjdQzrLDH532eTCxuHbBZc7/+kgA=; b=SM87MN4JD9e+IVx5gRc6dxmlsR
	Lqwc/UCsf4PTXo+EMG8mwlmhzmaVrM8Dw+9siBDtjOZfeZURA55RCdZ3hC8bXmEQrK3UF+bQTuARc
	a0kgAgswaie3DQhT1rz51Is+CUONdUSgMg9XRxQmZj5rb3+TmzsjS/EB7RKwO6t97GYQz5a0q3KsE
	4TEu1eF+VDzKR+wR6za0FMRvt7mixleEmLA1KoVrQLdJzQqaW7zSu+ru43/Zij7ji7kYGqJUj8bd2
	+eGmKk+qwLaWzEw86AfeNdYdFsjIq6B+gBQM7DvgA0q03vuMi9ymxWs1FzetvufSMCtlJzddqg+kH
	YXSf7ITw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzbwv-000000046ya-1qQO;
	Wed, 24 Apr 2024 12:42:09 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzbwq-000000046x9-2h87;
	Wed, 24 Apr 2024 12:42:05 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a56d7d457a1so350831666b.1;
        Wed, 24 Apr 2024 05:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1713962517; x=1714567317; darn=lists.infradead.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RHZIct1D0pwRcJc5TIZbntuTMJlJZEOfxhjoV++WJSc=;
        b=Z3BxgpFuxbh2k66kfdOHTPBb+rSRx4ywmN3eQ97vClkG75CCgfSOgAQ6arN5tS/Gui
         PqtrvfAGrnHwAqgWHvfGCDQxCG5eqsDCw9TqPeUwABHOJAJEaBTdYGgdiS1rzLniSesk
         8n1yYafogltfUualfS01yg3EtZy36UbJz6YaYjj7nhnCol3uBgE5URShtitEvejYN2nW
         shO21vRpKQ//GWMg5LmRHPRT+AsbVLvXSYDkH3bWEKCFsI376T3Ic8lbfwFRjSTRQLz3
         CKn+I0U1f7Lda+qgq4lLhAveLX8v5F1ROnyDCSsFJrHcRzJ3z6j6/2y8bgbCBUYPSeJd
         AVGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713962517; x=1714567317;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RHZIct1D0pwRcJc5TIZbntuTMJlJZEOfxhjoV++WJSc=;
        b=IZcEsJOG9DE0XYzzO9Wc6CQXnINPIIdjj9nzFZFnm9b33BhrTb7nL2Ebvxa1jtp0j6
         Hbg8XkuN3ZBO96ciGzj5zsUTQQB26zOmn0MwY77Uhk1/5WeOnpJePvScrUKi+6nJCyHA
         noqW7UJNR/JkROZRjlxB5t5Kmq3VacYP+2786Cmnog46I1V0djnaeaO61PqyGXAEB9qh
         4U6x9HKpFbrcql33nU5kvvA0U2qNxZePFcNkF8jh9eTj8bdDOCMJtUWgHP0BQN3oOfzH
         VNjaMkknrG7yhUVpBW1ohWNQN6jXzRqvI4ruo6P26zFelUHkVtTTICWbfhrvT/qLEcrp
         IVTg==
X-Forwarded-Encrypted: i=1; AJvYcCX7zvn3W7QgUhcN7lYQoHpJSJrLdWnuRo/e4i+4YxJxpmW9QPukvwjoztkS2L19Yea0TB4pej7rSDsNSS2URsiPF9JalliEFam9Awxk5oWo9D9SCXuw9DOZr1VzE1NQFXsmLUJQ+dcg4tFzLHaOURonEy7jXOoDySwZA/SxOogdwHZZxkzD93uIDDgy1vYCY3ZLCFJRNNnFkKuYNg0ggQ==
X-Gm-Message-State: AOJu0YwebVrN630uWw4f3sXvg0utIQn+Me5+mDjKySAgul8v0HGwGdOM
	XvREs6uf58GvQMPF7de2pQICKoqSF/sBcLOjMazCw2GkV9b6kudhBPc95AAleyZSrNNyFYNukBZ
	tbNVZ3ZjL0icRLtzV4jonX0AsTFBrvPvC
X-Google-Smtp-Source: AGHT+IFIhmK+schRX6X3I8Bxyx6tSQB7JSgLCRIm/8b1cT+bJ5PWapMzaGpgKQTyNU3aSrkHw3E716N3QPXAh2TBIrM=
X-Received: by 2002:a17:906:7716:b0:a58:873e:a058 with SMTP id
 q22-20020a170906771600b00a58873ea058mr1515393ejm.27.1713962517515; Wed, 24
 Apr 2024 05:41:57 -0700 (PDT)
MIME-Version: 1.0
References: <20240410112418.6400-20-wsa+renesas@sang-engineering.com>
 <ZihNbtiVDkxgUDGk@surfacebook.localdomain> <sbkymvjmrufouqqscpmrui5kcd466gj6yn2bqwf3lhfk55mjos@n4ydx6wzyq4k>
In-Reply-To: <sbkymvjmrufouqqscpmrui5kcd466gj6yn2bqwf3lhfk55mjos@n4ydx6wzyq4k>
From: Andy Shevchenko <andy.shevchenko@gmail.com>
Date: Wed, 24 Apr 2024 15:41:21 +0300
Message-ID: <CAHp75VfEvifLjPRQ+xsKipjwXA-APR7m_au6OJjafeXp6Wiyxg@mail.gmail.com>
Subject: Re: [PATCH 00/18] i2c: remove printout on handled timeouts
To: Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Andy Shevchenko <andy.shevchenko@gmail.com>, linux-i2c@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-omap@vger.kernel.org, 
	linux-renesas-soc@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-rpi-kernel@lists.infradead.org, linux-tegra@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_054204_711161_F5ABE4D1 
X-CRM114-Status: GOOD (  24.38  )
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

T24gV2VkLCBBcHIgMjQsIDIwMjQgYXQgMTI6MDDigK9QTSBXb2xmcmFtIFNhbmcKPHdzYStyZW5l
c2FzQHNhbmctZW5naW5lZXJpbmcuY29tPiB3cm90ZToKPiBPbiBXZWQsIEFwciAyNCwgMjAyNCBh
dCAwMzowODoxNEFNICswMzAwLCBBbmR5IFNoZXZjaGVua28gd3JvdGU6Cj4gPiBXZWQsIEFwciAx
MCwgMjAyNCBhdCAwMToyNDoxNFBNICswMjAwLCBXb2xmcmFtIFNhbmcga2lyam9pdHRpOgo+ID4g
PiBXaGlsZSB3b3JraW5nIG9uIGFub3RoZXIgY2xlYW51cCBzZXJpZXMsIEkgc3R1bWJsZWQgb3Zl
ciB0aGUgZmFjdCB0aGF0Cj4gPiA+IHNvbWUgZHJpdmVycyBwcmludCBhbiBlcnJvciBvbiBJMkMg
b3IgU01CdXMgcmVsYXRlZCB0aW1lb3V0cy4gVGhpcyBpcwo+ID4gPiB3cm9uZyBiZWNhdXNlIGl0
IG1heSBiZSBhbiBleHBlY3RlZCBzdGF0ZS4gVGhlIGNsaWVudCBkcml2ZXIgb24gdG9wCj4gPiA+
IGtub3dzIHRoaXMsIHNvIGxldCdzIGtlZXAgZXJyb3IgaGFuZGxpbmcgb24gdGhpcyBsZXZlbCBh
bmQgcmVtb3ZlIHRoZQo+ID4gPiBwcmlub3V0cyBmcm9tIGNvbnRyb2xsZXIgZHJpdmVycy4KPiA+
ID4KPiA+ID4gTG9va2luZyBmb3J3YXJkIHRvIGNvbW1lbnRzLAo+ID4KPiA+IEkgZG8gbm90IHNl
ZSBhbiBlcXVpdmFsZW50IGNoYW5nZSBpbiBJwrJDIGNvcmUuCj4KPiBUaGVyZSBzaG91bGRuJ3Qg
YmUuIFRoZSBjb3JlIG5laXRoZXIga25vd3MgaWYgaXQgaXMgb2theSBvciBub3QuIFRoZQo+IGNs
aWVudCBkcml2ZXIga25vd3MuCj4KPiA+IElJUkMgaW4gb3VyIGNhc2UgKERXIG9yIGk4MDEgb3Ig
aVNNVCkgd2Ugb2Z0ZW4gaGF2ZSB0aGlzIG1lc3NhZ2UgYXMgdGhlIG9ubHkKPgo+IE9mdGVuPyBI
b3cgb2Z0ZW4/CgpPbmNlIGluIGEgY291cGxlIG9mIG1vbnRocyBJIGFzc3VtZS4gTGFzdCB0aW1l
IGl0IHdhcyBhIGZldyB3ZWVrcyBhZ28KdGhhdCB0aGVyZSB3YXMgYSByZXBvcnQgYW5kIHRoZXkg
cG9pbnRlZCB0byB0aGlzIHZlcnkgbWVzc2FnZSB3aGljaAp3YXMgaGVscGZ1bC4KCj4gPiBvbmUg
dGhhdCBwb2ludHMgdG8gdGhlIGlzc3VlcyAob24gbm9uLWRlYnVnIGxldmVsKSwgaXQgd2lsbCBi
ZSBtdWNoIGhhcmRlciB0bwo+ID4gZGVidWcgZm9yIG91ciBjdXN0b21lcnMgd2l0aCB0aGlzIGdv
aW5nIGF3YXkuCj4KPiBUaGUgcHJvcGVyIGZpeCBpcyB0byBwcmludCB0aGUgZXJyb3IgaW4gdGhl
IGNsaWVudCBkcml2ZXIuIE1heWJlIHRoaXMKPiBuZWVkcyBhIGhlbHBlciBmb3IgY2xpZW50IGRy
aXZlcnMgd2hpY2ggdGhleSBjYW4gdXNlIGxpa2U6Cj4KPiAgICAgICAgIGkyY19yZXBvcnRfZXJy
b3IoY2xpZW50LCByZXR2YWwsIGZsYWdzKTsKPgo+IFRoZSBvdGhlciB0aGluZyB3aGljaCBpcyBh
bHNvIG1vcmUgaGVscGZ1bCBJTU8gaXMgdGhhdCB3ZSBoYXZlCj4gdHJhY2VfZXZlbnRzIGZvciBf
X2kyY190cmFuc2Zlci4gVGhlcmUsIHlvdSBjYW4gc2VlIHdoYXQgd2FzIGhhcHBlbmluZwo+IG9u
IHRoZSBidXMgYmVmb3JlIHRoZSB0aW1lb3V0LiBJdCBjYW4gZWFzaWx5IGJlIHRoYXQsIGlmIGRl
dmljZSBYCj4gdGltZXMgb3V0LCBpdCB3YXMgYmVjYXVzZSBvZiB0aGUgdHJhbnNmZXIgYmVmb3Jl
IHRvIGRldmljZSBZIHdoaWNoIGxvY2tzCj4gdXAgdGhlIGJ1cy4gQSBzaW1wbGUgIkJ1cyB0aW1l
ZCBvdXQiIG1lc3NhZ2Ugd2lsbCBub3QgaGVscCB5b3UgYSBsb3QKPiB0aGVyZS4KClRoZSB0cmFj
ZSBldmVudHMgYXJlIGdvb2QgdG8gaGF2ZSwgbm90IHN1cmUgaWYgcHJvZHVjdGlvbiBrZXJuZWxz
IGhhdmUKdGhlbSBlbmFibGVkLCB0aG91Z2guCgo+IEFuZCwga2VlcCBpbiBtaW5kIHRoZSBmYWxz
ZSBwb3NpdGl2ZXMgSSBtZW50aW9uZWQgaW4gdGhlIGNvdmVybGV0dGVyLgoKCi0tIApXaXRoIEJl
c3QgUmVnYXJkcywKQW5keSBTaGV2Y2hlbmtvCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
