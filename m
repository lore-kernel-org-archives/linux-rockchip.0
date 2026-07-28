Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 843C4C53219
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Jul 2026 02:14:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yUsEQNv2F7Qbm61HVSNSUaW43o6lNy8vFmh+aWD/zKM=; b=KA4n2qUM6tHnRJ
	X8yvLpCGULgA3bcTGI4u2IQnQjwqIl0focws6tkeczNdCk9/New2HGwdUStf7UGqlC/29qEjklYp+
	BHH3NxTcSkuGcUoT1aehXnBlGr6z6gLqYXKtUaU6bdGjZe8qhR1luWbLyrSGhXt1Kp5il0fRuXkji
	dIp5Ex6YimuRMBC7cmNu2EKfOeiQ664SyG5kOYwpeznomBgcDnvGdS6vZqD3MG3yDFFVP942/dGFb
	q7CQ6uyDjP53SMBCnp1YUrTyZJ+/OkFv4PB6f7X9CI4m6BHY4W9WoMzcum7ocNPnBumT7lmaXhdzf
	Hjok4ainoVQOwKYQX0qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woXL0-00000004F81-3Itx;
	Tue, 28 Jul 2026 02:14:34 +0000
Received: from mail-yw1-x112d.google.com ([2607:f8b0:4864:20::112d])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woXKx-00000004F7R-3AZN
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Jul 2026 02:14:33 +0000
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-81f3b227a4aso42724107b3.1
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 19:14:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1785204870; cv=none;
        d=google.com; s=arc-20260327;
        b=lgJzCy4512NVZPTKyg+z1t81/4Oor8hsNdIByeVLZwL51CBAP4r9wAcQnVULM0N+LR
         yk62Fi8uUc0be7wqRh/M+9zTShCrktgIKLqX4rL5TIIguGSJB5RLhrxfkZ2Jt+hcT+/y
         B20s3D1Jd3fARZWlv4SLPqubdqkCfM1G46j8sNq0+6HfDlOaWYwBDPmyWKWnQzNT2Eug
         gC6yaUzmw9mIISRZxv5QmnU6xuG9SKSOklHN4CD0jpAj1tzW0UeWCvAQzgfGpSP93Lf4
         VaK0bGA00znbTeSzTD3Efhg5IZ65Y8/6mb7S1BKe1uDyzqaTZtCA0QVy9CaWwLi5r7fn
         CrgA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=s66f5dxTpDYOfgWlIibSDtZoO/MusvgYxmCX/XIHZDg=;
        fh=CfUCGi2E3MrlOak74humr/YyjcqXoca/txQ1RU7dHx8=;
        b=KcK9emJJzPtLkyFFheL2E/G0bdPVoZY33I0/QQH/+kvH26jaG261uIdmIqJsH8qAdX
         UB6hp4yomSb+NTRlFCLTBvEpcpLS1tcrLJuzeAhuT3U3XzxaG8mJfdY6O4AVN/JFA3vk
         VyeX7NpOhyLtcK1qnRiKFJR3UeRA3+kLZukXEzU1MVhdsR9ITvuPBcme5lmobgVwwucX
         Pkdx+a7zPrMGlSDMmy9YcESAo0rAkObBsJ2+sKOPPRYrLAABjtiYdNuK8wW0zwC/v7SR
         QCVFSjz547UHYZHoaM+i2dlpMrBWR5JLPlbMCKXbfZ7V0SMx8FUU9xU6SnZQeMpiFFcQ
         aeUQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785204870; x=1785809670; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=s66f5dxTpDYOfgWlIibSDtZoO/MusvgYxmCX/XIHZDg=;
        b=I2OvJJIFEkRkqrjEdpk+vpW9gc19/VpfgkIm0uy3uY7udamxZi9MhwKYEBXqAyhuE/
         TiVngWmxM0Hz8/AzoFhvddXHD91T4/4anYnzhIrsfE57Ma1Jf+YY2ZC2HPrf9mF+323w
         5pSCgZM5N9eMu+X4Jh1bweBI2X9Xav0rS5cn/YHg96kwRCh2hXu4coOZ9lgrG8vfNZ6c
         1TFDReqmT9C4d+84YmcGm9H3nkCeiKHdnhdAvJ7/wEeRyT5bw9iuZx74DTpZwbkq2gVv
         1QV3xTz3K0n2KuXBILNimQYV7Ocb8Gm3Z/2siEXkPGdD8T7Czuk2QoUX3LffIQ27i7p8
         6uBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785204870; x=1785809670;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=s66f5dxTpDYOfgWlIibSDtZoO/MusvgYxmCX/XIHZDg=;
        b=NzYEuCWCFicUV6bZCgBTPyOucojBvWtM2opve+ZMpIlO8P/idBIYDj49s0PvNqbwSQ
         iG+9fYXlD32geujJfAwGLzxTs2pwwsDHmkULDFnnoVjbIDlAT8QncafacaKaJmJ6GaBf
         z7jg0nsbQ7ZSgRS6dVlW6jW0RqXW+9U8oBiloFKVBlkfr93tFyZFSHuC164/PR5D4Mnp
         +JIZ/na6o7dNdLF1omtNVQjuA+COrO5iOxLx7y4yw8edM6M3azQhVfmwtongYC1iVzQs
         atQmAYP73njFipmUkRaQ5RWMX6dHdOnVmREn1/IQSBUf2UwG0f0KZZZXrHXwqk5Lq+d9
         fLEw==
X-Forwarded-Encrypted: i=1; AHgh+RrtI/G+i1lECODN1Jg5PCYbyfviKsKdz0WUucWhCz5pBw+2VOG2WK3G5/vQYIgh2tT+/lOqH90q21hmbgjvSg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzUXL7TzPG1lhzFTdsGJHH+AcCgbstP/LsWtat8nFA5TXXO0JQG
	EU/fgKeAHkwH+QPoB8KRhnr18S39LG2FegVgVVnK2pKsLjE4E8lwHZ9P0LQnUZwQ7vNHQcIQND0
	KYK0/qLPzLUnqd7UuhE/mJD0cO200lLs=
X-Gm-Gg: AR+sD10dUCPpINs5nVXQb+gQkHxw4JZiqkLVbq/SoJ5h82l4GacD868bPc1p446AJMc
	0tgo+jYOmyunR8DnNXlG1/cHvILyr5JNT96NRTDFjpR3UfcuT+03QPUDleIIjJmJcH1rgnyr8zM
	8fJ+mAxVhfE3S+oEzIP551c7tJ+TTqfJxduCSDPjTl1xSCNXBfQcPC4lXZ/Rq5tpMZRjmyPlURM
	tM2SqLhJBBHEBasV6MeROOF8Ei6JhS7qDivwGce2qjKGtKKxS7jCtC/AMesfQ==
X-Received: by 2002:a05:690c:6804:b0:80c:f6bb:565d with SMTP id
 00721157ae682-81f9921c3bcmr1821787b3.19.1785204870332; Mon, 27 Jul 2026
 19:14:30 -0700 (PDT)
MIME-Version: 1.0
References: <20260727205602.1188008-1-gahing@gahingwoo.com>
In-Reply-To: <20260727205602.1188008-1-gahing@gahingwoo.com>
From: Gavin Gao <attinagaoxu@gmail.com>
Date: Tue, 28 Jul 2026 10:14:17 +0800
X-Gm-Features: AUfX_mwPthmXiJzhXc55bA8wYRZBnevQc-idOB6263_HLyZuhE8x_4eJln52qSQ
Message-ID: <CAK2JjQU28+Q5ZU1atm09tuMp=P0gd63L7xY-8dX3G5weS9Heeg@mail.gmail.com>
Subject: Re: [PATCH net-next v2] net: phy: motorcomm: enable the reference
 clock for YT8521 and YT8531
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Frank.Sae@motor-comm.com, andrew@lunn.ch, hkallweit1@gmail.com, 
	linux@armlinux.org.uk, davem@davemloft.net, edumazet@google.com, 
	kuba@kernel.org, pabeni@redhat.com, netdev@vger.kernel.org, 
	linux-kernel@vger.kernel.org, maxime.chevallier@bootlin.com, heiko@sntech.de, 
	linux-rockchip@lists.infradead.org, alchark@gmail.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_191431_806375_8E054DB6 
X-CRM114-Status: GOOD (  27.78  )
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

SGkgSmlheGluZywKClRoYW5rcyBmb3IgZm9sZGluZyBpbiBZVDg1MjEgc3VwcG9ydC4KCkkgdGVz
dGVkIHRoaXMgb24gYSBQaWNvQ09NIFJLMzU3NiBBQ1AgYm9hcmQgd2l0aCBhIE1vdG9yY29tbSBZ
VDg1MjEgUEhZLgpUaGUgMjUgTUh6IHJlZmVyZW5jZSBjbG9jayBmcm9tIFJLMzU3NiBSRUZDTEtP
MjVNX0dNQUN4X09VVCBzdGF5cyBhY3RpdmUsCmFuZCBFdGhlcm5ldCB3b3Jrcy4KClRlc3RlZC1i
eTogR2F2aW4gR2FvIDxhdHRpbmFnYW94dUBnbWFpbC5jb20+CgpUaGFua3MsCkdhdmluCgpPbiBU
dWUsIEp1bCAyOCwgMjAyNiBhdCA1OjA04oCvQU0gSmlheGluZyBIdSA8Z2FoaW5nQGdhaGluZ3dv
by5jb20+IHdyb3RlOgo+Cj4gVGhlc2UgUEhZcyBuZWVkIGEgMjUgTUh6IHJlZmVyZW5jZS4gT24g
Ym9hcmRzIHdpdGhvdXQgYSBsb2NhbCBjcnlzdGFsCj4gaXQgaXMgZmVkIGZyb20gdGhlIFNvQyBh
bmQgZGVzY3JpYmVkIGFzIGEgY2xvY2sgb24gdGhlIFBIWSBub2RlLiBHZXQgYW5kCj4gZW5hYmxl
IGl0IGluIHByb2JlLCB2aWEgYSBzbWFsbCBoZWxwZXIgY2FsbGVkIGZyb20gYm90aCB5dDg1MjFf
cHJvYmUgYW5kCj4geXQ4NTMxX3Byb2JlLCBzbyB0aGUgUEhZIGlzIGNsb2NrZWQgYmVmb3JlIGl0
cyByZWdpc3RlcnMgYXJlIGFjY2Vzc2VkLgo+IFRoZSBjbG9jayBpcyBvcHRpb25hbCwgc28gY3J5
c3RhbC1jbG9ja2VkIGJvYXJkcyBhcmUgdW5hZmZlY3RlZC4KPgo+IFJldmlld2VkLWJ5OiBBbmRy
ZXcgTHVubiA8YW5kcmV3QGx1bm4uY2g+Cj4gU2lnbmVkLW9mZi1ieTogSmlheGluZyBIdSA8Z2Fo
aW5nQGdhaGluZ3dvby5jb20+Cj4gLS0tCj4KPiBDaGFuZ2VzIGluIHYyOgo+IC0gRmFjdG9yIHRo
ZSBjbG9jayBlbmFibGUgaW50byB5dHBoeV9nZXRfYW5kX2VuYWJsZV9yZWZjbGsoKSBhbmQgY2Fs
bCBpdAo+ICAgZnJvbSB5dDg1MjFfcHJvYmUgYXMgd2VsbCwgc28gdGhlIFlUODUyMSBpcyBjb3Zl
cmVkIHRvbywgbm90IG9ubHkgdGhlCj4gICBZVDg1MzEuIHYxIG9ubHkgdG91Y2hlZCB5dDg1MzFf
cHJvYmUuCj4gLSBDYXJyaWVkIEFuZHJldydzIFJldmlld2VkLWJ5OyB0aGUgZW5hYmxlIGl0c2Vs
ZiBpcyB1bmNoYW5nZWQsIG9ubHkKPiAgIG1vdmVkIGludG8gdGhlIGhlbHBlci4KPgo+IHYxOiBo
dHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyNjA3MTkwMzQ1NTUuMzYyMzAwMy0xLWdhaGlu
Z0BnYWhpbmd3b28uY29tLwo+Cj4gQSBzZWNvbmQgY3J5c3RhbC1sZXNzIFJLMzU3NiBib2FyZCB3
aXRoIGEgWVQ4NTIxIG5lZWRzIHRoZSBzYW1lIGhhbmRsaW5nCj4gKHNlZSB0aGUgUkszNTc2IEdN
QUMgMjVNIHJlZm91dCB0aHJlYWQgWzFdKSwgc28gdjIgY292ZXJzIGJvdGggUEhZcy4gVGhpcwo+
IHN1cGVyc2VkZXMgdGhlIHdpdGhkcmF3biBkd21hYy1yayBNQUMtc2lkZSBzZXJpZXMuIFRoZSBE
VFMgdGhhdCBjb25zdW1lcwo+IHRoZSBjbG9jayAocmszNTc2LWFybXNvbS1jbTUpIGdvZXMgdG8g
dGhlIHJvY2tjaGlwIHRyZWUgc2VwYXJhdGVseTsgdGhlCj4gY2xvY2sgaXMgb3B0aW9uYWwgc28g
dGhpcyBwYXRjaCBzdGFuZHMgYWxvbmUuIFRoZSBZVDg1MzEgcGF0aCBpcyB0ZXN0ZWQKPiBvbiBh
biBBcm1Tb00gQ001LUlPIChsaW5rcyBhdCAxMDAwIE1iaXQvcykuCj4KPiBbMV0gaHR0cHM6Ly9s
b3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYwNzI3MDIxMDQ4LjMzNzU0NDQtMS1hdHRpbmFnYW94dUBn
bWFpbC5jb20vCj4KPiAgZHJpdmVycy9uZXQvcGh5L21vdG9yY29tbS5jIHwgMzMgKysrKysrKysr
KysrKysrKysrKysrKysrKysrKysrKysrCj4gIDEgZmlsZSBjaGFuZ2VkLCAzMyBpbnNlcnRpb25z
KCspCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9uZXQvcGh5L21vdG9yY29tbS5jIGIvZHJpdmVy
cy9uZXQvcGh5L21vdG9yY29tbS5jCj4gaW5kZXggNzA4NDkxYmMxLi4zMmViNWNlOTMgMTAwNjQ0
Cj4gLS0tIGEvZHJpdmVycy9uZXQvcGh5L21vdG9yY29tbS5jCj4gKysrIGIvZHJpdmVycy9uZXQv
cGh5L21vdG9yY29tbS5jCj4gQEAgLTYsNiArNiw3IEBACj4gICAqIEF1dGhvcjogRnJhbmsgPEZy
YW5rLlNhZUBtb3Rvci1jb21tLmNvbT4KPiAgICovCj4KPiArI2luY2x1ZGUgPGxpbnV4L2Nsay5o
Pgo+ICAjaW5jbHVkZSA8bGludXgvZXRoZXJkZXZpY2UuaD4KPiAgI2luY2x1ZGUgPGxpbnV4L2tl
cm5lbC5oPgo+ICAjaW5jbHVkZSA8bGludXgvbW9kdWxlLmg+Cj4gQEAgLTEwNDMsNiArMTA0NCwy
OSBAQCBzdGF0aWMgaW50IHl0ODUzMV9zZXRfZHMoc3RydWN0IHBoeV9kZXZpY2UgKnBoeWRldikK
PiAgICAgICAgIHJldHVybiAwOwo+ICB9Cj4KPiArLyoqCj4gKyAqIHl0cGh5X2dldF9hbmRfZW5h
YmxlX3JlZmNsaygpIC0gZ2V0IGFuZCBlbmFibGUgdGhlIFBIWSByZWZlcmVuY2UgY2xvY2sKPiAr
ICogQHBoeWRldjogYSBwb2ludGVyIHRvIGEgJnN0cnVjdCBwaHlfZGV2aWNlCj4gKyAqCj4gKyAq
IEEgY3J5c3RhbC1sZXNzIFlUODUyMS9ZVDg1MzEgdGFrZXMgaXRzIDI1IE1IeiByZWZlcmVuY2Ug
ZnJvbSB0aGUgU29DLiBXaGVuCj4gKyAqIHRoYXQgcmVmZXJlbmNlIGlzIGRlc2NyaWJlZCBhcyBh
IGNsb2NrLCBlbmFibGUgaXQgZm9yIHRoZSBsaWZlIG9mIHRoZQo+ICsgKiBkZXZpY2UuIEl0IGlz
IG9wdGlvbmFsLCBzbyBjcnlzdGFsLWNsb2NrZWQgYm9hcmRzIGFyZSB1bmFmZmVjdGVkLgo+ICsg
Kgo+ICsgKiByZXR1cm5zIDAgb3IgbmVnYXRpdmUgZXJybm8gY29kZQo+ICsgKi8KPiArc3RhdGlj
IGludCB5dHBoeV9nZXRfYW5kX2VuYWJsZV9yZWZjbGsoc3RydWN0IHBoeV9kZXZpY2UgKnBoeWRl
dikKPiArewo+ICsgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBoeWRldi0+bWRpby5kZXY7
Cj4gKyAgICAgICBzdHJ1Y3QgY2xrICpjbGs7Cj4gKwo+ICsgICAgICAgY2xrID0gZGV2bV9jbGtf
Z2V0X29wdGlvbmFsX2VuYWJsZWQoZGV2LCBOVUxMKTsKPiArICAgICAgIGlmIChJU19FUlIoY2xr
KSkKPiArICAgICAgICAgICAgICAgcmV0dXJuIGRldl9lcnJfcHJvYmUoZGV2LCBQVFJfRVJSKGNs
ayksCj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJmYWlsZWQgdG8gZ2V0
IGFuZCBlbmFibGUgdGhlIHJlZmVyZW5jZSBjbG9ja1xuIik7Cj4gKwo+ICsgICAgICAgcmV0dXJu
IDA7Cj4gK30KPiArCj4gIC8qKgo+ICAgKiB5dDg1MjFfcHJvYmUoKSAtIHJlYWQgY2hpcCBjb25m
aWcgdGhlbiBzZXQgc3VpdGFibGUgcG9sbGluZ19tb2RlCj4gICAqIEBwaHlkZXY6IGEgcG9pbnRl
ciB0byBhICZzdHJ1Y3QgcGh5X2RldmljZQo+IEBAIC0xMDY0LDYgKzEwODgsMTAgQEAgc3RhdGlj
IGludCB5dDg1MjFfcHJvYmUoc3RydWN0IHBoeV9kZXZpY2UgKnBoeWRldikKPgo+ICAgICAgICAg
cGh5ZGV2LT5wcml2ID0gcHJpdjsKPgo+ICsgICAgICAgcmV0ID0geXRwaHlfZ2V0X2FuZF9lbmFi
bGVfcmVmY2xrKHBoeWRldik7Cj4gKyAgICAgICBpZiAocmV0KQo+ICsgICAgICAgICAgICAgICBy
ZXR1cm4gcmV0Owo+ICsKPiAgICAgICAgIGNoaXBfY29uZmlnID0geXRwaHlfcmVhZF9leHRfd2l0
aF9sb2NrKHBoeWRldiwgWVQ4NTIxX0NISVBfQ09ORklHX1JFRyk7Cj4gICAgICAgICBpZiAoY2hp
cF9jb25maWcgPCAwKQo+ICAgICAgICAgICAgICAgICByZXR1cm4gY2hpcF9jb25maWc7Cj4gQEAg
LTExNzEsNiArMTE5OSwxMSBAQCBzdGF0aWMgaW50IHl0ODUzMV9wcm9iZShzdHJ1Y3QgcGh5X2Rl
dmljZSAqcGh5ZGV2KQo+ICAgICAgICAgc3RydWN0IGRldmljZSAqZGV2ID0gJnBoeWRldi0+bWRp
by5kZXY7Cj4gICAgICAgICB1MTYgbWFzaywgdmFsOwo+ICAgICAgICAgdTMyIGZyZXE7Cj4gKyAg
ICAgICBpbnQgcmV0Owo+ICsKPiArICAgICAgIHJldCA9IHl0cGh5X2dldF9hbmRfZW5hYmxlX3Jl
ZmNsayhwaHlkZXYpOwo+ICsgICAgICAgaWYgKHJldCkKPiArICAgICAgICAgICAgICAgcmV0dXJu
IHJldDsKPgo+ICAgICAgICAgaWYgKGRldmljZV9wcm9wZXJ0eV9yZWFkX3UzMihkZXYsICJtb3Rv
cmNvbW0sY2xrLW91dC1mcmVxdWVuY3ktaHoiLCAmZnJlcSkpCj4gICAgICAgICAgICAgICAgIGZy
ZXEgPSBZVFBIWV9EVFNfT1VUUFVUX0NMS19ESVM7Cj4gLS0KPiAyLjQzLjAKPgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFp
bGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
