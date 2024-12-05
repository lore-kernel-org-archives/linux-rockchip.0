Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 092E2E7716F
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Dec 2024 01:34:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AsEIQJCO5Oo1FHCO5JZqepBnK6Pf+cukrPRK7Q0Vhs0=; b=oGOzRLLOtG2T4Q
	bGBDBUUuIo+dVCNGw3i2Mq/qKX6PXIiyUhwuYDLc/gTWttsHOqGcDQ5bn1qe0pmlwF/NL4umi+u/9
	ys7VEQ6Qw0XgeGw1nj8fKAkdS7zTrgG6Abco7M/OQaeUY95YxzcC9j3Z5gEec9xMVQlaijcHc88qS
	Xj5z64LwI0Ex7keesOIiSQEPVcuizJzM8bs1Ti37JVhxA0CF9XCBcwMBWO8GkoYYK3LlKrmiRv+V4
	1AX5Q7PX33MQiyVU7BSnI2JVdzMSBzFaovSDJICGt20fIVOjNxs/pOy874uOh241tyAdhZCm5MHl9
	1VoT7rCuyEBWrfkpXyDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ0lI-0000000ETmC-0seY;
	Thu, 05 Dec 2024 01:34:36 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tJ0kG-0000000ETg7-0Gvy;
	Thu, 05 Dec 2024 01:33:33 +0000
Received: by mail-ed1-x531.google.com with SMTP id 4fb4d7f45d1cf-5d0cd67766aso359425a12.2;
        Wed, 04 Dec 2024 17:33:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733362409; x=1733967209; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EmY128hLLsZSkLyQnAO+inPpFdU2SYtNdTmH6knAX/U=;
        b=JtZd4LarQuMkaVfAeTF2ChyMmlWgeOKslwN2npfD9cQDrDnlbDmcljtm+zFQyP0Pv4
         uFyXkxmAB7ZdVB94cfYvDj8sZw68zULcyb/e8j5QflFrBlnkj/90t77ZyRRqnVyL/huN
         sJBoQMYpiM5PgP1H93yPXRT//lypuxVBF9w8Ms9TA3mU2moGsxvFWUjF7Om7rBx4Qz3j
         kqgMEUyL2rOXXLyHBbZdIj2IwKcM9iC8DBH/+ugW+RIREbGXaSMkRE087JjeXvz9b+yx
         LHezZUfxkAQY+GmhDWvMPNJF+O2J2Q9kDquOtZ6rSHQHNR7R5D7wHQJG8QNYt9yAfPoY
         4PRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733362409; x=1733967209;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EmY128hLLsZSkLyQnAO+inPpFdU2SYtNdTmH6knAX/U=;
        b=fieBr/znIral4FVLfnnVw8biDbLab1NVIEZpwVTe1+xnRRQ7ZvCQfODgHk/uq3ajUk
         U+EX4GW/+R6UhCh7WOq1V0l9cMtd+A9n6tMb37DZTmQnu4RtqZ0B71tmDY8pFjzU+fNx
         7mtrNPeHhhAPzLPh8P0OrATxv8Fo75tDitR/3voxCi6PeGKSfaLG4X0Ecc0PtNZJiuXA
         OCsKanKlab+4jnWDSYC4dOk17bWjUgkGiFESKU4dmCP8hh9xsIbqbuXFQfZHjWRFzCMV
         HS7I8rou+PUazYBclehFi1fcL9NW2Fb40EdUGtnrH3o/rRPQ9jqfqdf9//XOGtBjyicD
         WdGA==
X-Forwarded-Encrypted: i=1; AJvYcCUzidykUdvz7vPP0F0ZGIuNF1dVtkrK2iDT2+iJDiuuA3aWcZWzhvMSDyD6ydkJPEQGp9njIWLAV0TJ0E8BeaU=@lists.infradead.org, AJvYcCXOzGyh4i+olPNy7x4vnEfI/D7o5OViicTK4lxVnthJiE1t5caGR6IfakjlnAzG6YDspmKCWc44+bYaQ7VBRKmE@lists.infradead.org
X-Gm-Message-State: AOJu0YyiMPOpaf3rd0PJ3E9Q0py4A0xnv6GqdW865nv/xwwOicp0YG/3
	uDJuqJ9HFDlUeHIvihVPmaxqhR9GYrf1flYpsHPaLteysqhXwUMLvrSliroT/GdAmW6N6GwEJRU
	2NUS6oHE+Q+h/7vHngj/vPO0Ojq7ML+VV
X-Gm-Gg: ASbGnctTIop6ZUnCny1xpw+vRN5cnROTpsM1cqXzJQ16KaA5gDGTBs0/dV5FSiMkeNM
	csIRgoYgyH9tVmv1izqINj4KzlsuhH0Ob
X-Google-Smtp-Source: AGHT+IGu14tQuy4YA+pl+VRTeC/EhlZsBCpudHv1pXmMQhBMw4Kj54oDa0ew0+2Yf/3xN1DFUoO8tAA/uR4K5It/c00=
X-Received: by 2002:a05:6402:5106:b0:5d0:feec:e160 with SMTP id
 4fb4d7f45d1cf-5d10cb82702mr6569303a12.22.1733362409228; Wed, 04 Dec 2024
 17:33:29 -0800 (PST)
MIME-Version: 1.0
References: <20241202090408.201662-1-jakob.unterwurzacher@cherry.de>
 <63b3be80-cb6c-49e5-858f-70fd826140c5@cherry.de> <2578458.4XsnlVU6TS@diego>
In-Reply-To: <2578458.4XsnlVU6TS@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Wed, 4 Dec 2024 20:33:17 -0500
Message-ID: <CAMdYzYr9bULWou5gf43G-AywREWRCOhHmJ-fOQ1cEDWJSmGSdQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: increase gmac rx_delay to 0x11 on rk3399-puma
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Jakob Unterwurzacher <jakobunt@gmail.com>, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sasha Levin <sashal@kernel.org>, Iskander Amara <iskander.amara@theobroma-systems.com>, 
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>, 
	Vahe Grigoryan <vahe.grigoryan@theobroma-systems.com>, 
	Quentin Schulz <quentin.schulz@cherry.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241204_173332_104909_03DA0476 
X-CRM114-Status: GOOD (  37.19  )
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

T24gTW9uLCBEZWMgMiwgMjAyNCBhdCA0OjU44oCvQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBBbSBNb250YWcsIDIuIERlemVtYmVyIDIwMjQsIDEwOjUyOjA2
IENFVCBzY2hyaWViIFF1ZW50aW4gU2NodWx6Ogo+ID4gSGkgSmFrb2IsCj4gPgo+ID4gT24gMTIv
Mi8yNCAxMDowNCBBTSwgSmFrb2IgVW50ZXJ3dXJ6YWNoZXIgd3JvdGU6Cj4gPiA+IER1cmluZyBt
YXNzIG1hbnVmYWN0dXJpbmcsIHdlIG5vdGljZWQgdGhlIG1tY19yeF9jcmNfZXJyb3IgY291bnRl
ciwKPiA+ID4gYXMgcmVwb3J0ZWQgYnkgImV0aHRvb2wgLVMgZXRoMCB8IGdyZXAgbW1jX3J4X2Ny
Y19lcnJvciIgdG8gaW5jcmVhc2UKPiA+ID4gYWJvdmUgemVybyBkdXJpbmcgbnV0dGNwIHNwZWVk
dGVzdHMuCj4gPiA+Cj4gPiA+IEN5Y2xpbmcgdGhyb3VnaCB0aGUgcnhfZGVsYXkgcmFuZ2Ugb24g
dHdvIGJvYXJkcyBzaG93cyB0aGF0IGlzIGEgbGFyZ2UKPiA+ID4gImdvb2QiIHJlZ2lvbiBmcm9t
IDB4MTEgdG8gMHgzNSAoc2VlIGJlbG93IGZvciBkZXRhaWxzKS4KPiA+ID4KPiA+Cj4gPiBJcyB0
aGlzIG1pc3NpbmcgYSAidGhlcmUiIGFmdGVyIHRoYXQ/ICJ0aGF0IHRoZXJlIGlzIGEgbGFyZ2Ug
Z29vZCByZWdpb24iPwoKVGhhdCBsYXJnZSBnb29kIHJlZ2lvbiBpcyBhY3R1YWxseSBhbiBleWUg
dGhhdCB5b3UgYXJlIGFsaWduaW5nIHRvIHRoZQpjbG9jayBzaWduYWwuIFRoZSBib2FyZCBpcyBv
biB0aGUgdGFpbCBlbmQgb2YgdGhlIGV5ZSB3aGVyZSBpdCBpcwpiYXJlbHkgd29ya2luZy4gVGhp
cyB2YWx1ZSBpcyBzdXBwb3NlZCB0byBiZSB0dW5lZCB0byBiZSBpbiB0aGUgbWlkZGxlCm9mIHRo
YXQgZXllLiBZb3UgbWF5IHdhbnQgdG8gdGVzdCB0aGUgb2xkIGJvYXJkcyBhZ2FpbnN0IHRoZSBu
ZXcKYm9hcmRzLCBiZWNhdXNlIGlmIHRoZSBvcmlnaW5hbCBib2FyZCB3YXMgdHVuZWQgY29ycmVj
dGx5IHNvbWV0aGluZwptYXkgaGF2ZSBjaGFuZ2VkIGluIGhhcmR3YXJlIHRoYXQgY2F1c2VkIGEg
c2lnbmlmaWNhbnQgc2hpZnQgaW4gdGhlCmV5ZSBsb2NhdGlvbi4gRXhhbXBsZXMgb2YgdGhpcyB3
b3VsZCBiZSBjaGFuZ2luZyB0byBhIG5ldyBwaHksCmVuYWJsaW5nIHBoeSBkZWxheXMsIG9yIGNo
YW5nZXMgaW4gdGhlIHRyYWNlIGxlbmd0aC4gSWYgdGhpcyBpcyB0aGUKY2FzZSwgeW91J2xsIHBy
b2JhYmx5IHdhbnQgdG8gbWFrZSBhIG5ldyB2YXJpYW50IG9mIHRoZSBkdHMgdG8gY292ZXIKdGhp
cy4KCj4gPgo+ID4gPiBUaGlzIGNvbW1pdCBpbmNyZWFzZXMgcnhfZGVsYXkgdG8gMHgxMSwgd2hp
Y2ggaXMgdGhlIHNtYWxsZXN0Cj4gPiA+IHBvc3NpYmxlIGNoYW5nZSB0aGF0IGZpeGVzIHRoZSBp
c3N1ZSB3ZSBhcmUgc2VlaW5nIG9uIHRoZSBLU1o5MDMxIFBIWS4KPiA+ID4gVGhpcyBhbHNvIG1h
dGNoZXMgd2hhdCBtb3N0IG90aGVyIHJrMzM5OSBib2FyZHMgZG8uCj4gPiA+Cj4gPiA+IFRlc3Rz
IGZvciBQdW1hIFBDQkEgUy9OIFRUMDA2OTkwMzoKPiA+ID4KPiA+ID4gICAgIHJ4X2RlbGF5IG1t
Y19yeF9jcmNfZXJyb3IKPiA+ID4gICAgIC0tLS0tLS0tIC0tLS0tLS0tLS0tLS0tLS0KPiA+ID4g
ICAgIDB4MDkgKGRoY3AgYnJva2VuKQo+ID4gPiAgICAgMHgxMCA4OTcKPiA+ID4gICAgIDB4MTEg
MAo+ID4gPiAgICAgMHgyMCAwCj4gPiA+ICAgICAweDMwIDAKPiA+ID4gICAgIDB4MzUgMAo+ID4g
PiAgICAgMHgzYSA3NDUKPiA+ID4gICAgIDB4M2IgMTEzNzUKPiA+ID4gICAgIDB4M2MgMzY2ODAK
PiA+ID4gICAgIDB4NDAgKGRoY3AgYnJva2VuKQo+ID4gPiAgICAgMHg3ZiAoZGhjcCBicm9rZW4p
Cj4gPiA+Cj4gPiA+IFRlc3RzIGZvciBQdW1hIFBDQkEgUy9OIFRUMDE1NzczMzoKPiA+ID4KPiA+
ID4gICAgIHJ4X2RlbGF5IG1tY19yeF9jcmNfZXJyb3IKPiA+ID4gICAgIC0tLS0tLS0tIC0tLS0t
LS0tLS0tLS0tLS0KPiA+ID4gICAgIDB4MTAgNTkKPiA+ID4gICAgIDB4MTEgMAo+ID4gPiAgICAg
MHgzNSAwCj4gPiA+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IEpha29iIFVudGVyd3VyemFjaGVyIDxq
YWtvYi51bnRlcnd1cnphY2hlckBjaGVycnkuZGU+Cj4gPgo+ID4gVGhpcyB3b3VsZCBiZSBhIGNh
bmRpZGF0ZSBmb3IgYmFja3BvcnRpbmcgSSBiZWxpZXZlLgo+ID4KPiA+IFRoZXJlZm9yZSwgYQo+
Cj4gYWxzbyBwbGVhc2UgaW5jbHVkZSBhCj4KPiBGaXhlczogMmM2NmZjMzRlOTQ1ICgiYXJtNjQ6
IGR0czogcm9ja2NoaXA6IGFkZCBSSzMzOTktUTcgKFB1bWEpIFNvTSIpCj4KPiA+IENjOiA8c3Rh
YmxlQHZnZXIua2VybmVsLm9yZz4KPiA+Cj4gPiBoZXJlIHdvdWxkIGhhdmUgYmVlbiBuaWNlIChp
biB0aGUgY29tbWl0IGxvZyksIGMuZi4KPiA+IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0
bWwvbGF0ZXN0L3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVzLmh0bWwjc2VsZWN0LXRoZS1yZWNp
cGllbnRzLWZvci15b3VyLXBhdGNoCj4gPgo+ID4gPiAtLS0KPiA+ID4gICBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLmR0c2kgfCAyICstCj4gPiA+ICAgMSBmaWxlIGNo
YW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRlbGV0aW9uKC0pCj4gPiA+Cj4gPiA+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLmR0c2kgYi9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLmR0c2kKPiA+ID4gaW5kZXggOWVm
Y2RjZTBmNTkzLi4xM2QwYzUxMTA0NmIgMTAwNjQ0Cj4gPiA+IC0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszMzk5LXB1bWEuZHRzaQo+ID4gPiArKysgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1wdW1hLmR0c2kKPiA+ID4gQEAgLTE4MSw3ICsxODEsNyBA
QCAmZ21hYyB7Cj4gPiA+ICAgICBzbnBzLHJlc2V0LWFjdGl2ZS1sb3c7Cj4gPiA+ICAgICBzbnBz
LHJlc2V0LWRlbGF5cy11cyA9IDwwIDEwMDAwIDUwMDAwPjsKPiA+ID4gICAgIHR4X2RlbGF5ID0g
PDB4MTA+Owo+ID4gPiAtICAgcnhfZGVsYXkgPSA8MHgxMD47Cj4gPiA+ICsgICByeF9kZWxheSA9
IDwweDExPjsKPiA+Cj4gPiBXaGlsZSBhdCBpdCwgd2UgY291bGQgcmVvcmRlciB0aGlzIGFscGhh
YmV0aWNhbGx5IGFuZCBtb3ZlIHJ4X2RlbGF5Cj4KPiBJIHdvdWxkIGRpc2FncmVlLiBUaGlzIGlz
IGEgImZpeCIsIHNvIHNob3VsZCBpZGVhbGx5IG9ubHkgZG8gdGhlIG1pbmltYWwKPiBjaGFuZ2Vz
IHRvIG1ha2UgbGlmZSBvZiB0aGUgc3RhYmxlIHBlb3BsZSBlYXNpZXIuCj4KPiBEb2luZyB0aGlz
IG9uZS1saW5lIGNoYW5nZSBpcyB3YXkgZWFzaWVyIHRvIHVuZGVyc3RhbmQgdGhhbiBzdHVmZiBh
bHNvCj4gbW92aW5nIGFyb3VuZC4KPgo+IEhlaWtvCj4KPiA+IGJldHdlZW4gcGluY3RybC0wIGFu
ZCBzbnBzLHJlc2V0LWdwaW8/IGMuZi4KPiA+IGh0dHBzOi8vd3d3Lmtlcm5lbC5vcmcvZG9jL2h0
bWwvbGF0ZXN0L2RldmljZXRyZWUvYmluZGluZ3MvZHRzLWNvZGluZy1zdHlsZS5odG1sI29yZGVy
LW9mLXByb3BlcnRpZXMtaW4tZGV2aWNlLW5vZGUKPiA+IHJ4X2RlbGF5IGFuZCB0eF9kZWxheSBz
ZWVtIHRvIGJlIHZlbmRvci1zcGVjaWZpYyBidXQgd2l0aG91dCB0aGUgdmVuZG9yCj4gPiBwcmVm
aXgsIGJ1dCBzbyBpcyBzbnBzLHJlc2V0LWdwaW8gc28gdGhhdCBzaG91bGQgYmUgZmluZSB0byBy
ZW9yZGVyIHRoaXMKPiA+IHdheS4KPiA+Cj4gPiBDb25zaWRlcmluZyB3ZSBoYXZlIGFuIG9wdGlv
biBmb3IgS1NaOTAzMSBvbiBSSzM1ODggSmFndWFyIGFuZCBSSzM1ODgKPiA+IFRpZ2VyIGFuZCB0
aGUgInNhbWUiIE1BQyBJUCBpcyB1c2VkIGFuZCB0aGF0IHdlIHVzZSB0aGUgc2FtZSBUWEQgYW5k
IFJYRAo+ID4gZGVsYXkgdGhhbiBvbiBSSzMzOTkgUHVtYSByaWdodCBub3csIEkgZ3Vlc3Mgd2Ug
d291bGQgd2FudCB0byBjaGVjawo+ID4gdGhvc2UgZG9uJ3QgbmVlZCBhIGNoYW5nZSBhcyB3ZWxs
PyAoZnVubmlseSBlbm91Z2gsIGFsbCBSSzM1ODgtYmFzZWQKPiA+IGJvYXJkcyBpbiA2LjEyIGFj
dHVhbGx5IGhhdmUgMHgwMCBmb3IgcnhfZGVsYXkgYW5kIDB4NDMvMHg0NCBmb3IKPiA+IHR4X2Rl
bGF5LCBleGNlcHQgb3VycyB3aGljaCBhcmUgYXQgMHgxMCkuIE5vdCBhIGJsb2NrZXIgZm9yIHRo
aXMgcGF0Y2gKPiA+IHRob3VnaCwgc286Cj4gPgo+ID4gUmV2aWV3ZWQtYnk6IFF1ZW50aW4gU2No
dWx6IDxxdWVudGluLnNjaHVsekBjaGVycnkuZGU+Cj4gPgo+ID4gVGhhbmtzIQo+ID4gUXVlbnRp
bgo+ID4KPgo+Cj4KPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
