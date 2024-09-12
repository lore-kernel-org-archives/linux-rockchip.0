Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1EFDEEEE271
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Sep 2024 23:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VpgFBra/yRNUdJNmzl2+ecOYZqX2kGPdawZM7q4BGrA=; b=jr4YkCeRlsjgGJ
	jT75PpYITtmwrYZYqd7K8P54p6xow6DUtYI4slTOdusgD8ybtV+kViXbLVZ7ijsu5xEF2y7j49VkJ
	MnKhqw0CbsBXtEzAsCScYVeRczfJJwMaA7ZbMS7y0yll/HhZ7/fervTr68jy4dybt/H5FyXJP8dZM
	I80Z+eqID5wv6hXqvBUu0BOXMytTTXuePVG4arj/zcpnBbYvywf8DZ68zQyU6oJDa3XWKRamqC+hT
	8dO1K36AC2vLoFO8iXjRzuQCraeporS7FkKbBLlNoa0jWGGuVrzA2fyJ3S1hL5veAsWSpRc3uqzY1
	0UDluvUOSK2Tz1fgxBcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sotJm-0000000EWSk-14JB;
	Thu, 12 Sep 2024 23:33:42 +0000
Received: from smtpbgeu1.qq.com ([52.59.177.22])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sotJf-0000000EWPS-2g8f
	for linux-rockchip@lists.infradead.org;
	Thu, 12 Sep 2024 23:33:40 +0000
X-QQ-mid: bizesmtp86t1726183990tru7u4j2
X-QQ-Originating-IP: oWym8bMoXvHPtkutlP1Chvo67PJQOcmlcbY8MKhZYDo=
Received: from [192.168.159.131] ( [106.150.157.243])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Fri, 13 Sep 2024 07:33:07 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 1747276184441239724
Message-ID: <4009C10B2D2BB789+be97f506-33ce-43f3-ab5c-0395709f1fdc@radxa.com>
Date: Fri, 13 Sep 2024 08:33:06 +0900
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] Revert "arm64: dts: rockchip: remove redundant
 cd-gpios from rk3588 sdmmc nodes"
To: Kever Yang <kever.yang@rock-chips.com>, heiko@sntech.de
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20240611120645.457-1-naoki@radxa.com>
 <20240613001757.1350-1-naoki@radxa.com>
 <e534f0b2-8d30-4175-9616-105e53d25811@rock-chips.com>
Content-Language: en-US
From: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <e534f0b2-8d30-4175-9616-105e53d25811@rock-chips.com>
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:radxa.com:qybglogicsvrgz:qybglogicsvrgz8a-1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240912_163336_183941_EF7D019C 
X-CRM114-Status: GOOD (  15.83  )
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

aGkKCk9uIDkvMTIvMjQgMTk6MjYsIEtldmVyIFlhbmcgd3JvdGU6Cj4gSGkgTmFva2ksIEhlaWtv
LAo+IAo+IE9uIDIwMjQvNi8xMyAwODoxNywgRlVLQVVNSSBOYW9raSB3cm90ZToKPj4gVGhpcyBy
ZXZlcnRzIGNvbW1pdCBkODU5YWQzMDVlZDE5ZDlhNzdkOGM4ZWNkMjI0NTliNzNkYTM2YmE2Lgo+
Pgo+PiBJbnNlcnRpbmcgYW5kIHJlbW92aW5nIG1pY3JvU0QgY2FyZCBpcyBub3QgZGV0ZWN0ZWQg
c2luY2UgYWJvdmUgY29tbWl0Lgo+PiBSZXZlcnRpbmcgaXQgZml4ZXMgdGhpcyBwcm9ibGVtLgo+
Pgo+PiBUaGlzIGlzIHByb2JhYmx5IHRoZSBzYW1lIHRoaW5nIGFzIDUgeWVhcnMgYWdvIG9uIHJr
MzM5OQo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMDYwODU5OWQ0ODUxMTdhOWQ5OWY1
ZmIyNzRmYmIxYjU1ZjZiYTlmNy4xNTQ3NDY2MDAzLmdpdC5yb2Jpbi5tdXJwaHlAYXJtLmNvbS8K
PiAKPiBTb3JyeSBmb3IgZGlkbid0IG5vdGljZSB0aGlzIHBhdGNoLgo+IAo+IFRoZSBTRCBjYXJk
IGhvdHBsdWcgY2FuIG5vdCB3b3JrIGJlY2F1c2UgdGhlIGNvbnRyb2xsZXIgaXMgZ2V0dGluZyBp
bnRvIAo+IHJ1bnRpbWUgbG93IHBvd2VyIG1vZGUsCj4gCj4gc28gd2UgbmVlZCB0aGUgZml4IGlu
IG1tYyBkcml2ZXIgdG8gbWFrZSB0aGUgQ0QgZnVuY3Rpb24gd29yayBhcyBiZWxvdzoKPiAKPiBo
dHRwczovL2xrbWwub3JnL2xrbWwvMjAyNC85LzEyLzMyMwoKSSB0ZXN0ZWQgdGhpcyBwYXRjaCBv
biBSYWR4YSBFNTRDIGFuZCBST0NLIDVBLzVCLzVDLiBDRCB3b3JrcyBmaW5lIAp3aXRob3V0IGNk
LWdwaW9zLiByZXZlcnQgcGF0Y2ggY2FuIGJlIHJldmVydGVkIDopCgp0aGFuayB5b3UgdmVyeSBt
dWNoIQoKQmVzdCByZWdhcmRzLAoKLS0KRlVLQVVNSSBOYW9raQpSYWR4YSBDb21wdXRlciAoU2hl
bnpoZW4pIENvLiwgTHRkLgoKPiBUaGFua3MsCj4gLSBLZXZlcgo+Pgo+PiBTbyB3ZSdsbCBnbyBi
YWNrIHRvIGNkLWdwaW9zIGZvciBub3cuCj4+Cj4+IHRoaXMgcGF0Y2ggaXMgdGVzdGVkIG9uIFJh
ZHhhIFJPQ0sgNUEgYW5kIDVCLgo+Pgo+PiBGaXhlczogZDg1OWFkMzA1ZWQxICgiYXJtNjQ6IGR0
czogcm9ja2NoaXA6IHJlbW92ZSByZWR1bmRhbnQgY2QtZ3Bpb3MgCj4+IGZyb20gcmszNTg4IHNk
bW1jIG5vZGVzIikKPj4gU2lnbmVkLW9mZi1ieTogRlVLQVVNSSBOYW9raSA8bmFva2lAcmFkeGEu
Y29tPgo+Pgo+PiBDaGFuZ2VzIGluIHYyOgo+PiAtIHJld29yZCBjb21taXQgbWVzc2FnZQo+PiAt
IHJlbW92ZSBlbXB0eSBsaW5lCj4+IC0tLQo+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzIHwgMSArCj4+IMKgIGFyY2gvYXJtNjQvYm9v
dC9kdHMvcm9ja2NoaXAvcmszNTg4LXF1YXJ0enBybzY0LmR0c8KgwqDCoMKgIHwgMSArCj4+IMKg
IGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzwqDCoMKgwqDC
oMKgwqDCoCB8IDEgKwo+PiDCoCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMt
cm9jay01YS5kdHPCoMKgwqDCoMKgwqDCoCB8IDEgKwo+PiDCoCA0IGZpbGVzIGNoYW5nZWQsIDQg
aW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODgtb3JhbmdlcGktNS1wbHVzLmR0cyAKPj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzCj4+IGluZGV4IDFhNjA0NDI5ZmIy
Ni4uZTc0ODcxNDkxZWY1IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1vcmFuZ2VwaS01LXBsdXMuZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTg4LW9yYW5nZXBpLTUtcGx1cy5kdHMKPj4gQEAgLTQ0NCw2ICs0NDQs
NyBAQCAmc2RoY2kgewo+PiDCoCAmc2RtbWMgewo+PiDCoMKgwqDCoMKgIGJ1cy13aWR0aCA9IDw0
PjsKPj4gwqDCoMKgwqDCoCBjYXAtc2QtaGlnaHNwZWVkOwo+PiArwqDCoMKgIGNkLWdwaW9zID0g
PCZncGlvMCBSS19QQTQgR1BJT19BQ1RJVkVfTE9XPjsKPj4gwqDCoMKgwqDCoCBkaXNhYmxlLXdw
Owo+PiDCoMKgwqDCoMKgIG1heC1mcmVxdWVuY3kgPSA8MTUwMDAwMDAwPjsKPj4gwqDCoMKgwqDC
oCBuby1zZGlvOwo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtcXVhcnR6cHJvNjQuZHRzIAo+PiBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4LXF1YXJ0enBybzY0LmR0cwo+PiBpbmRleCBiNGYyMmQ5NWFjMGUuLmU4MGNhYTM2Zjhl
NCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcXVh
cnR6cHJvNjQuZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4
LXF1YXJ0enBybzY0LmR0cwo+PiBAQCAtNDM1LDYgKzQzNSw3IEBAICZzZGhjaSB7Cj4+IMKgICZz
ZG1tYyB7Cj4+IMKgwqDCoMKgwqAgYnVzLXdpZHRoID0gPDQ+Owo+PiDCoMKgwqDCoMKgIGNhcC1z
ZC1oaWdoc3BlZWQ7Cj4+ICvCoMKgwqAgY2QtZ3Bpb3MgPSA8JmdwaW8wIFJLX1BBNCBHUElPX0FD
VElWRV9MT1c+Owo+PiDCoMKgwqDCoMKgIGRpc2FibGUtd3A7Cj4+IMKgwqDCoMKgwqAgbWF4LWZy
ZXF1ZW5jeSA9IDwxNTAwMDAwMDA+Owo+PiDCoMKgwqDCoMKgIG5vLXNkaW87Cj4+IGRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyAKPj4g
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwo+PiBpbmRl
eCA0ZTJiZjRlYWVmMmIuLmRmODQ1OTI5YjA4NCAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKPj4gQEAgLTM5MCw2ICszOTAsNyBA
QCAmc2RtbWMgewo+PiDCoMKgwqDCoMKgIGJ1cy13aWR0aCA9IDw0PjsKPj4gwqDCoMKgwqDCoCBj
YXAtbW1jLWhpZ2hzcGVlZDsKPj4gwqDCoMKgwqDCoCBjYXAtc2QtaGlnaHNwZWVkOwo+PiArwqDC
oMKgIGNkLWdwaW9zID0gPCZncGlvMCBSS19QQTQgR1BJT19BQ1RJVkVfTE9XPjsKPj4gwqDCoMKg
wqDCoCBkaXNhYmxlLXdwOwo+PiDCoMKgwqDCoMKgIHNkLXVocy1zZHIxMDQ7Cj4+IMKgwqDCoMKg
wqAgdm1tYy1zdXBwbHkgPSA8JnZjY18zdjNfczM+Owo+PiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm02
NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODhzLXJvY2stNWEuZHRzIAo+PiBiL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4cy1yb2NrLTVhLmR0cwo+PiBpbmRleCA4ZTJhMDc2MTJk
MTcuLmIwNzA5NTU2MjdiZSAxMDA2NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1ODhzLXJvY2stNWEuZHRzCj4+ICsrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4cy1yb2NrLTVhLmR0cwo+PiBAQCAtMzY2LDYgKzM2Niw3IEBAICZzZG1tYyB7
Cj4+IMKgwqDCoMKgwqAgYnVzLXdpZHRoID0gPDQ+Owo+PiDCoMKgwqDCoMKgIGNhcC1tbWMtaGln
aHNwZWVkOwo+PiDCoMKgwqDCoMKgIGNhcC1zZC1oaWdoc3BlZWQ7Cj4+ICvCoMKgwqAgY2QtZ3Bp
b3MgPSA8JmdwaW8wIFJLX1BBNCBHUElPX0FDVElWRV9MT1c+Owo+PiDCoMKgwqDCoMKgIGRpc2Fi
bGUtd3A7Cj4+IMKgwqDCoMKgwqAgbWF4LWZyZXF1ZW5jeSA9IDwxNTAwMDAwMDA+Owo+PiDCoMKg
wqDCoMKgIG5vLXNkaW87Cj4gCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
