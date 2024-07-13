Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A663DC3DA42
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jul 2024 06:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:
	From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ipE+76lRuKmwxmJLL8cerra2NwCn8UsT262+Kw8kPFM=; b=1LcFHxLhLUwAE9
	Rk9jemU0c+ixWLbJeGIhDL2JBmpnNKRRY4vwue/Y5KMmyanjVHAepyxWhSFyHwcOFCvp8Kv9gCHbN
	hDUqv3FHtOhtDI4NTbQCzM00cWuuM67aVv6qP1jqJB5AKQ7WU8MQolSHmIjRaJAWsfCwjjhzRecOv
	QEDJDVPR+YJFVsSwCxduqJYKLun7/4MqIendNRcATMi/xUzaj28nv+Dz7wQeyur1b7AfOVUfcbQbR
	NWqeD8mhYyVM5VCOGyafGF+tkw2V9kTNs/rkHnq8xearFgBIezR3mLy7cZ8y56t/NthJ+izXk5Wmg
	nw6xIOlnxMISZiaP6GaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSWZI-000000022yb-0uU7;
	Sat, 13 Jul 2024 06:49:16 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sSWYz-000000022v2-1ZXU;
	Sat, 13 Jul 2024 06:48:58 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 12DD0612AC;
	Sat, 13 Jul 2024 06:48:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2DB6CC4AF10;
	Sat, 13 Jul 2024 06:48:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720853335;
	bh=rmngPodD1hpovVDZjrY0POcxROayfR4qJFc2JSoZNHg=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=jzNsA6MZh4gRJnAtWA224bQbcwcmRlfulT9/C5iGyz/mqns3Mkk7D1loYEBiVfVBJ
	 F7JkLxOZoK1GketP7VEYlx7GHJyYlyIbHa3lH+H/lWwCEu3dznfMsXna03EptbfAVc
	 w8LIf99uW9VNjJeqdWpelszhnIc8rPdD5lC5p4p64DR1Dd5jRo3VQNa4S3hAiUM3Xy
	 3wbULs/3/B6cXzWKlYB9xyCWyZgxmQB+mUrQlq9k7e1E505BxC/tz1d52+9K/lvIg+
	 QDorsjOJ/gpt/oE4jCp5U35Fn/jC3GK0JqdaL5HE4PL4RJ1TvhDdJkStpktuXMtVK1
	 ywpW65tEtl4TA==
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ee920b0781so26702491fa.1;
        Fri, 12 Jul 2024 23:48:55 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCXNwxqUiMxlZ22hC9qAOxKUmPg34bC1kMZ+/um+GzpMjDwxed5pZiwAJ2PT/ZOGcVg39s4adDhAMj++mUeG4sqEFyYkQr0pSupVWluvVlm5xSgabS3751BmDqILlGLzcAw6jacba7tFTcka3GF1N8vgikznoLcdPR0=
X-Gm-Message-State: AOJu0Yx3ZzxaWFgFsB/fm8KGDYIbRfgTIC6vdKyywqQxm9wz9YGJNMgd
	mS7nIIaJHt8o+vLKx7xaMXl8k3xsc9bCllwZb4CIpolb2Yw6T+qLK+pLiixw8ffXKJ6JNbnVACq
	7mR9lqozPQELPm5lwaycveryYI5o=
X-Google-Smtp-Source: AGHT+IH/4Jry0qoasCXWKjUAZkBfuqHL+VReoVc9bEqJlVdcgZjP7WNeITu1eBxpBYc6Ar9/BFXa9+EFkGyjAzlRL4w=
X-Received: by 2002:a2e:9595:0:b0:2ec:58e8:d7a6 with SMTP id
 38308e7fff4ca-2eeb30b9b78mr86285991fa.5.1720853333390; Fri, 12 Jul 2024
 23:48:53 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1720830725.git.daniel@makrotopia.org>
In-Reply-To: <cover.1720830725.git.daniel@makrotopia.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Sat, 13 Jul 2024 14:48:39 +0800
X-Gmail-Original-Message-ID: <CAGb2v64ajgK_4G_ANFgwxQToEzDjuBgbmozb7CLxJyNDo-MkCw@mail.gmail.com>
Message-ID: <CAGb2v64ajgK_4G_ANFgwxQToEzDjuBgbmozb7CLxJyNDo-MkCw@mail.gmail.com>
Subject: Re: [PATCH v6 0/3] hwrng: add hwrng support for Rockchip RK3568
To: Daniel Golle <daniel@makrotopia.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240712_234857_530287_7FD1E376 
X-CRM114-Status: GOOD (  29.88  )
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
Reply-To: wens@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Herbert Xu <herbert@gondor.apana.org.au>, devicetree@vger.kernel.org, Martin Kaiser <martin@kaiser.cx>, Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@debian.org>, linux-crypto@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>, Olivia Mackall <olivia@selenic.com>, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, Aurelien Jarno <aurelien@aurel32.net>, Heiko Stuebner <heiko@sntech.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGksCgpPbiBTYXQsIEp1bCAxMywgMjAyNCBhdCA4OjM44oCvQU0gRGFuaWVsIEdvbGxlIDxkYW5p
ZWxAbWFrcm90b3BpYS5vcmc+IHdyb3RlOgo+Cj4gUm9ja2NoaXAgU29DcyB1c2VkIHRvIGhhdmUg
YSByYW5kb20gbnVtYmVyIGdlbmVyYXRvciBhcyBwYXJ0IG9mIHRoZWlyCj4gY3J5cHRvIGRldmlj
ZS4KPgo+IEhvd2V2ZXIgbmV3ZXIgUm9ja2NoaXAgU29DcyBsaWtlIHRoZSBSSzM1NjggaGF2ZSBh
biBpbmRlcGVuZGVudCBUcnVlCj4gUmFuZG9tIE51bWJlciBHZW5lcmF0b3IgZGV2aWNlLiBUaGlz
IHBhdGNoc2V0IGFkZHMgYSBkcml2ZXIgZm9yIGl0IGFuZAo+IGVuYWJsZXMgaXQgaW4gdGhlIGRl
dmljZSB0cmVlLgo+CgpIYXZlIHlvdSB0ZXN0ZWQgYW55IG9mIHRoZSBsYXRlciBpdGVyYXRpb25z
PyBGb3IgbWUgaXQgc3RvcHBlZCB3b3JraW5nCmF0IHYzLiBBZnRlciB2MyAoaW5jbHVkaW5nIHYz
KSwgYWxsIGl0IHNwaXRzIG91dCBpcyB6ZXJvcy4KCj4gdjUgLT4gdjY6Cj4gICogUGF0Y2ggMTog
dW5jaGFuZ2VkCj4KPiAgKiBQYXRjaCAyOiBnZXQgcmlkIG9mICNpZmRlZgo+ICAgIC0gdXNlIGlm
IChJU19FTkFCTEVEKC4uLikpIHsgLi4uIH1pbnN0ZWFkIG9mICNpZmRlZiBpbnNpZGUgZnVuY3Rp
b25zCj4gICAgLSB1c2UgX19tYXliZV91bnVzZWQgZm9yIGZ1bmN0aW9ucyBwcmV2aW91c2x5IGVu
Y2xvc2VkIGJ5ICNpZmRlZidlcnkKPgo+ICAqIFBhdGNoIDM6IHVuY2hhbmdlZAo+Cj4gdjQgLT4g
djU6Cj4gICogUGF0Y2ggMTogYWx3YXlzIHVzZSBSSzM1NjggbmFtZQo+ICAgIC0gdXNlIGZ1bGwg
UkszNTY4IG5hbWUgaW4gcGF0Y2ggZGVzY3JpcHRpb24KPiAgICAtIGFkZCBSSzM1NjggdG8gdGl0
bGUgaW4gYmluZGluZwo+Cj4gICogUGF0Y2ggMjogZnVsbCBuYW1lIGFuZCBjb3NtZXRpY3MKPiAg
ICAtIGFsc28gYWx3YXlzIG1lbnRpb24gUkszNTY4IGFzIHRoZXJlIG1heSBiZSBvdGhlciBSTkcg
aW4gb3RoZXIKPiAgICAgIChmdXR1cmUpIFJvY2tjaGlwIFNvQ3MKPiAgICAtIHJlbW92ZSBkZWJ1
ZyBvdXRwdXQgb24gc3VjY2Vzc2Z1bCBwcm9iZQo+ICAgIC0gdXNlIE1PRFVMRV9BVVRIT1Igc2V2
ZXJhbCB0aW1lcyBpbnN0ZWFkIG9mIHNpbmdsZSBjb21tYS1zZXBhcmF0ZWQKPgo+ICAqIFBhdGNo
IDM6IHVuY2hhbmdlZAo+Cj4gdjMgLT4gdjQ6Cj4gICogUGF0Y2ggMTogbWlub3IgY29ycmVjdGlv
bnMKPiAgICAtIGZpeCBSb2tjaGlwIC0+IFJvY2tjaGlwIHR5cG8KPiAgICAtIGNoYW5nZSBjb21t
aXQgdGl0bGUgYXMgcmVxdWVzdGVkCj4KPiAgKiBQYXRjaCAyOiBpbXByb3ZlZCBlcnJvciBoYW5k
bGluZyBhbmQgcmVzb3VyY2UgbWFuYWdlbWVudAo+ICAgIC0gQWx3YXlzIHVzZSB3cml0ZWwoKSBp
bnN0ZWFkIG9mIHdyaXRlbF9yZWxheGVkKCkKPiAgICAtIFVzZSBwbV9ydW50aW1lX3Jlc3VtZV9h
bmRfZ2V0Cj4gICAgLSBDb3JyZWN0bHkgcmV0dXJuIGVycm9yIGNvZGUgaW4gcmtfcm5nX3JlYWQo
KQo+ICAgIC0gTWFrZSB1c2Ugb2YgZGV2bV9yZXNldF9jb250cm9sX2FycmF5X2dldF9leGNsdXNp
dmUKPiAgICAtIFVzZSBkZXZtX3BtX3J1bnRpbWVfZW5hYmxlIGFuZCB0aGVyZSBieSBnZXQgcmlk
IG9mIHJrX3JuZ19yZW1vdmUoKQo+Cj4gICogUGF0Y2ggMzoKPiAgICAtIE1vdmUgbm9kZSB0byBj
b25mb3JtIHdpdGggb3JkZXJpbmcgYnkgYWRkcmVzcwo+Cj4gdjIgLT4gdjM6IHBhdGNoIGFkb3B0
ZWQgYnkgRGFuaWVsIEdvbGxlCj4gICogUGF0Y2ggMTogYWRkcmVzcyBjb21tZW50cyBvZiBLcnp5
c3p0b2YgS296bG93c2tpLCBhZGQgTUFJTlRBSU5FUlMKPiAgICAtIGltcHJvdmVkIGRlc2NyaXB0
aW9uCj4gICAgLSBtZWFuaW5nZnVsIGNsb2NrLW5hbWVzCj4gICAgLSBhZGQgZW50cnkgaW4gTUFJ
TlRBSU5FUlMgZmlsZXMKPgo+ICAqIFBhdGNoIDI6IG51bWVyb3VzIGNvZGUtc3R5bGUgaW1wcm92
ZW1lbnRzCj4gICAgLSBkcm9wIG1pc2xlYWRpbmcgcmtfcm5nX3dyaXRlX2N0bCgpLCBzaW1wbGlm
eSBJL08gd3JpdGVzCgpUaGlzIGlzIHByb2JhYmx5IHRoZSBjdWxwcml0LiBUaGUgUk5HIGFuZCBS
U1QgY29udHJvbCByZWdpc3RlcnMgaGF2ZQplbmFibGUgYml0cyBpbiB0aGVpciB0b3AgMTYgYml0
cy4gV2l0aG91dCB0aG9zZSBzZXQgdG9nZXRoZXIgd2l0aCB0aGUKYWN0dWFsIGJpdCB2YWx1ZXMs
IHRoZSB3cml0ZXMgdG8gdGhlIHJlZ2lzdGVycyBoYXZlIG5vIGVmZmVjdC4KClBsZWFzZSBjaGVj
ayBhbGwgeW91ciB3cml0ZWwgY2FsbHMgYWdhaW5zdCB0aGUgVFJNIGFuZCBhZGQgYXBwcm9wcmlh
dGUKYml0bWFza3MgZm9yIHRoZSB1cHBlciAxNiBiaXRzLgoKCkNoZW5ZdQoKPiAgICAtIGRyb3Ag
dW51c2VkIFRSTkdfUk5HX0RPVVRfWzEtN10gbWFjcm9zCj4gICAgLSBoYW5kbGUgZXJyb3IgaGFu
ZGxpbmcgZm9yIHBtX3J1bnRpbWVfZ2V0X3N5bmMoKQo+ICAgIC0gdXNlIG1lbWNweV9mcm9taW8o
KSBpbnN0ZWFkIG9mIG9wZW4gY29kaW5nIGZvci1sb29wCj4gICAgLSBzb21lIG1pbm9yIHdoaXRl
LXNwYWNlcyBmaXhlcwo+Cj4gICogUGF0Y2ggMzoKPiAgICAtIHVzZSBjbG9jay1uYW1lcyBhcyBk
ZWZpbmVkIGluIGR0LWJpbmRpbmdzCj4KPiB2MSAtPiB2MjoKPiAgKiBQYXRjaCAxOiBmaXggaXNz
dWVzIHJlcG9ydGVkIGJ5IFJvYiBIZXJyaW5nIGFuZCBLcnp5c3p0b2YgS296bG93c2tpOgo+ICAg
IC0gUmVuYW1lIHJvY2tjaGlwLXJuZy55YW1sIGludG8gcm9ja2NoaXAscmszNTY4LXJuZy55YW1s
Cj4gICAgLSBGaXggYmluZGluZyB0aXRsZSBhbmQgZGVzY3JpcHRpb24KPiAgICAtIEZpeCBjb21w
YXRpYmxlIHByb3BlcnR5Cj4gICAgLSBSZW5hbWUgY2xvY2tzIGFuZCBhZGQgdGhlIGNvcnJlc3Bv
bmRpbmcgZGVzY3JpcHRpb25zCj4gICAgLSBEcm9wIHJlc2V0LW5hbWVzCj4gICAgLSBBZGQgYSBi
dXMgZGVmaW5pdGlvbiB3aXRoICNhZGRyZXNzLWNlbGxzIGFuZCAjc2l6ZS1jZWxscyB0byB0aGUK
PiAgICAgIGV4YW1wbGUuCj4KPiAgKiBQYXRjaCAyOiBmaXggaXNzdWUgcmVwb3J0ZWQgYnkga2Vy
bmVsIHRlc3Qgcm9ib3QgPGxrcEBpbnRlbC5jb20+Cj4gICAgLSBEbyBub3QgcmVhZCB0aGUgcmFu
ZG9tIHJlZ2lzdGVycyBhcyBiaWcgZW5kaWFuLCBsb29raW5nIGF0IHRoZQo+ICAgICAgUkszNTY4
IFRSTSB0aGlzIGlzIGFjdHVhbGx5IG5vdCBuZWVkZWQuIFRoaXMgZml4ZXMgYSBzcGFyc2UKPiAg
ICAgIHdhcm5pbmcuCj4KPiAgKiBQYXRjaCAzOiB1bmNoYW5nZWQKPgo+IEF1cmVsaWVuIEphcm5v
ICgzKToKPiAgIGR0LWJpbmRpbmdzOiBybmc6IEFkZCBSb2NrY2hpcCBSSzM1NjggVFJORwo+ICAg
aHdybmc6IGFkZCBod3JuZyBkcml2ZXIgZm9yIFJvY2tjaGlwIFJLMzU2OCBTb0MKPiAgIGFybTY0
OiBkdHM6IHJvY2tjaGlwOiBhZGQgRFQgZW50cnkgZm9yIFJORyB0byBSSzM1NngKPgo+ICAuLi4v
YmluZGluZ3Mvcm5nL3JvY2tjaGlwLHJrMzU2OC1ybmcueWFtbCAgICAgfCAgNjEgKysrKysKPiAg
TUFJTlRBSU5FUlMgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHwgICA3ICsKPiAg
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NnguZHRzaSAgICAgIHwgICA5ICsKPiAg
ZHJpdmVycy9jaGFyL2h3X3JhbmRvbS9LY29uZmlnICAgICAgICAgICAgICAgIHwgIDE0ICsrCj4g
IGRyaXZlcnMvY2hhci9od19yYW5kb20vTWFrZWZpbGUgICAgICAgICAgICAgICB8ICAgMSArCj4g
IGRyaXZlcnMvY2hhci9od19yYW5kb20vcm9ja2NoaXAtcm5nLmMgICAgICAgICB8IDIyMCArKysr
KysrKysrKysrKysrKysKPiAgNiBmaWxlcyBjaGFuZ2VkLCAzMTIgaW5zZXJ0aW9ucygrKQo+ICBj
cmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3JuZy9y
b2NrY2hpcCxyazM1Njgtcm5nLnlhbWwKPiAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvY2hh
ci9od19yYW5kb20vcm9ja2NoaXAtcm5nLmMKPgo+IC0tCj4gMi40NS4yCj4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
