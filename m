Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 598DECD3427
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 May 2026 20:31:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6mm7hboRATnJDPfQE2BAhs0KjiCNpm8WT/FDswrn+I=; b=bOZH5tTA7duU6c
	tkolqxlMMNKsU8wh1jQr+DrCQecgFmkLW2TDfBtJao9WwsIYAx8F+JZrp49hyE8PTx28/kVE+9Q2T
	xgO/Bv+fAmLtKS7IlSoLRh8FYArbkqMUdufg8ZyeGlfP7aOwPLWGdQf10w6OlfbJXAudJWPeadCd1
	ghIzAysQpuqiBkCEd6CFmS/Sriz4sn4UGiERJVWItcQFq10SoeX7vWT6oC4wFoqdR6ocyNYrIFdTl
	qXjtBxYkuU3zPj6rm40oOhFxoGvfHQKnzhsE9LglChdIvU09kaGxqONpFgjsk1GLE0tO3dbvAoMxJ
	v2iiayhjAGTwK4pCgX4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKMQ6-0000000HR8y-05gy;
	Tue, 05 May 2026 20:31:06 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wKMQ2-0000000HR7x-3ns6
	for linux-rockchip@lists.infradead.org;
	Tue, 05 May 2026 20:31:04 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-692205ca402so3038602eaf.0
        for <linux-rockchip@lists.infradead.org>; Tue, 05 May 2026 13:31:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778013060; cv=none;
        d=google.com; s=arc-20240605;
        b=ChvCh7Be1/HCbal/DoPaVuw/jueK7aThBhBI7tkGcKeXOl6qprsBlzThRP7nL0CKYj
         OQbMJWa4HfpcrW113x5bNF0yAvdrwYRse3ksMSTMHaapPopFwBT/sLujT28TRO42rjuS
         O6lC4DSFJcPb4o/jzcQfgFVPg1p9BYWp4UWNS0G18Jl0SK839zPCbJ/fCrLm4c5YX7S+
         Qi4/1zSTs05q0LX3Ry+B/vwGppBn6Mw2l9LmuSsJPKfODlBN5wrlruqZehnrnIVSxhE3
         H0p86tF1ziaffGmGqJ+XoQM6dL2GqzjDL4YqjH9z6Bwmm2ceRpfO0VywO/7lHpqxUOhL
         zMWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=XWiaguT33mFKTHX+XCub37wPb4gjq7oRFtLlclQ4EBM=;
        fh=LmeZ0tw4K1cXFusqVhQidFDWmVl9Z6hfkO86ckWsbNM=;
        b=Cgy1jpZIucQPl3ZjOfFH+tsQxhDK4LN9Prwq2hKlFCDWQQUEnTuuLGlVFZqPIoHgxz
         wxVShGpPKSs6a+S0MynL1P/wy9CZ8sEABBGCSHNgX1ImhuFznJ4/DGo92sRNjzLWHj5G
         8/AkBtAKC5SFde64UBnGA6iWZsq/KI7ldTpvb7OrkA4j7Tw2FIDzlrUYl20p7sOeULzN
         vaULZffsY9yafXvoqljyDwPAFWAIuva8OyasCm0Zky0T9yBVo5V27dD1J6aQnA12NqLU
         ZrTzwRo2WqUy5jvbv1jOW5mFVrHt91t+L9/hrF5QpwwBtUjJF8t+rX0IpZUzA1heMVue
         Jtiw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1778013060; x=1778617860; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XWiaguT33mFKTHX+XCub37wPb4gjq7oRFtLlclQ4EBM=;
        b=WFxK7ESJoz7XkWKJn3MUhMouVi/dj2npIPXxI4jOlaCGiE0kOStCvQJ4lqwXgLl6Es
         TfIRwO0684FFAn9L+8+yVT2FhSMa+yUTn+iU/Lt5GN3Bek3AvDAdTAOtgpn26HcgRQzv
         onWTs4Q3vBAdMNDegl8vLAatqFYMDueO25gXE35WCnkenWIShoNTtmGz8NMu+LnQ+v8f
         /odzU+WXLpb+LiL552j2PM3/XLu6qHtN7xKHTzM8bFGiRQobmhfE7Gzvb5wSI/hZ3JFa
         l/tw8S3rfmyo+tL3O0rhBb/s+e/75+LvNZ8NdmABERnPmvcCCGR061CIqz898R1lwaia
         ERcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778013060; x=1778617860;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XWiaguT33mFKTHX+XCub37wPb4gjq7oRFtLlclQ4EBM=;
        b=s4CKrVz4jswPs367z4Bt4cZefaOSlzaEK24xsMdW0Hi93rb18MKTAnbfZwd2Wnko07
         j/esuabSmNaZ2q6SulHTBk5HYDjdMcPVQE80DJMsOWxa2mToAmstpAbeZ4qcB7yUqqhO
         QQq5n8hGOT91F/CPvIEIw4+5XHuEnkMmFFT3oOy+qjMjbMII32/GZ2QO3ndrcl5VKXYQ
         Tfck/axH5gWRry++AO7ZWNIYeRP3TsLPprQb0YIAQG3OdWtOqcNWJjJ5D+kRcSeGpKyg
         YI1ZltxJ+Ta8s9xRXMXrRO54nXIwIMcevI/5WeZf7tM5nNDaAjMUHk3V43hplTkn+OLd
         cHeg==
X-Forwarded-Encrypted: i=1; AFNElJ/3tZCyqLW104OU4fQDnGg3FvooMWys8iYDX83QAw4GZXN+ApOZ/qLZ4WAgH2tGPv3stHnF3UXDNAcf+GsIpw==@lists.infradead.org
X-Gm-Message-State: AOJu0Ywxf8+EbE4Qqxhn8nw28oLxUFJcU1jzLOWvXH5/ca1yK9j9QV9k
	Y7kib7f50nbTqaS5Cn3Fdrbdboqto1bNhWobGtJyZ4jvFiFXc/tQlutfnVsXT+U2uAIV8OfPHXM
	KHJmwGbG7IIazlTfbY7YeH8b0W1SYid3PhMwvjSw0uQ==
X-Gm-Gg: AeBDiev32dMAaiufjIRS6o36EhfwCLxF0h5LY+hhvVBY6WQyLU6OPAnt7k23XfkNRrD
	tUpfU5qM/t2aD29A2bEtmvM/axsDrApIe6iMTfJSE1QOKBDzsstAbCitW2bqDiItA7KsN+5KqyN
	QS9UoIVDiw0ZgKbt5i77LvYdgY37O3fxCjwGGeD5FuTNC2vnHHm6JB2UHzb9jbbOQl3eCx31bIn
	C0Lg6a3vBevfsrSJih9JrCgmurLS7ak9cy/HPZobcBu3yDh4UunfVUxJMZFxTRLZhjPzsXhPCqP
	VVKpebkjWpv0MIDrbMP6eOBzc0udUjVwrJSdXBFXHpgncF4dxJ/cIAWVhkig0vvngRXELyTXA1C
	A85KqGQ==
X-Received: by 2002:a05:6820:612:b0:694:914a:ebe1 with SMTP id
 006d021491bc7-69998d496f4mr230276eaf.47.1778013060106; Tue, 05 May 2026
 13:31:00 -0700 (PDT)
MIME-Version: 1.0
References: <20260429024737.544813-1-dennis@ausil.us> <20260429024737.544813-4-dennis@ausil.us>
 <26834823.ouqheUzb2q@phil>
In-Reply-To: <26834823.ouqheUzb2q@phil>
From: Dennis Gilmore <dennis@ausil.us>
Date: Tue, 5 May 2026 15:30:49 -0500
X-Gm-Features: AVHnY4JYRhq_p9ta-ys9Z6NemjXvr6rGjpeyTa05lQ2fOW4hQ-wHeaXjdlyGa24
Message-ID: <CAABkxwtJv4VrS+6kdZ5c1QeuRtnKaFJir0=B9xsqirUiai+iKA@mail.gmail.com>
Subject: Re: [PATCH v9 3/4] arm64: dts: rockchip: refactor items from Orange
 Pi 5/b to prep for Pro
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>, 
	Alexey Charkov <alchark@gmail.com>, Quentin Schulz <quentin.schulz@cherry.de>, 
	FUKAUMI Naoki <naoki@radxa.com>, Peter Robinson <pbrobinson@gmail.com>, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260505_133102_970395_FD290E29 
X-CRM114-Status: GOOD (  12.14  )
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

T24gVHVlLCBNYXkgNSwgMjAyNiBhdCAxMjozNuKAr1BNIEhlaWtvIFN0dWVibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgRGVubmlzLAo+Cj4gQW0gTWl0dHdvY2gsIDI5LiBBcHJp
bCAyMDI2LCAwNDo0NzozNCBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIERl
bm5pcyBHaWxtb3JlOgo+ID4gVGhlIFJLODA2IFBMRE8xIGFuZCBQTERPMiBvdXRwdXRzIGFyZSB3
aXJlZCBkaWZmZXJlbnRseSBiZXR3ZWVuIHRoZQo+ID4gNS81QiBhbmQgdGhlIFBybyAoUExETzEv
UExETzIgYXJlIHN3YXBwZWQpLCBzbyBsYWJlbCB0aGUgUE1JQyBub2RlCj4gPiByazgwNl9zaW5n
bGUgaW4gdGhlIGJhc2UgZHRzaSwgZHJvcCBwbGRvLXJlZzEvcGxkby1yZWcyIGZyb20gaXQsIGFu
ZAo+ID4gZGVmaW5lIHRoZW0gdmlhIGEgJnJrODA2X3NpbmdsZSByZWd1bGF0b3JzIGF1Z21lbnRh
dGlvbiBpbgo+ID4gcmszNTg4cy1vcmFuZ2VwaS01LTViLmR0c2kuIFRoZSBQcm8gd2lsbCBzdXBw
bHkgaXRzIG93biBtYXBwaW5nLgo+Cj4gSSBndWVzcyBteSBvbmx5IHF1ZXN0aW9uIGlzLCB3aGVy
ZSBkaWQgdGhhdCAic2luZ2xlIiBjb21lIGZyb20gYW5kIHdoYXQKPiBpcyBpdCBzdXBwb3NlZCB0
byBtZWFuPyAuLi4gSSB3b3VsZCd2ZSBhc3N1bWVkICImcms4MDYiIGFzIGxhYmVsIHdvdWxkJ3Zl
Cj4gYmVlbiBlbm91Z2g/IEJ1dCBtYXliZSB0aGF0ICJfc2luZ2xlIiBoYXMgc29tZSBzcGVjaWFs
IG1lYW5pbmc/Cj4KPiBUaGFua3MKPiBIZWlrbwoKSGkgSGVpa28sCgpUaGUgX3NpbmdsZSBzdWZm
aXggd2FzIG1lYW50IHRvIGRpc3Rpbmd1aXNoIHRoaXMgZnJvbSBkdWFsLVJLODA2CmRlc2lnbnMg
KGUuZy4gRVZCMS9FVkIyL1F1YXJ0elBybzY0KSB3aGVyZSB0d28gUks4MDYgUE1JQ3MgYXJlIGNo
YWluZWQKYXMgbWFzdGVyIChwbWljQDApIGFuZCBzbGF2ZSAocG1pY0AxKS4gSSB3YW50ZWQgdG8g
c2lnbmFsICJ0aGlzIGJvYXJkCmhhcyBleGFjdGx5IG9uZSBSSzgwNiwgbm90IHRoZSBtYXN0ZXIg
aGFsZiBvZiBhIHBhaXIuIgoKWW91J3JlIHJpZ2h0IHRoYXQgdGhpcyBpcyB1bm5lY2Vzc2FyeSDi
gJQgdGhlIEVWQiBib2FyZHMgZG9uJ3QgbGFiZWwKdGhlaXIgbWFzdGVyIGFzIHJrODA2X21hc3Rl
ciBlaXRoZXIsIHNvIHRoZXJlJ3Mgbm8gZXN0YWJsaXNoZWQKY29udmVudGlvbiB0aGF0IF9zaW5n
bGUgaXMgcGFydCBvZi4gSSdsbCByZW5hbWUgaXQgdG8ganVzdCByazgwNiBpbgp2MTAuCgpEZW5u
aXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
