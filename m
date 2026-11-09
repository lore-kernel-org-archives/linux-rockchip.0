Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 196BD606A325
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Nov 2026 15:37:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jzD8CWAv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=BE059w0B
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=1V4o12cPRti2u7D2CSTszZTHwvyM/aaAUEv7jPEyHOU=; b=jzD8CWAvdTKakP2wcTOWOlcrR0
	cbDH9jaRN0W4X2RHi4xijyqPxPyUzF46xdHKsp75tOextwmdH0GlqN+rLUIDo1V5miY5Xn2W9gyyd
	mB98Dwg9bGuqygkKZ/zyiCbrwf4hkNnrgY2/0aRSEaCLJoeqltl/UV989jag3okCPhNE2SQoHHYnp
	LabjgkpXoeMjTuHZsXkUzSQPwyhhc0qcKb+u+68qsI8Z4ZJ/oDocfH8uGYv5ZW8TBCgL42RZNR4B5
	0aVgUJj0OEzWXVLABeuBmlYAsIjyMq+ob4HUiHcHGGu5SgCmSsJ7/X8xVJwNuExZx/jEcnDhId/4x
	of/wpbUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQRRO-000000012n0-0Fbh;
	Mon, 09 Nov 2026 15:37:50 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQRRL-000000012lS-08UZ
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Nov 2026 15:37:48 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4a214c5c4c0so10427715e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 07:37:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794238665; x=1794843465; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=Ydw1s0x1RNP+qqUMo8W/mYY50hHq5MXJ/cd70aJJung=;
        b=BE059w0BcLzOj2g4QUSbsbu1ekoOzUhHahNjKag1kRXbLP6bYAtcVNBzHzB6P/smDD
         zhMkknKocauxuBaHWR+yVKGE1IRP1F4DpStMH7B63EUkXowhkulkFRsz2jIDjGl6Lw0I
         cI28pb/tm1lOlIm4gM3/Ezn2CEXEZK9wf7gd1U9/MgRBwIzW7IRJHso01JBEdEgpEU3d
         Ky4oZRCSaGT1NZSp3hIGjmYIo/p3KByXYdZp0eE4FkqCa8G/VFiWf2QvDUJLepFJFfT3
         ykSaK981Gc5XCRSF7IRy8Dei6Pxiyj/Wf8cO8BPYXyQhs5fljTWIcmSZNWZT4teUbHEZ
         7ZhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794238665; x=1794843465;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Ydw1s0x1RNP+qqUMo8W/mYY50hHq5MXJ/cd70aJJung=;
        b=CbhbHbtPruqg8TGZCYJ326IW4dNhy+NAbN/KsOnhf1EWXiwihqTumbF+fvyqrwif9D
         ny1+BST4KtflI2MZlaKPT0N/lXMDSf7QBrL9AXJzhUBKPbJdar0p7rkL9zmBj7/5Cp5A
         T1SixS9fMrGW13uEjTcGe67LHkiAuKObIJrAhrGeJAZ4VrHpd3CC4Un54xaWweqIXMXN
         KTDgCbYBye0dJp4PV6ffg3S/ZuZHkirJypclogOkmZW4cJSlMP1V1wM1s08OeGtWIahF
         3IErFAnijPwO5vgxBcvJOPb4rEcxaNExbiPQUdt+i6Zu+Ij/G2srWaaj7O88pdyApFk+
         tMwg==
X-Forwarded-Encrypted: i=1; AL+hErHwi46azXeF4Mu2JjaF/PAxihPy0oN3QeJJ3YQwFGokkJ09rqTn26Lo3rNHg1uP6mexNUJFwDvy4ogBgTlSVw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/0Gj2HOh5huPisH3MvNmdwkwBkClemmJ4Xik37mapmByTdDcvA
	SoNf1wUksof8Yb1vUTDncqJVv+GLkKZoNlu5YNEfPcW1GqFI2s34l8Dg
X-Gm-Gg: AYBFou2bLSTe1ki6HFs15UUnhH8G3/FB1PYs6nUIflcEVKu8WyapuJCfRMBbX4BqYBV
	cUhB8nnTXy+75Y2MpMhzhyTW3zSLhhpYqgkNZ5EBsCx4hNSBd4/t3dKolFd5f2kLBWvDKINlh13
	nP4D6mrZFeDOkm9A9ROTIiIbqsilL/a7YrXf0rkBTXT3JuFm7510Qn1WgIEQvxeeaz3ymPFviC4
	EBBzp2eWhxuXuVNavZC3kZiYGsVVeYCKb80VI/3wCW+UWn+qDWmJq5/Fgqem8wHcNiBXiRRRH3u
	wedw5j8yYxnOWrocig6OBtgae7JcPhAkEtl3mpzVnIpUl2ZUq6oOqIzrR6g2SitFt6v9cMWsx4P
	uo8rhIxex0h/JgE17y4wKtEfX1Evfz6353pIVcCj0fyHVneFMSUDdasZY9ifu/LZE/dS8dpq9TM
	iZTWCqAK8EN+Kmv1aC15H0G6258vVEZJ5PrDDxJqEutq5yOsPiEWAtzyU2K3lPOL+nOCVGANddu
	5ArJkuctP7TyYaracwnP4xt0LMEGj9N79TKoKx+uhH1NljEU9z6lJuizWbeQ9fXJZXLAu3Uv3yG
	eZQ0QSSVnp+Ds0BAD8yIUBSwwwpxyG7Of7Fq8f6SHRjH+IkrrRT+tfCrGAI2bi2BgG1ABSDjetb
	yVw==
X-Received: by 2002:a05:600c:37c3:b0:4a3:d327:6ed with SMTP id 5b1f17b1804b1-4b963c89ef2mr78509805e9.17.1794238664475;
        Mon, 09 Nov 2026 07:37:44 -0800 (PST)
Received: from ?IPV6:2a02:e98:40:8091:f0f7:91a3:e60:541a? ([2a02:e98:40:8091:f0f7:91a3:e60:541a])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4b90619bbd2sm149230065e9.1.2026.11.09.07.37.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Nov 2026 07:37:44 -0800 (PST)
Message-ID: <800f8d42-e35d-47ec-bbe6-e437a86d6e70@gmail.com>
Date: Mon, 9 Nov 2026 16:37:43 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] serial: 8250: Add RX trigger levels for U6_16550A
To: =?UTF-8?Q?Ilpo_J=C3=A4rvinen?= <ilpo.jarvinen@linux.intel.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-serial <linux-serial@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Miroslav Ondra <ondra@faster.cz>
References: <20261109-8250-select-u6-64bit-v1-0-04bc8332fa34@gmail.com>
 <20261109-8250-select-u6-64bit-v1-1-04bc8332fa34@gmail.com>
 <469362ef-f0c5-45f2-746a-b4a3c51876a4@linux.intel.com>
Content-Language: cs
From: =?UTF-8?B?S3J5xaF0b2YgxIxlcm7DvQ==?= <cleverline1mc@gmail.com>
In-Reply-To: <469362ef-f0c5-45f2-746a-b4a3c51876a4@linux.intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_073747_087095_5D139D99 
X-CRM114-Status: GOOD (  19.00  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-12.3 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Cj4gT24gTW9uLCA5IE5vdiAyMDI2LCBLcnnFoXRvZiDEjGVybsO9IHZpYSBCNCBSZWxheSB3cm90
ZToKPiAKPj4gRnJvbTogS3J5xaF0b2YgxIxlcm7DvSA8Y2xldmVybGluZTFtY0BnbWFpbC5jb20+
Cj4+Cj4+IFBPUlRfVTZfMTY1NTBBIGhhcyBhIDY0LWJ5dGUgRklGTyBidXQgbm8gcnh0cmlnX2J5
dGVzIHRhYmxlLCBzbyB0aGUKPj4gcnhfdHJpZ19ieXRlcyBzeXNmcyBhdHRyaWJ1dGUgaXMgbm90
IHJlZ2lzdGVyZWQgZm9yIHBvcnRzIG9mIHRoaXMgdHlwZQo+PiBhbmQgdGhlIFJYIHRyaWdnZXIg
bGV2ZWwgY2Fubm90IGJlIHJlYWQgb3IgY2hhbmdlZCBmcm9tIHVzZXJzcGFjZS4KPj4KPj4gQWRk
IGEgdGFibGUgd2l0aCAxLCAxNiwgMzIgYW5kIDYyIGJ5dGVzLCBpLmUuIDEgY2hhcmFjdGVyLCBG
SUZPIDEvNAo+PiBmdWxsLCBGSUZPIDEvMiBmdWxsIGFuZCBGSUZPIDIgbGVzcyB0aGFuIGZ1bGwu
IFRoZXNlIGFyZSB0aGUgbGV2ZWxzIHRoZQo+PiBTeW5vcHN5cyBEZXNpZ25XYXJlIFVBUlQgdXNl
cyBmb3IgYSA2NC1ieXRlIEZJRk8sIGFuZCB0aGV5IG1hdGNoIHRoZQo+PiBleGlzdGluZyBQT1JU
X0FMVFJfMTY1NTBfRjY0IHRhYmxlLgo+Pgo+PiBUaGUgZGVmYXVsdCBGQ1IgdmFsdWUgb2YgdGhl
IHR5cGUgaXMgdW5jaGFuZ2VkLCBzbyB0aGUgdHJpZ2dlciBsZXZlbCBhCj4+IHBvcnQgc3RhcnRz
IHdpdGggc3RheXMgYXQgMS8yIGZ1bGwuIFRoZSBvbmx5IHZpc2libGUgY2hhbmdlIGZvciBwb3J0
cwo+PiBhbHJlYWR5IGRldGVjdGVkIGFzIFU2XzE2NTUwQSBieSBhdXRvY29uZmlnIGlzIHRoZSBu
ZXcgc3lzZnMgYXR0cmlidXRlLgo+Pgo+PiBUaGlzIHByZXBhcmVzIGZvciA4MjUwX2R3IHNlbGVj
dGluZyBQT1JUX1U2XzE2NTUwQSBmb3IgRGVzaWduV2FyZSBVQVJUcwo+PiB3aXRoIGEgNjQtYnl0
ZSBGSUZPLgo+Pgo+PiBDby1kZXZlbG9wZWQtYnk6IE1pcm9zbGF2IE9uZHJhIDxvbmRyYUBmYXN0
ZXIuY3o+Cj4+IFNpZ25lZC1vZmYtYnk6IE1pcm9zbGF2IE9uZHJhIDxvbmRyYUBmYXN0ZXIuY3o+
Cj4+IFNpZ25lZC1vZmYtYnk6IEtyecWhdG9mIMSMZXJuw70gPGNsZXZlcmxpbmUxbWNAZ21haWwu
Y29tPgo+PiAtLS0KPj4gICBkcml2ZXJzL3R0eS9zZXJpYWwvODI1MC84MjUwX3BvcnQuYyB8IDEg
Kwo+PiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEv
ZHJpdmVycy90dHkvc2VyaWFsLzgyNTAvODI1MF9wb3J0LmMgYi9kcml2ZXJzL3R0eS9zZXJpYWwv
ODI1MC84MjUwX3BvcnQuYwo+PiBpbmRleCAzNmIyYjBhMmMwNWMuLmE3YWNlZGU2MmY0MCAxMDA2
NDQKPj4gLS0tIGEvZHJpdmVycy90dHkvc2VyaWFsLzgyNTAvODI1MF9wb3J0LmMKPj4gKysrIGIv
ZHJpdmVycy90dHkvc2VyaWFsLzgyNTAvODI1MF9wb3J0LmMKPj4gQEAgLTE2Myw2ICsxNjMsNyBA
QCBzdGF0aWMgY29uc3Qgc3RydWN0IHNlcmlhbDgyNTBfY29uZmlnIHVhcnRfY29uZmlnW10gPSB7
Cj4+ICAgCQkuZmlmb19zaXplCT0gNjQsCj4+ICAgCQkudHhfbG9hZHN6CT0gNjQsCj4+ICAgCQku
ZmNyCQk9IFVBUlRfRkNSX0VOQUJMRV9GSUZPIHwgVUFSVF9GQ1JfUl9UUklHXzEwLAo+PiArCQku
cnh0cmlnX2J5dGVzCT0gezEsIDE2LCAzMiwgNjJ9LAo+IAo+IFJldXNpbmcgVTYgZW50cnkgZm9y
IERXIFVBUlRzIHNlZW1zIG1pc2xlYWRpbmcuCj4gCj4gV2UndmUgYmV0dGVyIG1lY2hhbmlzbSBj
b21pbmcgdXAgZm9yIGRlZmluaW5nIHJ4dHJpZyBpbiBhIG9uZSBwZW5kaW5nCj4gc2VyaWVzIHNv
IHRoaXMgY29uc3RhbnQgZnJpY3Rpb24gd2l0aCB0aGUgdWFydCBjb25maWcgdHlwZXMgY2FuIGJl
IHB1dAo+IGludG8gcmVzdC4KPiAKPiBQbGVhc2UgYnVpbGQgb24gdG9wIG9mIHRoYXQgb3RoZXIg
c2VyaWVzIGFuZCBoZWxwIGluIHRlc3RpbmcgYW5kIHJldmlld2luZwo+IGl0LgoKVGhhbmtzIGZv
ciB0aGUgaW5mb3JtYXRpb24sIEkgc3RhcnRlZCB0aGUgd29yayBhYm91dCBhIG1vbnRoIGFnbwph
bmQgbm90IHN1cmUgaWYgdGhlIHBhdGNoIGV4aXN0ZWQgYmVmb3JlLiBJIHdpbGwgdGVzdCB0aGUg
b3RoZXIgc2VyaWVzIApvbiBteSBoYXJkd2FyZS4gSSBsaWtlIHRoYXQgYXBwcm9hY2ggbW9yZS4K
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
