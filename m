Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2CF14C5B552
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Jun 2025 02:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WU0hMBXQ6KABcdnZbpA5yScFKtaMPfuFjnXWS1StLXM=; b=YdGLfTx4JoAvHn
	QDwu7kCNjuAxV3Rt/GE4iXTEI17w8E8MjR+czIYhwInXrPF+3S3TJ8IGN+L8sulbbz2jXkJBD2Gtm
	hAsmKU6habCxizIAZxsh/gtV4FztWO4CFzHNsh7XXsjJ1JmH/4Q8YypD2k4FV3iBBKf86I2zi9WGB
	gnXwdyqcDqrGTXXIbGfeGSSltqm254d2UrNz/dr7xYhddnjJeiZM8lH3n4HGxqEQQNJCJB52EbrkX
	CWEfeC7KFGXIzysCUduf+CUKNbUI2VJSI9+FCPmFzRRUrdJFGo+Ib8KWUu2OZAFmikqSnR8h+2SWh
	kbFETQUvgH9HdWhUvJgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNMk9-0000000Gy6f-15He;
	Fri, 06 Jun 2025 02:23:41 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uNMem-0000000Gxc1-36cM;
	Fri, 06 Jun 2025 02:18:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id CAC3744DA4;
	Fri,  6 Jun 2025 02:18:07 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A7163C4CEEE;
	Fri,  6 Jun 2025 02:18:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749176287;
	bh=6qA7YBQpFiK4Ibv64ZbIu8PGXennlTHCTuEMTnnA2+A=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=KqJhFoOVKrziTHIUrXZpN//39jSp3rRY0YE4Ll642fNVb89wEV//IQz0PHrqNSSDs
	 hXq7i6ovic24xieFPXevCFZV9tb/D4IMr0e/SeBtSipfZEM8ZAjhY0jWS6tFC91Z5l
	 21rV8QlQDpKiYwLWXBYfkq/wF8BauBX5JPL+Ga+VtS/0JyzAYC6P499h95SrozDtSs
	 qRqN9+RZku0dO18yk8t0oQ31LW/eaBcXf8sbulOo060fWbyhTtIX7RIyLhnjMNdgIm
	 aOZecUZbzJZhVTyihLN5wojnpZTYG6I000O8YkNy2gs3EYmlkhC/nhRkWu/4V9++nG
	 wdflXV5cK5kTA==
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-5532a30ac41so1760822e87.0;
        Thu, 05 Jun 2025 19:18:07 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCW8Ocz9uEG7NjPc++fmHhLSUPsrgiEd3wG1NAoOeBeaMqCaQpUC5U72dcgzBpIkaBC3b4Q+WuYeSVMIwvth7VA=@lists.infradead.org, AJvYcCXBC1R7PIcbCcMET57HHV+TRWkvuwkU6sTWfWm0P2HqrCCB+7QLTqSHjnZFaJo2t/GQXDdiRVQadpIyR+Lluq/B@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2Jn0qHuZVXV7id3gorIre8povprx2b2JRccNIQcsGM/f/cz8v
	8Xeo7nPTBvnEUrN46j6T4J7s5EovLRblhtfumQ3QRP1iHugL4f9MgDr4P9qRtTuHcyFLY2OLSEi
	vSzQJjQLq3eOwIyb/d8PUS/wa7F68JBQ=
X-Google-Smtp-Source: AGHT+IGO0F1wP7gpgYi2lunUSLtB2eWuNwcIOZ7QiYAP+juBVh9hkY1iACCnipgD2v8g1JzHxJSNVztgLLcWQwygpeU=
X-Received: by 2002:a05:6512:4026:b0:553:663c:584e with SMTP id
 2adb3069b0e04-55366c413f3mr305058e87.47.1749176286022; Thu, 05 Jun 2025
 19:18:06 -0700 (PDT)
MIME-Version: 1.0
References: <20250605185001.377055-1-heiko@sntech.de>
In-Reply-To: <20250605185001.377055-1-heiko@sntech.de>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Fri, 6 Jun 2025 10:17:53 +0800
X-Gmail-Original-Message-ID: <CAGb2v65C0jHsD2HD_AEt+AGqMfWUUwwWV0bXw4i9Hw2tCNHZpA@mail.gmail.com>
X-Gm-Features: AX0GCFuToKRUmITqgDNGpW_ZR3HS5yeuUl6k2yiigcbUSEF1x31-6X5nEgTdfNg
Message-ID: <CAGb2v65C0jHsD2HD_AEt+AGqMfWUUwwWV0bXw4i9Hw2tCNHZpA@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add regulator-enable-ramp-delay
 to RK860-0/-2/-3 regulators
To: Heiko Stuebner <heiko@sntech.de>
Cc: quentin.schulz@cherry.de, jonas@kwiboo.se, dsimic@manjaro.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_191808_819873_F660366D 
X-CRM114-Status: GOOD (  24.80  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gRnJpLCBKdW4gNiwgMjAyNSBhdCAyOjU34oCvQU0gSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBUaGUgUks4NjAtMC8tMS8tMi8tMyByZWd1bGF0b3JzIGFyZSB1
c2VkIG9uIHJrMzU4OCBib2FyZHMgaW4gYWRkaXRpb24gdG8KPiB0aGUgbWFpbiBwbWljLCB0byBz
dXBwbHkgY29tcG9uZW50cyBsaWtlIHRoZSBiaWcgY3B1LWNsdXN0ZXJzIGFuZCBucHUuCj4KPiBT
byBmYXIgbm9ib2R5IGhhZCBhIHVzZS1jYXNlIGZvciB0dXJuaW5nIHRoZXNlIG9mZi4gVGhlIHN1
cHBsaWVzIGZvciB0aGUKPiBiaWcgY3B1LWNsdXN0ZXJzIGFyZSBvbiBieSBkZWZhdWx0IGFuZCB0
aG9zZSBjbHVzdGVycyBub3JtYWxseSBhcmUgbm90Cj4gY29tcGxldGVseSB0dXJuZWQgb2ZmIGR1
cmluZyBydW50aW1lLgo+Cj4gVGhpcyBjaGFuZ2VkIHdpdGggdGhlIG5ldyBSb2NrZXQgZHJpdmVy
IGZvciB0aGUgTlBVLCB3aGljaCBkb2VzIHVzZQo+IHJ1bnRpbWUtcG0gYW5kIHRodXMgZG9lcyB0
dXJuIG9mZiBhbmQgb24gdGhlIE5QVSdzIHN1cHBseSByZWd1bGF0b3IgYXMKPiBuZWVkZWQuIFRo
aXMgcmVndWxhdG9yIGlzIGFsc28gbmVlZGVkIHRvIHJ1biB0byBhY3R1YWxseSB0dXJuIG9uIHRo
ZQo+IHBvd2VyLWRvbWFpbiBmb3IgdGhlIE5QVS4KPgo+IElmIHRoZSByb2NrZXQgZHJpdmVyIG5v
dyBydW50aW1lLXN1c3BlbmRzIHdoaWxlIHJ1bm5pbmcgYSBsb2FkIGFuZCB0aGVuCj4gcnVudGlt
ZS1yZXN1bWVzIGFnYWluLCBoYW5ncyBjYW4gYmUgb2JzZXJ2ZWQgd2l0aCBtZXNzYWdlcyBsaWtl
Cj4KPiAgIHJvY2tjaGlwLXBtLWRvbWFpbiBmZDhkODAwMC5wb3dlci1tYW5hZ2VtZW50OnBvd2Vy
LWNvbnRyb2xsZXI6IGZhaWxlZCB0byBzZXQgZG9tYWluICducHV0b3AnIG9uLCB2YWw9MAo+Cj4g
QSB3YXkgdG8gImZpeCIgdGhhdCBpc3N1ZSB3aGVuIGl0IGhhcHBlbnMsIGlzIHRvIHNldCB0aGUg
cmVndWxhdG9yIHRvCj4gYWx3YXlzLW9uLiBUaGlzIHN1Z2dlc3RzIHRoYXQgdGhlIHBvd2VyLWRv
bWFpbiBpcyB0cnlpbmcgdG8gZ2V0IHBvd2VyCj4gZnJvbSB0aGUgcmVndWxhdG9yIGJlZm9yZSBp
dCBpcyByZWFkeSB0byBkZWxpdmVyIHBvd2VyLgo+Cj4gQW5kIGluIGZhY3QgdGhlIGRhdGFzaGVl
dCBmb3IgdGhlIHJlZ3VsYXRvciBkZWZpbmVzIGFuICJJbnRlcm5hbCBzb2Z0LXN0YXJ0Cj4gdGlt
ZSIgY2hhcmFjdGVyaXN0aWMuIEZvciBhIHRhcmdldCBvdXRwdXQgdm9sdGFnZSBvZiAxLjBWIHRo
ZSBfdHlwaWNhbF8KPiB0aW1lIHRvIHJlYWNoIGF0IGxlYXN0IDkyJSBvZiB0aGUgb3V0cHV0LCBp
cyBnaXZlbiBhcyAyNjB1Uy4KPgo+IFRoYXQgbWVhbnMgdGhlIHRpbWUgaXMgZGVwZW5kZW50IG9u
IHRoZSB0YXJnZXQgdm9sdGFnZSAodXAgdG8gMS41ViBmb3IKPiB0aGUgdHlwZSkgYW5kIGFsc28g
dGhlIHJlc3Qgb2YgdGhlIGJvYXJkIGRlc2lnbi4KPgo+IFNvIGFkZCBhIHJlZ3VsYXRvci1lbmFi
bGUtcmFtcC1kZWxheSB0byBhbGwgcms4NjAtMi8tMyBub2RlcyB3ZSBoYXZlIGluCj4gbWFpbmxp
bmUgcmlnaHQgbm93LiBJJ3ZlIGNob3NlbiA1MDB1UyB0byBiZSBvbiB0aGUgc2FmZSBzaWRlLCBh
cwo+IDI2MHVTIGlzIHRoZSAidHlwaWNhbCIgdmFsdWUgZm9yIDEuMFYgYW5kIHNhZGx5IG5vIG1h
eCB2YWx1ZSBpcyBnaXZlbgo+IGluIHRoZSBkYXRhc2hlZXQuCgpTaW5jZSB0aGVzZSBhcmUgY2hh
cmFjdGVyaXN0aWNzIG9mIHRoZSBQTUlDLCBJIHdvbmRlciBpZiBpdCBtYWtlcyBtb3JlCnNlbnNl
IHRvIHB1dCB0aGVtIGluIHRoZSBkcml2ZXI/IEF0IGxlYXN0IHRoYXQncyB3aGF0IHdlJ3ZlIGRv
bmUgd2l0aCBhCnNpbWlsYXIgZml4IGZvciB0aGUgQVhQIFBNSUNzLgoKQ2hlbll1Cgo+Cj4gVGhp
cyBhZGRzIHRoZSBwcm9wZXJ0eSB0byBhbGwgcms4NjAwLCByazg2MDIgYW5kIHJrODYwMyBvY2N1
cmVuY2VzIHRoYXQKPiBhcmUgaW4gbWFpbmxpbmUgYXMgb2YgNi4xNi1yYzEuIFRoZXJlIGlzIGN1
cnJlbnRseSBubyByazg2MDEgdXNlZCBpbgo+IGFueSBpbi1rZXJuZWwgZGV2aWNldHJlZS4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
