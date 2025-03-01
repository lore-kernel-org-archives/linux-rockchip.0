Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE59FC021B8
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Mar 2025 11:12:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/MScCmsuuYccHotnkThtDf3Z8r5d1gK0Uv0MAvTBP4Y=; b=xwVEzKpP55UwtV
	FTLfKvxJM5wQ5UiQP4eeHhgNmPVM/5SHfC125xXEq/H3oDfGfwQkO3VeddsbpM5P5CdVO/03j2woe
	0qF/STJMSR9rlSRVbv5Nn7Fn6WAxMWZYkaB2ifqSA7rwlpk6RnsNfjHGMAYI1pnyasarmoKkj8hrn
	6/8at0wJdf8W+AANpLbMj4dov41Fe5VTfx5R+QN7xtKUPX0J+kLKplO2OIMAyH1Gukkh48FYLXfD6
	JaEE4SD8/TmAF9Siijr5p/mWbXokEvpH7JLv31ls0woxPg8mQ/72FI8xEXEl6COo5IA2vHo4XZzD2
	3ySTkEzE0XFtlkaDr7jQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1toKlY-0000000DoPW-25gk;
	Sat, 01 Mar 2025 11:12:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1toKk2-0000000Do8Y-4C4v;
	Sat, 01 Mar 2025 11:10:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fWrJQQO1z1ieS3LPSgSxBoRM/rUdNEDOVIFkMVgWCtA=; b=wq4SDf5NC6U4ynKABYC9ryyTbN
	xJ1TZTOPFknUkOJCCp+5enVb0+D31fKn5kOzz8/Elu6o9vDPbfvO3+3cLwwzk3jOQ7ZSx7YHWuly2
	iHiimmw+uBVLHBBrmHNDmbbuh78IVrJZqDdish4Uf0b4/Ri/vZcZc9AAWb2ceOKwK8jELhCUhFESp
	oNYA0HUWaTeIlt0PEycO/raBRgEapwLpXwHHRKDty8mIqqrvto1ts68XD/UGebFfYUXxS/Gv2sehx
	z5m0uCobN+pU4a49FUINcfy+8553v7aNAGEg/hB4TPu/6E7iRWPVpyexbd0WLt6Ho+wkwPY3/MXG1
	Xj4iojuA==;
Received: from i53875b47.versanet.de ([83.135.91.71] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1toKjy-0007sS-JM; Sat, 01 Mar 2025 12:10:42 +0100
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Patrick Wildt <patrick@blueri.se>
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, Kever Yang <kever.yang@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>
Subject: Re: [PATCH v4 2/2] arm64: dts: rockchip: add MNT Reform 2
Date: Sat, 01 Mar 2025 12:10:41 +0100
Message-ID: <3309912.5fSG56mABF@diego>
In-Reply-To: <Z8LiJgNkurF3xt3k@windev.fritz.box>
References: <Z7OaTzIpeJ-IACrl@windev.fritz.box> <2700899.tdWV9SEqCh@phil>
 <Z8LiJgNkurF3xt3k@windev.fritz.box>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250301_031047_059223_5076978C 
X-CRM114-Status: GOOD (  22.67  )
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

QW0gU2Ftc3RhZywgMS4gTcOkcnogMjAyNSwgMTE6MzI6MDYgTUVaIHNjaHJpZWIgUGF0cmljayBX
aWxkdDoKPiBPbiBTdW4sIEZlYiAyMywgMjAyNSBhdCAxMjozODo0MEFNICswMTAwLCBIZWlrbyBT
dHVlYm5lciB3cm90ZToKPiA+IEhpIFBhdHJpY2ssCj4gPiAKPiA+IEFtIE1vbnRhZywgMTcuIEZl
YnJ1YXIgMjAyNSwgMjE6MjI6MjggTUVaIHNjaHJpZWIgUGF0cmljayBXaWxkdDoKPiA+ID4gTU5U
IFJlZm9ybSAyIGlzIGFuIG9wZW4gc291cmNlIGxhcHRvcCB3aXRoIHJlcGxhY2VhYmxlIENQVSBt
b2R1bGVzLAo+ID4gPiBpbmNsdWRpbmcgYSB2ZXJzaW9uIHdpdGggdGhlIFJLMzU4OC1iYXNlZCBN
TlQgUkNPUkVbMV0sIHdoaWNoIGlzIGJhc2VkCj4gPiA+IG9uIEZpcmVmbHkncyBpQ29yZS0zNTg4
USBTb006Cj4gPiA+IAo+ID4gPiAtIFJvY2tjaGlwIFJLMzU4OAo+ID4gPiAtIFF1YWQgQTc2IGFu
ZCBRdWFkIEE1NSBDUFUKPiA+ID4gLSA2IFRPUFMgTlBVCj4gPiA+IC0gdXAgdG8gMzJHQiBMUERE
UjR4IFJBTQo+ID4gPiAtIFNEIENhcmQgc2xvdAo+ID4gPiAtIEdpZ2FiaXQgZXRoZXJuZXQgcG9y
dAo+ID4gPiAtIEhETUkgcG9ydAo+ID4gPiAtIDJ4IG1QQ0llIHBvcnRzIGZvciBXaUZpIG9yIE5W
TWUKPiA+ID4gLSAzeCBVU0IgMy4wIFR5cGUtQSBIT1NUIHBvcnQKPiA+ID4gCj4gPiA+IFsxXSBo
dHRwczovL3Nob3AubW50cmUuY29tL3Byb2R1Y3RzL21udC1yZWZvcm0KPiA+ID4gCj4gPiA+IFNp
Z25lZC1vZmYtYnk6IEx1a2FzIEYuIEhhcnRtYW5uIDxsdWthc0BtbnRyZS5jb20+Cj4gPiA+IFNp
Z25lZC1vZmYtYnk6IFBhdHJpY2sgV2lsZHQgPHBhdHJpY2tAYmx1ZXJpLnNlPgo+ID4gCj4gPiBi
dXJlYXVjcmFjeSBxdWVzdGlvbiwgd2hhdCBpcyBMdWthcycgcmVsYXRpb25zaGlwIHdpdGggdGhl
IHBhdGNoPwo+ID4gVHdvIG9wdGlvbnM6Cj4gPiAoMSkgTHVrYXMgaW5pdGlhbGx5IGRldmVsb3Bl
ZCB0aGUgcGF0Y2gsIHRoZW4gdGhlICJGcm9tOiIgc2hvdWxkIGJlCj4gPiAgICAgc2V0IGFjY29y
ZGluZ2x5Cj4gPiAoMikgQm90aCBvZiB5b3UgZGV2ZWxvcGVkIGl0IHRvZ2V0aGVyLCB0aGVuIHdl
IHNob3VsZCBoYXZlIGEKPiA+ICAgICBDby1EZXZlbG9wZWQtYnk6IEx1a2FzIEYuIEhhcnRtYW5u
IDxsdWthc0BtbnRyZS5jb20+Cj4gPiAgICAgdXAgdGhlcmUKPiA+IAo+IAo+IFRoYW5rcywgd2ls
bCBzZW5kIGEgdjUgd2l0aCBDby1kZXZlbG9wZWQtYnkgdGFnIGFkZGVkISA6KQo+IAo+ID4gCj4g
PiBTb21lIG1vcmUgc3R5bGUgdGhpbmdzIGJlbG93Li4uCj4gPiAKPiAKPiBBcmUgdGhlcmUgZnVy
dGhlciBleGVjcHRpb25zIHRvIHRoZSBhbHBoYWJldGljYWwgcnVsZT8gRm9yIHJlZ3VsYXRvcnMK
PiBJIG9mdGVuIHNlZSBtaW4gYmVmb3JlIG1heCwgd2hpY2ggSSB0aGluayBtYWtlcyBzZW5zZSB0
byB1bmRlcnN0YW5kCj4gdGhlIHJhbmdlIGJ1dCBpc24ndCB0ZWNobmljYWxseSBhbHBoYWJldGlj
YWwuIFRoZSBzYW1lIGZvciBwaW5jdHJsLTAKPiBhbmQgcGluY3RybC1uYW1lcy4KClRoZSAicHJl
ZmVycmVkIiBydWxlcyBhcmUgaW4gWzBdLCBhbmQgaW4gcmVjZW50IHRpbWVzIEkndmUgY29tZSB0
bwphcHByZWNpYXRlIG5vdCBuZWVkaW5nIHRvIGV4cGxhaW4gZXhjZXB0aW9ucyA7LSkgLgoKQnV0
IEkgZG8gc2VlIHRoZW0gYXMgZ3VpZGVsaW5lcywgZXNwZWNpYWxseSBpbiBhIGxlYWYtZHQgKGZv
ciBhIGRldmljZSkKY29uY2Vzc2lvbnMgYXJlIHBvc3NpYmxlLgoKU28geWVzLCBJIGNhbiBkZWZp
bml0bHkgc2VlIG1pbiBiZWZvcmUgbWF4IGFzIGJlbmVmaWNpYWwgYW5kIGlmIHlvdSB3YW50CnRv
IHNvcnQgdGhhdCB3YXksIHRoYXQgaXMgZmluZSBieSBtZQoKCkhlaWtvCgpbMF0gaHR0cHM6Ly93
ZWIuZ2l0Lmtlcm5lbC5vcmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4
LmdpdC90cmVlL0RvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9kdHMtY29kaW5nLXN0
eWxlLnJzdCNuMTEyCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAK
