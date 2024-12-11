Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 65554E77180
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 15:10:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XNLP8CNp3XiEekUf+/QPaKWd4G74f2zEmxDlDf96Mos=; b=jnwtEs+7oKoVtb
	1XXDie67Mr9tggkyfjmt94BSMuqwi+6RXfy3gXuUE4u62i4qe7VCU3TuDURRP+D3ItM5+VJJIbQnY
	5wfdJOky2ttHO7mnetmk/nygS7gwIMhCoS/ymdHdjEi4/GJRafR0GVGnkamILL4z5MDTZMFqReW+v
	fKneNF/yvf2y2Kzv6NZVGY3nK+OCtLM2UHbRIHjkHWYzRJz5bKw8CN2xiDYqnvAc0Di6TKoekzWjL
	l1VhY7kRy27wVQ0+9on6qRiExwwD+M4ThPGvyKy9dzA19r23eF96zTxcG26R9MQx6u+HGA7r/aU+q
	EbYzMTvqB/DJsgGt074A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLOMG-0000000FEVu-2gVz;
	Wed, 11 Dec 2024 15:10:36 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLOME-0000000FEVT-32xP
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 15:10:35 +0000
Received: by mail-qt1-x82c.google.com with SMTP id d75a77b69052e-4677675abd5so12160261cf.1
        for <linux-rockchip@lists.infradead.org>; Wed, 11 Dec 2024 07:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733929833; x=1734534633; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BSvpEJHTQZtpmYDCC8uYLk8qdRhC3W636wwgq8z0Rd0=;
        b=c1cOXI6teXkwUCX2Tc7odj0YDIhQeycchh6v8lNMSXDyzk2iIjKFC+kONlE/VQEClG
         obTdL18uv017xllruLgrOVWNvVkYPdxt1guErZv1gbIDfkkE4lA4b8m+HNIwAE+7upkx
         vNB5VxW4H3jrc+TbQF4lROEWR4Lv+QR5JHhD5PczwlDYVUejcWWCzws5YKLAnCLBmvfX
         5UIHJIJnqPxdaJ9i/GP/AFqZsBkiHUCU292KsrQlz6qnf8k+3HktaH1WoJ8xdeROqxhC
         nc9CbUorZSdob+5KuKsTfV6g3LH2xBpYxT3VxToFt44nQE1QviCrdSf8OooyLBkuOytp
         Vp4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733929833; x=1734534633;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BSvpEJHTQZtpmYDCC8uYLk8qdRhC3W636wwgq8z0Rd0=;
        b=ZuhQEJe9SMqxSIurSwWS85yQVlxRpCsyrHgKI1R36fsJZihBYGviLhQg7X6Y8Muu8J
         BAHUmLHXyUijotqfv5lYGf/s9yn6RUfwHC8df60/LlPJTZIXI71QaqJ8my6uef/GR09V
         kX8EsmHjV3xAUmkTbuxxsd53IxSpWVaYSL1hUIKOXpWdK0paIg7GqmXmd0ts05l8Ib0v
         +X7nYRBTVx1iRSH/9qDj8oYuw9kL6XyFHFaS/bHHGwTspY5WjYHa7c83CwuG5WZlea0P
         B2j+unXfX4nA1fnFiRq/ygx1wtYbvaTtA7BiZHvznehaYJgVTvYAqbMpFfQRJGCChaQC
         SNdQ==
X-Gm-Message-State: AOJu0YyB4okATcr+Wx5SOTYxAR73+pO1tGMe9/zCYLc54Qv5zUshdLvK
	fLV0Mt2HT2gmpMhARgMpiJTaoftsyWvFST+T0WSA2fPD4ZfJZuOrsPrPhiFx7R5Z23GwxO1bvIa
	sEjbwDtxM4D0Zu7a6An9ivfAG3skGEkNV
X-Gm-Gg: ASbGncs5XAo9Qd0+SH4a2p7AmHJ1hKAJvMMk1eiAELgUJhtG3xIEpAUF18RUsxFKbS/
	eH2vlwcdykKhjlZ64NrWmicHuFhMUNy9UJDA=
X-Google-Smtp-Source: AGHT+IErPydnbpeSelReV3keRwvsIl/Y8lOb7Uw+Y++nXrOQuzVxnnzQ2iEwkB7SZdTi0QU+rDTeA6KkhZUBN65ZBZc=
X-Received: by 2002:a05:622a:52:b0:467:69f5:c2d9 with SMTP id
 d75a77b69052e-46795414582mr1233701cf.47.1733929833436; Wed, 11 Dec 2024
 07:10:33 -0800 (PST)
MIME-Version: 1.0
References: <CAAMcf8DL27-PYdEJ4eX1-PJnQDWB0osgHR0gbHAcr_oRniWOOg@mail.gmail.com>
 <4929144.F8r316W7xa@diego>
In-Reply-To: <4929144.F8r316W7xa@diego>
From: Vicente Bergas <vicencb@gmail.com>
Date: Wed, 11 Dec 2024 16:10:21 +0100
Message-ID: <CAAMcf8A8Y1js5Xt5FDOwq=dTw82UuZar0P6DVsJDgngRxPmtBw@mail.gmail.com>
Subject: Re: PCIe missing on RK3399
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_071034_762881_085F36E7 
X-CRM114-Status: GOOD (  18.05  )
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

T24gV2VkLCBEZWMgMTEsIDIwMjQgYXQgMjozNuKAr1BNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgVmljZW50ZSwKCkhpIEhlaWtvLAp0aGFua3MgZm9yIHRh
a2luZyBhIGxvb2sgYXQgaXQhCgo+IEFtIE1pdHR3b2NoLCAxMS4gRGV6ZW1iZXIgMjAyNCwgMTM6
NTU6MDEgQ0VUIHNjaHJpZWIgVmljZW50ZSBCZXJnYXM6Cj4gPiBpJ3ZlIHRlc3RlZCB0aGUgTGlu
dXgga2VybmVsIDYuMTMtcmMxIGFuZCByYzIgYW5kIGluIGJvdGggY2FzZXMgUENJZQo+ID4gaXMg
bm90IGRldGVjdGVkIG9uIHRoZSBSSzMzOTkgcGxhdGZvcm0gKHJrMzM5OS1ncnUta2V2aW4pLCB3
aGVyZWFzIHRoZQo+ID4ga2VybmVsIHZlcnNpb24gNi4xMi4zIHdvcmtzIGZpbmUuCj4gPgo+ID4g
Ni4xMyBjb25maWd1cmF0aW9uIGlzIGJhc2VkIG9uIHRoZSBzYW1lIG9uZSBhcyA2LjEyIGFuZCB0
aGVyZSBhcmVuJ3QKPiA+IGFueSBzaWduaWZpY2FudCBQQ0ktcmVsYXRlZCBkaWZmZXJlbmNlcy4K
PiA+Cj4gPiBUaGUgbWVzc2FnZXMgZnJvbSBkbWVzZyBvbiA2LjEzIGRvbid0IHNob3cgYW55IFBD
SS1yZWxhdGVkIGVycm9ycy4KPiA+Cj4gPiBEb2VzIHNvbWVib2R5IGtub3cgd2hhdCBpcyBnb2lu
ZyBvbj8KPgo+IHNvIEkganVzdCBib290ZWQgYSByazMzOTktcHVtYS1oYWlrb3Ugd2l0aCBhIHBj
aS1udm1lLWFkYXB0ZXIgaW4gdGhlCj4gcGNpZSBzbG90LiBBbmQgSSBnZXQ6Cj4KPiBbICAgIDAu
MDAwMDAwXSBCb290aW5nIExpbnV4IG9uIHBoeXNpY2FsIENQVSAweDAwMDAwMDAwMDAgWzB4NDEw
ZmQwMzRdCj4gWyAgICAwLjAwMDAwMF0gTGludXggdmVyc2lvbiA2LjEzLjAtcmMyLTAwMTAxLWcy
NjBhZTYzNzM0ZmYtZGlydHkgKGhzdHVlYm5lckBwaGlsKSAoYWFyY2g2NC1saW51eC1nbnUtZ2Nj
IChEZWJpYW4gMTQuMi4wLTYpIDE0LjIuMCwgR05VIGxkIChHTlUgQmludXRpbHMgZm9yIERlYmlh
bikgMi40My4xKSAjMTEzNCBTTVAgUFJFRU1QVCBUdWUgRGVjIDEwIDIxOjA2OjM0IENFVCAyMDI0
Cj4gLi4uCj4gWyAgICAzLjQyODExNF0gcm9ja2NoaXAtcGNpZSBmODAwMDAwMC5wY2llOiBob3N0
IGJyaWRnZSAvcGNpZUBmODAwMDAwMCByYW5nZXM6Cj4gWyAgICAzLjQzNTk3OF0gcm9ja2NoaXAt
cGNpZSBmODAwMDAwMC5wY2llOiAgICAgIE1FTSAweDAwZmEwMDAwMDAuLjB4MDBmYmRmZmZmZiAt
PiAweDAwZmEwMDAwMDAKPiBbICAgIDMuNDQ1NDc4XSByb2NrY2hpcC1wY2llIGY4MDAwMDAwLnBj
aWU6ICAgICAgIElPIDB4MDBmYmUwMDAwMC4uMHgwMGZiZWZmZmZmIC0+IDB4MDBmYmUwMDAwMAo+
IFsgICAgMy40NTUyOThdIHJvY2tjaGlwLXBjaWUgZjgwMDAwMDAucGNpZTogdXNpbmcgRFQgJy9w
Y2llQGY4MDAwMDAwJyBmb3IgJ2VwJyBHUElPIGxvb2t1cAo+Cj4gU28gdGhlcmUgc2VlbXMgdG8g
YmUgbm90IHNvbWUgZ2VuZXJhbCBmYWlsdXJlLgo+Cj4gRG9lcwo+ICAgICAgICAgIyBscyAvc3lz
L2RldmljZXMvcGxhdGZvcm0vZjgwMDAwMDAucGNpZQo+IGxpc3Qgc29tZSAid2FpdGluZ19mb3Jf
c3VwcGxpZXMiIG9yIHNvbWV0aGluZz8KCnllcywgaW5kZWVkIHRoZXJlIGlzIHN1Y2ggYSBmaWxl
IGluIHRoZXJlOgoKIyMjIDYuMTMtcmMyCiQgbHMgL3N5cy9kZXZpY2VzL3BsYXRmb3JtL2Y4MDAw
MDAwLnBjaWUKcG93ZXIKZHJpdmVyX292ZXJyaWRlCm1vZGFsaWFzCm9mX25vZGUKc3Vic3lzdGVt
CnN1cHBsaWVyOnBsYXRmb3JtOmZmNzIwMDAwLmdwaW8Kc3VwcGxpZXI6cGxhdGZvcm06ZmY3NzAw
MDAuc3lzY29uOnBjaWUtcGh5CnN1cHBsaWVyOnBsYXRmb3JtOmZmNzgwMDAwLmdwaW8Kc3VwcGxp
ZXI6cGxhdGZvcm06cGluY3RybApzdXBwbGllcjpwbGF0Zm9ybTpyZWd1bGF0b3ItcHAzMzAwLXdp
ZmktYnQKc3VwcGxpZXI6cGxhdGZvcm06cmVndWxhdG9yLXdsYW4tcGQtbgp1ZXZlbnQKd2FpdGlu
Z19mb3Jfc3VwcGxpZXIKCiQgY2F0IC9zeXMvZGV2aWNlcy9wbGF0Zm9ybS9mODAwMDAwMC5wY2ll
L3dhaXRpbmdfZm9yX3N1cHBsaWVyCjEKCiMjIyA2LjEyLjMKJCBscyAvc3lzL2RldmljZXMvcGxh
dGZvcm0vZjgwMDAwMDAucGNpZQpwY2kwMDAwOjAwCnBvd2VyCmRyaXZlcgpkcml2ZXJfb3ZlcnJp
ZGUKbW9kYWxpYXMKb2Zfbm9kZQpzdWJzeXN0ZW0Kc3VwcGxpZXI6cGh5OnBoeS1mZjc3MDAwMC5z
eXNjb246cGNpZS1waHkuNQpzdXBwbGllcjpwaHk6cGh5LWZmNzcwMDAwLnN5c2NvbjpwY2llLXBo
eS42CnN1cHBsaWVyOnBoeTpwaHktZmY3NzAwMDAuc3lzY29uOnBjaWUtcGh5LjcKc3VwcGxpZXI6
cGh5OnBoeS1mZjc3MDAwMC5zeXNjb246cGNpZS1waHkuOApzdXBwbGllcjpwbGF0Zm9ybTpmZjc3
MDAwMC5zeXNjb246cGNpZS1waHkKc3VwcGxpZXI6cGxhdGZvcm06ZmY3ODAwMDAuZ3BpbwpzdXBw
bGllcjpwbGF0Zm9ybTpwaW5jdHJsCnN1cHBsaWVyOnBsYXRmb3JtOnBwMzMwMC13aWZpLWJ0CnN1
cHBsaWVyOnBsYXRmb3JtOnBwOTAwLWFwCnN1cHBsaWVyOnBsYXRmb3JtOndsYW4tcGQtbgpzdXBw
bGllcjpyZWd1bGF0b3I6cmVndWxhdG9yLjE3CnN1cHBsaWVyOnJlZ3VsYXRvcjpyZWd1bGF0b3Iu
MjMKc3VwcGxpZXI6cmVndWxhdG9yOnJlZ3VsYXRvci4yNQp1ZXZlbnQKCldoYXQgZG9lcyB0aGF0
IG1lYW4/CgpSZWdhcmRzLAogIFZpY2VudGUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
