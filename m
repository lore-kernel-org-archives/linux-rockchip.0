Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DDF59C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri,  1 Apr 2022 13:05:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xOYrbPvrltqJprWUndHKz/SukvWgGWVo/jPlRlKhgs4=; b=WxjKrFjgjzdlsN
	46F18/O+cpaB7TfxDCL8Hrndl7pZbeb6MnhQpTOt2Fx2CAEyJTuKInXLHoG5ww27k6AcRck84ZfPH
	uInZ7mOH+v6kT84c13LGqugE7TqVgUFw3csLS1idnF5zpIOwprE6xEtnBvQsBonvFJ6bxf6VhJW9R
	mb7+7mZ4u+vNkaHiJUqnBkowxTxFA5RHLYc3j8ftak0gFJYfD6LmAh+Bilc9632wKpKipzoqgoS/K
	fJQF4OGvbR+7nD1ystQIPZU2IeIUWOoih05C6rWTP9tz1cCPex+WsCoGhpszCHOtfMxl3RRgPqTrH
	p9N5jjNbD6C7Je4wgKXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1naGy9-005iNH-ST; Fri, 01 Apr 2022 13:05:37 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1naGxw-005iHd-NE; Fri, 01 Apr 2022 13:05:26 +0000
Received: by mail-lf1-x134.google.com with SMTP id h7so4852828lfl.2;
 Fri, 01 Apr 2022 06:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0ucnjFKd28Tf+W0k0cKJLPb/VcjJsSWQNUvFfYSvuec=;
 b=lwjqcDZowyUU8SuD8z2KZvDAD1mucsBt5qUOqYI/eoVYbRsRNjll6kgXkuvojbg5MI
 UYk0eutBGy0i3pSAcp0GidT4aybG37Fqt86TTJVUeFDo7dr4eTrqnj7wZwSGCiMcMP7w
 caFA/JAaHsx/PKVdUIx2D214DPjOaf0vmTYieL/8CJnG/GjRImDjedGWKlfL+XVtBgHi
 R4zRaKmy04yuGg4XzDiM0Q5GBGqS7VUrrK6ysSTd9QcYnaHuLct+9KUkwQUswkYwJ+4h
 rqOZD5pRnVJ3z2cUnsUVmJaFRUM1zShFtulA0SJXcb68tA72iU7cOqd2W+3iP1GbhqhR
 gw3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=0ucnjFKd28Tf+W0k0cKJLPb/VcjJsSWQNUvFfYSvuec=;
 b=5CH4BBo7HapeUEBASpCa9Xr5zrcRFHXVljspSzSRdvFfcvQpr82EqhIUCmINaQGzkt
 k7NfFsZ2hDkZ/lb5pKSXKBPA33v4nBBLhqY2ShLSxf7DP8gYLWwRsw4SoXMG/cgVxzKa
 eKnzkkRQHE94L1UM0gfDoq6VrHZhFvX4Mzgz+Sr+oWQh0BP/DgdnV3oF/ztIvNqM+6Ri
 3q+80FDzjFgdysaXEjjx0HcqlC11V/nkQ+FBNKKLQDHK9x9W2+xHa6V2/XsGiEC/MquD
 II4SNT1lGdnYq7vDuskB69BBKFPRk4WNbbd6c2mFLlMRwQPBYKPmnWFoFqn3VFqm9K8A
 dKLw==
X-Gm-Message-State: AOAM53096xcMSYXNh1I8fgiRUdhpFblJbJ/RSrJwXmoJGY1yrmPfl3Xb
 gs0lIFMoDkqBnuXFxlnQI8E=
X-Google-Smtp-Source: ABdhPJyZ5PdSzE8MpJHh+wukQwEggZ85lWeSn46EcyF/aB7nRi7vu866Il+NdtIoeNpkflbb91DjMg==
X-Received: by 2002:a19:5f16:0:b0:44a:2507:5e90 with SMTP id
 t22-20020a195f16000000b0044a25075e90mr14520906lfb.24.1648818320442; 
 Fri, 01 Apr 2022 06:05:20 -0700 (PDT)
Received: from smtpclient.apple (31-178-191-245.dynamic.chello.pl.
 [31.178.191.245]) by smtp.gmail.com with ESMTPSA id
 i8-20020a0565123e0800b0044a74e0954dsm238724lfv.66.2022.04.01.06.05.19
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 01 Apr 2022 06:05:19 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: Piotr Oniszczuk <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220401125205.GL4012@pengutronix.de>
Date: Fri, 1 Apr 2022 15:05:16 +0200
Cc: dri-devel@lists.freedesktop.org,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?utf-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>
Message-Id: <5420D26D-34FD-4637-B602-F6271E38BB8D@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220401125205.GL4012@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220401_060524_783681_845383BB 
X-CRM114-Status: GOOD (  21.68  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Cgo+IFdpYWRvbW/Fm8SHIG5hcGlzYW5hIHByemV6IFNhc2NoYSBIYXVlciA8cy5oYXVlckBwZW5n
dXRyb25peC5kZT4gdyBkbml1IDAxLjA0LjIwMjIsIG8gZ29kei4gMTQ6NTI6Cj4gCj4gQmFzZWQg
b24gdGhlIGRpc2N1c3Npb24gd2l0aCBBbmR5IHBsZWFzZSB0cnkgdGhlIGZvbGxvd2luZyBwYXRj
aCwgaXQKPiBzaG91bGQgZml4IHlvdXIgZ3JlZW4gc2NyZWVuIGlzc3VlLiBOb3RlIHRoYXQgd2l0
aCB0aGlzIHBhdGNoIHRoZQo+IENSVEMgYW5kIHBsYW5lIGlkcyB3aWxsIGNoYW5nZSwgc28gdGhl
IG1vZGV0ZXN0IGNvbW1hbmRzIG5lZWQgdG8gYmUKPiBhZGp1c3RlZCBhY2NvcmRpbmdseS4KPiAK
PiBTYXNjaGEKPiAKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tODwtLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0KPiAKPiAtLSAKPiBGcm9tIGNiYzAzMDczNjIzYTcxODAyNDMzMzFhYzI0YzNh
ZmFmOWRlYzc1MjIgTW9uIFNlcCAxNyAwMDowMDowMCAyMDAxCj4gRnJvbTogU2FzY2hhIEhhdWVy
IDxzLmhhdWVyQHBlbmd1dHJvbml4LmRlPgo+IERhdGU6IEZyaSwgMSBBcHIgMjAyMiAxNDo0ODo0
OSArMDIwMAo+IFN1YmplY3Q6IFtQQVRDSF0gZml4dXAhIGRybTogcm9ja2NoaXA6IEFkZCBWT1Ay
IGRyaXZlcgo+IAo+IC0tLQo+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1f
dm9wMi5jIHwgMTQgKysrKysrKysrKysrKysKPiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9u
cygrKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX3ZvcDIuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5j
Cj4gaW5kZXggN2RiYTdiOWI2M2RjNi4uMTQyMWJmMmYxMzNmMSAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4gQEAgLTIyODcsNiArMjI4Nywy
MCBAQCBzdGF0aWMgaW50IHZvcDJfY3JlYXRlX2NydGMoc3RydWN0IHZvcDIgKnZvcDIpCj4gCQkJ
fQo+IAkJfQo+IAo+ICsJCWlmICh2b3AyLT5kYXRhLT5zb2NfaWQgPT0gMzU2Nikgewo+ICsJCQkv
Kgo+ICsJCQkgKiBPbiBSSzM1NjYgdGhlc2Ugd2luZG93cyBkb24ndCBoYXZlIGFuIGluZGVwZW5k
ZW50Cj4gKwkJCSAqIGZyYW1lYnVmZmVyLiBUaGV5IHNoYXJlIHRoZSBmcmFtZWJ1ZmZlciB3aXRo
IHNtYXJ0MCwKPiArCQkJICogZXNtYXJ0MCBhbmQgY2x1c3RlcjAgcmVzcGVjdGl2ZWx5Lgo+ICsJ
CQkgKi8KPiArCQkJc3dpdGNoICh3aW4tPmRhdGEtPnBoeXNfaWQpIHsKPiArCQkJY2FzZSBST0NL
Q0hJUF9WT1AyX1NNQVJUMToKPiArCQkJY2FzZSBST0NLQ0hJUF9WT1AyX0VTTUFSVDE6Cj4gKwkJ
CWNhc2UgUk9DS0NISVBfVk9QMl9DTFVTVEVSMToKPiArCQkJCWNvbnRpbnVlOwo+ICsJCQl9Cj4g
KwkJfQo+ICsKPiAJCWlmICh3aW4tPnR5cGUgPT0gRFJNX1BMQU5FX1RZUEVfT1ZFUkxBWSkKPiAJ
CQlwb3NzaWJsZV9jcnRjcyA9ICgxIDw8IG52cHMpIC0gMTsKPiAKPiAtLSAKPiAyLjMwLjIKPiAK
PiBQZW5ndXRyb25peCBlLksuICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgfAo+IFN0ZXVlcndhbGRlciBTdHIuIDIxICAgICAgICAgICAgICAg
ICAgICAgICB8IGh0dHA6Ly93d3cucGVuZ3V0cm9uaXguZGUvICB8Cj4gMzExMzcgSGlsZGVzaGVp
bSwgR2VybWFueSAgICAgICAgICAgICAgICAgIHwgUGhvbmU6ICs0OS01MTIxLTIwNjkxNy0wICAg
IHwKPiBBbXRzZ2VyaWNodCBIaWxkZXNoZWltLCBIUkEgMjY4NiAgICAgICAgICAgfCBGYXg6ICAg
KzQ5LTUxMjEtMjA2OTE3LTU1NTUgfAoKU2FzY2hhCgpOb3cgd29ya3MgcGVyZmVjdGx5IQooaGQg
cGxheWJhY2sgd2l0aCAzLjUuLi41LjUlIGNwdSB3aGlsZSByZW5kZXJpbmcgdG8gZHJtIHBsYW5l
KQoKRmFudGFzdGljIHdvcmsgb2YgWW91IQoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
