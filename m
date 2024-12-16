Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCDBEE7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 06:05:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w1xNwG7+ki2+Qb9H7Zu3VWxN1gN6jH1ujJknd07xCeQ=; b=3tNnaYYPOnwCqW
	pF39LXVHvebtSt9IJgC3JADEW386gnj2kvWuBgQO8LohBnvX19tnfqSg5xHt3DxVcBMazCltk5arY
	OaK+7DD3e0xN0H4ilI4oY9G8NZAdXmTnBe6WgrepYhyur0fMzwCzeLWP992jwlas3kz4XDgsC7rG6
	brU13WUk0vfzzawETOQDkV1uBVUZOU1UFx56bRpWQzYGZqU3MRwPKDNoNsWnNMWLFZ/vTNrUT38jO
	RTDHNUR/Ez2rtk3aEaQffZ8tGhrtiuTJyJUV+GEylC0lxtN83cfZWxooMYOkDi1G2UP6y2owWs6t2
	ags0vd1vqFF+D24OUlDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN4Ec-000000099gu-3BNs;
	Mon, 16 Dec 2024 06:05:38 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN4Ea-000000099gL-2BXO
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 06:05:37 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2163dc5155fso30839285ad.0
        for <linux-rockchip@lists.infradead.org>; Sun, 15 Dec 2024 22:05:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734329135; x=1734933935; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=CDtToB1uPwC4PcwoC3FtKaZg1gP2euazdW0XojEpOzo=;
        b=P8YPlBMhkr0JwMwxstWW4htcDrNnCw6xbdFi4jhmopOGc1/HSTbt8lyGyGojSy6TrR
         ZLnpWzFk/Ng5GcODILm9HAQDDQnMjX6+XgCsziMbX/KevEjBEKmT6O2Fbdd778Foanai
         SA5EraPTIqxO9l0NA9KsJK/5YDACGecqcYKHOjBKVNyDbf3ggtweIX/3zGTvEyBjSM+z
         8WI7bxnni3YvxkMzkbMt+e5QezWBwIzKlKZ4nFEovxnktu0yukwg2NxB2+13SF7mNL2P
         ji0lxAGyAUecRF/D4LnrYX9lm4x1Vsf3rfhRA7MUrr2iKp1FpuNV6pKtkXBMj//KiY4N
         vpRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734329135; x=1734933935;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CDtToB1uPwC4PcwoC3FtKaZg1gP2euazdW0XojEpOzo=;
        b=WkBRuAOGf74ZHXOnIQ1NhgYQKQ46gLkwDdOjIQYW6Ws/58DyOi/8cTNVaI63DMraov
         Oj/vTHbYQh6xRQN65FC3VcxCEGmx8Xx/QUMSPOY9VBfpaDwvbMiLML+zud+O96YweicM
         wo2kplu1odZAtEx5VotNHLuhEtANYaqs+mhyFI/oNeoN1tOQatsY6ujsiDcmC80E5Q1m
         +oxtMchuw6kAzmZYgPTNX4HMK8k66BHBa9LYttpeZjli7Mm/1A+gw0XgHcTEz5r7SJi/
         JWsXzqbJD6/6pwiLwUIfaC1PkMLHEzXfuQ6IT18RcpRGE4MHNIJTGJMZWQvG6zQLdMkX
         Q9nQ==
X-Forwarded-Encrypted: i=1; AJvYcCV+JnOFSX7/T7GKpaQfcHdzMewHtbZCyzFqXqtKgWE/k9Tj6jQE9b5N5DIYggxL9r9nd1wE+us4gI3olKfPxw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwjRVy4I3R/ncvdntrmEtRC5Q2gNm3T3zzLOjiV4ZRM78w0VYaL
	DSQLqIVUctxFMx/LkfhRQvrWcLoACmgVFOvzMh8Uq4IJXlZl+vysGwE6WzOCEA==
X-Gm-Gg: ASbGnctfBXA5uWLh5lFIn5cVOwZ1p39AW9+8YTQ11960B2KVHAvxHatD24+IJaFdueY
	y+vN3PpxL5ihXV+X5xKffCYDfYpCPwGtB2Tky9vuDaoA2W+ziRBKXbjt0zm+046c/gUwTlw7SxJ
	k9UgHxEE0GlqTl6WzJ9xVKlf0qapbTTSVBKI9Z0NaWJ95FG9QyQQbHlaO4N2fLbN5m459iy3uOj
	YD0jm5HuDHFhHzpjbA2ZA/ymu03FRWrULlOnooU+GGwNihwZqlU6/eJK5L4QosptJg=
X-Google-Smtp-Source: AGHT+IEhH2izMGHWoXgAHYtfFoQE1IpdsZiJPq/F6hXFB+rjYb1tbCyHV6DgMbQe+W6rYlwKdP0A0g==
X-Received: by 2002:a17:903:22c1:b0:215:6cb2:7877 with SMTP id d9443c01a7336-218929814dcmr172477885ad.4.1734329135658;
        Sun, 15 Dec 2024 22:05:35 -0800 (PST)
Received: from thinkpad ([120.60.56.176])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-218a1db63a6sm35073355ad.37.2024.12.15.22.05.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 15 Dec 2024 22:05:35 -0800 (PST)
Date: Mon, 16 Dec 2024 11:35:24 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: Damien Le Moal <dlemoal@kernel.org>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>,
	Shawn Lin <shawn.lin@rock-chips.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Rick Wertenbroek <rick.wertenbroek@gmail.com>
Subject: Re: [PATCH v5 00/14] Fix and improve the Rockchip endpoint driver
Message-ID: <20241216060524.bc5fiwdyaxz4git7@thinkpad>
References: <20241017015849.190271-1-dlemoal@kernel.org>
 <20241216054953.kj43om6fbjksbjcy@thinkpad>
 <45CC5230-1DFD-4F7E-A0E6-F4FAC5586038@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <45CC5230-1DFD-4F7E-A0E6-F4FAC5586038@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_220536_580077_B44359EE 
X-CRM114-Status: GOOD (  19.06  )
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

T24gTW9uLCBEZWMgMTYsIDIwMjQgYXQgMDc6MDA6MTZBTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiAKPiAKPiBPbiAxNiBEZWNlbWJlciAyMDI0IDA2OjQ5OjUzIENFVCwgTWFuaXZhbm5h
biBTYWRoYXNpdmFtIDxtYW5pdmFubmFuLnNhZGhhc2l2YW1AbGluYXJvLm9yZz4gd3JvdGU6Cj4g
Pk9uIFRodSwgT2N0IDE3LCAyMDI0IGF0IDEwOjU4OjM1QU0gKzA5MDAsIERhbWllbiBMZSBNb2Fs
IHdyb3RlOgo+ID4+IFRoaXMgcGF0Y2ggc2VyaWVzIGZpeCB0aGUgUENJIGFkZHJlc3MgbWFwcGlu
ZyBoYW5kbGluZyBvZiB0aGUgUm9ja2NoaXAKPiA+PiBQQ0kgZW5kcG9pbnQgZHJpdmVyLCByZWZh
Y3RvciBzb21lIG9mIGl0cyBjb2RlLCBpbXByb3ZlcyBsaW5rIHRyYWluaW5nCj4gPj4gYW5kIGFk
ZHMgaGFuZGxpbmcgb2YgdGhlIFBFUlNUIyBzaWduYWwuCj4gPj4gCj4gPj4gVGhpcyBzZXJpZXMg
aXMgb3JnYW5pemVkIGFzIGZvbGxvd3M6Cj4gPj4gIC0gUGF0Y2ggMSBmaXhlcyB0aGUgcm9ja2No
aXAgQVRVIHByb2dyYW1taW5nCj4gPj4gIC0gUGF0Y2ggMiwgMyBhbmQgNCBpbnRyb2R1Y2Ugc21h
bGwgY29kZSBpbXByb3ZtZW50cwo+ID4+ICAtIFBhdGNoIDUgaW1wbGVtZW50cyB0aGUgLmFsaWdu
X2FkZHIoKSBvcGVyYXRpb24gdG8gbWFrZSB0aGUgUkszMzk5Cj4gPj4gICAgZW5kcG9pbnQgY29u
dHJvbGxlciBkcml2ZXIgZnVsbHkgZnVuY3Rpb25hbCB3aXRoIHRoZSBuZXcKPiA+PiAgICBwY2lf
ZXBjX21lbV9tYXAoKSBmdW5jdGlvbgo+ID4+ICAtIFBhdGNoIDYgdXNlcyB0aGUgbmV3IGFsaWdu
X2FkZHIgb3BlcmF0aW9uIGZ1bmN0aW9uIHRvIGZpeCB0aGUgQVRVCj4gPj4gICAgcHJvZ3JhbW1p
bmcgZm9yIE1TSSBJUlEgZGF0YSBtYXBwaW5nCj4gPj4gIC0gUGF0Y2ggNywgOCwgOSBhbmQgMTAg
cmVmYWN0b3IgdGhlIGRyaXZlciBjb2RlIHRvIG1ha2UgaXQgbW9yZQo+ID4+ICAgIHJlYWRhYmxl
Cj4gPj4gIC0gUGF0Y2ggMTEgaW50cm9kdWNlcyB0aGUgLnN0b3AoKSBlbmRwb2ludCBjb250cm9s
bGVyIG9wZXJhdGlvbiB0bwo+ID4+ICAgIGNvcnJlY3RseSBkaXNhYmxlIHRoZSBlbmRwb3BpbnQg
Y29udHJvbGxlciBhZnRlciB1c2UKPiA+PiAgLSBQYXRjaCAxMiBpbXByb3ZlcyBsaW5rIHRyYWlu
aW5nCj4gPj4gIC0gUGF0Y2ggMTMgaW1wbGVtZW50cyBoYW5kbGluZyBvZiB0aGUgI1BFUlNUIHNp
Z25hbAo+ID4+ICAtIFBhdGNoIDE0IGFkZHMgYSBEVCBvdmVybGF5IGZpbGUgdG8gZW5hYmxlIEVQ
IG1vZGUgYW5kIGRlZmluZSB0aGUKPiA+PiAgICBQRVJTVCMgR1BJTyAocmVzZXQtZ3Bpb3MpIHBy
b3BlcnR5Lgo+ID4+IAo+ID4KPiA+RGFtaWVuLCBwbGVhc2Ugd2FpdCBmb3IgbXkgcmV2aWV3IGJl
Zm9yZSBzcGlubmluZyB0aGUgbmV4dCByZXZpc2lvbi4gU29ycnkgZm9yCj4gPnRoZSBkZWxheS4K
PiAKPiBNYW5pLAo+IAo+IFRoaXMgc2VyaWVzIGhhcyBhbHJlYWR5IGJlZW4gbWVyZ2VkLCBhbmQg
aXMgaW4gVG9ydmFsZHMgdHJlZS4KPiAKCkRvaCEgSSB3YXMgcmVmZXJyaW5nIHRvIHRoZSBOVk1l
IEVQRiBzZXJpZXMuIExldCBtZSByZXBseSB0aGVyZSAoYW5kIGFsc28gZ2V0CmNvZmZlZSkuCgot
IE1hbmkKCj4gRXhjZXB0IGZvciBwYXRjaCAxNC8xNCB3aGljaCBpcyBhIGRldmljZSB0cmVlIG92
ZXJsYXksIHNvIGl0IHNob3VsZCBnbyB2aWEgdGhlIHJvY2tjaGlwIHRyZWUuCj4gCj4gCj4gS2lu
ZCByZWdhcmRzLAo+IE5pa2xhcwoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprg
rqTgrr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
