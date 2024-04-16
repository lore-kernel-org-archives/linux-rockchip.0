Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29FD8C4345F
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Apr 2024 11:28:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kTKoSdOUa5lbxDrZH6PI+vWsh0k8tSnYq4L9QGp8j6U=; b=p2mvBs9H39TjIo
	BFWOxSg29l8XwqAZeziWJm32FPcyxYr5dm4acOK/0eIPK0bw30QHfmHR174Y5FV0Qj4MoHCeGfmwG
	afaxJbsjtVwrnWyheMUJxPqsUkuSb849S98lvUC2liv7mtyjVKFhD1QEVLuIMkBP2wzX90NaBu6le
	Vdt2u/4j5FgyfNyJpbwBrfnFR9wPMxBphQ476DKSffQ+4AnSxQv58IlLlNfXTzuePrKklmm+TdosY
	IxNckOdISO70nxcd6nE3dCOqbnxU4OBsP3e9O2jB48Qwt1d2o+GvBeef7MopE+3S06ONxb+fQHQbc
	YViqp0NQ+uXDwPlClT7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgz3-0000000BxzV-2o1K;
	Tue, 16 Apr 2024 11:28:17 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwgyz-0000000BxyD-3kXm
	for linux-rockchip@lists.infradead.org;
	Tue, 16 Apr 2024 11:28:15 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-5cfd95130c6so2857145a12.1
        for <linux-rockchip@lists.infradead.org>; Tue, 16 Apr 2024 04:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713266893; x=1713871693; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zdTNnxpaxrR1ctyKVzJEH9wDta0s4TNTOOwoGZ9Hzm8=;
        b=QNmM5pcTz8YvFVa8TNLGUB6AeIp6EE2w3LrXI0WsEAVAPIDsDTrf3sPHPQVkJZsPYd
         Gj+gDfe+VzcbxLhNbn+VQgWONQBge8kMEjkw+Hli2mN+BYaBtzQWhICc1mA2ePEAOHp3
         jukjSMV0AUpboJGKKsPS7hwoYfWkJJbqZsLvT+aZ+R8RHldqIMTCo+AkX+EzlIS+A57N
         gdSKT0lHh3Xl9GgRMGvyQxf3rm3zLhWP1vpI6z5AFBwVM4SGX1K96dYn+XwTcDsay6zk
         mIHXOMn2rTKZSgyk74zJ7wGBYJrh5hg4JLXX7QzZRHMHQvY/LOo45Y3ojMKhhuXWnARU
         jYUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713266893; x=1713871693;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zdTNnxpaxrR1ctyKVzJEH9wDta0s4TNTOOwoGZ9Hzm8=;
        b=X1qV2qx4Ud0CK6pVmhQtNl01rTOF8j1foiq1hyZcS5o7xSyXPE1Q/qL+9/G8JoRwCA
         SLhTGIQZWtEqfco3zZJJvzIcQoo0SLp/P3jqILbZfRBBUvD1g58jxL00vXUiLox/2Lrb
         jco0FuRwo1Grime53wRv0cU5mAtJMdOLybBGFLS7+8yOuJhIDgK0CwaPL29KSOprf4rp
         FelPk2XHwJYOd3c720UCTeOU49aS/tyu25dCQFCsxj6DQn12jpmhFatkkxq5/C3b/W8j
         FePhBB+8OM5blnkIf34qu1JSiEKwl7/l9SYbklklCqSj2AOx6Jr4L3UWUQ8cmyX5/v/7
         ghRQ==
X-Forwarded-Encrypted: i=1; AJvYcCWwecoavPoTO7CLD6xvGb7M47uHzoS6kQUPtMnWWVGi9FMIzigEyALIsRpJg+s9NpDhdjcGXJXfoqIh4uyKEyUGAIKLaM9VvRVY4EhdJdsdo1pD
X-Gm-Message-State: AOJu0YznZN9L3To+zXBqUeIk5GZYr6eg8Y284MIGKTPBN/2n7IMa0KmT
	Hpn4T5oczrsEizfV2f31CHNUq0HRAmlHYgKI52zvUlt1asZdr3kAqGzX6Ek61w==
X-Google-Smtp-Source: AGHT+IGeuKxJIbqW3XQXNTArgkzHXa2+NyC8omydrI7ODv5FfOAcPf2JI0TAcwL9eO2rQVR1QEDI1g==
X-Received: by 2002:a05:6a20:971a:b0:1a3:57b4:ed1c with SMTP id hr26-20020a056a20971a00b001a357b4ed1cmr9903003pzc.25.1713266892340;
        Tue, 16 Apr 2024 04:28:12 -0700 (PDT)
Received: from thinkpad ([120.56.207.234])
        by smtp.gmail.com with ESMTPSA id s16-20020a170902ea1000b001e27462b988sm9534702plg.61.2024.04.16.04.28.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Apr 2024 04:28:11 -0700 (PDT)
Date: Tue, 16 Apr 2024 16:58:07 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Damien Le Moal <dlemoal@kernel.org>, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Fix GPIO initialization flag
Message-ID: <20240416112807.GC2454@thinkpad>
References: <20240327152531.814392-1-cassel@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240327152531.814392-1-cassel@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_042814_033080_C3B4228D 
X-CRM114-Status: GOOD (  26.07  )
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

T24gV2VkLCBNYXIgMjcsIDIwMjQgYXQgMDQ6MjU6MzFQTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBQRVJTVCBpcyBhY3RpdmUgbG93IGFjY29yZGluZyB0byB0aGUgUENJZSBzcGVjaWZp
Y2F0aW9uLgo+IAo+IEhvd2V2ZXIsIHRoZSBleGlzdGluZyBwY2llLWR3LXJvY2tjaGlwLmMgZHJp
dmVyIGRvZXM6Cj4gZ3Bpb2Rfc2V0X3ZhbHVlKC4uLiwgMCk7IG1zbGVlcCgxMDApOyBncGlvZF9z
ZXRfdmFsdWUoLi4uLCAxKTsKPiBXaGVuIGFzc2VydGluZyArIGRlYXNzZXJ0aW5nIFBFUlNULgo+
IAo+IFRoaXMgaXMgb2YgY291cnNlIHdyb25nLCBidXQgYmVjYXVzZSBhbGwgdGhlIGRldmljZSB0
cmVlcyBmb3IgdGhpcwo+IGNvbXBhdGlibGUgc3RyaW5nIGhhdmUgYWxzbyBpbmNvcnJlY3RseSBt
YXJrZWQgdGhpcyBHUElPIGFzIEFDVElWRV9ISUdIOgo+ICQgZ2l0IGdyZXAgLUIgMTAgcmVzZXQt
Z3Bpb3MgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgqCj4gJCBnaXQgZ3JlcCAt
QiAxMCByZXNldC1ncGlvcyBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OCoKPiAK
PiBUaGUgYWN0dWFsIHRvZ2dsaW5nIG9mIFBFUlNUIGlzIGNvcnJlY3QuCj4gKEFuZCB3ZSBjYW5u
b3QgY2hhbmdlIGl0IGFueXdheSwgc2luY2UgdGhhdCB3b3VsZCBicmVhayBkZXZpY2UgdHJlZQo+
IGNvbXBhdGliaWxpdHkuKQo+IAo+IEhvd2V2ZXIsIHRoaXMgZHJpdmVyIGRvZXMgcmVxdWVzdCB0
aGUgR1BJTyB0byBiZSBpbml0aWFsaXplZCBhcwo+IEdQSU9EX09VVF9ISUdILCB3aGljaCBkb2Vz
IGNhdXNlIGEgc2lsbHkgc2VxdWVuY2Ugd2hlcmUgUEVSU1QgZ2V0cwo+IHRvZ2dsZWQgYmFjayBh
bmQgZm9ydGggZm9yIG5vIGdvb2QgcmVhc29uLgo+IAo+IEZpeCB0aGlzIGJ5IHJlcXVlc3Rpbmcg
dGhlIEdQSU8gdG8gYmUgaW5pdGlhbGl6ZWQgYXMgR1BJT0RfT1VUX0xPVwo+ICh3aGljaCBmb3Ig
dGhpcyBkcml2ZXIgbWVhbnMgUEVSU1QgYXNzZXJ0ZWQpLgo+IAo+IFRoaXMgd2lsbCBhdm9pZCBh
biB1bm5lY2Vzc2FyeSBzaWduYWwgY2hhbmdlIHdoZXJlIFBFUlNUIGdldHMgZGVhc3NlcnRlZAo+
IChieSBkZXZtX2dwaW9kX2dldF9vcHRpb25hbCgpKSBhbmQgdGhlbiBnZXRzIGFzc2VydGVkCj4g
KGJ5IHJvY2tjaGlwX3BjaWVfc3RhcnRfbGluaygpKSBqdXN0IGEgZmV3IGluc3RydWN0aW9ucyBs
YXRlci4KPiAKPiBCZWZvcmUgcGF0Y2gsIGRlYnVnIHByaW50cyBvbiBFUCBzaWRlLCB3aGVuIGJv
b3RpbmcgUkM6Cj4gWyAgODQ1LjYwNjgxMF0gcGNpOiBQRVJTVCBhc3NlcnRlZCBieSBob3N0IQo+
IFsgIDg1Mi40ODM5ODVdIHBjaTogUEVSU1QgZGUtYXNzZXJ0ZWQgYnkgaG9zdCEKPiBbICA4NTIu
NTAzMDQxXSBwY2k6IFBFUlNUIGFzc2VydGVkIGJ5IGhvc3QhCj4gWyAgODUyLjYxMDMxOF0gcGNp
OiBQRVJTVCBkZS1hc3NlcnRlZCBieSBob3N0IQo+IAo+IEFmdGVyIHBhdGNoLCBkZWJ1ZyBwcmlu
dHMgb24gRVAgc2lkZSwgd2hlbiBib290aW5nIFJDOgo+IFsgIDEyNS4xMDc5MjFdIHBjaTogUEVS
U1QgYXNzZXJ0ZWQgYnkgaG9zdCEKPiBbICAxMzIuMTExNDI5XSBwY2k6IFBFUlNUIGRlLWFzc2Vy
dGVkIGJ5IGhvc3QhCj4gCj4gV2l0aG91dCB0aGlzIGNoYW5nZSwgdGhlcmUgaXMgbm8gZ3VhcmFu
dGVlIHRoYXQgUEVSU1Qgd2lsbCBiZSBhc3NlcnRlZAo+IHdoaWxlIHRoZSBjb3JlIGlzIHBlcmZv
cm1pbmcgYSBmdW5kYW1lbnRhbCByZXNldC4KClRoZXJlIGlzIG5vICdjb3JlJyBoZXJlLCBhcmUg
eW91IHJlZmVycmluZyB0byB0aGUgZGV2aWNlPwoKPiAoRS5nLiBpZiB0aGUgYm9vdGxvYWRlciB3
b3VsZCBsZWF2ZSBQRVJTVCBkZWFzc2VydGVkLikKPiAKCkkgZG9uJ3QgZm9sbG93IHRoaXMgbGFz
dCBzZW50ZW5jZS4gQnV0IGV2ZW4gd2l0aG91dCB0aGF0LCB0aGUgY29tbWl0IG1lc3NhZ2UKaXRz
ZWxmIGlzIGRlc2NyaXB0aXZlIGVub3VnaC4KCj4gU2lnbmVkLW9mZi1ieTogTmlrbGFzIENhc3Nl
bCA8Y2Fzc2VsQGtlcm5lbC5vcmc+CgpUaGlzIGlzIGEgbGVnaXRpbWF0ZSBidWcgZml4LiBTbyB5
b3Ugc2hvdWxkIGFkZCB0aGUgZml4ZXMgdGFnIGFuZCBDQyBzdGFibGUgdG8KZ2V0IGl0IGJhY2tw
b3J0ZWQuCgpCdXQgdGhlIHBhdGNoIGl0c2VsZiBsb29rcyBmaW5lIHRvIG1lLgoKUmV2aWV3ZWQt
Ynk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5hbi5zYWRoYXNpdmFtQGxpbmFyby5v
cmc+CgotIE1hbmkKCj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHct
cm9ja2NoaXAuYyB8IDIgKy0KPiAgMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3Bj
aWUtZHctcm9ja2NoaXAuYyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9j
a2NoaXAuYwo+IGluZGV4IGQ2ODQyMTQxZDM4NC4uYTkwOWU0MmI0MjczIDEwMDY0NAo+IC0tLSBh
L2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+ICsrKyBiL2Ry
aXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+IEBAIC0yNDAsNyAr
MjQwLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wY2llX3Jlc291cmNlX2dldChzdHJ1Y3QgcGxh
dGZvcm1fZGV2aWNlICpwZGV2LAo+ICAJCXJldHVybiBQVFJfRVJSKHJvY2tjaGlwLT5hcGJfYmFz
ZSk7Cj4gIAo+ICAJcm9ja2NoaXAtPnJzdF9ncGlvID0gZGV2bV9ncGlvZF9nZXRfb3B0aW9uYWwo
JnBkZXYtPmRldiwgInJlc2V0IiwKPiAtCQkJCQkJICAgICBHUElPRF9PVVRfSElHSCk7Cj4gKwkJ
CQkJCSAgICAgR1BJT0RfT1VUX0xPVyk7Cj4gIAlpZiAoSVNfRVJSKHJvY2tjaGlwLT5yc3RfZ3Bp
bykpCj4gIAkJcmV0dXJuIFBUUl9FUlIocm9ja2NoaXAtPnJzdF9ncGlvKTsKPiAgCj4gLS0gCj4g
Mi40NC4wCj4gCj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCu
muCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
