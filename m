Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5AEEBD2CE17
	for <linux-rockchip@archiver.kernel.org>; Mon,  8 Dec 2025 00:25:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hYZpKuGJ6caAn5tYHsgMpn8DBFhExW/VzyQbRSkYs5Y=; b=0XzDMw7kRDd36S
	q3ZRTQQElKFO0IOpvjP+ZMisQwlw1684NWTcHq/1FSlR+Yqb2Ub/ijsR2X2Uou0hxTzFkFpnzJSu0
	Ff/1CoNYsTu9KF/tgi+NHfZUnYYewyPIS0YlKYcKngW5hTvGiladknjGXJozBHW+eW6Hczx1Nm+6+
	pqIgdwHP5pTKeh610cMANA/YLVR82i80V+HtAA/FlMmAVfdmvMLd35O2ig23lkpPll+rcNrr4+JAU
	qF93Rqo7zkF3tVJ71WnPEPgiorIES0eKEg2gd/+lqYrNQchSbGAV4VXpBxDmNaopOkYaeluyi6NZ+
	Q78LGL8x71D5KAEYLwjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSP47-0000000CM32-3lsp;
	Mon, 08 Dec 2025 00:25:24 +0000
Received: from mail-m17253.xmail.netease.com ([45.195.17.253])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vSP43-0000000CM25-1M3r
	for linux-rockchip@lists.infradead.org;
	Mon, 08 Dec 2025 00:25:21 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2c4f02d95;
	Mon, 8 Dec 2025 08:25:03 +0800 (GMT+08:00)
Message-ID: <951049c1-231b-4e40-9a00-7daef5a73fad@rock-chips.com>
Date: Mon, 8 Dec 2025 08:25:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 linux-rockchip@lists.infradead.org
Subject: Re: [RESEND PATCH v3] arm64: dts: rockchip: Add PCIe clkreq stuff for
 RK3588 EVB1
To: Anand Moon <linux.amoon@gmail.com>
References: <1764809428-183623-1-git-send-email-shawn.lin@rock-chips.com>
 <CANAwSgSn_6g1a=LYqKGom+FyhJ+qqbi5qRMKCxAoe5Q2nsN5sQ@mail.gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <CANAwSgSn_6g1a=LYqKGom+FyhJ+qqbi5qRMKCxAoe5Q2nsN5sQ@mail.gmail.com>
X-HM-Tid: 0a9afb58f94c09cckunm5595891a2432415
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU8eSlZDSEIZHUtKS0tIGUxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUJCSU5LVU
	pLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=SN1kQxhkHaWr+LBzVzk9aa741xbMUW/hB4n1d4O+fSeRNlSwxoCxCo7b1Jc5q7fIJ/yaBTQK+0dtJvwp0fHBO0oxxQgR3dkTiyq4gS2N0NS+kf6mQQmnrbIqUGowj8o2NWCjPFdd+rkG0JnJi8F/rfnrem0Pi2E1oRciqP8Bvs4=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=otUcompj8eclMFYcsdc1l37YWUidUn194YvCJ+5Pshc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251207_162519_887688_61561B5E 
X-CRM114-Status: GOOD (  15.16  )
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
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

5ZyoIDIwMjUvMTIvMDcg5pif5pyf5pelIDE1OjUwLCBBbmFuZCBNb29uIOWGmemBkzoKPiBIaSBT
aGF3biwKPiAKPiBPbiBUaHUsIDQgRGVjIDIwMjUgYXQgMDY6MjEsIFNoYXduIExpbiA8c2hhd24u
bGluQHJvY2stY2hpcHMuY29tPiB3cm90ZToKPj4KPj4gQWRkIHN1cHBvcnRzLWNsa3JlcSBhbmQg
cGlubXV4IGZvciBQQ0llIEFTUE0gTDEgc3Vic3RhdGVzLgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBT
aGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBzLmNvbT4KPj4gQWNrZWQtYnk6IE1hbml2YW5u
YW4gU2FkaGFzaXZhbSA8bWFuaUBrZXJuZWwub3JnPgo+PiBSZXZpZXdlZC1ieTogSGFucyBaaGFu
ZyA8aGFucy56aGFuZ0BjaXh0ZWNoLmNvbT4KPj4gLS0tCj4gVGhhbmtzLCBhcmUgdGhlcmUgcGxh
bnMgdG8gc3VwcG9ydCB0aGlzIGZlYXR1cmUgb24gdGhlIHJlbWFpbmluZwo+IFJLMzU2eCBhbmQg
UkszNTg4IFNCQ3M/CgpJdCBuZWVkcyB0byBiZSBjaGVja2VkIG9uIGEgcGVyLWJvYXJkIGJhc2lz
LgoKV2UncmUgaGFwcHkgZm9yIGZvbGtzIHRvIGFkZCBpdCB0aGVtc2VsdmVzIGZvciB0aGVpciBi
b2FyZHMgb25jZSB0aGV5J3ZlCnZlcmlmaWVkIHRoZSBjbGtyZXFwaW4gb24gdGhlaXIgaGFyZHdh
cmUuCgo+IAo+IFRoYW5rcwo+IC1BbmFuZAo+Pgo+PiBJdCBiZWxvbmdzIHRvIGEgc2VyaWVzIHRo
YXQgYWRkaW5nIEwxc3Mgc3VwcG9ydCBmb3IgUm9ja2NoaXAgcGxhdGZvcm1zLgo+PiBUaGUgZHJp
dmVyIGNoYW5nZXMgaGFzIGJlZW4gaW4gbWFpbmxpbmUgdmlhIDYuMTkgbWVyZ2Ugd2luZG93LCBz
byBqdXN0Cj4+IHJlc2VudCB0aGlzIHBhdGNoIHdpdGggY29sbGVjdGluZyB0YWdzLgo+Pgo+PiAg
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjEtdjEwLmR0cyB8IDcgKysr
KystLQo+PiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0p
Cj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1l
dmIxLXYxMC5kdHMgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1ldmIxLXYx
MC5kdHMKPj4gaW5kZXggZmYxYmE1ZS4uYzlkMjg0YyAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMS12MTAuZHRzCj4+ICsrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LWV2YjEtdjEwLmR0cwo+PiBAQCAtNTIyLDYgKzUy
Miw3IEBACj4+ICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+ICAgICAgICAg
IHBpbmN0cmwtMCA9IDwmcGNpZTJfMF9yc3Q+LCA8JnBjaWUyXzBfd2FrZT4sIDwmcGNpZTJfMF9j
bGtyZXE+LCA8JndpZmlfaG9zdF93YWtlX2lycT47Cj4+ICAgICAgICAgIHJlc2V0LWdwaW9zID0g
PCZncGlvNCBSS19QQTUgR1BJT19BQ1RJVkVfSElHSD47Cj4+ICsgICAgICAgc3VwcG9ydHMtY2xr
cmVxOwo+PiAgICAgICAgICB2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M193bGFuPjsKPj4gICAg
ICAgICAgc3RhdHVzID0gIm9rYXkiOwo+Pgo+PiBAQCAtNTQ1LDcgKzU0Niw4IEBACj4+ICAgJnBj
aWUyeDFsMSB7Cj4+ICAgICAgICAgIHJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QQTIgR1BJT19B
Q1RJVkVfSElHSD47Cj4+ICAgICAgICAgIHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4+IC0g
ICAgICAgcGluY3RybC0wID0gPCZwY2llMl8xX3JzdD4sIDwmcnRsODExMV9pc29sYXRlPjsKPj4g
KyAgICAgICBwaW5jdHJsLTAgPSA8JnBjaWUyXzFfcnN0PiwgPCZydGw4MTExX2lzb2xhdGU+LCA8
JnBjaWUzMHgxbTFfMV9jbGtyZXFuPjsKPj4gKyAgICAgICBzdXBwb3J0cy1jbGtyZXE7Cj4+ICAg
ICAgICAgIHN0YXR1cyA9ICJva2F5IjsKPj4gICB9Owo+Pgo+PiBAQCAtNTU1LDcgKzU1Nyw4IEBA
Cj4+Cj4+ICAgJnBjaWUzeDQgewo+PiAgICAgICAgICBwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQi
Owo+PiAtICAgICAgIHBpbmN0cmwtMCA9IDwmcGNpZTNfcmVzZXQ+Owo+PiArICAgICAgIHBpbmN0
cmwtMCA9IDwmcGNpZTNfcmVzZXQ+LCA8JnBjaWUzMHg0bTFfY2xrcmVxbj47Cj4+ICsgICAgICAg
c3VwcG9ydHMtY2xrcmVxOwo+PiAgICAgICAgICByZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktfUEI2
IEdQSU9fQUNUSVZFX0hJR0g+Owo+PiAgICAgICAgICB2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2
M19wY2llMzA+Owo+PiAgICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4+IC0tCj4+IDIuNy40Cj4+
Cj4+Cj4+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4+
IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+PiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtcm9ja2NoaXAKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
