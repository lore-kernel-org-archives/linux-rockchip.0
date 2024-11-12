Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 199ADD42BAB
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 16:47:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yElXfX9Kl5bkZAZmPiI8LZzURrxX/aKD+7Np7WOdock=; b=ieWpH/L7vsvyju
	cQAIGTacEkEMPfgdt2A+NKPhGH+msaIuhyr6YJXVF4FifBqjGzIS0LSyqFf+WonxFTohMz3XSaQ/R
	QJjNjQnB0eEuiKrJhLdcLaXJzp5aecN8m0wAE47QTgC09eer8SnfMDtG11JETbmUR15wFLIpxLlW6
	/X2MTyAoENl8w7OgXBynpHoLhD9AfUZ/M+kA2vAheDgWIaiQtM8RrymYYCJ9OWdnqt9hIihYK1KjP
	XXawZ/onRpcrw7BR8ywlpZdHzE2DTyp2DPqrwtMDIfTV+N6GBJVnw4u3DUcfFgy1J3l4gZtE5RC8S
	Rzkr0t4f1X5hcQ8a+0hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAu2d-00000004Cdg-3Zl6;
	Tue, 12 Nov 2024 16:46:59 +0000
Received: from mail-pg1-f174.google.com ([209.85.215.174])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAs07-00000003m8k-2iLW;
	Tue, 12 Nov 2024 14:36:17 +0000
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-7ea9739647bso3913962a12.0;
        Tue, 12 Nov 2024 06:36:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731422174; x=1732026974;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fU6W7rKC1LDOoPqE+zgv8rY63qL2TykSBZFtxfoHqJQ=;
        b=J5s1EHNViyCMqOOKOYnQdPk+QysfDslJHO3LTkeTyxjUvIiFTUST/MkXSQJG4nlzQ1
         AEAWmbLXHHgvm8XsaIZhHHV3Hkso/eu6MBhBGnGJJp6scnN38fPaxrqE4JlZH/j4leCG
         gq0jj/q8zxXT2fzTRCDwClXRcpNkieIxArCjUfZPiGxkOg4hdX9QnGNOQXJhTLXYCT0H
         NnQdIUeLLgiNMHwr4ZQ0W0wnjahdUnWRe6aKDi5Y5zTLCDWJYpaWrNLk751m6iAj0GdE
         EC5iJ0DLzhR2i7cFrh7OkDWa7ND+aJtSx1CTQJjq/J0bbLISRs0J9+18fwyIxS3wcMCB
         j9bA==
X-Forwarded-Encrypted: i=1; AJvYcCUWl68Cjl5RtIAs7Ousd8A0Efz6A1mGxqx8g/AUavmZN4AzRenCfgq9sWx3ixnoneQ8rHRoWHcPMPIhl9R25dg=@lists.infradead.org, AJvYcCWRDhwZeBwpRt/ucv3l+KzxUTU7NUc+zqC/TJE9w4qIEWmeoHzYlF8ffWs06OA0/XJDJyOXYa5sdni5NZn2qR6Z@lists.infradead.org
X-Gm-Message-State: AOJu0YyENg/fFtC2j78U6wY7s82gvzPTW09w/Tx4bXrZ3HvziyGWTUAZ
	ZUHC5MnZkzCS+hLGB4N3X11WLs1W9gk4fKCRncxn0fTwIrJm5d4SXvfPQQaVHuFS6Q==
X-Google-Smtp-Source: AGHT+IG+OnucLUzxz6hWyjtVw0C6nrZ3246+4i5FInmi5rYqzQxiHJS2iZ3yROg3N99KFfYRCmMZ3A==
X-Received: by 2002:a17:90a:d405:b0:2e2:d3a0:4716 with SMTP id 98e67ed59e1d1-2e9b173c50fmr25084773a91.18.1731422174252;
        Tue, 12 Nov 2024 06:36:14 -0800 (PST)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com. [209.85.216.46])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-2e99a5f935dsm14057783a91.35.2024.11.12.06.36.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Nov 2024 06:36:13 -0800 (PST)
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2e2ad9825a7so4353547a91.0;
        Tue, 12 Nov 2024 06:36:13 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUs474IMk89yew3r9L0VDv8sJUYrZuWHul9EkYqm4bB0vBFanuRSgLvLv+cuMHzKIWvUfOEHhIV5w35tZusN30=@lists.infradead.org, AJvYcCUvPI/01YvuyKqAbvvqk8pAK777SOQeWbZl5lk/J7KPxT11EA9PZK4DE9cftztNqMB3vNo5VK3gU7MGNhHIyzAm@lists.infradead.org
X-Received: by 2002:a17:90b:3c0e:b0:2e2:dcea:2b8c with SMTP id
 98e67ed59e1d1-2e9b16eeb4emr22784902a91.6.1731422173348; Tue, 12 Nov 2024
 06:36:13 -0800 (PST)
MIME-Version: 1.0
References: <20241111181807.13211-1-tszucs@linux.com> <20241111181807.13211-2-tszucs@linux.com>
 <c89c2f16-ffb0-4b61-a962-9705f9f1e0e2@kwiboo.se>
In-Reply-To: <c89c2f16-ffb0-4b61-a962-9705f9f1e0e2@kwiboo.se>
From: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>
Date: Tue, 12 Nov 2024 15:36:02 +0100
X-Gmail-Original-Message-ID: <CA+GksrJzkxffSQbuseGFL0=2PDxV+TRevX0-NOkc6FNYLmNgYA@mail.gmail.com>
Message-ID: <CA+GksrJzkxffSQbuseGFL0=2PDxV+TRevX0-NOkc6FNYLmNgYA@mail.gmail.com>
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: Add supported UHS-I rates to
 sdmmc0 on rock-3b
To: Jonas Karlman <jonas@kwiboo.se>
Cc: =?UTF-8?B?VGFtw6FzIFN6xbFjcw==?= <tszucs@linux.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, FUKAUMI Naoki <naoki@radxa.com>, Dragan Simic <dsimic@manjaro.org>, 
	Chukun Pan <amadeus@jmu.edu.cn>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_063615_710009_C1724892 
X-CRM114-Status: GOOD (  27.24  )
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

SGkgSm9uYXMsCgpUaGFuayB5b3UgZm9yIHBvaW50aW5nIHRoaXMgb3V0ISBJIGhhdmVuJ3Qgbm90
aWNlZCB0aGlzIGJlZm9yZS4gSSd2ZQpkb25lIHNvbWUgdGVzdGluZyBhbmQgSSBiZWxpZXZlIEkg
YW0gYWJsZSB0byByZXByb2R1Y2UgdGhlIGlzc3VlIHlvdQpkZXNjcmliZWQsIGFsdGhvdWdoIEkg
Y2Fubm90IGNvbmZpcm0gdGhlIHJlYXNvbi4KVGhlIG9ubHkgb2NjYXNpb24gSSBlbmNvdW50ZXIg
YW55IHByb2JsZW1zIGlzIHdoZW4gYSBVSFMgU0QgY2FyZCBvcgpTRElPIGRldmljZSBpcyBjb25u
ZWN0ZWQgdG8gc2RtbWMwIGR1cmluZyBib290dXAuIFNvbWV0aW1lcyB0aGUgZGV2aWNlCmlzIHJl
Y29nbml6ZWQgYXMgSFMgb25seS4gT2J2aW91c2x5IG5vIHR1bmluZyB2YWx1ZSByZXBvcnRlZC4g
QWxzbywKc2RtbWMyIGN1dHMgb3V0IGNvbXBsZXRlbHkuIEknbSBib290aW5nIGZyb20gZU1NQyBh
bmQgd2hlbiB0aGUgU0QgY2FyZAppcyByZW1vdmVkIGluIHRoaXMgc3RhdGUgSSBsb3NlIG15IHJv
b3Rmcy4gQ2VydGFpbmx5LCB0aGlzIG5lZWRzIG1vcmUKYXR0ZW50aW9uIGJ1dCBpdCBzZWVtcyB0
byBiZSB1bnJlbGF0ZWQgdG8gdGhlIGNoYW5nZXMgaGVyZS4KCkkgbmVlZCBtb3JlIHRpbWUgdG8g
Y2hlY2sgYnV0IGFyZSB5b3Ugc3VyZSB0aGlzIFNEIGNhcmQgZHVyaW5nIGJvb3R1cAppc3N1ZSBp
cyBnb25lIHdpdGggVUhTLUkgZGlzYWJsZWQ/CgpBbHNvLCBpbiBldmVyeSBvdGhlciBjYXNlLCB3
aGVuIHlvdSBjb25uZWN0IGFueSBkZXZpY2UgdG8gc2RtbWMwIGFmdGVyCmJvb3R1cCwgcGVyZm9y
bWFuY2UgYW5kIHN0YWJpbGl0eSBpcyBwZXJmZWN0LgpJbnRlcmVzdGluZ2x5IEkgYWxzbyBkb24n
dCBleHBlcmllbmNlIHRoaXMgYmVoYXZpb3Igd2l0aCBhbiBlTU1DCmRldmljZSBhbmQgLyBvciBh
biBTRElPIGRldmljZSBjb25uZWN0ZWQgdG8gc2RtbWMyIGR1cmluZyBib290dXAuIE9ubHkKc2Rt
bWMwIGlzIHByb2JsZW1hdGljIGFuZCBvbmx5IGR1cmluZyBib290dXAuCgpBbnkgbW9yZSB0aG91
Z2h0cyBvbiB0aGlzIGFyZSB2ZXJ5IHdlbGNvbWUuCgpLaW5kIHJlZ2FyZHMsClRhbWFzCgoKClRh
bcOhcyBTesWxY3MKdHN6dWNzQGxpbnV4LmNvbQoKT24gTW9uLCBOb3YgMTEsIDIwMjQgYXQgODow
MOKAr1BNIEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJvby5zZT4gd3JvdGU6Cj4KPiBIaSBUYW3D
oXMsCj4KPiBPbiAyMDI0LTExLTExIDE5OjE3LCBUYW3DoXMgU3rFsWNzIHdyb3RlOgo+ID4gQWRk
IGFsbCBzdXBwb3J0ZWQgVUhTLUkgcmF0ZXMgdG8gc2RtbWMwIGFuZCBhbGxvdyAyMDAgTUh6IG1h
eGltdW0gY2xvY2sgdG8KPiA+IGJlbmVmaXQgbW9kZXJuIFNEIGNhcmRzLgo+ID4KPiA+IFNpZ25l
ZC1vZmYtYnk6IFRhbcOhcyBTesWxY3MgPHRzenVjc0BsaW51eC5jb20+Cj4gPiAtLS0KPiA+ICBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyB8IDYgKysrKysr
Cj4gPiAgMSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQg
YS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyBiL2FyY2gv
YXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gPiBpbmRleCAzZDBj
MWNjZmFhNzkuLjI0MmFmNTMzN2NkZiAxMDA2NDQKPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwo+ID4gQEAgLTY3MCw4ICs2NzAsMTQgQEAg
JnNkbW1jMCB7Cj4gPiAgICAgICBidXMtd2lkdGggPSA8ND47Cj4gPiAgICAgICBjYXAtc2QtaGln
aHNwZWVkOwo+ID4gICAgICAgZGlzYWJsZS13cDsKPiA+ICsgICAgIG1heC1mcmVxdWVuY3kgPSA8
MjAwMDAwMDAwPjsKPiA+ICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAgICAg
ICBwaW5jdHJsLTAgPSA8JnNkbW1jMF9idXM0ICZzZG1tYzBfY2xrICZzZG1tYzBfY21kICZzZG1t
YzBfZGV0PjsKPiA+ICsgICAgIHNkLXVocy1zZHIxMjsKPiA+ICsgICAgIHNkLXVocy1zZHIyNTsK
PiA+ICsgICAgIHNkLXVocy1zZHI1MDsKPiA+ICsgICAgIHNkLXVocy1zZHIxMDQ7Cj4gPiArICAg
ICBzZC11aHMtZGRyNTA7Cj4KPiBUaGVyZSBpcyBhbiBpc3N1ZSB3aXRoIGlvLWRvbWFpbiBkcml2
ZXIgbm90IGFsd2F5cyBiZWluZyBwcm9iZWQgYmVmb3JlCj4gbW1jIGRyaXZlciwgdGhpcyB0eXBp
Y2FsbHkgcmVzdWx0IGluIGlvLWRvbWFpbiBiZWluZyBjb25maWd1cmVkIHdyb25nLAo+IGFuZCBt
bWMgdHVuaW5nIGhhcHBlbiBiZWZvcmUgaW8tZG9tYWluIGlzIGNvcnJlY3RseSBjb25maWd1cmVk
Lgo+Cj4gWW91IGNhbiB1c3VhbGx5IG9ic2VydmUgdGhpcyBieSBsb29raW5nIGF0IHRoZSB0dW5p
bmcgdmFsdWUgZHVyaW5nIGJvb3QKPiBhbmQgY29tcGFyaW5nIGl0IHRvIHRoZSB0dW5pbmcgdmFs
dWUgYWZ0ZXIgcmVtb3ZpbmcgYW5kIHJlLWluc2VyaW5nIGEKPiBzZC1jYXJkLgo+Cj4gQmVjYXVz
ZSBvZiB0aGlzIHVocyBtb2RlcyB3YXMgbGVmdCBvdXQgZnJvbSBpbml0aWFsIERUIHN1Ym1pc3Np
b24sIHNvbWUKPiBjYXJkcyB3aWxsIHdvcmsgb3RoZXJzIHdvbnQsIHNkLXVocy1zZHI1MCBpcyBr
bm93biB0byBiZSB3b3JraW5nIHdpdGgKPiBtb3N0IGNhcmRzIGV2ZW4gd2l0aCB0aGUgcHJvYmUg
b3JkZXIgaXNzdWUuCj4KPiBBbHNvIEkgdGhvdWdodCB0aGF0IGxvd2VyIHNwZWVkcyB3aGVyZSBp
bXBsaWVkPwo+Cj4gUmVnYXJkcywKPiBKb25hcwo+Cj4gPiAgICAgICB2bW1jLXN1cHBseSA9IDwm
dmNjM3YzX3NkPjsKPiA+ICAgICAgIHZxbW1jLXN1cHBseSA9IDwmdmNjaW9fc2Q+Owo+ID4gICAg
ICAgc3RhdHVzID0gIm9rYXkiOwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
