Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F110ACF31B4
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Oct 2024 11:13:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqnwzWEjqw+EPvPOC9fkFajjw6pC8tusTSXexq0p7PA=; b=JCpsBXwnI8bGdU
	DzwDQK06ZQ6G7+3IaBEidtvsek6f8H4IjNEIkAGfeNtvGkTdtZYa3vwqFEsU+kyJOxMSG62/oCK/f
	ctolixcwxkNd8V9vSiGE5R6OpyiCiXUKWfWO8ebNL9FhUPKT4pgwkPin0/08E/eyKt31NjIlI+5vp
	COQlHPRwWtopuCEmJW5Z5TIBgvQkOPl3MWpd41QWdA9pNDwXzIG+TEJy50/Cs8xcrVsdXHNHlZS2j
	sSpEWFJeME36c6ZeuqWwwogKhprzQ4eP85Ppa9ENUcNcUoNdc4fKr+fc0qbfdsaDdkPl98HtcyVwf
	ehKZo+8XW0eO79UB/dMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svxIe-00000005cWs-0rnj;
	Wed, 02 Oct 2024 11:13:44 +0000
Received: from mail-yb1-xb2d.google.com ([2607:f8b0:4864:20::b2d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svx5t-00000005aYw-0doc
	for linux-rockchip@lists.infradead.org;
	Wed, 02 Oct 2024 11:00:34 +0000
Received: by mail-yb1-xb2d.google.com with SMTP id 3f1490d57ef6-e25cc9e94eeso5670726276.3
        for <linux-rockchip@lists.infradead.org>; Wed, 02 Oct 2024 04:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727866831; x=1728471631; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lmcYZA7/wJjtWP/h4dJKihF0bgwj9/ex9+L3+MEoObU=;
        b=FaZDvAxpjxbkk1FekPJJ1yRBuGaRZmChV6Oave4m8pnoZhVZZCzIsIRHlPyKoMjb68
         Q+BD1xgVqUixxXU4LL9804YJJyN9QBsEJH7o1YpmIaZSl3uvbQe1gZIkq0dB0XmR/6Sc
         OSeTGSBh2KPBjnmP9YhDPH4FHGe4GNmJ+pxNOG7PRYtQ/mA0R9xYonhY81Bt2FSbN2Aj
         LSgGR/8IM5u/LT9wIMIigTgUmbz9WALV1ICLU4kXY1GE8nafI+LuRPiySXfBJcLoSkXw
         urKy1wLarryNKRZ/SFhIl8YwBh93bzEZhg0SanDJms7JmELgw9rVnqTtNC9Zm1AGK1YO
         hnHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727866831; x=1728471631;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lmcYZA7/wJjtWP/h4dJKihF0bgwj9/ex9+L3+MEoObU=;
        b=aNPtGO7VLOA7b8UrEPeD53eRlgQPI/m3xASB8ShNh+N+odh1KjkttRKeFViN5jGUsJ
         FuLk0KCivnnNZJAH6+Ee4WATIVdeaVALIZU+h2j/cfbseTOrx/xFt0p9oCDZuaA6PDRO
         C1LtUl6pFA+6KG4V1qEuBwaEhKsuCi3mc9pS2Czcd/XRJdkMnmL4qIMFQ+YROrkpkTHH
         85pDGEmYB+gf1KOfMSca4mZKYPbsb9lE2j2X99ZtxNMQG0f27AOycDfHyPsviFz6IOiv
         TXjjJhtSRbqP1mmS85Eg9LCaIWLlQ/2P8NDA0wiYbVdIeo81Z4p0S8Gam76w2lrDxbPc
         DBQg==
X-Forwarded-Encrypted: i=1; AJvYcCVi23GtGcY6OF2uQlpDwujxwBBxbw9lDYPKxEw/Ue8yBh5VDP2tDqU4YeveeKcjL2vMjjLZQ7n4wNLfPn8m2A==@lists.infradead.org
X-Gm-Message-State: AOJu0YzTXaHcCEYTjwzv9O75itdWk6CEzr5EzkgyvR+tUxBpEksAB9ga
	EmETB0TqlDu8/xBR56RhWE3HsuCDe+nZffBI7MUDUuvofdj/Khyh8gxTUb71LkY4mV/mC0RA17c
	hYTfOH5LxmB7DsO1GRaSv8OLJ0aDo50ECJPlJog==
X-Google-Smtp-Source: AGHT+IH1/OYH7PyqLLC06P011jS8wjK1A2ttW2EVTz1YfQDhiNruQopqyDimOPKCVrbB2cqpzD/2bH9uqx4KuH6NPos=
X-Received: by 2002:a05:6902:2182:b0:e26:5b7:9f95 with SMTP id
 3f1490d57ef6-e263840f47bmr2076616276.35.1727866830962; Wed, 02 Oct 2024
 04:00:30 -0700 (PDT)
MIME-Version: 1.0
References: <20240919091834.83572-1-sebastian.reichel@collabora.com>
In-Reply-To: <20240919091834.83572-1-sebastian.reichel@collabora.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Wed, 2 Oct 2024 12:59:55 +0200
Message-ID: <CAPDyKFpWYnqLGdxXc4Wvt_3MNsYkCpRfTJMeUddZzpKTwnY4Rw@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] Fix RK3588 GPU domain
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Elaine Zhang <zhangqing@rock-chips.com>, 
	=?UTF-8?Q?Adri=C3=A1n_Mart=C3=ADnez_Larumbe?= <adrian.larumbe@collabora.com>, 
	Boris Brezillon <boris.brezillon@collabora.com>, Chen-Yu Tsai <wens@csie.org>, 
	devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, kernel@collabora.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241002_040033_213001_9578D5F2 
X-CRM114-Status: GOOD (  23.98  )
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

T24gVGh1LCAxOSBTZXB0IDIwMjQgYXQgMTE6MTgsIFNlYmFzdGlhbiBSZWljaGVsCjxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPiB3cm90ZToKPgo+IEhpLAo+Cj4gSSBnb3QgYSByZXBv
cnQsIHRoYXQgdGhlIExpbnV4IGtlcm5lbCBjcmFzaGVzIG9uIFJvY2sgNUIgd2hlbiB0aGUgcGFu
dGhvcgo+IGRyaXZlciBpcyBsb2FkZWQgbGF0ZSBhZnRlciBib290aW5nLiBUaGUgY3Jhc2ggc3Rh
cnRzIHdpdGggdGhlIGZvbGxvd2luZwo+IHNob3J0ZW5lZCBlcnJvciBwcmludDoKPgo+IHJvY2tj
aGlwLXBtLWRvbWFpbiBmZDhkODAwMC5wb3dlci1tYW5hZ2VtZW50OnBvd2VyLWNvbnRyb2xsZXI6
IGZhaWxlZCB0byBzZXQgZG9tYWluICdncHUnLCB2YWw9MAo+IHJvY2tjaGlwLXBtLWRvbWFpbiBm
ZDhkODAwMC5wb3dlci1tYW5hZ2VtZW50OnBvd2VyLWNvbnRyb2xsZXI6IGZhaWxlZCB0byBnZXQg
YWNrIG9uIGRvbWFpbiAnZ3B1JywgdmFsPTB4YTlmZmYKPiBTRXJyb3IgSW50ZXJydXB0IG9uIENQ
VTQsIGNvZGUgMHgwMDAwMDAwMGJlMDAwNDExIC0tIFNFcnJvcgo+Cj4gVGhpcyBzZXJpZXMgZmly
c3QgZG9lcyBzb21lIGNsZWFudXBzIGluIHRoZSBSb2NrY2hpcCBwb3dlciBkb21haW4KPiBkcml2
ZXIgYW5kIGNoYW5nZXMgdGhlIGRyaXZlciwgc28gdGhhdCBpdCBubyBsb25nZXIgdHJpZXMgdG8g
Y29udGludWUKPiB3aGVuIGl0IGZhaWxzIHRvIGVuYWJsZSBhIGRvbWFpbi4gVGhpcyBnZXRzIHJp
ZCBvZiB0aGUgU0Vycm9yIGludGVycnVwdAo+IGFuZCBsb25nIGJhY2t0cmFjZXMuIEJ1dCB0aGUg
a2VybmVsIHN0aWxsIGhhbmdzIHdoZW4gaXQgZmFpbHMgdG8gZW5hYmxlCj4gYSBwb3dlciBkb21h
aW4uIEkgaGF2ZSBub3QgZG9uZSBmdXJ0aGVyIGFuYWx5c2lzIHRvIGNoZWNrIGlmIHRoYXQgY2Fu
Cj4gYmUgYXZvaWRlZC4KPgo+IExhc3QgYnV0IG5vdCBsZWFzdCB0aGlzIHByb3ZpZGVzIGEgZml4
IGZvciB0aGUgR1BVIHBvd2VyIGRvbWFpbiBmYWlsaW5nCj4gdG8gZ2V0IGVuYWJsZWQgLSBhZnRl
ciBzb21lIHRlc3RpbmcgZnJvbSBteSBzaWRlIGl0IHNlZW1zIHRvIHJlcXVpcmUgdGhlCj4gR1BV
IHZvbHRhZ2Ugc3VwcGx5IHRvIGJlIGVuYWJsZWQuCj4KPiBJJ20gbm90IHJlYWxseSBoYXBweSBh
Ym91dCB0aGUgaGFjayB0byBnZXQgYSByZWd1bGF0b3IgZm9yIGEgc3ViLW5vZGUsCj4gd2hpY2gg
SSB0b29rIG92ZXIgZnJvbSB0aGUgTWVkaWF0ZWsgZHJpdmVyLiBJIGRpc2N1c3NlZCB0aGlzIHdp
dGgKPiBDaGVuLVl1IFRzYWkgYW5kIEhlaWtvIFN0w7xibmVyIGF0IE9TUyBFVSBhbmQgdGhlIHBs
YW4gaXM6Cj4KPiAxLiBNZXJnZSBSb2NrY2hpcCBQTSBkb21haW4gZHJpdmVyIHdpdGggdGhpcyBo
YWNrIGZvciBub3csIHNpbmNlIERSTSBDSQo+ICAgIHBlb3BsZSBuZWVkIGl0Cj4gMi4gQ2hlbi1Z
dSB3aWxsIHdvcmsgb24gYSBzZXJpZXMsIHdoaWNoIGZpeGVzIHRoZSBoYWNrIGluIE1lZGlhdGVr
IGJ5Cj4gICAgaW50cm9kdWNpbmcgYSBuZXcgZGV2bV9yZWd1bGF0b3JfZ2V0IGZ1bmN0aW9uIHRh
a2luZyBhbiBEVCBub2RlIGFzCj4gICAgYWRkaXRpb25hbCBhcmd1bWVudAo+IDMuIFJvY2tjaGlw
IFBNIGRvbWFpbiBsYXRlciB3aWxsIHN3aXRjaCB0byB0aGF0IG9uY2UgaXQgaGFzIGxhbmRlZAoK
SSBoYXZlIGp1c3QgcXVldWVkIHVwIDIpIG9uIG15IG5leHQgYnJhbmNoLgoKTXkgc3VnZ2VzdGlv
biBpcyB0byBza2lwIHRoZSBpbnRlcm1lZGlhdGUgc3RlcCBpbiAxKSBhbmQgZ28gZGlyZWN0bHkK
Zm9yIDMpIGluc3RlYWQsIHVubGVzcyB5b3UgdGhpbmsgdGhlcmUgaXMgYSBwcm9ibGVtIHdpdGgg
dGhhdCwgb2YKY291cnNlPwoKWy4uLl0KCktpbmQgcmVnYXJkcwpVZmZlCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
