Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 902BAC369BC
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Sep 2024 09:58:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9a9ihc0r0khW8gXjunHpJcRU+Nvr4J2CIW1SPaL+ke4=; b=PSBaOywDe1uA3U
	gRqpxwwQyYnRTfSk59ICPE3D+HaB/atjPiXvMdJEq936agJqCyusbiajFTgCApuoJtqlt0W4Od6Od
	vy2tUvx6GpixX+QTmRjlk2Wpp+2V1vG1kzdtLf8UDHG+2s8PhxR6rwmQeBuxGDQDBWXroGVIOo1Rn
	3BSQCLOPdGPlBE96vh4mTiRrQUo6spaEC9Cnx5tKNK+Aexqh2WPwCwFPmIGH9exptsAzKibsz8QqC
	xgYaKI1KrCsYZootzR4lbYxN5cXczCrTrfy4bujgrOWK13DxJQjdJRVzRMw4Ca6lA7cU3c936u8i+
	1YzVR8DzOmCDyns9mPLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stOmf-00000004gbR-2b0u;
	Wed, 25 Sep 2024 09:58:09 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stOjj-00000004fw7-1N1v;
	Wed, 25 Sep 2024 09:55:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:Subject:Content-Type:MIME-Version:
	Message-ID; bh=NhZ6iwwwuVk4Lk7eKD+fvfCc6FOuugx2njYSOk4fgrM=; b=Q
	+0rU5Z9VVZziCAs7mZ1sYnWQMVZQghNmJJTDW8EynLomZj8qqokySGfJeyL1vkls
	q/Ws5jUGv0a2DDJpOCrKFRrbYW2DqZq5g9GvgPjjCiOE/K1sl6dLkS1wPjyT4j13
	4LUIa2b4cSQ2ePZTiaKn6bu/xRs56z1MW0KKq5iGeg=
Received: from andyshrk$163.com ( [58.22.7.114] ) by
 ajax-webmail-wmsvr-40-111 (Coremail) ; Wed, 25 Sep 2024 17:54:26 +0800
 (CST)
X-Originating-IP: [58.22.7.114]
Date: Wed, 25 Sep 2024 17:54:26 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Michael Riesch" <michael.riesch@wolfvision.net>
Cc: heiko@sntech.de, hjc@rock-chips.com, krzk+dt@kernel.org, robh@kernel.org, 
	conor+dt@kernel.org, s.hauer@pengutronix.de, 
	devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, derek.foreman@collabora.com, 
	minhuadotchen@gmail.com, detlev.casanova@collabora.com, 
	"Andy Yan" <andy.yan@rock-chips.com>
Subject: Re:Re: [PATCH v3 00/15] VOP Support for rk3576
X-Priority: 3
X-Mailer: Coremail Webmail Server Version XT5.0.14 build 20240801(9da12a7b)
 Copyright (c) 2002-2024 www.mailtech.cn 163com
In-Reply-To: <3dfe0855-3f58-432f-922d-4c936f36c731@wolfvision.net>
References: <20240920081626.6433-1-andyshrk@163.com>
 <3dfe0855-3f58-432f-922d-4c936f36c731@wolfvision.net>
X-NTES-SC: AL_Qu2ZBf6et0gt4CmcYOlS+zN027ZZGIPiw4tinfIOfuALgRno+Sw7QGRAAUPr2/tGWAP6ZpXDzX0y08JzZZGP
MIME-Version: 1.0
Message-ID: <75a13dbb.acb8.192289a8005.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: bygvCgDnz43X3fNmpBQBAA--.7172W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQtlXmbz2h1NcgACs2
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240925_025507_747837_519C4247 
X-CRM114-Status: GOOD (  10.84  )
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

CkhpIE1pY2hhZWzvvIwKCkF0IDIwMjQtMDktMjQgMTc6MzQ6NTIsICJNaWNoYWVsIFJpZXNjaCIg
PG1pY2hhZWwucmllc2NoQHdvbGZ2aXNpb24ubmV0PiB3cm90ZToKPkhpIEFuZHksCj4KPk9uIDkv
MjAvMjQgMTA6MTYsIEFuZHkgWWFuIHdyb3RlOgo+PiBbLi4uXQo+Cj5BIGZldyBtaW5vciBuaXRw
aWNrczoKPgo+PiBBbmR5IFlhbiAoMTUpOgo+PiAgIGRybS9yb2NrY2hpcDogdm9wMjogQWRkIGRl
YnVnZnMgc3VwcG9ydAo+Cj5UaGVyZSBpcyBhbiBleHRyYSBzcGFjZSBpbiB0aGUgZXh0ZW5kZWQg
Y29tbWl0IG1lc3NhZ2UgKCIuLi5zdW1tYXJ5Ogo+ZHVtcC4uLiIgLT4gIi4uLnN1bW1hcnk6IGR1
bXAuLi4iLgo+Cj4+ICAgZHJtL3JvY2tjaGlwOiBTZXQgZG1hIG1hc2sgdG8gNjQgYml0Cj4+ICAg
ZHJtL3JvY2tjaGlwOiB2b3AyOiBGaXggY2x1c3RlciB3aW5kb3dzIGFscGhhIGN0cmwgcmVnc2l0
ZXJzIG9mZnNldAo+Cj5UeXBvICJyZWdzaXRlcnMiIC0+ICJyZWdpc3RlcnMiLgo+Cj4+ICAgZHJt
L3JvY2tjaGlwOiB2b3AyOiBGaXggdGhlIG1peGVyIGFscGhhIHNldHVwIGZvciBsYXllciAwCj4+
ICAgZHJtL3JvY2tjaGlwOiB2b3AyOiBGaXggdGhlIHdpbmRvd3Mgc3dpdGNoIGJldHdlZW4gZGlm
ZmVyZW50IGxheWVycwo+PiAgIGRybS9yb2NrY2hpcDogdm9wMjogaW5jbHVkZSByb2NrY2hpcF9k
cm1fZHJ2LmgKPj4gICBkcm0vcm9ja2NoaXA6IHZvcDI6IFN1cHBvcnQgMzJ4OCBzdXBlcmJsb2Nr
IGFmYmMKPj4gICBkcm0vcm9ja2NoaXA6IHZvcDI6IEFkZCBwbGF0Zm9ybSBzcGVjaWZpYyBjYWxs
YmFjawo+PiAgIGRybS9yb2NrY2hpcDogdm9wMjogU3VwcG9ydCBmb3IgZGlmZmVyZW50IGxheWVy
IHNlbGV0IGNvbmZpZ3VyYXRpb24KPgo+VHlwbyAic2VsZXQiIC0+ICJzZWxlY3QiPwoKVGhhbmtz
77yMIGFsbCB0eXBvcyB3aWxsIGJlIGZpeGVkIGluIG5leHQgdmVyc2lvbi4KCj4KPj4gICAgIGJl
dHdlZW4gVlBzCj4+ICAgZHJtL3JvY2tjaGlwOiB2b3AyOiBJbnRyb2R1Y2Ugdm9wIGhhcmR3YXJl
IHZlcnNpb24KPj4gICBkcm0vcm9ja2NoaXA6IHZvcDI6IFJlZ2lzdGVyIHRoZSBwcmltYXJ5IHBs
YW5lIGFuZCBvdmVybGF5IHBsYW5lCj4+ICAgICBzZXBhcmF0ZWx5Cj4+ICAgZHJtL3JvY2tjaGlw
OiB2b3AyOiBTZXQgcGxhbmUgcG9zc2libGUgY3J0Y3MgYnkgcG9zc2libGUgdnAgbWFzawo+PiAg
IGRybS9yb2NrY2hpcDogdm9wMjogQWRkIHV2IHN3YXAgZm9yIGNsdXN0ZXIgd2luZG93Cj4+ICAg
ZHQtYmluZGluZ3M6IGRpc3BsYXk6IHZvcDI6IEFkZCByazM1NzYgc3VwcG9ydAo+PiAgIGRybS9y
b2NrY2hpcDogdm9wMjogQWRkIHN1cHBvcnQgZm9yIHJrMzU3Ngo+PiAKPj4gIC4uLi9kaXNwbGF5
L3JvY2tjaGlwL3JvY2tjaGlwLXZvcDIueWFtbCAgICAgICB8ICAgMTMgKy0KPj4gIGRyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgICB8ICAgIDQgKy0KPj4gIGRyaXZl
cnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jICB8IDE1NzIgKysrKy0tLS0t
LS0tLQo+PiAgZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3AyLmggIHwg
IDI3NCArKy0KPj4gIGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF92b3AyX3JlZy5j
ICB8IDE5NDggKysrKysrKysrKysrKysrKy0KPj4gIDUgZmlsZXMgY2hhbmdlZCwgMjY4MyBpbnNl
cnRpb25zKCspLCAxMTI4IGRlbGV0aW9ucygtKQo+Cj5JIGdhdmUgeW91ciBjaGFuZ2VzIGEgcXVp
Y2sgdGVzdCBvbiBteSBSSzM1NjggZGV2aWNlIGFuZCBkaWQgbm90IGZpbmQKPmFueSByZWdyZXNz
aW9ucyAtPgoKVGhhbmtzIGFnYWlu77yMIEkgYWxzbyB0ZXN0ZWQgIHRoaXMgc2VyaWVzIG9uIHJr
MzU2Ni9yazM1ODguCgo+Cj5UZXN0ZWQtYnk6IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNj
aEB3b2xmdmlzaW9uLm5ldD4gIyBvbiBSSzM1NjgKPgo+VGhhbmtzIGFuZCBiZXN0IHJlZ2FyZHMs
Cj5NaWNoYWVsCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
