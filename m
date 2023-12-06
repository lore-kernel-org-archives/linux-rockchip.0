Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6ACC6C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed,  6 Dec 2023 11:44:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+zUQu00DfdnZ4/ekdWheqTJIX6g9Jvb+qGZH1y4i78=; b=eC/XpNTdvMihzk
	0s9rqwiURJsr7EvHGw2IIq3bYyAwGLaQjXxv0QEdB6gUJh4FZmJvofzHVKRWa1/D7pKyfGqa5cYm7
	Zd2i2nKBDpddjQlpA6HTet3l1Ged8WTWgdBu6/Mc4UJOw51zolR/ynV18PV31VunombsSlOZ9JZyR
	GHxBy8OzQ8vBvwLcxbEOxL0xb8v/GruF3e30LrmzznnbNUS1Rz7CGbbt36KV6iGlV1RPPCKUjLkCW
	3N+d1CacaXpWvQ/XiZ6ytvQxffXwjabsMDU+KUev2pSLMCeqyOLMNpZcB/UOzNOzDuLuRn90uAZAE
	s4nkyKKNb15luXgpRqhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rAqJr-00A3Ij-0K;
	Wed, 06 Dec 2023 11:43:59 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rAqJo-00A3GT-15;
	Wed, 06 Dec 2023 11:43:57 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-5c69ecda229so1911721a12.2;
        Wed, 06 Dec 2023 03:43:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701863035; x=1702467835; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FskP6Tcyso/BvrhInHyE19EqzBIb+M3DVcP4qDTnmbo=;
        b=hgHMOLnUTOrN1lFfXtZN0dih7ljqRgNjvlo8Zn4RFA9GwPY3zuwZZWoZYM2XlBXb5G
         woqksBQrkhui+c7WUpJJzwCwaEVY5V4iYUx8pg42qkXjmKXk6xopcF5k4bxEx/OJs8v3
         1NwnMI8YMn/iF4yE4kZtpunCUp6rrG89GmDiFgBY+vSNAROfV+T7OMBi4EgD2dmEg9YZ
         0cVyWLu1ME4huVEYdhFzI49+uSrlt+nknXbveZZVNHebr/fHKRolp4wzH59y2NuygwL6
         I7st76Cdq1YyMxvcG2YB3MwIreGo5CvGtplGsEjaIKSFsyKjicQ/j0DgwJBEw3qPBY0z
         5UJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701863035; x=1702467835;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FskP6Tcyso/BvrhInHyE19EqzBIb+M3DVcP4qDTnmbo=;
        b=ckgXFJquB0AirymRMxz9bIUcsVfUBRqA6Nb5K9lusp27gy2+K7iv5Zhu4KMv100VsF
         csyxHth01/raWobec+7Nj7EiYMTgAF9Kj6jfwcW2p9SrpyU03EQF1VB1GEjNpV2yV1tX
         5ty0SWFJTm6SMU+hVMdCmY7PmLXcOMMnCus1C/K/fdAqBKw5E3B/UCDi+1QdAr7YzbXn
         5WGzJRI/oU8MQnA+Qk+g5KAaqN+gUMh31su04J+RTWFOYSvuymw9SxFiHqThC1XBmXmT
         h7ZV33A9ykEnfHhX0MUGHmbxvh93g3s0MGJfQTAwxmIrsAJinkR5EmA/pY48k0llN2E0
         Xt1g==
X-Gm-Message-State: AOJu0YzQ5hloCCadBvo/vnmvVSP90EGA+hXH6AvU/S9zNXf9Lwpuf5rr
	3kCwRVM/++gp7AbDd6OEeT9qMMatkShXRp2/MxBhvZWZKuc=
X-Google-Smtp-Source: AGHT+IH89gC21/pnQQIk9gERyRAG/HzH0EvNaTRDDhniP3jL3wxZJeZNXYO6du/iRzWS/NSLwXen7cT7N0NlZh/5vwU=
X-Received: by 2002:a17:90a:18f:b0:286:6cc1:5fb3 with SMTP id
 15-20020a17090a018f00b002866cc15fb3mr554714pjc.54.1701863034627; Wed, 06 Dec
 2023 03:43:54 -0800 (PST)
MIME-Version: 1.0
References: <20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com>
In-Reply-To: <20231206-rkisp-irq-fix-v2-0-6ba4185eeb1f@ideasonboard.com>
From: Adam Ford <aford173@gmail.com>
Date: Wed, 6 Dec 2023 05:43:43 -0600
Message-ID: <CAHCN7xLgOVPMhFWty8Yofsy4F-rFgTT=PuzD4UrA3kOsPQaYUQ@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] media: rkisp1: Fix IRQ related issues
To: Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>
Cc: Dafna Hirschfeld <dafna@fastmail.com>, 
	Laurent Pinchart <laurent.pinchart@ideasonboard.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Paul Elder <paul.elder@ideasonboard.com>, 
	Alexander Stein <alexander.stein@ew.tq-group.com>, kieran.bingham@ideasonboard.com, 
	umang.jain@ideasonboard.com, linux-media@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231206_034356_375543_07E77A10 
X-CRM114-Status: GOOD (  15.46  )
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

T24gV2VkLCBEZWMgNiwgMjAyMyBhdCA0OjEy4oCvQU0gVG9taSBWYWxrZWluZW4KPHRvbWkudmFs
a2VpbmVuQGlkZWFzb25ib2FyZC5jb20+IHdyb3RlOgo+Cj4gVGhlc2UgZml4IGEgZmV3IElSUSBy
ZWxhdGVkIGlzc3VlcyBJIG5vdGljZWQgd2hlbiB0ZXN0aW5nIGkuTVg4TVAuIFRoZXNlCj4gYXJl
IGJhc2VkIG9uIFBhdWwncyByZWNlbnRseSBzZW50ICJbUEFUQ0ggdjQgMDAvMTFdIG1lZGlhOiBy
a2lzcDE6IEFkZAo+IHN1cHBvcnQgZm9yIGkuTVg4TVAiIHNlcmllcywgYnV0IGNvdWxkIGFsc28g
YmUgcmViYXNlZCBvbiB0b3Agb2YKPiBtYWlubGluZSBpZiBuZWVkZWQuCj4KSSBhcHBsaWVkIHRo
ZSB3aG9sZSBzZXJpZXMgb24gdG9wIG9mIHlvdXIgRE1BIHBhdGNoIGFuZCB0aGUgc2VyaWVzCmZy
b20gUGF1bCBwb3J0aW5nIHRoZSBya2lzcDEgdG8gdGhlIGlteDhtcCBhbmQgcmFuIHRoZSBjYW1l
cmEgZm9yIDE1Cm1pbnV0ZXMgc3RyZWFtaW5nIHRvIG15IG1vbml0b3IuICBJIGRpZG4ndCBzZWUg
YW55IGdsaXRjaGVzIG9yIHZpZGVvCmRpc3RvcnRpb24gYXQgNjQweDQ4MC4KCkZvciB0aGUgc2Vy
aWVzLi4uCgpUZXN0ZWQtYnk6IEFkYW0gRm9yZCA8YWZvcmQxNzNAZ21haWwuY29tPiAgI2lteDht
cC1iZWFjb24KCj4gU2lnbmVkLW9mZi1ieTogVG9taSBWYWxrZWluZW4gPHRvbWkudmFsa2VpbmVu
QGlkZWFzb25ib2FyZC5jb20+Cj4gLS0tCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIE5ldyBwYXRjaDog
Im1lZGlhOiBya2lzcDE6IERyb3AgSVJRRl9TSEFSRUQiCj4gLSBVcGRhdGUgIm1lZGlhOiBya2lz
cDE6IEZpeCBJUlEgaGFuZGxlciByZXR1cm4gdmFsdWVzIiBhY2NvcmRpbmcgdG8KPiAgIExhdXJl
bnQncyBjb21tZW50Lgo+IC0gRHJvcCAibWVkaWE6IHJraXNwMTogRml4IElSUSBoYW5kbGluZyBk
dWUgdG8gc2hhcmVkIGludGVycnVwdHMiCj4gLSBVcGRhdGUgZGVzY3JpcHRpb24gZm9yICJtZWRp
YTogcmtpc3AxOiBGaXggSVJRIGRpc2FibGUgcmFjZSBpc3N1ZSIKPiAtIExpbmsgdG8gdjE6IGh0
dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyMzEyMDUtcmtpc3AtaXJxLWZpeC12MS0wLWY0MDQ1
Yzc0YmE0NUBpZGVhc29uYm9hcmQuY29tCj4KPiAtLS0KPiBUb21pIFZhbGtlaW5lbiAoNCk6Cj4g
ICAgICAgbWVkaWE6IHJraXNwMTogRHJvcCBJUlFGX1NIQVJFRAo+ICAgICAgIG1lZGlhOiBya2lz
cDE6IEZpeCBJUlEgaGFuZGxlciByZXR1cm4gdmFsdWVzCj4gICAgICAgbWVkaWE6IHJraXNwMTog
U3RvcmUgSVJRIGxpbmVzCj4gICAgICAgbWVkaWE6IHJraXNwMTogRml4IElSUSBkaXNhYmxlIHJh
Y2UgaXNzdWUKPgo+ICAuLi4vbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtpc3AxL3JraXNwMS1j
b21tb24uaCB8IDExICsrKysrKy0KPiAgLi4uL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNw
MS9ya2lzcDEtY3NpLmMgICAgfCAxNCArKysrKysrLQo+ICAuLi4vbWVkaWEvcGxhdGZvcm0vcm9j
a2NoaXAvcmtpc3AxL3JraXNwMS1kZXYuYyAgICB8IDM3ICsrKysrKysrKysrKysrKystLS0tLS0K
PiAgLi4uL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JraXNwMS9ya2lzcDEtaXNwLmMgICAgfCAy
MCArKysrKysrKysrLS0KPiAgNCBmaWxlcyBjaGFuZ2VkLCA2NyBpbnNlcnRpb25zKCspLCAxNSBk
ZWxldGlvbnMoLSkKPiAtLS0KPiBiYXNlLWNvbW1pdDogZGQxOWY4OWI5MTVjMjAzZDQ5ZTNiMjNj
YTAyNDQ2ZDRmYjA1ZDk1NQo+IGNoYW5nZS1pZDogMjAyMzEyMDUtcmtpc3AtaXJxLWZpeC1lMTIz
YThhNjczMmYKPgo+IEJlc3QgcmVnYXJkcywKPiAtLQo+IFRvbWkgVmFsa2VpbmVuIDx0b21pLnZh
bGtlaW5lbkBpZGVhc29uYm9hcmQuY29tPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
