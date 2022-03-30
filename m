Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 583B6C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Mar 2022 08:42:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Cc:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GUDUudoz+VBlZ2skaQIfY6sEJXesTbHpQpc09WwfaJo=; b=GAzU3IIE7R7nP3
	L7ki5idORFj7w3o9deLgUZqeu96cGNLZtlmmHrv/AUeKmqaOOKohdTIAHqJPSy0A5s/Vco4wYPq/1
	92HQxGsO1gyfZBU8aDwuYaBol+e345TXcE33STmEbp1YchqnZSXUXJfoJMdxPJkgLyFgvKv2Xu/ir
	YhYmbo5AdWan56G/NvHHiQN0q/cIb7gxuaK+swlazu6EqWpC+NhW1Cixv5PWpZe+TbeiFAvcS9AHl
	DN0hffZnwb1IXe72UEnHlfVjbYc1QXX7HfnEqD+4Q6RDEcetoJ9NSH2TxN8IS2zMy9DW+M5vbk2MF
	tvHhwmqECFAK9VUmeFTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nZTuB-00Erj8-Jm; Wed, 30 Mar 2022 08:42:15 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nZTty-00Ergw-BG; Wed, 30 Mar 2022 08:42:03 +0000
Received: by mail-lj1-x235.google.com with SMTP id q5so26697288ljb.11;
 Wed, 30 Mar 2022 01:42:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+9NAIZ4he+5wbFjieDpyyOMlrLR7EIBsC/xZAKhyDLs=;
 b=qX2yHyMU56tvgVkUq3+GsLehw23QhR0HI9wkwgFh4z62kcokNSjEkbK9N62tWdAWS5
 O3qcgn9qNcyqFT9RFhmkYav5rjXgVBNBbjYTSefLheaZMYFZv04PqjLi2WZ77FfLJlP0
 5I/OmpMX163Lv1Yr8jNnDneqJHY2DfOq1Kl7he7FjFHWFvBR0aFuh5AAvS2T8tIG5MES
 3eUoGcE3ncWby1ly6qlO6wLNp5Iza02SvmFArlA9SwAD2IT4a7ZcDHgolawD+4Xy2mru
 v8GCquG3Z3gBKBmtWX7MGmXPLx/QCqtvvXH4xEiV7ka11jGl1HGLbsAv0i4PeF8wb2fk
 HJXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=+9NAIZ4he+5wbFjieDpyyOMlrLR7EIBsC/xZAKhyDLs=;
 b=cPPKAMbir6aCOqPVJ9q/oQQvkZHNZVichK1zTyC6/8gN2i4Glgcx1QxOZlLa3BRUf2
 NRouIy1Dl53KBz/OVCc2aMAcezA13pPAaRIr/MvvgnpfgqZcPV3Lo+CAGZGKdo74C+WU
 s5YtVDsRunWu/F7t3QQHvHnGe1TBciQIGHIWyZkamcIhqNh28QWQl51M7wyqfzLBh9pw
 I4ShoLrFvLmIs+rWFHa39/zwi7EI4FcmVbSipcINzeiC+4xet3BoH4Vnj9UVJFIKQ0Pp
 Mi3nSVlAPWCRD3/sPQbzYJc5NYEU14vAcsi2l4MUuMDvqMZC9KhW0ZxOFoCItnQ6CMhe
 fjZg==
X-Gm-Message-State: AOAM5316e2KK2aN1ZwJ77FD4K4i2dTMTZyTLR7krVQPigyT0spdsHy1W
 yZ9bBVToY2sLl+nl43oddP8=
X-Google-Smtp-Source: ABdhPJw0FyGyKqpPQR7uYXRNk9Lah5ZsPZaG3s6fl/io2YKb1BrITcnvQS16RQ1v8yIIEfzSOecF8g==
X-Received: by 2002:a05:651c:204:b0:249:832a:12b with SMTP id
 y4-20020a05651c020400b00249832a012bmr5909138ljn.473.1648629719974; 
 Wed, 30 Mar 2022 01:41:59 -0700 (PDT)
Received: from smtpclient.apple (public-gprs541832.centertel.pl.
 [31.61.235.201]) by smtp.gmail.com with ESMTPSA id
 br38-20020a056512402600b0044a70a9494bsm1810451lfb.67.2022.03.30.01.41.58
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Mar 2022 01:41:59 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [PATCH v9 00/23] drm/rockchip: RK356x VOP2 support
From: "piotro.oniszczuk@google.com" <piotr.oniszczuk@gmail.com>
In-Reply-To: <20220330072822.GX12181@pengutronix.de>
Date: Wed, 30 Mar 2022 10:41:56 +0200
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
Message-Id: <0D8F5951-5375-46B5-BFF0-7ED410371EB7@gmail.com>
References: <20220328151116.2034635-1-s.hauer@pengutronix.de>
 <FB201567-AE5A-4242-82F1-7C55D8F111EA@gmail.com>
 <20220330072822.GX12181@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220330_014202_431185_FCE697AF 
X-CRM114-Status: GOOD (  27.06  )
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
dXRyb25peC5kZT4gdyBkbml1IDMwLjAzLjIwMjIsIG8gZ29kei4gMDk6Mjg6Cj4gCj4+IAo+PiBZ
b3UgY2FuIGVhc2lseSByZXByb2R1Y2Ugd2l0aCBtb2RldGVzdCB1dGlsaXR5Ogo+PiAKPj4gbW9k
ZXRlc3QgLVAgNDNANjc6MTkyMHgxMDgwQE5WMTIKPiAKPiBUaGlzIG9ubHkgc2V0cyB0aGUgb3Zl
cmxheSwgYnV0IGhvdyBkaWQgeW91IGdldCBzb21ldGhpbmcgb24gdGhlIHNjcmVlbgo+IGluaXRp
YWxseT8KPiAKCkknbSBub3Qgc3VyZSB0aGF0IGFib3ZlIGNvbW1hbmQgb25seSBzZXRzIHBsYW5l
LgpPbiBvdGhlciBTb0NzIGnigJltIHRlc3RpbmcgaXQgZ2l2ZXMgZXhwZWN0ZWQgcmVzdWx0czog
ZGlhZ29uYWwgY29sb3JlZCBzdHJpcGVzLgpUaGVyZSBpcyBzaW5nbGUgZXhjZXB0aW9uOiByazM1
Nnggd2l0aCB2b3AyIC0gd2hlcmUgc2NyZWVuIGlzIGdyZWVuIHVubGVzcyBpIOKAnmZpeC9lbmFi
bGXigJ0gYnkgcGxheWluZyB3aXRoIHBsYW5lICM2OSAgIAoKPiBJIGRpZCB3aXRoICJtb2RldGVz
dCAtcyA2OUA2NzoxOTIweDEwODAgLWQiIGFuZCB3aXRoIHRoaXMgaXQgd29ya3MgYXMKPiBleHBl
Y3RlZCwgSSBjYW4ndCByZXByb2R1Y2UgYW55IGdyZWVuIHNjcmVlbiBpc3N1ZSBoZXJlLgoKSSBz
ZWUgeW91IGFyZSB1c2luZyBwbGFuZSAjNjkuCldoeSBub3QgIzQzPwpJcyBwbGFuZSAjNDMgd29y
a2luZyBvayBmb3IgeW91PwoKSeKAmW0gdXNpbmcgcGxhbmUgIzQzIGJlY2F1c2U6IGFwcGxpY2F0
aW9uIChwbGF5ZXIpIC0gYXQgc3RhcnQgLSAgcXVlcmllcyBhbGwgcGxhbmVzIGFuZCBzZWxlY3Rz
IGZpcnN0IHBsYW5lIG9mZmVyaW5nIGZvcm1hdCBiZWluZyB3aXRoaW4gb2ZmZXJlZCBmb3JtYXRz
IGJ5IHByb3ZpZGVyICh2aWRlbyBkZWNvZGVyOyBOVjEyIGZyb20gcmszNTZ4IGhhbnRybyB2aWRl
byBkZWNvZGVyKS4KCnBscyBsb29rIG9uIGFwcCBsb2cgcmVnYXJkaW5nIHBsYW5lcyBkaXNjb3Zl
cnkgYW5kIGVsZWN0aW9uOiBodHRwczovL3Bhc3RlYmluLmNvbS9lZEFoYmN2VQoKTm93IC0gbG9v
a2luZyB3aGF0IFZPUDIgcmVwb3J0czogaHR0cHM6Ly9wYXN0ZWJpbi5jb20vOHVqa2FWOW4KaXMg
c2VlIGZpcnN0IHBsYW5lIGFjY2VwdGluZyBOVjEyIGlzICM0MyAtIHNvIG15IGFwcCBpcyBlbGVj
dGluZyB0aGlzIHBsYW5lIHRvIHVzZSBmb3IgZGlzcGxheWluZyB2aWRlby4KClRoaXMgc3RyYXRl
Z3kgd29ya3Mgd2VsbCBmb3IgYWxsIDEzIHBsYXRmb3JtcyBp4oCZbSBzdXBwb3J0aW5nIChvbmx5
IDEzIGkgaGF2ZSBpbiBteSB0ZXN0YmVkKS4KCklmIHRoaXMgYXBwcm9hY2ggaXMgLSBieSBZb3Vy
cyBWT1AyIHBhdGNoZXMgZ29hbCAtIGlzIG5vdCBzdXBwb3J0ZWQgLSB0aGVuIE9LLgpJIHVuZGVy
c3RhbmQgdGhpcyA6LSkKCkJ1dCAtIGlmIFlvdSB3YW50IHRvIHN1cHBvcnQgRFJNIGZlYXR1cmVz
IGluIHRoZSBzYW1lIHdheSBsaWtlIG90aGVyIFNPQyBhcmUgZG9pbmcgKGFuZCB3b3JraW5nIHdl
bGwgd2l0aCBLT0RJL015dGhUVi9tcHYvZXRjKSAtIHRoZW4gaSB0aGluazoKCjFcIERSTSBwbGFu
ZSAjNDMgbm90IHN1cHBvcnRzIE5WMTIgLSBidXQgY29kZSB3cm9uZ2x5IHJlcG9ydHMgTlYxMiBm
b3JtYXQgaXMgc3VwcG9ydGVkLCBvcgoyXCBEUk0gcGxhbmUgIzQzIGlzIHN1cHBvcnRlZCAtIGJ1
dCBjb2RlIGhhcyBidWcgcmVzdWx0aW5nIHdpdGggZ3JlZW4gc2NyZWVuLgoKUGxzIGxldCBtZSBr
bm93IHdoYXQgeW91IHRoaW5rIQoKCj4gCj4gSSBmb3VuZCBhbm90aGVyIHByb2JsZW0gdGhvdWdo
IHdoaWNoIG1pZ2h0IG9yIG1pZ2h0IG5vdCBiZSByZWxhdGVkIHdpdGgKPiB5b3VyIGlzc3VlLiBJ
IHNhdyB0aGF0IHRoZSBvdmVybGF5IGlzIG5vdCBleGFjdGx5IGNlbnRlcmVkIGFzIGl0IG91Z2h0
Cj4gdG8gYmUuIFRoaXMgZ29lcyBkb3duIHRvIHdyb25nIGRlbGF5IHNldHRpbmdzIGZvciB0aGUg
b3ZlcmxheSwgdGhlCj4gZm9sbG93aW5nIHBhdGNoIGZpeGVzIHRoaXMuCj4gCj4gU2FzY2hhCj4g
Cj4gLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tODwtLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gCj4gRnJvbSBmOWE5MjQwMTM0NGU4YWEzMjAzZmNhMjIzNmRkNGE0MGNj
ODY5MGY2IE1vbiBTZXAgMTcgMDA6MDA6MDAgMjAwMQo+IEZyb206IFNhc2NoYSBIYXVlciA8cy5o
YXVlckBwZW5ndXRyb25peC5kZT4KPiBEYXRlOiBXZWQsIDMwIE1hciAyMDIyIDA5OjIyOjI2ICsw
MjAwCj4gU3ViamVjdDogW1BBVENIXSBmaXh1cCEgZHJtOiByb2NrY2hpcDogQWRkIFZPUDIgZHJp
dmVyCj4gCj4gLS0tCj4gZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV92b3Ay
LmMgfCA0ICsrLS0KPiAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9u
cygtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX3ZvcDIuYyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5j
Cj4gaW5kZXggNjllOTg3MGQ1ZjJkYy4uN2RiYTdiOWI2M2RjNiAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX3ZvcDIuYwo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fdm9wMi5jCj4gQEAgLTE5NzksMTAgKzE5Nzks
MTAgQEAgc3RhdGljIHZvaWQgdm9wMl9zZXR1cF9kbHlfZm9yX3dpbmRvd3Moc3RydWN0IHZvcDIg
KnZvcDIpCj4gCQkJc2RseSB8PSBGSUVMRF9QUkVQKFJLMzU2OF9TTUFSVF9ETFlfTlVNX19FU01B
UlQxLCBkbHkpOwo+IAkJCWJyZWFrOwo+IAkJY2FzZSBST0NLQ0hJUF9WT1AyX1NNQVJUMDoKPiAt
CQkJc2RseSB8PSBGSUVMRF9QUkVQKFJLMzU2OF9TTUFSVF9ETFlfTlVNX19TTUFSVDEsIGRseSk7
Cj4gKwkJCXNkbHkgfD0gRklFTERfUFJFUChSSzM1NjhfU01BUlRfRExZX05VTV9fU01BUlQwLCBk
bHkpOwo+IAkJCWJyZWFrOwo+IAkJY2FzZSBST0NLQ0hJUF9WT1AyX1NNQVJUMToKPiAtCQkJc2Rs
eSB8PSBGSUVMRF9QUkVQKFJLMzU2OF9TTUFSVF9ETFlfTlVNX19TTUFSVDAsIGRseSk7Cj4gKwkJ
CXNkbHkgfD0gRklFTERfUFJFUChSSzM1NjhfU01BUlRfRExZX05VTV9fU01BUlQxLCBkbHkpOwo+
IAkJCWJyZWFrOwo+IAkJfQo+IAl9Cj4gLS0gCj4gMi4zMC4yCj4gCj4gLS0gCj4gUGVuZ3V0cm9u
aXggZS5LLiAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgIHwKPiBTdGV1ZXJ3YWxkZXIgU3RyLiAyMSAgICAgICAgICAgICAgICAgICAgICAgfCBo
dHRwOi8vd3d3LnBlbmd1dHJvbml4LmRlLyAgfAo+IDMxMTM3IEhpbGRlc2hlaW0sIEdlcm1hbnkg
ICAgICAgICAgICAgICAgICB8IFBob25lOiArNDktNTEyMS0yMDY5MTctMCAgICB8Cj4gQW10c2dl
cmljaHQgSGlsZGVzaGVpbSwgSFJBIDI2ODYgICAgICAgICAgIHwgRmF4OiAgICs0OS01MTIxLTIw
NjkxNy01NTU1IHwKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
