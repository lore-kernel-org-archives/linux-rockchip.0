Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67726CAC599
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Sep 2025 09:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=epjxT40wRI+qHmX+cL67va/ns3bwj5++JIKWbJvIGPU=; b=TWa8UIGxx5QXFSCq3OWA4PgSZE
	LahXjYbIhiZdnaAfQ14ADEOtBDstdyKmSRjUvttTJBB98oh0I7MIR0vK5k+/01wYKp4DfVAhEO+OY
	VbPmEnEaHAfIuOFj754F6uFsagaz/BHranfNS7rL5HhywzO/p3w4w8uMTCykwNyZNzkNWwyn066Ev
	q1NJ7jEkyUJmgtQoDVT0y7Eq8oKCluilTYXubpyulATZUWcWmZVW1IrNSZdHvXvrtwoYQfwH53Fo3
	WJ13UoDbb+nRmkHe6q+WNSF07PfHEZr+G3ZcUpKe4G9F+9OYKkH7sVkAAY67eEEyY1NdUnWqw+5hZ
	J3uBNiUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyRpc-00000007LMq-3V1A;
	Tue, 16 Sep 2025 09:18:36 +0000
Received: from mail-m1973195.qiye.163.com ([220.197.31.95])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uyRpa-00000007LLh-0C99;
	Tue, 16 Sep 2025 09:18:35 +0000
Received: from [172.16.12.153] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 22f959761;
	Tue, 16 Sep 2025 17:18:22 +0800 (GMT+08:00)
Message-ID: <352856bb-76b6-4861-8a3f-80f94f7c7375@rock-chips.com>
Date: Tue, 16 Sep 2025 17:18:21 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: rockchip: Enable DisplayPort for rk3588-evb2
To: Quentin Schulz <quentin.schulz@cherry.de>, Chaoyi Chen
 <kernel@airkyi.com>, Heiko Stuebner <heiko@sntech.de>,
 Andy Yan <andy.yan@rock-chips.com>
References: <20250916080802.125-1-kernel@airkyi.com>
 <50379c05-c8b7-4858-98ff-da7ebdc06863@cherry.de>
Content-Language: en-US
From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
In-Reply-To: <50379c05-c8b7-4858-98ff-da7ebdc06863@cherry.de>
X-HM-Tid: 0a9951d168ea03abkunm555e9ccfd7dfc3
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUsZSlYZSE0YGkxPQhgaTUxWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=F+EKq4gg4qlo8nAJoc5lrQgMP4zh4inm470+Tn1Ez5Z1/jWE0eyReVlBcRVwLvs726xdBuUQJZ7PbENDGxdwldDSnJisgqnGREb7KNoUhIc55WLPns3O56z44O5S4NCjFNrJKbYS7ojCngYVMA212F9tRS6B4s+zQg0AzCUwUGA=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=b+ZLNq20gUlnf3bdwNOW2uRTHNHYyeqWixETQkP5DOA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_021834_616984_F5A1DB67 
X-CRM114-Status: GOOD (  17.74  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, Jonas Karlman <jonas@kwiboo.se>, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, FUKAUMI Naoki <naoki@radxa.com>, Peter Robinson <pbrobinson@gmail.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Dragan Simic <dsimic@manjaro.org>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgUXVlbnRpbiwKCk9uIDkvMTYvMjAyNSA0OjQxIFBNLCBRdWVudGluIFNjaHVseiB3cm90ZToK
PiBIaSBDaGFveWkgQ2hlbiwKPgo+IE9uIDkvMTYvMjUgMTA6MDggQU0sIENoYW95aSBDaGVuIHdy
b3RlOgo+PiBGcm9tOiBDaGFveWkgQ2hlbiA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+
Cj4+IFRoZSByazM1ODggZXZiMiBib2FyZCBoYXMgYSBmdWxsIHNpemUgRGlzcGxheVBvcnQgY29u
bmVjdG9yLCBlbmFibGUKPj4gZm9yIGl0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBDaGFveWkgQ2hl
biA8Y2hhb3lpLmNoZW5Acm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+PiDCoCAuLi4vYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWV2YjItdjEwLmR0c8KgwqDCoMKgIHwgMzkgKysrKysrKysrKysrKysr
KysrKwo+PiDCoCAxIGZpbGUgY2hhbmdlZCwgMzkgaW5zZXJ0aW9ucygrKQo+Pgo+PiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMi12MTAuZHRzIGIv
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMi12MTAuZHRzCj4+IGluZGV4
IDkxZmU4MTBkMzhkOC4uMGU1YWY2MWY2NmZlIDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1ldmIyLXYxMC5kdHMKPj4gKysrIGIvYXJjaC9hcm02NC9i
b290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMi12MTAuZHRzCj4+IEBAIC0yNSw2ICsyNSwxOCBA
QCBjaG9zZW4gewo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgc3Rkb3V0LXBhdGggPSAic2VyaWFsMjox
NTAwMDAwbjgiOwo+PiDCoMKgwqDCoMKgIH07Cj4+IMKgICvCoMKgwqAgZHAtY29uIHsKPj4gK8Kg
wqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiZHAtY29ubmVjdG9yIjsKPj4gK8KgwqDCoMKgwqDC
oMKgIGxhYmVsID0gIkRQIE9VVCI7Cj4+ICvCoMKgwqDCoMKgwqDCoCB0eXBlID0gImZ1bGwgc2l6
ZSI7Cj4KPiBUaGlzIGlzbid0IHZhbGlkIGFjY29yZGluZyB0byB0aGUgZHQgYmluZGluZy4gSXQg
c2hvdWxkIGJlICJmdWxsLXNpemUiIGluc3RlYWQuCgpXaWxsIGZpeCBpbiB2Mi4KCgo+Cj4+ICsK
Pj4gK8KgwqDCoMKgwqDCoMKgIHBvcnQgewo+PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBkcF9j
b25faW46IGVuZHBvaW50IHsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCByZW1v
dGUtZW5kcG9pbnQgPSA8JmRwMF9vdXRfY29uPjsKPj4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqAg
fTsKPj4gK8KgwqDCoMKgwqDCoMKgIH07Cj4+ICvCoMKgwqAgfTsKPj4gKwo+PiDCoMKgwqDCoMKg
IGhkbWktY29uIHsKPj4gwqDCoMKgwqDCoMKgwqDCoMKgIGNvbXBhdGlibGUgPSAiaGRtaS1jb25u
ZWN0b3IiOwo+PiDCoMKgwqDCoMKgwqDCoMKgwqAgdHlwZSA9ICJhIjsKPj4gQEAgLTEwNiw2ICsx
MTgsMjQgQEAgdmNjNXYwX3VzYmRjaW46IHJlZ3VsYXRvci12Y2M1djAtdXNiZGNpbiB7Cj4+IMKg
wqDCoMKgwqAgfTsKPj4gwqAgfTsKPj4gwqAgKyZkcDAgewo+PiArwqDCoMKgIHBpbmN0cmwtMCA9
IDwmZHAwbTBfcGlucz47Cj4+ICvCoMKgwqAgcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4g
K8KgwqDCoCBzdGF0dXMgPSAib2theSI7Cj4+ICt9Owo+PiArCj4+ICsmZHAwX2luIHsKPj4gK8Kg
wqDCoCBkcDBfaW5fdnAyOiBlbmRwb2ludCB7Cj4+ICvCoMKgwqDCoMKgwqDCoCByZW1vdGUtZW5k
cG9pbnQgPSA8JnZwMl9vdXRfZHAwPjsKPj4gK8KgwqDCoCB9Owo+PiArfTsKPj4gKwo+PiArJmRw
MF9vdXQgewo+PiArwqDCoMKgIGRwMF9vdXRfY29uOiBlbmRwb2ludCB7Cj4+ICvCoMKgwqDCoMKg
wqDCoCByZW1vdGUtZW5kcG9pbnQgPSA8JmRwX2Nvbl9pbj47Cj4+ICvCoMKgwqAgfTsKPj4gK307
Cj4+ICsKPj4gwqAgJmdwdSB7Cj4+IMKgwqDCoMKgwqAgbWFsaS1zdXBwbHkgPSA8JnZkZF9ncHVf
czA+Owo+PiDCoMKgwqDCoMKgIHNyYW0tc3VwcGx5ID0gPCZ2ZGRfZ3B1X21lbV9zMD47Cj4+IEBA
IC05MTYsNiArOTQ2LDggQEAgJnVzYl9ob3N0MV94aGNpIHsKPj4gwqAgfTsKPj4gwqAgwqAgJnZv
cCB7Cj4+ICvCoMKgwqAgYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgRENMS19WT1AyX1NSQz47Cj4+
ICvCoMKgwqAgYXNzaWduZWQtY2xvY2stcGFyZW50cyA9IDwmY3J1IFBMTF9WMFBMTD47Cj4KPiBU
aGlzIGlzIHN1cnByaXNpbmcsIHRoZSBvbmx5IG90aGVyIGJvYXJkIHdoaWNoIGhhcyB0aGUgRFAw
IGVuYWJsZWQgKHRoZSBDb29sUGkgNEIpIGRvZXNuJ3Qgc2V0IHRoZXNlIHR3by4KPgo+IERvZXMg
SERNSSBzdGlsbCB3b3JrIGFzIHdlbGwgYXMgaXQgdXNlZCB0byB3aXRoIHRoZXNlIG5ldyBwcm9w
ZXJ0aWVzPyBXaHkgYXJlIHRob3NlIG5lZWRlZD8gU29tZSBjb250ZXh0IGluIHRoZSBjb21taXQg
bG9nIG9yIGFzIGEgY29tbWVudCBpbiB0aGUgRFQgd291bGQgYmUgbW9zdCB3ZWxjb21lIQoKWWVz
LCBIRE1JIGFuZCBEUCBjYW4gd29yayBub3JtYWxseSB3aGV0aGVyIHRoZXNlIG5ld8KgcHJvcGVy
dGllcyByZW1vdmVkIG9yIG5vdC4KClRoZSBrZXkgcG9pbnQgaXMgdGhhdCB3aGVuIHVzaW5nIFYw
UExMLCB3ZSBjYW4gZ2V0IG1vcmUgdXNhYmxlIHJlc29sdXRpb24gYmVjYXVzZSBEUCByZXF1aXJl
cyBhIHByZWNpc2UgY2xvY2suIElmIFYwUExMIGlzIG5vdCBleHBsaWNpdGx5IHNwZWNpZmllZCBo
ZXJlLCB0aGVuIGRjbGtfdm9wMiAoVlAyKSBtYXkgYmUgZGl2aWRlZCBkb3duIG9uIEdQTEwsIENQ
TEwsIGV0Yy4gSW4gdGhpcyBjYXNlLCBvbmx5IGEgZmV3IGZyZXF1ZW5jeSBwb2ludHMgYXJlIGF2
YWlsYWJsZS4gSW4gbXkgY2FzZSwgd2hlbiBWMFBMTCBpcyBub3QgdXNlZCwgb25seSByZXNvbHV0
aW9ucyBzdWNoIGFzIDEwMjR4NzY4IGFuZCA2NDB4NDgwIGFyZSBhdmFpbGFibGUuCgpGb3IgSERN
SSwgSSB0aGluayBpdCB3aWxsIHVzZSBjbGtfaGRtaXBoeV9waXhlbDAvMSBhcyBjbG9jayBwYXJl
bnQgd2hpY2ggaXMgcHJvdmlkZWQgYnkgdGhlIEhETUkgUEhZIHdoZW4gaXQgd29yayBvbiBUTURT
IG1vZGUgc28gdGhhdCB3ZSBkb24ndCBuZWVkIHRvIHNldCBpdCAuCgpJIHdpbGwgYWRkIG1vcmUg
Y29tbWVudCBpbiB2Mi4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
