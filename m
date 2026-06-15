Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBE45CD98CF
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Jun 2026 13:02:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HzMcsqdrkcEC3zWozO6nuasTMgley8OT4SD2AWTSGLA=; b=FcHLVPpAB1DS0U
	IuYQGE1AYP6bm9E3ztWoEMVbu4YVaxkdfGlC3/dTpa+qNYZ83BGh7wmxyHu/tHsvNGuHurToPe3t3
	eI+YQSZRhqsryH06yh3mV24DVSp8tFiMR3EEQhNc2dPbxpIL5rT3AkQQb8UQvohOKy8aFM9CIXHDG
	wMU9ngh/SlxSlvSVNeV0ANNXPY/DNjv2Y+t0nV+ee49N8hpCyPA9ZKLqet7zuByOR9cGrSdvZiCkM
	nH3R4OkrpH5hO8gU+mSG93YAncwS/J9TsvBx735C7XbdEvsDjn2x6FLh7QnnhZ6UQfn2iijLURFXL
	aNn45jlbMdpSLRTPGMxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ6wz-0000000EFpU-3fhe;
	Mon, 15 Jun 2026 13:02:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wZ6ww-0000000EFoY-0u4c;
	Mon, 15 Jun 2026 13:01:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=tPjmqX9SMTeCykCfytbi1fpwWJ22FWgRgMVFy1mXudo=; b=WpbqWBWvTzXryDqoZIBXExPhvv
	kC4TAdAZPOGy3MWoEl9R/ridFn0Caqhgf6h44LSmRNpCoDSTrqd9CL6EsZC6lxZgUJlTXiJWw3xFl
	+95E2b7+/FYv6Ncrs9pgKL1jpnGUbQJX1FCdxKgV2sq9g+GMdGSdK1wK2KsDmd2zaN1MtTobwxuOi
	kiMyjzV7srbexEZXMXzTEvwGJbilvUhVCUWQGKRl8YCxFvNXODPowabXfP3XLL+St6/i332uPzH5A
	bnQ2u2XKMLvfGXUDYnI4O+ZconYoCd+homOJwc3DXlEcZN7dVqdjWJQoOmoWi2MVv6u/JvyvT7Yzz
	AVSBdotg==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 Damon Ding <damon.ding@rock-chips.com>
Subject: Re: [PATCH v11 0/3] Add eDP support for RK3576
Date: Mon, 15 Jun 2026 15:01:38 +0200
Message-ID: <3213683.CbtlEUcBR6@diego>
In-Reply-To: <cd1f968a-2e1b-434f-a331-a60cd8740032@rock-chips.com>
References: <20260605022305.3058853-1-damon.ding@rock-chips.com>
 <cd1f968a-2e1b-434f-a331-a60cd8740032@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260615_060158_307740_8AFF5FBE 
X-CRM114-Status: GOOD (  20.48  )
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
Cc: detlev.casanova@collabora.com, devicetree@vger.kernel.org, sebastian.reichel@collabora.com, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, alchark@gmail.com, michael.riesch@collabora.com, andy.yan@rock-chips.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgRGFtb24sCgpBbSBNb250YWcsIDE1LiBKdW5pIDIwMjYsIDE0OjMzOjAzIE1pdHRlbGV1cm9w
w6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgRGFtb24gRGluZzoKPiBHZW50bGUgcGluZyBvbiB0
aGlzIHBhdGNoIHNlcmllcy4KCkxpbnV4IDcuMSB3YXMgcmVsZWFzZWQgeWVzdGVyZGF5LCBzbyB3
ZSdyZSBpbiB0aGUgbWVyZ2Utd2luZG93IG5vdy4KKEFuZCB0aGUgNXRoIG9mIGp1bmUgd2FzIHNo
b3J0bHkgYmVmb3JlIC1yYzcsIHNvIHRvbyBsYXRlIGZvciA3LjIpCgpTbyBJJ2xsIHBpY2sgdGhv
c2UgdXAgYWZ0ZXIgdGhlIG1lcmdlIHdpbmRvdyBlbmQgaW4gMiB3ZWVrcy4KCgpIZWlrbwoKPiAK
PiBCZXN0IHJlZ2FyZHMsCj4gRGFtb24KPiAKPiBPbiA2LzUvMjAyNiAxMDoyMyBBTSwgRGFtb24g
RGluZyB3cm90ZToKPiA+IFBpY2tlZCBmcm9tOgo+ID4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjYwNjAxMDY1MTAwLjExMDM4NzMtMS1kYW1vbi5kaW5nQHJvY2stY2hpcHMuY29tLwo+
ID4gCj4gPiBQYXRjaCAxLTIgYXJlIHRvIGFkZCBtaXNzaW5nIGNsb2NrICJoY2xrIiBmb3IgUksz
NTg4IGVEUCBub2Rlcy4KPiA+IFBhdGNoIDMgaXMgdG8gYWRkIHRoZSBSSzM1NzYgZURQIG5vZGUu
Cj4gPiAKPiA+IERhbW9uIERpbmcgKDMpOgo+ID4gICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFk
ZCBtaXNzaW5nIGhjbGsgZm9yIFJLMzU4OCBlRFAwCj4gPiAgICBhcm02NDogZHRzOiByb2NrY2hp
cDogQWRkIG1pc3NpbmcgaGNsayBmb3IgUkszNTg4IGVEUDEKPiA+ICAgIGFybTY0OiBkdHM6IHJv
Y2tjaGlwOiBBZGQgZURQIG5vZGUgZm9yIFJLMzU3Ngo+ID4gCj4gPiAgIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTc2LmR0c2kgICAgICB8IDI4ICsrKysrKysrKysrKysrKysrKysK
PiA+ICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtYmFzZS5kdHNpIHwgIDQg
Ky0tCj4gPiAgIC4uLi9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXh0cmEuZHRzaSB8
ICA0ICstLQo+ID4gICAzIGZpbGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKyksIDQgZGVsZXRp
b25zKC0pCj4gPiAKPiA+IC0tLQo+ID4gCj4gPiBDaGFuZ2VzIGluIHYyOgo+ID4gLSBTcGxpdCBv
dXQgc2VwYXJhdGUgcGF0Y2hlcyB0byBhZGQgdGhlICJoY2xrIiBjbG9jayByZWZlcmVuY2UuCj4g
PiAtIFNwbGl0IG91dCBzZXBhcmF0ZSBwYXRjaGVzIHRvIGVuYWJsZSB0aGUgImhjbGsiIGNsb2Nr
Lgo+ID4gLSBBZGQgUmV2aWV3ZWQtYnkgdGFnLgo+ID4gCj4gPiBDaGFuZ2VzIGluIHYzOgo+ID4g
LSBBZGQgYSBwYXRjaCB0byBleHBhbmQgZGVzY3JpcHRpb25zIGZvciBjbG9ja3Mgb2YgdGhlIGVE
UCBub2RlLgo+ID4gLSBBZGQgUmV2aWV3ZWQtYnkgdGFnLgo+ID4gCj4gPiBDaGFuZ2VzIGluIHY0
Ogo+ID4gLSBNb2RpZnkgY29tbWl0IG1zZy4KPiA+IAo+ID4gQ2hhbmdlcyBpbiB2NToKPiA+IC0g
RW5mb3JjZSB0aGUgY29ycmVjdCB0aGlyZCBjbG9jayBuYW1lIG9uIGEgcGVyLWNvbXBhdGlibGUg
YmFzaXMuCj4gPiAtIE1vZGlmeSB0aGUgY29tbWl0IG1zZyBzaW11bHRhbmVvdXNseS4KPiA+IC0g
QWRkIEFja2VkLWJ5IHRhZy4KPiA+IAo+ID4gQ2hhbmdlcyBpbiB2NjoKPiA+IC0gRXhwYW5kIG1v
cmUgZGV0YWlsIGNvbW1pdCBtc2cgYWJvdXQgdXNpbmcgaGNsayBpbnN0ZWFkIG9mIGdyZiBjbG9j
ay4KPiA+IAo+ID4gQ2hhbmdlcyBpbiB2NzoKPiA+IC0gTGlzdCBhbGwgdmFsaWQgY2xvY2sgbmFt
ZXMgYXQgdGhlIHRvcCBsZXZlbCwgYW5kIGNvbnN0cmFpbiB0aGUgY2xvY2sKPiA+ICAgIGNvdW50
IGZvciBlYWNoIHBsYXRmb3JtIHdpdGggbWluSXRlbXMvbWF4SXRlbXMgaW4gYWxsT2YuCj4gPiAK
PiA+IENoYW5nZXMgaW4gdjg6Cj4gPiAtIEZpeCBpbmRlbnRhdGlvbiB0byAxMCBmb3IgZW51bSBp
biBjbG9jay1uYW1lcyBwcm9wZXJ0eS4KPiA+IAo+ID4gQ2hhbmdlcyBpbiB2OToKPiA+IC0gUmVz
dG9yZSB0aGUgZXhwbGljaXQgY2xvY2stbmFtZXMgZm9yIFJLMzM5OSBhbmQgUkszNTg4IGVEUCBk
dC1iaW5kaW5ncy4KPiA+IAo+ID4gQ2hhbmdlcyBpbiB2MTA6Cj4gPiAtIFVzZSBhdXRvbWF0aWMg
Y2xlYW51cCB0byBmaXggT0Ygbm9kZSByZWZlcmVuY2UgbGVhayByZXBvcnRlZCBieQo+ID4gICAg
U2FzaGlrby4KPiA+IAo+ID4gQ2hhbmdlcyBpbiB2MTE6Cj4gPiAtIFBpY2sgYW5kIHJlYmFzZSBE
VCByZWxhdGVkIHBhdGNoZXMuCj4gPiAKPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
