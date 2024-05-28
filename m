Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E71A9C25B78
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 May 2024 09:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTQVUrd0OMsW5LLnBxJdLDeCnoJqsET8lbezekv1PFw=; b=WS0WUNyR+5ernr
	Q1qKdtLOZr/0qFGF1lV/k2DrsXdH3k5DX6Tk0lXWU2XTLf7qWFwqp5Ic7mjPJz3Roz8qG5SLbPUGa
	9oszTWGvJZTZ6yHjjzVBsT6IOGieDCCdn82TYjrU1kpVMNE8BMGgdhL9h0DVlbC1upEKgXKgIjMKT
	fiFPw43VWBPzgszFZxBfIREQyIylzr/GHbZdmcqvwUNzbvqsK1tG0L3fe/VSrV0J0+vxAjOr8BNJk
	n37ZL4SROs7pO/44t/emiso+6WRRMcIycW4DCOo1/l+9m/ofR0VmQEd/4/bfhzWEEw0Xuuu9B5qD2
	0RN8oqmstxt2dVd7AUmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtSY-0000000061J-0uyF;
	Tue, 28 May 2024 09:49:34 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBtSU-0000000060h-0Vdo;
	Tue, 28 May 2024 09:49:31 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a6341cf2c99so48547666b.0;
        Tue, 28 May 2024 02:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716889767; x=1717494567; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Rlym6Q0gKtJUNT3qD8ad70TIJk9A9o9+AqBoVN1qd/U=;
        b=dN6OA7Kw7BwpJ1Fo5lnRfqw7fzYmdi5zUjr1s4/ZspcYXsnVH2DTkrkPf/ykDKrSaM
         LeW87vQqi+sRZfP3s/d+jprTYOPyTldxm1OS9UUbHOLE5sLLWDj7DI37hav9n9WORQl1
         7NTVSA7bnRIE7Z/G4VuSHx+YOL89uvfvC/M2iJVkUIIDJiZnUqQVRlVQkIVmgAFgHQIC
         a0F0DZB0dYZ6JHZYSMSWi4ECFCbcBqISmw561c614JgN9Q68ehnv7R9nhkrCXrp8Dsxg
         vGa6+/cAehuRdZTIH/+wxPL6mXZ2w24JP8+bqd2iqguz6MbNCe+J7jFxY3JsCBTj6Rak
         wX8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716889767; x=1717494567;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Rlym6Q0gKtJUNT3qD8ad70TIJk9A9o9+AqBoVN1qd/U=;
        b=E9a5/EWeJiwr9w6ol2xKxLjpKH4BtSCpGrrc1fz4PfQDkmFDRV/zIvbYdI8acI7M0J
         HXoiPsfMNuqVXFSyyt8yzPFiaw5vdUhazsmwGQZJCc9RoWHhtyrfoCDqrGwJoQ/D9ZKZ
         CFuoq68reIT4Uz0bOlm0twIS+8szKgFao4wxKPBgCrroBVk4nOL1Yhm9/cmrJz9d+7+l
         u4EMXTZuswzpBhrJu6aoOayggsvxG4mUOOTAQlXs/jDga7O6sqsOiMBgQzDB8LsKHrj9
         d8QZH3e1vZCpCwgn66pnIE4Ld7NBPNWCM/joKqVxVG1m4r4LEVH2xj9Hq6HLmQZLmBlL
         SvKQ==
X-Forwarded-Encrypted: i=1; AJvYcCUt7RYATNVTuBXuqdBZ3ZyTxCYbrDg5z6tDpVSbJ+QDDjlDedXNcbkcVK7vWDnjd+xHsUvUPX7O7OzDWpN3nXB+6TGYvzZxpv+Vx72okRqTmNR7w5v0Z3YpkUihJyTEXAPJFU5aVcPS+yzDRDp64WldFJczdA3v704=
X-Gm-Message-State: AOJu0YxvkeMXjtu+Hg73KgMJojCQavDRpA+wHbqH0xxVyG7ZL9MSGkta
	dShg3fR/Ti8yYPMqbnuLl88UluSXp2Lpe6JQbLNVX2R/0MyFIvYSrU1hyzzdaxKEJZJv5ZfcJ+g
	ITWb4yceKc0N0qEpZL1I+SHoGeKM=
X-Google-Smtp-Source: AGHT+IF7pAr69yU9svC5bxzRerXV6L0MMij/GAhNmLknMPb4ry9esEuNqtCjPCeo8caW65iqoT4OE/AkoA2A6fWPgb4=
X-Received: by 2002:a17:906:1c0b:b0:a63:3488:c973 with SMTP id
 a640c23a62f3a-a63348902c7mr120702266b.73.1716889766525; Tue, 28 May 2024
 02:49:26 -0700 (PDT)
MIME-Version: 1.0
References: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
In-Reply-To: <20240506-rk-dts-additions-v4-0-271023ddfd40@gmail.com>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 28 May 2024 13:49:14 +0400
Message-ID: <CABjd4YyuDsWGbSfNyqcW3s=59p8adVf5Js79PYyKFqfyM71dxA@mail.gmail.com>
Subject: Re: [PATCH v4 0/6] RK3588 and Rock 5B dts additions: thermal, OPP and fan
To: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>, Dragan Simic <dsimic@manjaro.org>, 
	Viresh Kumar <viresh.kumar@linaro.org>, Chen-Yu Tsai <wens@kernel.org>, 
	Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240528_024930_257956_4DDB7BC3 
X-CRM114-Status: GOOD (  28.72  )
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

T24gTW9uLCBNYXkgNiwgMjAyNCBhdCAxOjM34oCvUE0gQWxleGV5IENoYXJrb3YgPGFsY2hhcmtA
Z21haWwuY29tPiB3cm90ZToKPgo+IFRoaXMgZW5hYmxlcyB0aGVybWFsIG1vbml0b3JpbmcgYW5k
IENQVSBEVkZTIG9uIFJLMzU4OChzKSwgYXMgd2VsbCBhcwo+IGFjdGl2ZSBjb29saW5nIG9uIFJh
ZHhhIFJvY2sgNUIgdmlhIHRoZSBwcm92aWRlZCBQV00gZmFuLgo+Cj4gU29tZSBSSzM1ODggYm9h
cmRzIHVzZSBzZXBhcmF0ZSByZWd1bGF0b3JzIHRvIHN1cHBseSBDUFVzIGFuZCB0aGVpcgo+IHJl
c3BlY3RpdmUgbWVtb3J5IGludGVyZmFjZXMsIHNvIHRoaXMgaXMgaGFuZGxlZCBieSBjb3VwbGlu
ZyB0aG9zZQo+IHJlZ3VsYXRvcnMgaW4gYWZmZWN0ZWQgYm9hcmRzJyBkZXZpY2UgdHJlZXMgdG8g
ZW5zdXJlIHRoYXQgdGhlaXIKPiB2b2x0YWdlIGlzIGFkanVzdGVkIGluIHN0ZXAuCj4KPiBUaGlz
IGFsc28gZW5hYmxlcyB0aGUgYnVpbHQtaW4gdGhlcm1hbCBzZW5zb3IgKFRTQURDKSBmb3IgYWxs
IGJvYXJkcwo+IHRoYXQgZG9uJ3QgY3VycmVudGx5IGhhdmUgaXQgZW5hYmxlZCwgdXNpbmcgdGhl
IGRlZmF1bHQgQ1JVIGJhc2VkCj4gZW1lcmdlbmN5IHRoZXJtYWwgcmVzZXQuIFRoaXMgZGVmYXVs
dCBjb25maWd1cmF0aW9uIG9ubHkgdXNlcyBvbi1Tb0MKPiBkZXZpY2VzIGFuZCBkb2Vzbid0IHJl
bHkgb24gYW55IGV4dGVybmFsIHdpcmluZywgdGh1cyBpdCBzaG91bGQgd29yawo+IGZvciBhbGwg
ZGV2aWNlcyAodGVzdGVkIG9ubHkgb24gUm9jayA1QiB0aG91Z2gpLgo+Cj4gVGhlIGJvYXJkcyB0
aGF0IGhhdmUgVFNBRENfU0hVVCBzaWduYWwgd2lyZWQgdG8gdGhlIFBNSUMgcmVzZXQgbGluZQo+
IGNhbiBjaG9vc2UgdG8gb3ZlcnJpZGUgdGhlIGRlZmF1bHQgcmVzZXQgbG9naWMgaW4gZmF2b3Vy
IG9mIEdQSU8KPiBkcml2ZW4gKFBNSUMgYXNzaXN0ZWQpIHJlc2V0LCBidXQgaW4gbXkgdGVzdGlu
ZyBpdCBkaWRuJ3Qgd29yayBvbgo+IFJhZHhhIFJvY2sgNUIgLSBtYXliZSBJJ20gcmVhZGluZyB0
aGUgc2NoZW1hdGljIHdyb25nIGFuZCBpdCBkb2Vzbid0Cj4gc3VwcG9ydCBQTUlDIGFzc2lzdGVk
IHJlc2V0IGFmdGVyIGFsbC4KPgo+IEZhbiBjb250cm9sIG9uIFJvY2sgNUIgaGFzIGJlZW4gc3Bs
aXQgaW50byB0d28gaW50ZXJ2YWxzOiBsZXQgaXQgc3Bpbgo+IGF0IHRoZSBtaW5pbXVtIGNvb2xp
bmcgc3RhdGUgYmV0d2VlbiA1NUMgYW5kIDY1QywgYW5kIHRoZW4gYWNjZWxlcmF0ZQo+IGlmIHRo
ZSBzeXN0ZW0gY3Jvc3NlcyB0aGUgNjVDIG1hcmsgLSB0aGFua3MgdG8gRHJhZ2FuIGZvciBzdWdn
ZXN0aW5nLgo+IFRoaXMgbGV0cyBzb21lIGNvb2xpbmcgc2V0dXBzIHdpdGggYmVlZmllciBoZWF0
c2lua3MgYW5kL29yIGxhcmdlcgo+IGZhbiBmaW5zIHRvIHN0YXkgaW4gdGhlIHF1aWV0ZXN0IG5v
bi16ZXJvIGZhbiBzdGF0ZSB3aGlsZSBzdGlsbAo+IGdhaW5pbmcgcG90ZW50aWFsIGJlbmVmaXRz
IGZyb20gdGhlIGFpcmZsb3cgaXQgZ2VuZXJhdGVzLCBhbmQKPiBwb3NzaWJseSBhdm9pZGluZyBu
b2lzeSBzcGVlZHMgYWx0b2dldGhlciBmb3Igc29tZSB3b3JrbG9hZHMuCj4KPiBPUFBzIGhlbHAg
YWN0dWFsbHkgc2NhbGUgQ1BVIGZyZXF1ZW5jaWVzIHVwIGFuZCBkb3duIGZvciBib3RoIGNvb2xp
bmcKPiBhbmQgcGVyZm9ybWFuY2UgLSB0ZXN0ZWQgb24gUm9jayA1QiB1bmRlciB2YXJpZWQgbG9h
ZHMuIEkndmUgZHJvcHBlZAo+IHRob3NlIE9QUHMgdGhhdCBjYXVzZSBmcmVxdWVuY3kgcmVkdWN0
aW9ucyB3aXRob3V0IGFjY29tcGFueWluZyBkZWNyZWFzZQo+IGluIENQVSB2b2x0YWdlLCBhcyB0
aGV5IGRvbid0IHNlZW0gdG8gYmUgYWRkaW5nIG11Y2ggYmVuZWZpdCBpbiBkYXkgdG8KPiBkYXkg
dXNlLCB3aGlsZSB0aGUga2VybmVsIGxvZyBnZXRzIGEgbnVtYmVyIG9mICJPUFAgaXMgaW5lZmZp
Y2llbnQiIGxpbmVzLgo+Cj4gTm90ZSB0aGF0IHRoaXMgc3VibWlzc2lvbiBkb2Vzbid0IHRvdWNo
IHRoZSBTUkFNIHJlYWQgbWFyZ2luIHVwZGF0ZXMgb3IKPiB0aGUgT1BQIGNhbGlicmF0aW9uIGJh
c2VkIG9uIHNpbGljb24gcXVhbGl0eSB3aGljaCB0aGUgZG93bnN0cmVhbSBkcml2ZXIKPiBkb2Vz
IGFuZCB3aGljaCB3ZXJlIG1lbnRpb25lZCBpbiBbMV0uIEl0IHdvcmtzIGFzIGl0IGlzIChhbHNv
IGNvbmZpcm1lZCBieQo+IFNlYmFzdGlhbiBpbiBoaXMgZm9sbG93LXVwIG1lc3NhZ2UgWzJdKSwg
YW5kIGl0IGlzIHN0YWJsZSBpbiBteSB0ZXN0aW5nIG9uCj4gUm9jayA1Qiwgc28gaXQgc291bmRz
IGJldHRlciB0byBtZXJnZSBhIHNpbXBsZSB2ZXJzaW9uIGZpcnN0IGFuZCB0aGVuCj4gZXh0ZW5k
IHdoZW4vaWYgcmVxdWlyZWQuCj4KPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGludXgt
cm9ja2NoaXAvQ0FCamQ0WXpUTD01UzdjUzhBQ05BWVZhNzMwV0EzaUdkNUxfd1AxVm45PWY4M1JD
T1JBQG1haWwuZ21haWwuY29tLwo+IFsyXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9saW51eC1y
b2NrY2hpcC9wa3luZTRnMmNsbjI3ZGNkdTNqbTdicWRxcG1kMmt3a2JndWlvbG1vem50anVpYWpy
YkBndnE0bnVwem5hNG8vCj4KPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtvdiA8YWxjaGFy
a0BnbWFpbC5jb20+Cj4gLS0tCgpIaSBIZWlrbywKCkRvIHlvdSB0aGluayB0aGlzIGNhbiBiZSBt
ZXJnZWQgZm9yIDYuMTE/IExvb2tzIGxpa2UgdGhlcmUgaGFzbid0IGJlZW4KYW55IG5ldyBmZWVk
YmFjayBpbiBhIHdoaWxlLCBhbmQgaXQgd291bGQgYmUgZ29vZCB0byBoYXZlIGZyZXF1ZW5jeQpz
Y2FsaW5nIGluIHBsYWNlIGZvciBSSzM1ODguCgpQbGVhc2UgbGV0IG1lIGtub3cgaWYgeW91IGhh
dmUgYW55IHJlc2VydmF0aW9ucyBvciBpZiB3ZSBuZWVkIGFueQpicm9hZGVyIGRpc2N1c3Npb24u
CgpUaGFua3MgYSBsb3QsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
