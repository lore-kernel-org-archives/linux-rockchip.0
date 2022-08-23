Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9AA28C32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 18:51:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zituz/hNfpAyhz6kB23tnSI06le+wy6U1r4VS9Z1m9Q=; b=kr1p1pIcEHO2IO
	EeODM6KLwV7RP1wWKI+R7h8LBzLg7m/KC99wNmWcB/BluX4qUGA096bIGAvvfeTBU7hZRQNyMCZUv
	zoYNrviA5RNATShrdZj6J1PtYJQl5UJDrKMvOe95B31E3cJ+rwjpLdEBTDJpLB1L8jQ61Z+i/NPjW
	UUHosC91/NGCWSuD0XHGGf8KVRsNWsU68sxWC3RRp/UQCuVPVuOd93+EybCC395S+MU93aAnrhsaV
	r9QjDt9dwj2tPK/JF2ZUfniowSrkQglFdQE2HFETW2KQ4UtgGHRcaNfOtzaageKY+ydF8aUucK3wT
	IxGMusyoB7c5ViDFIN/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQYzs-008JIL-Hf; Tue, 23 Aug 2022 18:51:32 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQYyz-008Hw8-Av
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 18:50:39 +0000
Received: by mail-pl1-x62b.google.com with SMTP id x19so13599407plc.5
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 11:50:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc;
        bh=/6MgYQynlKjVO5yQ/ZXe7vd/aFxPZ1CaapAzvUa4a4g=;
        b=ikM7qhdIpjbLzfr7suns0qY6EZit4upFDcclekoxK6tByYgIRc1jLEEPVb6RPqT83i
         WoY7jYIligukD49jBrzQfVu2P37v2fwqfdnI/N4YOU0eaHNqobPJp/FngkZXXxZ0w/Ui
         ScXFhPgIIHD/ZyfVsUanwCt3unLFIIDB8UGSo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc;
        bh=/6MgYQynlKjVO5yQ/ZXe7vd/aFxPZ1CaapAzvUa4a4g=;
        b=HSVMcivxrGdSQfwN9SEq9477tTjXipF/OmWdc81G9TJ8y9CCqG+fAlK2I2+HFmDZ3C
         Um+CZUsDhpROc0F9f3RmD9Up1DogZcCrkY8htXljvSPMczRq7P2uA4xyRu28mp5Q7niv
         99gSRAoPEVbUPfvuuvdJvYJI27Alcz8xDe/Z4hXnXfy1QwNicOjFHHvPMvuu2fS6fAVd
         YI7B7PgjZ7eWB0ADKYcUPXPuaCxoYQbrTUn3fv1MX4/tm+KSpndwx9aQSjSgqvFe5yYz
         Vzx5KgIUtPd9N0oIyeXwsSVzjEIjF74LhEAKRX2rwOOXcSuzyHnfXuQWIS4DuZRzPzeR
         Du5A==
X-Gm-Message-State: ACgBeo0PoLd3wCFypa3xAfa/8zySuMzsBMmen5E/phXPr8r0QN7ZuhHF
	6RfYoqcR2j2QYRVeQoa+RiH9pg==
X-Google-Smtp-Source: AA6agR4PhBa4xTP/Cmb3RzX7gXe2wQgYBokWSWZsPSyAv0+QXeCgAXxsHtiwuqEXuxSK4dvlVmwU/g==
X-Received: by 2002:a17:90b:3b4f:b0:1fb:5b03:6822 with SMTP id ot15-20020a17090b3b4f00b001fb5b036822mr4539924pjb.87.1661280636070;
        Tue, 23 Aug 2022 11:50:36 -0700 (PDT)
Received: from google.com ([2620:15c:202:201:34e2:c40e:42d3:27e0])
        by smtp.gmail.com with ESMTPSA id e10-20020a17090301ca00b0016e8178aa9csm10928202plh.210.2022.08.23.11.50.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 11:50:35 -0700 (PDT)
Date: Tue, 23 Aug 2022 11:50:32 -0700
From: Brian Norris <briannorris@chromium.org>
To: Chen Jeffy <jeffy.chen@rock-chips.com>
Cc: Doug Anderson <dianders@chromium.org>, Heiko Stuebner <heiko@sntech.de>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Linus Walleij <linus.walleij@linaro.org>,
	LKML <linux-kernel@vger.kernel.org>,
	"open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 2/2] gpio/rockchip: Toggle edge trigger mode after acking
Message-ID: <YwUheATnV+Iuhnl5@google.com>
References: <20220820095933.20234-1-jeffy.chen@rock-chips.com>
 <20220820095933.20234-2-jeffy.chen@rock-chips.com>
 <CAD=FV=X0qJ2OC1SrAmhSQ5YeKEwvsSCbfVGPh457YYEuPCbRtg@mail.gmail.com>
 <5cb0a457-b667-76e5-d383-6e93457d5d12@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5cb0a457-b667-76e5-d383-6e93457d5d12@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_115037_471394_05981725 
X-CRM114-Status: GOOD (  24.00  )
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

SGksCgpPbiBUdWUsIEF1ZyAyMywgMjAyMiBhdCAxMDo1MDoxNkFNICswODAwLCBKZWZmeSBDaGVu
IHdyb3RlOgo+IE9uIDgvMjMg5pif5pyf5LqMIDE6MDgsIERvdWcgQW5kZXJzb24gd3JvdGU6Cj4g
PiBJJ20gaGFwcHkgdG8gbGV0IG90aGVycyBzYXkgZm9yIHN1cmUsIGJ1dCBmcm9tIG15IHBvaW50
IG9mIHZpZXcgSSdtCj4gPiBub3QgY29udmluY2VkLiBJdCBmZWVscyBsaWtlIHdpdGggeW91ciBu
ZXcgY29kZSB5b3UgY291bGQgbG9zZSBlZGdlcy4KCkkgd29uJ3QgY2xhaW0gdG8ga25vdyBmb3Ig
c3VyZSBlaXRoZXIsIGJ1dCBJJ20gdHJ5aW5nIHRvIGZvbGxvdyBhbG9uZywKYmVjYXVzZSB3ZSd2
ZSBkZWFsdCB3aXRoIHZhcmlvdXMgc29ydHMgb2YgbmFzdHkgbG9naWNhbCBlcnJvcnMgaW4gdGhl
CmdwaW8gYW5kL29yIGlycWNoaXAgYXJlYXMgaGVyZSA6KQoKPiA+IC4uLmluIG90aGVyIHdvcmRz
IGFuIGVkZ2UgaGFwcGVuZWQgX2FmdGVyXyB0aGUgSVJRIGhhbmRsZXIgcmFuIGJ1dCB3ZQo+ID4g
ZGlkbid0IGNhbGwgdGhlIElSUSBoYW5kbGVyIGFnYWluLiBJIGRvbid0IHRoaW5rIHRoaXMgaXMg
cmlnaHQuCgpJIGJlbGlldmUgRG91ZyBoYXMgaWRlbnRpZmllZCBvbmUgcHJvYmxlbSBjb3JyZWN0
bHkgLS0gdGhhdCB3ZSBjYW4ndApoYW5kbGUgdGhlIGJvdGgtZWRnZSB0b2dnbGluZyBlbnRpcmVs
eSBhZnRlciB0aGUgYWNrK2Rpc3BhdGNoLgoKKG91dC1vZi1vcmRlciBxdW90ZTopCj4gU28gaWYg
YW4gZWRnZSBjb21lIGluIGJldHdlZW4sIHRoYXQgbmV3IElSUSBzdGF0dXMgd291bGQgYmUgYWNr
ZWQoY2xlYXJlZCkKPiBpbiB0aGUgZm9sbG93aW5nIEdQSU8gaXJxIGhhbmRsZXIgYXMgd2VsbCBh
cyB0aGUgb2xkIG9uZSwgd2l0aG91dCB0cmlnZ2VyaW5nCj4gYW5vdGhlciBJUlEgZGVtdXgoKSB0
byB0b2dnbGUgdGhlIHRyaWdnZXIgbW9kZS4KCkkgYmVsaWV2ZSBKZWZmeSBoYXMgaWRlbnRpZmll
ZCBhbm90aGVyIC0tIHRoYXQgd2UgY2FuJ3QgaGFuZGxlIHRoZQpib3RoLWVkZ2UgdG9nZ2xpbmcg
ZW50aXJlbHkgYmVmb3JlIHRoZSBhY2srZGlzcGF0Y2guCgo+IFJpZ2h0LCBzbyBndWVzc2luZyB3
ZSBjb3VsZCBzb21laG93IG1vdmUgdGhlIElSUSBhY2sgaW50byB0aGUgdG9nZ2xpbmcgZmxvdwo+
IHRvIG1ha2Ugc3VyZSB0aGF0IGl0IHdvdWxkIG5vdCBjbGVhciB0aGUgbmV3IElSUT8KClRoaXMg
c291bmRzIGxpa2Ugd2UgbmVlZCB0aGUgdG9nZ2xpbmcgdG8gaGFwcGVuIHdpdGhpbiB0aGUgLmly
cV9hY2soKQpjYWxsYmFjaywgaW4gYmV0d2VlbiB0aGUgQUNLIGFuZCB0aGUgY2hhaW4gZGlzcGF0
Y2guCgpJJ20gbm90IHN1cmUgSSd2ZSBmdWxseSB3YWxrZWQgdGhyb3VnaCB0aGlzIHlldCwgYnV0
IHdvdWxkIGl0IHN1ZmZpY2UgdG8KbW92ZSB0aGUgJ3RvZ2dsZV9lZGdlX21vZGUnIGxvb3AgaW50
byBpcnFfYWNrKCksIHJpZ2h0IGFmdGVyIHdyaXRpbmcgdGhlCkVPSSByZWdpc3Rlcj8gVGhhdCB3
YXkgd2UncmUgaW4gb25lIG9mIHRoZXNlIGNhc2VzIHdpdGhpbiBpcnFfYWNrKCk6CgooMSkgbm8g
ZnVydGhlciBlZGdlcyBvY2N1cnJlZCBhZnRlciB0aGUgQUNLL0VJTyB3cml0ZTogdGhlIHRvZ2ds
ZS1sb29wCndpbGwgdG9nZ2xlIGNvcnJlY3RseSwgYW5kIHRoZW4gd2UgZGlzcGF0Y2ggdGhlIGNo
YWluZWQgaGFuZGxlci4KCigyKSBvbmUgb3IgbW9yZSBhZGRpdGlvbmFsIGVkZ2VzIG9jY3VycmVk
IGFmdGVyIHRoZSBBQ0svRUlPIHdyaXRlCihwb3NzaWJseSBkdXJpbmcgdGhlIHRvZ2dsZS1sb29w
KTogdGhlIGxvb3Agb25seSBleGl0cyB3aGVuIHdlJ3JlIHN1cmUKdGhpbmdzIGhhdmUgcXVpZXNj
ZWQsIHNvIGZ1dHVyZSBlZGdlcyB3aWxsIHRvZ2dsZSBjb3JyZWN0bHkgKGkuZS4sCnBvbGFyaXR5
IGlzIGNvcnJlY3QpLiBXZSBjb250aW51ZSB0byBkaXNwYXRjaCB0aGUgY2hhaW5lZCBoYW5kbGVy
ICh3aGljaAoiaGFuZGxlcyIgYWxsIHRoZXNlIGVkZ2UocykpLiBXZSBtYXkgc3RpbGwgaGF2ZSBs
ZWF2ZSBhbiBJUlEgcGVuZGluZyAoaWYKbWFueSBlZGdlcyBoYXBwZW4sIHJhY2luZyB3aXRoIHRo
ZSB0b2dnbGUgbG9vcCkgYW5kIGZpcmUgYWdhaW4gc2hvcnRseSwKYnV0IHRoYXQncyBPSy4KCkRv
ZXMgdGhpcyBtYWtlIHNlbnNlIHRvIGFueW9uZSBlbHNlPwoKPiBBbmQgaXQgbG9va3MgbGlrZSB0
aGVyZSBhcmUgcXVpdGUgYSBmZXcgZHJpdmVycyBoYXZpbmcgdGhpcyBraW5kIG9mIG5lZWQsCj4g
d291bGQgaXQgbWFrZSBzZW5zZSB0byBoYW5kbGUgaXQgaW4gdGhlIGZyYW1ld29yaz8KCkkgc3Vw
cG9zZSBpdCB3b3VsZCBiZSBwb3NzaWJsZSB0byBpbXBsZW1lbnQgdGhlIGFib3ZlIGFzIGEgZ2Vu
ZXJhbAppcnFfZ2NfYWNrKigpIGhlbHBlciwgaW5zdGVhZCBvZiBvcGVuLWNvZGluZyBpdCwgYWx0
aG91Z2ggaXQgbWlnaHQgbmVlZAp0aGUgaXJxY2hpcCBmcmFtZXdvcmsgdG8gZ2FpbiBhIGJldHRl
ciB1bmRlcnN0YW5kaW5nIG9mIGEgY2hpcCdzCnBvbGFyaXR5IHJlZ2lzdGVyLgoKQnJpYW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
