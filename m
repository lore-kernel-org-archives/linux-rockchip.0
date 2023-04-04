Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 23DB5C6FD1D
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 12:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=opos7cIzwQKlSoQ+33J6oIT99vZ6xtICBhpLmlUVl+c=; b=Ab6uPwCTJpFr8i
	fYEcrjbIxkPEW0OW7ajeNAIXr1dXnmBRsF78sZg0yUdXhBfDYo8jlRNk3G1T/YiUd5lPfR4smDAPg
	PLHRw9uNqgKJz1dIu6F/QdYfCAsaB++CbVfEmnWmA4K2rw0cK0B8yiZWt4wYUqYwNaFNpgBUwsXSi
	c7e2HDMDpyicZBVTh0+TywtZhGyh2dwqvP3WR+MdnDlJUt8ALSOt1oWbnGSA97fNWdoeaIGc6/1Du
	gezMoFaYYM7bIjdleFktZlCXzr++8Uq8PCKy7d9CTrp80kVJHUMb0PBozv8mNcX8/JorjZMzIPTg8
	MNT1SGlFOy370l0/I8Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjg99-001Lub-0j;
	Tue, 04 Apr 2023 12:52:23 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjg94-001LtX-29;
	Tue, 04 Apr 2023 12:52:20 +0000
Received: by mail-ed1-x529.google.com with SMTP id ek18so130182349edb.6;
        Tue, 04 Apr 2023 05:52:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680612735; x=1683204735;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hohqJ0IRkgadARh+RFpo5PqgLtx6zYqkk8fyrFCTkmQ=;
        b=axa5R95ck091V5Ed2YimkNZdszQD9vtj+hhAXOu7kJIc64/erLFd7wZ6V1nTJp0eVX
         /HUcyHy/g/CHONzZwHllAEgtWL8AHOSBE8Nb0fCKGEErrMq76qwyTg0lYl+4drrdxPgj
         vLZRARURzYNwcd5kDA+wktkjq7jIMDNbqCbiI+DipvjJ4ExLrBPq5z0v8et70FuRGyWR
         hrOF234zfQ78ApKmL5CSKNse8ZtsxZlTV6OFJxQazbQYBOQSDelfz4y3jhwncbvEtoLz
         AxLDdjz/ijt9z4II0USK6vfpnxR6GIYqoIhMzf/wW0NHuH7OHnM/W+6YNRdBkM0ukkWa
         xMvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680612735; x=1683204735;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hohqJ0IRkgadARh+RFpo5PqgLtx6zYqkk8fyrFCTkmQ=;
        b=M3Qp/hGpBLkRduGc/ei6uQaRX8cASKSqvxdZy2vEvPBDtYiifc5GRt7sMMBmFRCQrd
         bmi1+Y2WP5OHwzhBiNlMe0+VBMWRqviRBUW5vS+/vIDpKCl7XTstV4FyMD/Dwy/eR6in
         ceqh5R+HWuSOl9DnJAQ/4c+2Yo34lxJ45os0QdP/eixfB5/Vb61VWxIcr0F5Kd+rdzpd
         bfxZF2kPZ/Alx+eU8WpY0WYkWHHz3cPiLT8ZIgpeFK9IBuHjOz6NleuL+KXTE/AVCRnU
         iJnFU+qF3Nz0EfmYx+UMnE722WTMX6osPKj1BSs3tINtz7V7TuHkTQ2E4i/wR8F1lgD1
         Lb8g==
X-Gm-Message-State: AAQBX9e7J8IAec7v7STfLKz8qrv0EpGbq8H68qygk64vO8bfmItdMdyM
	dvxEo189hgW459gW3P9Vlzm+NAvCCPOq6VnQt+A=
X-Google-Smtp-Source: AKy350a6hJFElVGx6OrQgSXH8YqifO0Ytv8rsQnUDGl/mZVDqrepPpWOM7sSy08bd0fzcKKAvVmSA2LnIBwbdcIfqqE=
X-Received: by 2002:a50:a457:0:b0:4fb:3549:a708 with SMTP id
 v23-20020a50a457000000b004fb3549a708mr1294643edb.6.1680612734887; Tue, 04 Apr
 2023 05:52:14 -0700 (PDT)
MIME-Version: 1.0
References: <20230403175937.2842085-1-javierm@redhat.com> <3738011.44csPzL39Z@diego>
In-Reply-To: <3738011.44csPzL39Z@diego>
From: Peter Geis <pgwipeout@gmail.com>
Date: Tue, 4 Apr 2023 08:52:02 -0400
Message-ID: <CAMdYzYqT=vVZxFK=P6xYDAht_KWk3CTsTtruPAbGqx1K9EcJsQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, 
	Javier Martinez Canillas <javierm@redhat.com>, Peter Robinson <pbrobinson@gmail.com>, 
	Caleb Connolly <kc@postmarketos.org>, Jarrah Gosbell <kernel@undef.tools>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Martijn Braam <martijn@brixit.nl>, 
	Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>, 
	Tom Fitzhenry <tom@tom-fitzhenry.me.uk>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_055218_729398_32DBD5BE 
X-CRM114-Status: GOOD (  31.70  )
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

T24gVHVlLCBBcHIgNCwgMjAyMyBhdCAzOjU14oCvQU0gSGVpa28gU3TDvGJuZXIgPGhlaWtvQHNu
dGVjaC5kZT4gd3JvdGU6Cj4KPiBIaSwKPgo+IEFtIE1vbnRhZywgMy4gQXByaWwgMjAyMywgMTk6
NTk6MzcgQ0VTVCBzY2hyaWViIEphdmllciBNYXJ0aW5leiBDYW5pbGxhczoKPiA+IFRoaXMgYmF1
ZCByYXRlIGlzIHNldCBmb3IgdGhlIGRldmljZSBieSBtYWlubGluZSB1LWJvb3QgYW5kIGlzIGFs
c28gd2hhdAo+ID4gaXMgc2V0IGluIHRoZSBQaW5lYm9vayBQcm8gRGV2aWNlIFRyZWUsIHdoaWNo
IGlzIGEgZGV2aWNlIHNpbWlsYXIgdG8gdGhlCj4gPiBQaW5lUGhvbmUgUHJvIGJ1dCB3aXRoIGEg
ZGlmZmVyZW50IGZvcm0gZmFjdG9yLgo+ID4KPiA+IE90aGVyd2lzZSwgdGhlIGJhdWQgcmF0ZSBv
ZiB0aGUgZmlybXdhcmUgYW5kIExpbnV4IGRvbid0IG1hdGNoIGJ5IGRlZmF1bHQKPiA+IGFuZCBh
ICdjb25zb2xlPXR0eVMyLDE1MDAwMDBuOCcga2VybmVsIGNvbW1hbmQgbGluZSBwYXJhbWV0ZXIg
aXMgcmVxdWlyZWQKPiA+IHRvIGhhdmUgcHJvcGVyIG91dHB1dCBmb3IgYm90aC4KPgo+IFRoZSBp
bnRlcmVzdGluZyBxdWVzdGlvbiBpcyBhbHdheXMgaWYgdGhpcyB3aWxsIGJyZWFrIHNvbWVvbmUg
ZWxzZSdzIHNldHVwLgo+IEkndmUgbmV2ZXIgcmVhbGx5IHVuZGVyc3Rvb2QgdGhlIHN0cmFuZ2Ug
c2V0dGluZyBvZiAxLjVNQnBzLCBidXQgb24gdGhlCj4gb3RoZXIgaGFuZCBpdCBfaXNfIGEgcmVh
bGl0eSBvbiBtb3N0IGJvYXJkcy4KCkdvb2QgTW9ybmluZyBIZWlrbywKClRoZSAxLjVNIGJhdWQg
aXMgZGVmYXVsdCBiZWNhdXNlIHRoZSBjbG9jayBzdHJ1Y3R1cmUgb24gcm9ja2NoaXAKZGV2aWNl
cyBkb2VzIG5vdCBhbGxvdyBhIGNsZWFuIDExNTIwMCBiYXVkLiBCeSBhdHRlbXB0aW5nIHRvIGZv
cmNlCjExNTIwMCwgaXQgd2lsbCBhbHdheXMgYmUgc2xpZ2h0bHkgb2ZmIChlaXRoZXIgbG93IG9y
IGhpZ2ggZGVwZW5kaW5nCm9uIGhvdyB0aGUgZHJpdmVyIGRlY2lkZWQgdG8gcm91bmQpLiBJZiB0
aGlzIGFjdHVhbGx5IGNhdXNlcyBhbnkKcHJvYmxlbXMgaXMgdGhlIHN1YmplY3Qgb2YgbXVjaCBk
ZWJhdGUuCgpWZXJ5IFJlc3BlY3RmdWxseSwKUGV0ZXIgR2VpcwoKPgo+IFBlcnNvbmFsbHkgSSBk
b24ndCBjYXJlIHRoYXQgbXVjaCBlaXRoZXIgd2F5LCBidXQgd291bGQgbGlrZSBhIGNvbW1lbnQK
PiBmcm9tIHRoZSBvdGhlciBwZW9wbGUgd29ya2luZyBvbiB0aGF0IGRldmljZSAtIGlmIHBvc3Np
YmxlLgo+Cj4gSSBndWVzcyBpZiB3ZSBkb24ndCBoZWFyIGFueXRoaW5nLCBJJ2xsIGFwcGx5IGl0
IG5ldmVydGhlbGVzcyBhdCBzb21lIHBvaW50Cj4KPgo+IEhlaWtvCj4KPgo+ID4gU2lnbmVkLW9m
Zi1ieTogSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIDxqYXZpZXJtQHJlZGhhdC5jb20+Cj4gPiAt
LS0KPiA+Cj4gPiBJIHRyaWVkIHRvIGluc3RlYWQgZ2V0IHJpZCBvZiB0aGUgYmF1ZCByYXRlIGFs
dG9nZXRoZXIsIGFzIHN1Z2dlc3RlZCBieQo+ID4gUGV0ZXIgUm9iaW5zb24uIEFGQUlVIHRoYXQg
c2hvdWxkIGp1c3QgcGljayB3aGF0ZXZlciBiYWQgcmF0ZSBoYXMgYmVlbgo+ID4gdXNpbmcgYnkg
dGhlIGVhcmx5IGNvbnNvbGUuCj4gPgo+ID4gQnV0IG5laXRoZXIgdXNpbmcgJ3N0ZG91dC1wYXRo
ID0gInNlcmlhbDIiIG5vciAnc3Rkb3V0LXBhdGggPSAmdWFydDInCj4gPiB3b3JrZWQgZm9yIG1l
Lgo+ID4KPiA+IEluIGJvdGggY2FzZXMgSSBkaWRuJ3QgaGF2ZSBhbnkgb3V0cHV0IHVubGVzcyBz
ZXR0aW5nIGEgYmF1ZCByYXRlIHVzaW5nCj4gPiB0aGUgJ2NvbnNvbGU9J3BhcmFtLgo+ID4KPiA+
ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhvbmUtcHJvLmR0cyB8
IDIgKy0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkK
PiA+Cj4gPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cGluZXBob25lLXByby5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1w
aW5lcGhvbmUtcHJvLmR0cwo+ID4gaW5kZXggYTA3OTVhMmIxY2IxLi42YmJlNjViZDViZDQgMTAw
NjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS1waW5lcGhv
bmUtcHJvLmR0cwo+ID4gKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTkt
cGluZXBob25lLXByby5kdHMKPiA+IEBAIC0yNiw3ICsyNiw3IEBAIGFsaWFzZXMgewo+ID4gICAg
ICAgfTsKPiA+Cj4gPiAgICAgICBjaG9zZW4gewo+ID4gLSAgICAgICAgICAgICBzdGRvdXQtcGF0
aCA9ICJzZXJpYWwyOjExNTIwMG44IjsKPiA+ICsgICAgICAgICAgICAgc3Rkb3V0LXBhdGggPSAi
c2VyaWFsMjoxNTAwMDAwbjgiOwo+ID4gICAgICAgfTsKPiA+Cj4gPiAgICAgICBncGlvLWtleXMg
ewo+ID4KPiA+IGJhc2UtY29tbWl0OiAzYWRmODkzMjRhMmIyYTlkYmMyYzEyZDg4OTUwMjFlN2Uz
NGUzMzQ2Cj4gPgo+Cj4KPgo+Cj4KPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
