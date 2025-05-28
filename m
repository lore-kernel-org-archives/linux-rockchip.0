Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DFF39C54ED1
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 May 2025 02:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+eoe1whSwib6SrjP2JloUghCOd2qPAkkkNEAIDyIrqY=; b=LVqekQfdf3w0si
	gtVEwl7JVVTM+fDxi858CqvETOyqcTBfTQRIEPjCFsNWr2foZN1bDJf/vxMKrLnaOETHZrFp7AWrS
	CbN19pBmOLKpYNQljrEMfUtsZck8lxw4/xPKd1dGvVdtNgEPEqvSzx0du0IvZf8qA3QAdf9vDmKX5
	o3lMHtBFG/Y8sWHiSYvn6VNpZebkB2P1YKRFHEiXAKUopUTlVEvaWXBrz/bWwMlVF1lcGoo2zCFC+
	x5kMlEdbfnAXDHpTHUXBYsXMlCvfj5wdPueFuFv0mSf0/tDQRo3DJjHs9HtLoIUl/O5q0zmzFch3o
	CHa0UBMJS2BBpxPTCnZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK6ig-0000000C0Rg-1Kam;
	Wed, 28 May 2025 02:40:42 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uK6ie-0000000C0RG-1Vn6;
	Wed, 28 May 2025 02:40:41 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-3114416a5e1so2182824a91.3;
        Tue, 27 May 2025 19:40:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1748400039; x=1749004839; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4QVCrwFga7VCzG3Y0sAuFXlGZgCRKGevrmncrDPwjQQ=;
        b=Eo/kyk+obxMVswOcIkKnfrgRcyZSWItFyJN+FZjvYDigv4lpo6lQ52g8p9j1zOV0Sf
         Llq0Jv+QQitXGWQR/aI3BTUdbA2N/WgukP3oesk2ZC9idpxtHzCzDZqO0aLKHBYWh1l4
         p35YrhGc0QKpgQ6/oD7h1vdsqKRM8Dby8DTqCTz2vH8jlRCo4Jb5q0fcKg5K3vp0yxil
         QaRq8YdmPgUL5x4P1WIsHikLcV3zhga+s7uvtGiR2yYiy9iLg4JWaz6PzsIVN4r5jX3s
         k8/mg12hQICo6Fc20juRDjhP/TBKFze1D3WOFQZlI0calepVHievhR7bzd9nqgbg3Lvq
         ZB8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748400039; x=1749004839;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=4QVCrwFga7VCzG3Y0sAuFXlGZgCRKGevrmncrDPwjQQ=;
        b=hA4EXqTufNF2PguUPldzOd09xZeu5DB7xCqDdGXauwoWRaeFGMVwGo4gHj6V/XPtFY
         4SMOKzdDh5zq//d4xzNrUjf78Pk5uwkRSZB89gzWJuSwk2Et5Bpvtl9IMOcQFNFGynwV
         oVL5vaCVdD59hoHMza/ZoC2cruyRoQbKX5V3yZUAWyBv57BONynVEWUx7I9fhLnGUCpD
         sCq0bIMRVlN2BcfoeN15ySe4FsbLXcKbdVASduviGwSixDi2veRDPoef4dt4G6dHqP9j
         +o9cXaAJJnRQaasW5RZH5rWkNwrgMBTsXWnAkSiA75Stq5wwpGsK1AnuXCj/+ONaZN8f
         04JA==
X-Forwarded-Encrypted: i=1; AJvYcCUlsYnluW7Vvm2xN6OVLKcJOtRDbDWGa+GsWqpWW7m0kH5HZeWFQ8pqqdxGOyZgBWOnyk8RqACRtZQV4RTfjCE=@lists.infradead.org, AJvYcCWPqjgdQFcgmpY38Ukg/R6pPQ0mXb0S56M5qEoyo67228f9fHphE5DbKpsvLuH4Oar9R8AmwUjLyc+/MMbWuJX8@lists.infradead.org
X-Gm-Message-State: AOJu0YzDn3ribhCHpQ+wtElhLuf8lzMhJXWFcBHzRlCiz/7BkWl0e6hD
	aNWeelSl6eXMU0gzuduIpi9LMQJ7NzPz6RA/oKBCs/zqST3Cmd4LOTWpADpmuFcNg5LkPiLvFjh
	kA0zqNlK1OywslWkaeVkgSihx+4heDJU=
X-Gm-Gg: ASbGnct/CFy3QMeebLzjCq2DtwD/0TqeUq0QefjRA7AY3i2/WqZmQ/lEnNZqL0fbtWf
	Sjma+61EjXu34VhfZtDemOJ2ijwzWRTjExmgJHRWnBFfHEUdazReRVbhH1zUon/YMqyUrbQsJBO
	I4ntCBPFJ6VKg/R8WuFqS1h5w+P+g+bT11
X-Google-Smtp-Source: AGHT+IHRMZo43pEeAtLI78ACPEQsq81r4IdJpe7xwrqhoPqeVeSetdh3kIm1Bu4kbG/AqnuQglUbFQNYsL16HqS/f2o=
X-Received: by 2002:a17:90b:350f:b0:311:b3e7:fb3c with SMTP id
 98e67ed59e1d1-311e7470ad2mr865718a91.31.1748400038884; Tue, 27 May 2025
 19:40:38 -0700 (PDT)
MIME-Version: 1.0
References: <20250502150513.4169098-1-m.felsch@pengutronix.de> <20250502150513.4169098-6-m.felsch@pengutronix.de>
In-Reply-To: <20250502150513.4169098-6-m.felsch@pengutronix.de>
From: Adam Ford <aford173@gmail.com>
Date: Tue, 27 May 2025 21:40:27 -0500
X-Gm-Features: AX0GCFtDk6wBi6zhuoVYcuypl9PXHMAr0D_EC9JmX8PK8nOKUAJQE21kF0uG_U0
Message-ID: <CAHCN7x+KiZKwN6hHji38xqid8A-wLVSFgqrbx0jkj+KyjvuKhg@mail.gmail.com>
Subject: Re: [RFC PATCH 05/11] arm64: dts: imx8mp: drop gpcv2 vpu
 power-domains and clocks
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: nicolas.dufresne@collabora.com, benjamin.gaignard@collabora.com, 
	p.zabel@pengutronix.de, mchehab@kernel.org, shawnguo@kernel.org, 
	Sascha Hauer <s.hauer@pengutronix.de>, kernel@pengutronix.de, festevam@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, paulk@sys-base.io, 
	hverkuil@xs4all.nl, laurent.pinchart@ideasonboard.com, 
	sebastian.fricke@collabora.com, ming.qian@nxp.com, 
	linux-kernel@vger.kernel.org, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_194040_408019_D35B6846 
X-CRM114-Status: GOOD (  17.11  )
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

T24gRnJpLCBNYXkgMiwgMjAyNSBhdCAxMDoxMOKAr0FNIE1hcmNvIEZlbHNjaCA8bS5mZWxzY2hA
cGVuZ3V0cm9uaXguZGU+IHdyb3RlOgo+Cj4gVGhlIEdQQ3YyIEcxLCBHMiBhbmQgVkM4MDAwRSBw
b3dlci1kb21haW4gZG9uJ3QgbmVlZCB0byByZWZlcmVuY2UgdGhlCj4gVlBVTUlYIHBvd2VyLWRv
bWFpbiBub3IgdGhlaXIgbW9kdWxlIGNsb2NrcyBzaW5jZSB0aGUgcG93ZXIgYW5kIHJlc2V0Cj4g
aGFuZGxpbmcgaXMgZG9uZSBieSB0aGUgVlBVTUlYIGJsa2N0cmwgZHJpdmVyLgo+ClVzaW5nIGZs
dXN0ZXIsIEkgd2FudGVkIHRvIHRlc3QgdGhpcy4gIEkgZGlkbid0IHRlc3QgZmx1c3RlciBiZWZv
cmUgdGhpczoKCi4vZmx1c3Rlci5weSBydW4gLWQgR1N0cmVhbWVyLVZQOC1WNEwyU0wtR3N0MS4w
ClJhbiA1Ny82MSB0ZXN0cyBzdWNjZXNzZnVsbHkgICAgICAgICAgICAgICBpbiA3LjA1OSBzZWNz
CgouL2ZsdXN0ZXIucHkgcnVuIC1kR1N0cmVhbWVyLUguMjY0LVY0TDJTTC1Hc3QxLjAKUmFuIDEy
OS8xMzUgdGVzdHMgc3VjY2Vzc2Z1bGx5ICAgICAgICAgICAgICAgaW4gNDUuNzQxIHNlY3MKCkJv
dGggb2YgdGhlc2Ugb3V0cGVyZm9ybWVkIHRoZSB0ZXN0cyBJIHJhbiBhIHdoaWxlIGFnbyBvbiB0
aGUgaW14OG1tCnJ1bm5pbmcgYXQgNjAwTUh6LiAgSSBoYXZlbid0IHVwZGF0ZWQgbXkgY2xvY2tz
IHRvIHJ1biBhdCBvdmVyZHJpdmUKcmF0ZXMgeWV0LCBidXQgaWYgeW91IHdhbnQsIEkgY291bGQg
aGVscCB3aXRoIHRoYXQuICBFaXRoZXIgd2F5LCBJCnRoaW5rIHlvdSBjb3VsZCBwdXNoIHN1Ym1p
dCBwYXRjaCBhcyBhIHN0YW5kLWFsb25lIG9yIHdpdGggc29tZSBjbG9jawp1cGRhdGVzIGV2ZW4g
YmVmb3JlIHRoZSBhZGRpbmcgdGhlIGVuY29kZXIgc3R1ZmYuCgpUZXN0ZWQtYnk6IEFkYW0gRm9y
ZCA8YWZvcmQxNzNAZ21haWwuY29tPiAjaW14OG1wLWJlYWNvbi1raXQKCj4gU2lnbmVkLW9mZi1i
eTogTWFyY28gRmVsc2NoIDxtLmZlbHNjaEBwZW5ndXRyb25peC5kZT4KPiAtLS0KPiAgYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kgfCA3IC0tLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDcgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL2ZyZWVzY2Fs
ZS9pbXg4bXAuZHRzaQo+IGluZGV4IGUwZDNiOGNiYTIyMS4uY2Y5YjZjNDg3YmQ1IDEwMDY0NAo+
IC0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvZnJlZXNjYWxlL2lteDhtcC5kdHNpCj4gKysrIGIv
YXJjaC9hcm02NC9ib290L2R0cy9mcmVlc2NhbGUvaW14OG1wLmR0c2kKPiBAQCAtODc5LDI0ICs4
NzksMTcgQEAgcGdjX21lZGlhbWl4OiBwb3dlci1kb21haW5AMTAgewo+Cj4gICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgIHBnY192cHVfZzE6IHBvd2VyLWRvbWFpbkAxMSB7
Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI3Bvd2Vy
LWRvbWFpbi1jZWxscyA9IDwwPjsKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZwZ2NfdnB1bWl4PjsKPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8SU1YOE1QX1BPV0VS
X0RPTUFJTl9WUFVfRzE+Owo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGNsb2NrcyA9IDwmY2xrIElNWDhNUF9DTEtfVlBVX0cxX1JPT1Q+Owo+ICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICB9Owo+Cj4gICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHBnY192cHVfZzI6IHBvd2VyLWRvbWFpbkAxMiB7Cj4g
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI3Bvd2VyLWRv
bWFpbi1jZWxscyA9IDwwPjsKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZwZ2NfdnB1bWl4PjsKPiAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8SU1YOE1QX1BPV0VSX0RP
TUFJTl9WUFVfRzI+Owo+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIGNsb2NrcyA9IDwmY2xrIElNWDhNUF9DTEtfVlBVX0cyX1JPT1Q+Owo+IC0KPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgfTsKPgo+ICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICBwZ2NfdnB1X3ZjODAwMGU6IHBvd2VyLWRvbWFpbkAx
MyB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgI3Bv
d2VyLWRvbWFpbi1jZWxscyA9IDwwPjsKPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBwb3dlci1kb21haW5zID0gPCZwZ2NfdnB1bWl4PjsKPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWcgPSA8SU1YOE1QX1BP
V0VSX0RPTUFJTl9WUFVfVkM4MDAwRT47Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZjbGsgSU1YOE1QX0NMS19WUFVfVkM4S0VfUk9P
VD47Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIH07Cj4KPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcGdjX2hkbWltaXg6IHBvd2VyLWRv
bWFpbkAxNCB7Cj4gLS0KPiAyLjM5LjUKPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
