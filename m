Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E81A1062884
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 12:27:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QqtFbAU0Gtg83ud7YHHYigCfWtIllB9AMRdvPzDpuEI=; b=cGOFe592NEoxuBD7qEhexYOuDd
	fe7lNwFf/lxlxRQ3J537s12dBrZKCUPjsU+TyvbY9ZrHe/ZJ/1q2nMnDDK+4J0bOA9rO61waKUwm+
	JuToLbMHXzVmo/q3nzuG0smtm3g+pyK1IPutYHH3rDMDZ442qKfj7zChxo9yvgFWZGdR+gkLwzW6T
	ly2UB8q99lmW8g1g6goE1flQ+rUXIsPiA7CzTL1LKgaP39xQFWfKItZaFBaDMFRnp8WrxQIMHmGlo
	91HxMJvEUek8wi/xMea/zCO88vKacFJsUFfrx4w8zQNkzNK8WdcQgYxiblI3cMJ5RcX1v7ARjBYn7
	XRZOhgXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0IeQ-0000000BYhO-3Bdr;
	Wed, 11 Mar 2026 12:26:58 +0000
Received: from mail-m3279.qiye.163.com ([220.197.32.79])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0IeN-0000000BYgn-14Z9;
	Wed, 11 Mar 2026 12:26:58 +0000
Received: from [172.16.12.17] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3690f1e4f;
	Wed, 11 Mar 2026 20:26:39 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com
Subject: Re: [PATCH v1] arm64: dts: rockchip: Enable PCIe CLKREQ# for RK3588
 on Rock 5b-5bp-5t series
To: Anand Moon <linux.amoon@gmail.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 FUKAUMI Naoki <naoki@radxa.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Diederik de Haas <didi.debian@cknow.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20260311115502.7353-1-linux.amoon@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <cc922ebf-9221-00f8-e951-903c97d24f20@rock-chips.com>
Date: Wed, 11 Mar 2026 20:26:38 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20260311115502.7353-1-linux.amoon@gmail.com>
X-HM-Tid: 0a9cdcdd0ba109cckunm09c8cc8ab954
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxgZSlYdSxpISh1LTB1PT01WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=IQUVnrCsWYuho2lAfthZKL7Tx1mLOdYa2UM6uQxSpFDizuhj5MMFCWy7hk+dGUUxUUWaqnKPshtkP+u/hNQdQV6byz/osrnoW38z6uqZsakvA7mHOwR3dPnFkNBvPO+wwZbzHh7Z/y8o7uhuPrmKRId2rLj+N3ADyvqKuOGnJJ8=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=iUYM2B+qv2inDj3WitR8Iuse9o1Siv8UF7Rqo5SG/P4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260311_052656_664158_7CBC07F5 
X-CRM114-Status: GOOD (  20.16  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="gbk"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

1NogMjAyNi8wMy8xMSDQx8bayP0gMTk6NTQsIEFuYW5kIE1vb24g0LS1wDoKPiBBZGQgc3VwcG9y
dHMtY2xrcmVxIGFuZCB0aGUgY29ycmVzcG9uZGluZyBwaW5tdXggY29uZmlndXJhdGlvbnMgZm9y
IFBDSWUKPiBBU1BNIEwxIHN1YnN0YXRlcyBvbiB0aGUgUm9jayA1QiwgNUIrLCBhbmQgNVQuCj4g
VGhlIHN1cHBvcnRzLWNsa3JlcSBmbGFnIGluZm9ybXMgdGhlIFBDSWUgY29udHJvbGxlciB0aGF0
IHRoZSBoYXJkd2FyZQo+IHJvdXRpbmcgZm9yIHRoZSBDTEtSRVEjIHNpZGViYW5kIHNpZ25hbCBp
cyBwcmVzZW50LiBUaGlzIGVuYWJsZXMgc3VwcG9ydAo+IGZvciBQQ0llIEFTUE0gKEFjdGl2ZSBT
dGF0ZSBQb3dlciBNYW5hZ2VtZW50KSBMMSBzdWJzdGF0ZXMsIGFsbG93aW5nIGZvcgo+IGJldHRl
ciBwb3dlciBlZmZpY2llbmN5Lgo+IAo+IENjOiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNo
aXBzLmNvbT4KPiBTaWduZWQtb2ZmLWJ5OiBBbmFuZCBNb29uIDxsaW51eC5hbW9vbkBnbWFpbC5j
b20+Cj4gLS0tCgpJdCB3b3VsZCBiZSBiZXR0ZXIgaWYgeW91IGNvdWxkIHB1dCB0aGUgbGluayB0
byB0aGUgc2NoZW1hdGljIGhlcmUodW5kZXIKIi0tLSIpIGZvciBmb2xrcyBlYXN5IHRvIHJldmll
dy4gSSBwYXN0ZSBpdCBoZXJlIGZvciByZWZlcmVuY2WjugoKaHR0cHM6Ly9kbC5yYWR4YS5jb20v
cm9jazUvNWIrL2RvY3MvaHcvcmFkeGFfcm9jazVicF92MS4yX3NjaGVtYXRpYy5wZGYKCj4gICBh
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLTVicC01dC5kdHNpIHwg
OSArKysrKystLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA2IGluc2VydGlvbnMoKyksIDMgZGVsZXRp
b25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LXJvY2stNWItNWJwLTV0LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC1yb2NrLTViLTVicC01dC5kdHNpCj4gaW5kZXggYjNlNzZhZDJkODY5Li42NjhiMTljMDVm
N2UgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9j
ay01Yi01YnAtNXQuZHRzaQo+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTg4LXJvY2stNWItNWJwLTV0LmR0c2kKPiBAQCAtNDY4LDcgKzQ2OCw4IEBAIG1hcDEgewo+ICAg
Cj4gICAmcGNpZTJ4MWwwIHsKPiAgIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+IC0JcGlu
Y3RybC0wID0gPCZwY2llMl8wX3JzdD47Cj4gKwlwaW5jdHJsLTAgPSA8JnBjaWUyXzBfcnN0Piwg
PCZwY2llMzB4MW0xXzBfY2xrcmVxbj47Cj4gKwlzdXBwb3J0cy1jbGtyZXE7Cj4gICAJcmVzZXQt
Z3Bpb3MgPSA8JmdwaW80IFJLX1BBNSBHUElPX0FDVElWRV9ISUdIPjsKPiAgIAl2cGNpZTN2My1z
dXBwbHkgPSA8JnZjYzN2M19wY2llMngxbDA+Owo+ICAgCXN0YXR1cyA9ICJva2F5IjsKPiBAQCAt
NDc2LDcgKzQ3Nyw4IEBAICZwY2llMngxbDAgewo+ICAgCj4gICAmcGNpZTJ4MWwyIHsKPiAgIAlw
aW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwo+IC0JcGluY3RybC0wID0gPCZwY2llMl8yX3JzdD47
Cj4gKwlwaW5jdHJsLTAgPSA8JnBjaWUyXzJfcnN0PiwgPCZwY2llMjB4MW0wX2Nsa3JlcW4+OwoK
SXNuJ3QgaXQgbTEoUENJRTIwXzFfMl9DTEtSRVFuX00xX0wgaW4gdGhlIHNjaGVtYXRpYyk/Cgo+
ICsJc3VwcG9ydHMtY2xrcmVxOwo+ICAgCXJlc2V0LWdwaW9zID0gPCZncGlvMyBSS19QQjAgR1BJ
T19BQ1RJVkVfSElHSD47Cj4gICAJdnBjaWUzdjMtc3VwcGx5ID0gPCZ2Y2MzdjNfcGNpZTJ4MWwy
PjsKPiAgIAlzdGF0dXMgPSAib2theSI7Cj4gQEAgLTQ4OCw3ICs0OTAsOCBAQCAmcGNpZTMwcGh5
IHsKPiAgIAo+ICAgJnBjaWUzeDQgewo+ICAgCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4g
LQlwaW5jdHJsLTAgPSA8JnBjaWUzX3JzdD47Cj4gKwlwaW5jdHJsLTAgPSA8JnBjaWUzX3JzdD4s
IDwmcGNpZTMweDRtMV9jbGtyZXFuPjsKClRoZSBwaW4gaXMgY29ycmVjdCBidXQgSSBkb24ndCB0
aGluayBpdCB3b3VsZCBzdXBwb3J0CkwxIHN1YnN0YXRlcyBiZWNhdXNlIHRoZSByZWZjbGsgaXMg
b3V0IG9mIGNvbnRyb2wuIEZvcgphbnkgcmVmY2xrIGNvbWluZyBmcm9tIGV4dGVybmFsIGNsb2Nr
IGdlbmVyYXRvciwgY2xrcmVxIwpzaG91bGQgY29ubmVjdCB0byB0aGUgZW5hYmxlIHBpbiBvZiB0
aGUgY2xvY2sgZ2VuZXJhdG9yLgoKPiArCXN1cHBvcnRzLWNsa3JlcTsKPiAgIAlyZXNldC1ncGlv
cyA9IDwmZ3BpbzQgUktfUEI2IEdQSU9fQUNUSVZFX0hJR0g+Owo+ICAgCXZwY2llM3YzLXN1cHBs
eSA9IDwmdmNjM3YzX3BjaWUzMD47Cj4gICAJc3RhdHVzID0gIm9rYXkiOwo+IAo+IGJhc2UtY29t
bWl0OiBiMjlmYjg4MjliZmYyNDM1MTJiYjhjODkwOGZkMzk0MDZmOWZkNGMzCj4gCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
