Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13D79CCD19F
	for <linux-rockchip@archiver.kernel.org>; Tue, 21 Oct 2025 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iVQgVD5gQ9F0Z/+HiML+uuPJNHqDslTrkeFVzvouWEw=; b=Ye84O9+WzW6RTR
	+uv8E1/exBmqCLhydWHFnldDEsrEEu+RuEKYuipDh4fuXJa5Pww3U64r+0XQbQ1B1X8oZd0EZ2lsM
	MafYCz8MFF+YCUU4jmzTUD84pkxefBUfoIfkLnEZEGKCpoq6ZViPoWRYpUnfQMs0sdPUeTxra8rSa
	OE1w9SH2fi51TJr8nfbRnMwr3wr1aaf30LTc/7JWcRzHVOum0U3bNS8ZXLBDCj76O+1X4YEj5+Hvx
	kOnjux8oou+8UHCeQR9z06EZYdn9gKA6k6Jwb/6zmJYDvyHKtKfiF31ZJq8VLkZ3OJhaf4mb6PmKT
	DBcGnYSeSrzTuGFqyvMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6Vn-0000000G1uX-3OKF;
	Tue, 21 Oct 2025 07:10:27 +0000
Received: from mail-m49209.qiye.163.com ([45.254.49.209])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vB6Vj-0000000G1sN-3eNK;
	Tue, 21 Oct 2025 07:10:25 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26a04dd28;
	Tue, 21 Oct 2025 15:10:15 +0800 (GMT+08:00)
Message-ID: <6e87b611-13ea-4d89-8dbf-85510dd86fa6@rock-chips.com>
Date: Tue, 21 Oct 2025 15:10:13 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Damien Le Moal <dlemoal@kernel.org>,
 Anand Moon <linux.amoon@gmail.com>, linux-pci@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Dragan Simic <dsimic@manjaro.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] PCI: dw-rockchip: Skip waiting for link up
To: FUKAUMI Naoki <naoki@radxa.com>, Niklas Cassel <cassel@kernel.org>
References: <20250113-rockchip-no-wait-v1-1-25417f37b92f@kernel.org>
 <1E8E4DB773970CB5+5a52c9e1-01b8-4872-99b7-021099f04031@radxa.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <1E8E4DB773970CB5+5a52c9e1-01b8-4872-99b7-021099f04031@radxa.com>
X-HM-Tid: 0a9a059ab03d09cckunm368fe7546378e8
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGRlMHlZMGEkdT0oYHUhDQx5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSEpKQk
	xVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=Xos0oDM9U+/0NylMEL8BB6RuBd69z3lnV+GumxjkBut/AP4cPRzd/vEwQFu9Y0yZl9ylfTifD4WYmtQLfDFSTfDUOm6IrlAU9x4wRdv7I2pZ6NGG00jyiBi+qLpg8afql3x9baCOQsYhc1URYAHef4Q4vfCHixVaDZf/eS4A/cQ=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=FqKFwJTtAHqh86lEqRIcwq3CBA+ub4FQsb9uC2nRB3g=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251021_001024_099032_AB69AEDD 
X-CRM114-Status: GOOD (  29.84  )
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

5ZyoIDIwMjUvMTAvMjEg5pif5pyf5LqMIDEyOjI2LCBGVUtBVU1JIE5hb2tpIOWGmemBkzoKPiBI
aSBOaWtsYXMsIEJqb3JuLAo+IAo+IEkgbm90aWNlZCBhbiBpc3N1ZSBvbiB0aGUgUm9ja2NoaXAg
UkszNTg4UyBTb0MgdXNpbmcgdGhlIEFTTWVkaWEgQVNNMjgwNiAKPiBQQ0llIGJyaWRnZSB3aGVy
ZSBkZXZpY2VzIGJlaGluZCB0aGUgYnJpZGdlIGZhaWwgdG8gcHJvYmUgc2luY2UgdjYuMTQuCj4g
U3BlY2lmaWNhbGx5LCB0aGlzIHN0YXJ0ZWQgaGFwcGVuaW5nIGFmdGVyIGNvbW1pdCAKPiA2NDdk
Njk2MDVjNzAzNjhkNTRmYzAxMmZjZThhNDNlOGU1OTU1YjA0Lgo+IGRtZXNnIGxvZ3MgZnJvbSBi
ZWZvcmUgYW5kIGFmdGVyIHRoaXMgY29tbWl0IGFyZSBhdmFpbGFibGUgYXQ6Cj4gIMKgaHR0cHM6
Ly9naXN0LmdpdGh1Yi5jb20vUmFkeGFOYW9raS9mY2EyYmZjYTJlZTgwZmVmZWU3YjAwYzc5Njdk
MmUzZAo+IAo+IEkgaGF2ZSBjb25maXJtZWQgdGhhdCByZXZlcnRpbmcgdGhlIGZvbGxvd2luZyBj
b21taXRzIGZpeGVzIHRoZSBpc3N1ZToKPiAgwqBjb21taXQgZWM5ZmQ0OTliOWM2ICgiUENJOiBk
dy1yb2NrY2hpcDogRG9uJ3Qgd2FpdCBmb3IgbGluayBzaW5jZSB3ZSAKPiBjYW4gZGV0ZWN0IExp
bmsgVXAiKQo+ICDCoGNvbW1pdCAwZTBiNDVhYjVkNzcgKCJQQ0k6IGR3LXJvY2tjaGlwOiBFbnVt
ZXJhdGUgZW5kcG9pbnRzIGJhc2VkIG9uIAo+IGRsbF9saW5rX3VwIElSUSIpCj4gCgpUaGVuIHRo
ZXNlIHR3byBjb21taXRzIHdvdWxkIGxpa2UgdG8gcmVwbHkgb24gbGluayB1cCBpcnEgaW5zdGVh
ZCBvZgpmaXhlZCBkZWxheSBpbiBkd2MgZnJhbWV3b3JrLiBIZXJlIGlzIGEgbm90IHZlcnkgcHJl
Y2lzZSB0aW1lbGluZQpkZXNjcmlwdGlvbi4KCnRpbWUobXMpIHwgIGR3X3BjaWVfd2FpdF9mb3Jf
bGlua++8iO+8iSAgICAgfCBzeXMgaXJxX3RocmVhZCgpIHwgSG90IHJlc2V0Ci0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0KMDogICAgICAgfCAgZHdfcGNpZV9saW5rX3VwIHJldHVybiBmYWxzZSAgfCAgbGluayB1
cCBpcnEgICAgIHwKMXggICAgICAgfCAgUGh5c2ljYWwgbGluayB1cCBoYXBwZW5kICAgICAgfCAg
ICAgICAgICAgICAgICAgIHwKOTA6ICAgICAgfCAgZHdfcGNpZV9saW5rX3VwIHJldHVybiB0cnVl
ICAgfCAgICAgICAgICAgICAgICAgIHwKMTAwOiAgICAgfCAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgfCAgbXNsZWVwKDEwMCkgZG9uZXwKMTB4OiAgICAgfCAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgfCAgcGNpX3Jlc2Nhbl9idXMgIHwKMXh4OiAgICAgfCAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgIHwgPD09b2NjdXIKMTkwOiAg
ICAgfCAgbXNsZWVwKDkwKSBkb25lICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAgICAgIHwK
MTl4OiAgICAgfCAgcGNpX2hvc3RfcHJvYmUgICAgICAgICAgICAgICAgfCAgICAgICAgICAgICAg
ICAgIHwKCldoYXQgaWYgdGhlIGhvdCByZXNldCBoYXBwZW5zIHdoZW4gcGNpX3Jlc2Nhbl9idXMo
KSBzdGFydHMuIEkgdGhpbmsKc2NhbiBkZXZpY2VzIHBvc3NpYmxlIGZhaWwgd2hlbiBzZWVpbmcg
MHhmZmZmZmZmZiBmcm9tIGNmZyByZWFkLiBCdXQKYSA5MG1zIGRlbGF5IHBlcmZlY3RseSBhdm9p
ZHMgdGhpcyBldmVudCBpbiBkd19wY2llX3dhaXRfZm9yX2xpbmsoKSwgYW5kIApieSB0aGUgdGlt
ZSB0aGUgOTBtcyBkZWxheSBpcyBjb21wbGV0ZWQsIHRoZSBsaW5rIGlzIGFjdHVhbGx5IGluIGFu
CmFjY2Vzc2libGUgc3RhdGUuCgo+IE9uIHY2LjE4LXJjMiwgdGhlIGNvbGQgYm9vdCBiZWhhdmlv
ciBoYXMgY2hhbmdlZCBzb21ld2hhdCwgYW5kIEkgaGF2ZSAKPiBvYnNlcnZlZCB0aGUgZm9sbG93
aW5nIHRocmVlIGJlaGF2aW9ycyBzbyBmYXI6Cj4gCj4gLSBQcm9iZSBzdWNjZWVkcwo+IC0gUHJv
YmUgZmFpbHMKPiAtIEtlcm5lbCBvb3BzCj4gCj4gVGhlcmUgc2VlbXMgdG8gYmUgbm8gcGF0dGVy
biB0byB0aGVzZSB0aHJlZSBiZWhhdmlvcnMuIER1cmluZyBhIHdhcm0gCj4gYm9vdCwgYSBzdWNj
ZXNzZnVsIHByb2JlIGRvZXMgbm90IHNlZW0gdG8gb2NjdXIuCj4gCj4gSWYgY29tbWl0IGVjOWZk
NDk5YjljNiBpcyByZXZlcnRlZCBvbiB2Ni4xOC1yYzIsIEkgaGF2ZSBvYnNlcnZlZCB0aGUgCj4g
Zm9sbG93aW5nIHR3byBiZWhhdmlvcnMgc28gZmFyOgo+IAo+IC0gUHJvYmUgc3VjY2VlZHMKPiAt
IEtlcm5lbCBvb3BzCj4gCj4gIlByb2JlIGZhaWxzIiBoYXMgbm90IGJlZW4gb2JzZXJ2ZWQgc28g
ZmFyLgo+IAo+IFRoZSBkbWVzZyBmb3IgdGhlIGtlcm5lbCBvb3BzIGlzIGF2YWlsYWJsZSBhdDoK
PiAgwqBodHRwczovL2dpc3QuZ2l0aHViLmNvbS9SYWR4YU5hb2tpLzRiMmRjZDVlNDFiMDkwMDRl
ZGEyZmRlYjgwYWU1ZTE1Cj4gCj4gQ2FuIHlvdSBwbGVhc2UgaGVscCBtZSB3aXRoIHRoaXMgaXNz
dWU/Cj4gCj4gQmVzdCByZWdhcmRzLAo+IAo+IC0tIAo+IEZVS0FVTUkgTmFva2kKPiBSYWR4YSBD
b21wdXRlciAoU2hlbnpoZW4pIENvLiwgTHRkLgo+IAo+IE9uIDEvMTMvMjUgMTk6NTksIE5pa2xh
cyBDYXNzZWwgd3JvdGU6Cj4+IFRoZSBSb290IENvbXBsZXggc3BlY2lmaWMgZGV2aWNlIHRyZWUg
YmluZGluZyBmb3IgcGNpZS1kdy1yb2NrY2hpcCBoYXMgCj4+IHRoZQo+PiAnc3lzJyBpbnRlcnJ1
cHQgbWFya2VkIGFzIHJlcXVpcmVkLgo+Pgo+PiBUaGUgZHJpdmVyIHJlcXVlc3RzIHRoZSAnc3lz
JyBJUlEgdW5jb25kaXRpb25hbGx5LCBhbmQgZXJyb3JzIG91dCBpZiBub3QKPj4gcHJvdmlkZWQu
Cj4+Cj4+IFRodXMsIHdlIGNhbiB1bmNvbmRpdGlvbmFsbHkgc2V0IHVzZV9saW5rdXBfaXJxIGJl
Zm9yZSBjYWxsaW5nCj4+IGR3X3BjaWVfaG9zdF9pbml0KCkuCj4+Cj4+IFRoaXMgd2lsbCBza2lw
IHRoZSB3YWl0IGZvciBsaW5rIHVwIChzaW5jZSB0aGUgYnVzIHdpbGwgYmUgZW51bWVyYXRlZCAK
Pj4gb25jZQo+PiB0aGUgbGluayB1cCBJUlEgaXMgdHJpZ2dlcmVkKSwgd2hpY2ggcmVkdWNlcyB0
aGUgYm9vdHVwIHRpbWUuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IE5pa2xhcyBDYXNzZWwgPGNhc3Nl
bEBrZXJuZWwub3JnPgo+PiAtLS0KPj4gwqAgZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNp
ZS1kdy1yb2NrY2hpcC5jIHwgMSArCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigr
KQo+Pgo+Pgo+PiAtLS0KPj4gYmFzZS1jb21taXQ6IDJhZGRhNDEwMjkzMWIxNTJmMzVkMDU0MDU1
NDk3NjMxZWQ5N2ZlNzMKPj4gY2hhbmdlLWlkOiAyMDI1MDExMy1yb2NrY2hpcC1uby13YWl0LTQw
M2ZmYmM0MjMxMwo+Pgo+PiBCZXN0IHJlZ2FyZHMsCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzLyAKPj4gcGNp
L2NvbnRyb2xsZXIvZHdjL3BjaWUtZHctcm9ja2NoaXAuYwo+PiBpbmRleCAKPj4gMTE3MGUxMTA3
NTA4YmQ3OTNiNjEwOTQ5YjBhZmU5ODUxNmMxNzdhNC4uNjIwMzRhZmZiOTVmYmI5NjVhYWQzY2Vi
YzYxM2E4M2UzMWM5MGFlZSAxMDA2NDQKPj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdj
L3BjaWUtZHctcm9ja2NoaXAuYwo+PiBAQCAtNDM1LDYgKzQzNSw3IEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfcGNpZV9jb25maWd1cmVfcmMoc3RydWN0IAo+PiByb2NrY2hpcF9wY2llICpyb2NrY2hp
cCkKPj4gwqDCoMKgwqDCoCBwcCA9ICZyb2NrY2hpcC0+cGNpLnBwOwo+PiDCoMKgwqDCoMKgIHBw
LT5vcHMgPSAmcm9ja2NoaXBfcGNpZV9ob3N0X29wczsKPj4gK8KgwqDCoCBwcC0+dXNlX2xpbmt1
cF9pcnEgPSB0cnVlOwo+PiDCoMKgwqDCoMKgIHJldHVybiBkd19wY2llX2hvc3RfaW5pdChwcCk7
Cj4+IMKgIH0KPiAKPiAKPiBfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwo+IExpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdAo+IExpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKPiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCj4gCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
