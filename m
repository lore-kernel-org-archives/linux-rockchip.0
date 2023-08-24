Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B3F7C3DA66
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Aug 2023 02:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zfvVBjzpbB8xKcwqmEQoHQ2L3NX+MeUBh4baRKavZ9s=; b=bOhyCxTzuIWUTz
	2pMWzMN58C6wP0xG5HhUGqzPun2XSp5ROhrZpQ9YbT99DG8B/eSX5zG5GQGNV27/HSpFnkcqbXCEn
	OCB7yl3Fbl1u4LRo0f8enHEk4W5SGU0NjekCbSijJ4pY0OUZKVhJlnAEw+IkoO0FBDdNzI3WbG5hs
	rQqcOY9tJUTvkiAMn5cEYGGS88eyDDh5ZYJNkFe5Wf08+M5HNS8281J2y/C8UoWp91BGVmiO4SGil
	XewdKsrUXDXuf9qC2BBdRu0MlBlaqZfnq/J7wgPQvzb0IR9f3tQun3GwY2jCDn2I94oJ6LUyU0YeP
	eVjUsEDR4sXPq8enG/KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ0M1-001zZo-0S;
	Thu, 24 Aug 2023 02:45:49 +0000
Received: from mail-ua1-x934.google.com ([2607:f8b0:4864:20::934])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZ0Ly-001zYb-0O
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Aug 2023 02:45:47 +0000
Received: by mail-ua1-x934.google.com with SMTP id a1e0cc1a2514c-79a46f02d45so2068270241.0
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Aug 2023 19:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692845135; x=1693449935;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SD4TQ7iFy4umItwAy6F4yebqR++5XFnrcQyodHwrQaQ=;
        b=W9CcXSSet115VxTXRZ3tM8/x884+5TCrfC9nMZ45lA1cQCVDSjPlnRcSrJciSJ3dPR
         lV7SDqDYCh2UJSjvxeCkplrgFt9IhqliDiamp9o3GLpkjmwUrrKpIsdFuCeLLX2yMav0
         180ORlqKAgw7be9fV9c/5AgCxetLn+tnE/LMg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692845135; x=1693449935;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SD4TQ7iFy4umItwAy6F4yebqR++5XFnrcQyodHwrQaQ=;
        b=fDMg7MMsRXf9uRwaw4e6HZgjy9Xz+R3L88NOoMizZNtJlwn62x3rWtfoAq9+ZneJXo
         m232LxhOzBm4aza4PSd6s8UFJ6RGXEgKiHOIaXWHONimC7XZJdV7Fo7088wUKxsqE9JH
         M2EHbNcRzP/jhUr44lDbU+03tyABnwaQTs3O6SVenB+24P4b9UcVYau15e4OAARq6Hii
         X2O+bYkjWzKXUdNiRIKAAY4Bve6I7ECQiMEDmG9GQDhmvf+QklCPLxFxRSNUrd+wApDL
         k+i3gPSFevcqDZFsK3uW77ipX2NLqAY720cAUOIFRDrkFyU7oaUs/LHwyN5TorIn6rYW
         Ip1A==
X-Gm-Message-State: AOJu0Yzj/qxP4ldTvXNDcWiuLt24ThJaLydp1Z6r0YvQu0vgWvVN37as
	2B49kHUaKUP+/VQljdRcIUT2okMJBZrMB0kR1dQFfg==
X-Google-Smtp-Source: AGHT+IFOkdQtxNMt4CsJCo2OZQTZvDWYBNUVlTl6BoCEgnO2Ko4EXUfqlGJE5mXI6L57yQi3OKMBseYeJsKxCR6QeZ0=
X-Received: by 2002:a05:6102:3655:b0:44e:906d:58b with SMTP id
 s21-20020a056102365500b0044e906d058bmr2166335vsu.14.1692845135099; Wed, 23
 Aug 2023 19:45:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230824013858.303105-1-marex@denx.de>
In-Reply-To: <20230824013858.303105-1-marex@denx.de>
From: Chen-Yu Tsai <wenst@chromium.org>
Date: Thu, 24 Aug 2023 10:45:23 +0800
Message-ID: <CAGXv+5HpmdNv40=vyHONsVq=Y868eDpy6iaLjoPFqhHvGqi1rA@mail.gmail.com>
Subject: Re: [PATCH] media: hantro: Check whether reset op is defined before use
To: Marek Vasut <marex@denx.de>
Cc: linux-media@vger.kernel.org, Adam Ford <aford173@gmail.com>, 
	Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
	Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, Mauro Carvalho Chehab <mchehab@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230823_194546_178550_286EFE65 
X-CRM114-Status: GOOD (  20.55  )
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

T24gVGh1LCBBdWcgMjQsIDIwMjMgYXQgOTozOeKAr0FNIE1hcmVrIFZhc3V0IDxtYXJleEBkZW54
LmRlPiB3cm90ZToKPgo+IFRoZSBpLk1YOE1NL04vUCBkb2VzIG5vdCBkZWZpbmUgdGhlIC5yZXNl
dCBvcCBzaW5jZSByZXNldCBvZiB0aGUgVlBVIGlzCj4gZG9uZSBieSBnZW5wZC4gQ2hlY2sgd2hl
dGhlciB0aGUgLnJlc2V0IG9wIGlzIGRlZmluZWQgYmVmb3JlIGNhbGxpbmcgaXQKPiB0byBhdm9p
ZCBOVUxMIHBvaW50ZXIgZGVyZWZlcmVuY2UuCj4KPiBOb3RlIHRoYXQgdGhlIEZpeGVzIHRhZyBp
cyBzZXQgdG8gdGhlIGNvbW1pdCB3aGljaCByZW1vdmVkIHRoZSByZXNldCBvcAo+IGZyb20gaS5N
WDhNIEhhbnRybyBHMiBpbXBsZW1lbnRhdGlvbiwgdGhpcyBpcyBiZWNhdXNlIGJlZm9yZSB0aGlz
IGNvbW1pdAo+IGFsbCB0aGUgaW1wbGVtZW50YXRpb25zIGRpZCBkZWZpbmUgdGhlIC5yZXNldCBv
cC4KPgo+IEZpeGVzOiA2OTcxZWZiNzBhYzMgKCJtZWRpYTogaGFudHJvOiBBbGxvdyBpLk1YOE1R
IEcxIGFuZCBHMiB0byBydW4gaW5kZXBlbmRlbnRseSIpCj4gU2lnbmVkLW9mZi1ieTogTWFyZWsg
VmFzdXQgPG1hcmV4QGRlbnguZGU+CgpIYWQgdGhlIHNhbWUgY2hhbmdlIGluIG15IGxvY2FsIHRy
ZWUsIHNvCgpSZXZpZXdlZC1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zdEBjaHJvbWl1bS5vcmc+ClRl
c3RlZC1ieTogQ2hlbi1ZdSBUc2FpIDx3ZW5zdEBjaHJvbWl1bS5vcmc+Cgo+IC0tLQo+IENjOiBB
ZGFtIEZvcmQgPGFmb3JkMTczQGdtYWlsLmNvbT4KPiBDYzogQmVuamFtaW4gR2FpZ25hcmQgPGJl
bmphbWluLmdhaWduYXJkQGNvbGxhYm9yYS5jb20+Cj4gQ2M6IEV6ZXF1aWVsIEdhcmNpYSA8ZXpl
cXVpZWxAdmFuZ3VhcmRpYXN1ci5jb20uYXI+Cj4gQ2M6IE1hdXJvIENhcnZhbGhvIENoZWhhYiA8
bWNoZWhhYkBrZXJuZWwub3JnPgo+IENjOiBQaGlsaXBwIFphYmVsIDxwLnphYmVsQHBlbmd1dHJv
bml4LmRlPgo+IENjOiBsaW51eC1tZWRpYUB2Z2VyLmtlcm5lbC5vcmcKPiBDYzogbGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IC0tLQo+ICBkcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyB8IDMgKystCj4gIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPgo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlh
L3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb19kcnYuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZv
cm0vdmVyaXNpbGljb24vaGFudHJvX2Rydi5jCj4gaW5kZXggNDIzZmM4NWQ3OWVlMy4uNTBlYzI0
Yzc1M2U5ZSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29u
L2hhbnRyb19kcnYuYwo+ICsrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24v
aGFudHJvX2Rydi5jCj4gQEAgLTEyNSw3ICsxMjUsOCBAQCB2b2lkIGhhbnRyb193YXRjaGRvZyhz
dHJ1Y3Qgd29ya19zdHJ1Y3QgKndvcmspCj4gICAgICAgICBjdHggPSB2NGwyX20ybV9nZXRfY3Vy
cl9wcml2KHZwdS0+bTJtX2Rldik7Cj4gICAgICAgICBpZiAoY3R4KSB7Cj4gICAgICAgICAgICAg
ICAgIHZwdV9lcnIoImZyYW1lIHByb2Nlc3NpbmcgdGltZWQgb3V0IVxuIik7Cj4gLSAgICAgICAg
ICAgICAgIGN0eC0+Y29kZWNfb3BzLT5yZXNldChjdHgpOwo+ICsgICAgICAgICAgICAgICBpZiAo
Y3R4LT5jb2RlY19vcHMtPnJlc2V0KQo+ICsgICAgICAgICAgICAgICAgICAgICAgIGN0eC0+Y29k
ZWNfb3BzLT5yZXNldChjdHgpOwo+ICAgICAgICAgICAgICAgICBoYW50cm9fam9iX2ZpbmlzaCh2
cHUsIGN0eCwgVkIyX0JVRl9TVEFURV9FUlJPUik7Cj4gICAgICAgICB9Cj4gIH0KPiAtLQo+IDIu
NDAuMQo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
Xwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
