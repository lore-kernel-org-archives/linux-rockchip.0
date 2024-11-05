Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84BB4D3E774
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Nov 2024 21:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iIpXN/SkBaNl4PVZoOIzPnbEEmJ2Dfp98KrVdKa9F/M=; b=j1gBGcax65M52+
	Go9jhJH/xhh+SaJsq0Zn5VPsuEOECSXZ/FKHoE7Me7QMfc1TCTCcYOYKXPyBDUl9ZF4DXUEweZD7j
	cUN1WGsPBu4lNNuxUMMhklusGZBsuB9VwLiSyHfuA/FQnlrfAjCiTF9i800Q8CpR3TYBtHEcuD4vu
	UsMEr8d2AgotmyseDwPaTN8iFbdLsZund1o+nYi0ENLr6usG2MVq7kK30J8cOde7KMxJXOR99yhI8
	bnm8Sy9Cfu02h66n88/oKrvMkH73EMvD0ksnfc1UoppKzYaJMhHxdghWrTJo7ToagWXPaCRj6YZxz
	wJ8INSTEawoBOe6usl9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8R8P-00000000rre-2paN;
	Tue, 05 Nov 2024 21:30:45 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8R7h-00000000rj1-0gII
	for linux-rockchip@lists.infradead.org;
	Tue, 05 Nov 2024 21:30:02 +0000
Received: by mail-lj1-x232.google.com with SMTP id 38308e7fff4ca-2fb3da341c9so56444801fa.2
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Nov 2024 13:30:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1730842197; x=1731446997; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2Tfp+kt6EeLErLEVv0I8PpE8RVWyGWlaG6f1mvrWPCE=;
        b=ggCfLzBUpu+VIID4YgWq86rhZna01gMBWUnSX3QYl+aB0C/DGYSrK8lT4RHq9bLd+D
         dIRaLkGYKAhewXwITv/osJRfbunr3QXGzYN6dl79zVMDFM3tgyKVKiQYGNpsUY4flI/E
         GjSiMTd1lDDJRgkzsw0iuYeQqQQuZRvccABaQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730842197; x=1731446997;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2Tfp+kt6EeLErLEVv0I8PpE8RVWyGWlaG6f1mvrWPCE=;
        b=GHLddpfZatZHwnchP/nVmOg366t5e4E73mvmEuoaZZ1f0UWOJ3NUDY6l4zVx95va2C
         8NqQB0RSWBk/VUBtJuJV592B880cYiHC4pQxU5Ebu5vNLxRw6hIqVcGtxIlhx9G+nMBW
         jlubOZ7ZlASUloviiO6J2i253ajdOo0YNlSU2jKYDvFgj9lyGpEclX0TI4MJjM3/NYF7
         GzkTgG2M9XWy87MGLYCxlSwiFiTHLE4sNLzi7u4TUEdxTIbjMGSmq2giThnJqblj5BMl
         muFMnsjZ0QgxF8uhFDJiAcgh70LA2nsRlUVv2p4gHDlnwMnBh4CngBlkfUHo2OiDBSTn
         2AYQ==
X-Forwarded-Encrypted: i=1; AJvYcCXBxLC330041tRZnpHunovoO/nubKhm3iQSyknDOGeVsdpRhKCbSSDtcd78IDNA2fFlU4oeSduFuGybiHtIYA==@lists.infradead.org
X-Gm-Message-State: AOJu0YxHsVrU2cWkDqW3PIiEiMg1+AgeXyIuJCSJW3G0iZwvH03+R+pk
	wyRPRE9i+vlHRauRiLPQjqKPY2CLMNTbQyKsrl05Dk+15XG5MfSHLy9Ru1Z6C99opBIlKdPch3f
	XBw==
X-Google-Smtp-Source: AGHT+IHsa0cGXleQDQyp2Qxo4xzBqFCLMAAb3Vh+lAj62x9eXwHPDw4JEb6Q5BiD4a4hRNWgmRbQdA==
X-Received: by 2002:a2e:b88b:0:b0:2fa:d84a:bd8f with SMTP id 38308e7fff4ca-2fedb7d8b3fmr76543231fa.30.1730842197132;
        Tue, 05 Nov 2024 13:29:57 -0800 (PST)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com. [209.85.208.171])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2fdef5d6ef4sm22307241fa.48.2024.11.05.13.29.55
        for <linux-rockchip@lists.infradead.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2024 13:29:56 -0800 (PST)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2fb3da341c9so56444551fa.2
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Nov 2024 13:29:55 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCWNcsIKabqrqAV0GsMYd3XbOvrR3c21yiNZHjtCwNsujR79jcFbLvSS5FTnBwNo7cSfk1s+wfpWa/pT2X22jg==@lists.infradead.org
X-Received: by 2002:a2e:bd08:0:b0:2fa:cf5b:1e8e with SMTP id
 38308e7fff4ca-2fedb758b32mr81564941fa.2.1730842195431; Tue, 05 Nov 2024
 13:29:55 -0800 (PST)
MIME-Version: 1.0
References: <20241105161820.32512-1-jiashengjiangcool@gmail.com> <20241105161820.32512-3-jiashengjiangcool@gmail.com>
In-Reply-To: <20241105161820.32512-3-jiashengjiangcool@gmail.com>
From: Doug Anderson <dianders@chromium.org>
Date: Tue, 5 Nov 2024 13:29:40 -0800
X-Gmail-Original-Message-ID: <CAD=FV=VzqKa=fo4KRw4FSpPcH4mVnt8jBMo=FMzsGkdGrXCfxg@mail.gmail.com>
Message-ID: <CAD=FV=VzqKa=fo4KRw4FSpPcH4mVnt8jBMo=FMzsGkdGrXCfxg@mail.gmail.com>
Subject: Re: [PATCH v2 3/3] i2c: rk3x: Add check for clk_enable()
To: Jiasheng Jiang <jiashengjiangcool@gmail.com>
Cc: andi.shyti@kernel.org, rmk@dyn-67.arm.linux.org.uk, max.schwarz@online.de, 
	david.wu@rock-chips.com, heiko@sntech.de, vz@mleia.com, wsa@kernel.org, 
	manabian@gmail.com, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241105_133001_245211_2903C2CD 
X-CRM114-Status: GOOD (  26.52  )
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

SGksCgpPbiBUdWUsIE5vdiA1LCAyMDI0IGF0IDg6MTjigK9BTSBKaWFzaGVuZyBKaWFuZwo8amlh
c2hlbmdqaWFuZ2Nvb2xAZ21haWwuY29tPiB3cm90ZToKPgo+IEFkZCBjaGVjayBmb3IgdGhlIHJl
dHVybiB2YWx1ZSBvZiBjbGtfZW5hYmxlKCkgaW4gb3JkZXIgdG8gY2F0Y2ggdGhlCj4gcG90ZW50
aWFsIGV4Y2VwdGlvbi4gTW9yZW92ZXIsIGNvbnZlcnQgdGhlIHJldHVybiB0eXBlIG9mCj4gcmsz
eF9pMmNfYWRhcHRfZGl2KCkgaW50byBpbnQgYW5kIGFkZCB0aGUgY2hlY2suCj4KPiBTaWduZWQt
b2ZmLWJ5OiBKaWFzaGVuZyBKaWFuZyA8amlhc2hlbmdqaWFuZ2Nvb2xAZ21haWwuY29tPgo+IC0t
LQo+IENoYW5nZWxvZzoKPgo+IHYxIC0+IHYyOgo+Cj4gMS4gUmVtb3ZlIHRoZSBGaXhlcyB0YWcu
Cj4gMi4gVXNlIGRldl9lcnJfcHJvYmUgdG8gc2ltcGxpZnkgZXJyb3IgaGFuZGxpbmcuCj4gLS0t
Cj4gIGRyaXZlcnMvaTJjL2J1c3Nlcy9pMmMtcmszeC5jIHwgNTEgKysrKysrKysrKysrKysrKysr
KysrKysrKy0tLS0tLS0tLS0KPiAgMSBmaWxlIGNoYW5nZWQsIDM3IGluc2VydGlvbnMoKyksIDE0
IGRlbGV0aW9ucygtKQoKV293LCB0aGlzIGlzIGEgd2hvbGUgbG90IG9mIGNvZGUgdG8gYWRkIHRv
IGNoZWNrIGZvciBhbiBlcnJvciB0aGF0CmNhbid0IHJlYWxseSBoYXBwZW4gYXMgZmFyIGFzIEkn
bSBhd2FyZS4gVHVybmluZyBvbiBhIGNsb2NrIGlzIGp1c3QKc29tZSBNTUlPIHdyaXRlcyBhbmQg
Y2FuJ3QgZmFpbCwgcmlnaHQ/IElzIHRoaXMgcmVhbGx5IHdvcnRoIGl0PyBNYXliZQpqdXN0IHdy
YXAgY2xrX2VuYWJsZSgpIGFuZCBzcGFtIGFuIGVycm9yIHRvIHRoZSBsb2dzIGlmIGl0IGZhaWxz
PyBJZgp3ZSBldmVyIHNlZSB0aGF0IGVycm9yIHdlIGNhbiBmaWd1cmUgb3V0IHdoYXQncyBnb2lu
ZyBvbiBhbmQgaWYKdGhlcmUncyBhIHNlbnNpYmxlIHJlYXNvbiBpdCBjb3VsZCBmYWlsIHdlIGNv
dWxkIGFkZCB0aGUgbW9yZSBjb21wbGV4CmNvZGUuCgoKPiBAQCAtODgzLDcgKzg4Myw5IEBAIHN0
YXRpYyB2b2lkIHJrM3hfaTJjX2FkYXB0X2RpdihzdHJ1Y3QgcmszeF9pMmMgKmkyYywgdW5zaWdu
ZWQgbG9uZyBjbGtfcmF0ZSkKPiAgICAgICAgIHJldCA9IGkyYy0+c29jX2RhdGEtPmNhbGNfdGlt
aW5ncyhjbGtfcmF0ZSwgdCwgJmNhbGMpOwo+ICAgICAgICAgV0FSTl9PTkNFKHJldCAhPSAwLCAi
Q291bGQgbm90IHJlYWNoIFNDTCBmcmVxICV1IiwgdC0+YnVzX2ZyZXFfaHopOwo+Cj4gLSAgICAg
ICBjbGtfZW5hYmxlKGkyYy0+cGNsayk7Cj4gKyAgICAgICByZXQgPSBjbGtfZW5hYmxlKGkyYy0+
cGNsayk7Cj4gKyAgICAgICBpZiAocmV0KQo+ICsgICAgICAgICAgICAgICByZXR1cm4gZGV2X2Vy
cl9wcm9iZShpMmMtPmRldiwgcmV0LCAiQ2FuJ3QgZW5hYmxlIGJ1cyBjbGsgZm9yIHJrMzM5OTog
JWRcbiIsIHJldCk7CgpPZmZpY2lhbGx5IHlvdSdyZSBvbmx5IHN1cHBvc2VkIHRvIHVzZSAiZGV2
X2Vycl9wcm9iZSgpIiBmcm9tIHByb2JlIG9yCmNhbGxzIGluZGlyZWN0bHkgY2FsbGVkIGZyb20g
cHJvYmUuIFlvdSdyZSBub3cgdXNpbmcgaXQgaW4gYSB3aG9sZSBsb3QKb2Ygb3RoZXIgcGxhY2Vz
LgoKLi4uYWxzbyBub3RlIHRoYXQgZGV2X2Vycl9wcm9iZSgpIGFscmVhZHkgcHJpbnRzIHRoZSBl
cnJvciBzbyB5b3UKZG9uJ3QgbmVlZCB0byBpbmNsdWRlIGl0IGluIHlvdXIgZXJyb3IgbWVzc2Fn
ZS4KCgo+IEBAIC05NDIsMTkgKzk0NiwyNyBAQCBzdGF0aWMgaW50IHJrM3hfaTJjX2Nsa19ub3Rp
Zmllcl9jYihzdHJ1Y3Qgbm90aWZpZXJfYmxvY2sgKm5iLCB1bnNpZ25lZCBsb25nCj4gICAgICAg
ICAgICAgICAgICAgICAgICAgcmV0dXJuIE5PVElGWV9TVE9QOwo+Cj4gICAgICAgICAgICAgICAg
IC8qIHNjYWxlIHVwICovCj4gLSAgICAgICAgICAgICAgIGlmIChuZGF0YS0+bmV3X3JhdGUgPiBu
ZGF0YS0+b2xkX3JhdGUpCj4gLSAgICAgICAgICAgICAgICAgICAgICAgcmszeF9pMmNfYWRhcHRf
ZGl2KGkyYywgbmRhdGEtPm5ld19yYXRlKTsKPiArICAgICAgICAgICAgICAgaWYgKG5kYXRhLT5u
ZXdfcmF0ZSA+IG5kYXRhLT5vbGRfcmF0ZSkgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIGlm
IChyazN4X2kyY19hZGFwdF9kaXYoaTJjLCBuZGF0YS0+bmV3X3JhdGUpKQo+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIE5PVElGWV9TVE9QOwo+ICsgICAgICAgICAgICAg
ICB9Cj4KPiAgICAgICAgICAgICAgICAgcmV0dXJuIE5PVElGWV9PSzsKPiAgICAgICAgIGNhc2Ug
UE9TVF9SQVRFX0NIQU5HRToKPiAgICAgICAgICAgICAgICAgLyogc2NhbGUgZG93biAqLwo+IC0g
ICAgICAgICAgICAgICBpZiAobmRhdGEtPm5ld19yYXRlIDwgbmRhdGEtPm9sZF9yYXRlKQo+IC0g
ICAgICAgICAgICAgICAgICAgICAgIHJrM3hfaTJjX2FkYXB0X2RpdihpMmMsIG5kYXRhLT5uZXdf
cmF0ZSk7Cj4gKyAgICAgICAgICAgICAgIGlmIChuZGF0YS0+bmV3X3JhdGUgPCBuZGF0YS0+b2xk
X3JhdGUpIHsKPiArICAgICAgICAgICAgICAgICAgICAgICBpZiAocmszeF9pMmNfYWRhcHRfZGl2
KGkyYywgbmRhdGEtPm5ld19yYXRlKSkKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IHJldHVybiBOT1RJRllfU1RPUDsKPiArICAgICAgICAgICAgICAgfQo+ICsKPiAgICAgICAgICAg
ICAgICAgcmV0dXJuIE5PVElGWV9PSzsKPiAgICAgICAgIGNhc2UgQUJPUlRfUkFURV9DSEFOR0U6
Cj4gICAgICAgICAgICAgICAgIC8qIHNjYWxlIHVwICovCj4gLSAgICAgICAgICAgICAgIGlmIChu
ZGF0YS0+bmV3X3JhdGUgPiBuZGF0YS0+b2xkX3JhdGUpCj4gLSAgICAgICAgICAgICAgICAgICAg
ICAgcmszeF9pMmNfYWRhcHRfZGl2KGkyYywgbmRhdGEtPm9sZF9yYXRlKTsKPiArICAgICAgICAg
ICAgICAgaWYgKG5kYXRhLT5uZXdfcmF0ZSA+IG5kYXRhLT5vbGRfcmF0ZSkgewo+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGlmIChyazN4X2kyY19hZGFwdF9kaXYoaTJjLCBuZGF0YS0+b2xkX3Jh
dGUpKQo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmV0dXJuIE5PVElGWV9TVE9Q
OwoKSSdtIG5vdCBjb252aW5jZWQgeW91IGNhbiBhY3R1YWxseSByZXR1cm4gTk9ESUZZX1NUT1Ag
ZnJvbSB0aGUKUE9TVF9SQVRFX0NIQU5HRSBvciBBQk9SVF9SQVRFX0NIQU5HRS4gSGF2ZSB5b3Ug
Y29uZmlybWVkIHRoYXQgaXMKYWN0dWFsbHkgc2Vuc2libGU/CgoKPiBAQCAtMTM2NSw5ICsxMzg1
LDEyIEBAIHN0YXRpYyBpbnQgcmszeF9pMmNfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAq
cGRldikKPiAgICAgICAgIH0KPgo+ICAgICAgICAgY2xrX3JhdGUgPSBjbGtfZ2V0X3JhdGUoaTJj
LT5jbGspOwo+IC0gICAgICAgcmszeF9pMmNfYWRhcHRfZGl2KGkyYywgY2xrX3JhdGUpOwo+ICsg
ICAgICAgcmV0ID0gcmszeF9pMmNfYWRhcHRfZGl2KGkyYywgY2xrX3JhdGUpOwo+ICAgICAgICAg
Y2xrX2Rpc2FibGUoaTJjLT5jbGspOwo+Cj4gKyAgICAgICBpZiAocmV0KQo+ICsgICAgICAgICAg
ICAgICBnb3RvIGVycl9jbGtfbm90aWZpZXI7CgpUaGlzIG9uZSBzZWVtcyBlc3BlY2lhbGx5IGNv
bWljYWwgdG8gYWRkIHNpbmNlIHRoZSBvbmx5IHdheQpyazN4X2kyY19hZGFwdF9kaXYoKSBjb3Vs
ZCBmYWlsIHdvdWxkIGJlIGlmIGEgbmVzdGVkIGNsa19lbmFibGUoKQpmYWlsZWQuIC4uLmFuZCBJ
J20gOTklIHN1cmUgdGhhdCdzIG5vdCBwb3NzaWJsZS4KCi1Eb3VnCgpfX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxp
c3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFk
ZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
