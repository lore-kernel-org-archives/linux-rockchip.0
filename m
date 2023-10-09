Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84DBCCD6127
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 19:01:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZFWzYWU0onsyh1ROOcZTzO8luf+DEeGowDM8aWsJTek=; b=JIoNaYf7GJVQB4
	M1LUrodeSySVUNrRiAXLxjZ/KqpMHHZ3lKOBdClt0Jl3wZnhuQViMcPfP1Hg4FudX+ldYPTrn9eXA
	Rnn58RQ/f1GFzJM95vVHDasKVGDeYSp1tlJvg5uG/LUwXHn8VresgOKyOFtcIuwPwhDeiDTNpnCK9
	nhUUGXzEvnaBlJgDlMK8OAqO+FEzNaLcX8ps4Kh0KS0kwA05RI4j4Bcn5MuJzzCvyxJ6H061AFHAZ
	kfz8KB/6zEboG5RDP/NYQo6fLMHysnN3CHlThTLDtk5kwleqrbzitd0Uj7tUcfQxFwHewwjje0fnh
	RP0/h1YHKiDvrn0Tn+4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpvV4-00BSVe-2s;
	Mon, 09 Oct 2023 19:01:06 +0000
Received: from forward100b.mail.yandex.net ([2a02:6b8:c02:900:1:45:d181:d100])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpvUw-00BSTC-2D;
	Mon, 09 Oct 2023 19:01:00 +0000
Received: from mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net (mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net [IPv6:2a02:6b8:c14:6e01:0:640:627f:0])
	by forward100b.mail.yandex.net (Yandex) with ESMTP id 513D460A9E;
	Mon,  9 Oct 2023 22:00:49 +0300 (MSK)
Received: by mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net (smtp/Yandex) with ESMTPSA id Z0imEe6DeSw0-tb5Kw72p;
	Mon, 09 Oct 2023 22:00:48 +0300
X-Yandex-Fwd: 1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=6tel.net; s=mail;
	t=1696878048; bh=Q0kzR1Hkqz2cOVD+5iFO30kiqBo+q8tCC8dS7GzQR8s=;
	h=Cc:Message-ID:References:Date:In-Reply-To:Subject:To:From;
	b=JLtChTSwho6cSk5GB+t52/2PP2CUNKzRSTrNKHb+N57FkOR2uUdsrbIYNfZlz8kdc
	 vBL6blQzTg9Pzjdd5BBkGTM+cWB+SYJ+S4Cy3h8rHOz8B2QzTOXmt2PARTJoUcnyjl
	 f6I8oD/FvT/m4sRE/bwTkJthJi0cYmSIX9T7NbeM=
Authentication-Results: mail-nwsmtp-smtp-production-main-63.sas.yp-c.yandex.net; dkim=pass header.i=@6tel.net
From: Muhammed Efe Cetin <efectn@6tel.net>
To: d-gole@ti.com
Cc: conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	efectn@6tel.net,
	heiko@sntech.de,
	jonas@kwiboo.se,
	krzysztof.kozlowski+dt@linaro.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	megi@xff.cz,
	robh+dt@kernel.org,
	sebastian.reichel@collabora.com
Subject: Re: [PATCH v3 3/3] arm64: dts: rockchip: Add Orange Pi 5
Date: Mon,  9 Oct 2023 22:00:26 +0300
Message-ID: <20231009190027.10304-1-efectn@6tel.net>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20231009054034.am2e4hcmwoworeml@dhruva>
References: <20231009054034.am2e4hcmwoworeml@dhruva>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_120058_940449_DF78FEC5 
X-CRM114-Status: GOOD (  24.42  )
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

SGksCgpPbiA5LjEwLjIwMjMgMDg6NDAsIERocnV2YSBHb2xlIHdyb3RlOgo+IEhlbGxvLAo+IAo+
IE9uIE9jdCAwNSwgMjAyMyBhdCAxNjo1NDowNCArMDMwMCwgTXVoYW1tZWQgRWZlIENldGluIHdy
b3RlOgo+PiBIZWxsbywKPj4KPj4gT24gMjguMDkuMjAyMyAxMzo1MSwgRGhydXZhIEdvbGUgd3Jv
dGU6Cj4+PiBIaSwKPj4+Cj4+PiBPbiBBdWcgMjEsIDIwMjMgYXQgMTg6NDc6NTkgKzAzMDAsIE11
aGFtbWVkIEVmZSBDZXRpbiB3cm90ZToKPj4+PiBBZGQgaW5pdGlhbCBzdXBwb3J0IGZvciBPUGk1
IHRoYXQgaW5jbHVkZXMgc3VwcG9ydCBmb3IgVVNCMiwgUENJZTIsIFNhdGEsCj4+Pj4gU2RtbWMs
IFNQSSBGbGFzaCwgUE1JQy4KPj4+Pgo+Pj4+IFNpZ25lZC1vZmYtYnk6IE11aGFtbWVkIEVmZSBD
ZXRpbiA8ZWZlY3RuQDZ0ZWwubmV0Pgo+Pj4+IFJldmlld2VkLWJ5OiBPbmTFmWVqIEppcm1hbiA8
bWVnaUB4ZmYuY3o+Cj4+Pj4gLS0tCj4+Pj4gICAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9NYWtlZmlsZSAgICAgICAgIHwgICAxICsKPj4+PiAgICAuLi4vYm9vdC9kdHMvcm9ja2NoaXAv
cmszNTg4cy1vcmFuZ2VwaS01LmR0cyAgfCA2NzMgKysrKysrKysrKysrKysrKysrCj4+Pj4gICAg
MiBmaWxlcyBjaGFuZ2VkLCA2NzQgaW5zZXJ0aW9ucygrKQo+Pj4+ICAgIGNyZWF0ZSBtb2RlIDEw
MDY0NCBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OHMtb3JhbmdlcGktNS5kdHMK
Pj4+Pgo+Pj4gLi4uCj4+Pgo+Pj4gQ2FuIHlvdSBwcm92aWRlIHNvbWUgc29ydCBvZiBkb2N1bWVu
dGF0aW9uIG9uIGhvdyBJIGNhbiBidWlsZCBhbmQgYm9vdAo+Pj4gdGhlIGtlcm5lbCBvbiB0aGlz
IGJvYXJkPyBJIHdhcyB1bmFibGUgdG8gdXNlIHRoZSB1cHN0cmVhbSBhcm02NAo+Pj4gZGVmY29u
ZmlnIHdpdGggdGhpcyBleGFjdCBzZXJpZXMgYXBwbGllZCB0byBib290IHRoZSBib2FyZC4KPj4K
Pj4gV2hhdCB3YXMgd3Jvbmcgd2hlbiB5b3UgdHJpZWQgdG8gY29tcGlsZSAmIGJvb3QgdGhlIGJv
YXJkPyBDYW4geW91IHByb3ZpZGUgc29tZSBsb2dzPwo+IAo+IFVtbSBkb24ndCBoYXZlIGxvZ3Mg
YXQgaGFuZCwgYnV0IEkgcmVtZW1iZXIgaXQgZGlkbid0IHJlYWxseSByZWFjaCB0aGUKPiBsaW51
eCBmaXJzdCBsaW5lIGVpdGhlciwgaXQgd2VudCBpbnRvIHNvcnQgb2YgYSBib290bG9vcCBqdXN0
IGFmdGVyCj4gdGhlIHVib290IHN0YWdlLgoKSG1tIHRoZXJlIG1pZ2h0IGJlIGlzc3VlIHdpdGgg
eW91ciB1Ym9vdCBjb21waWxhdGlvbi4gSXQnZCBiZSBiZXR0ZXIgaWYgeW91IHByb3ZpZGUgdXNl
ZnVsIGxvZ3MuCgo+IAo+Pgo+Pj4KPj4+PiArCj4+Pj4gKyZpMmM2IHsKPj4+PiArCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4+Pj4gKwlwaW5jdHJsLTAgPSA8JmkyYzZtM194ZmVyPjsKPj4+
PiArCXN0YXR1cyA9ICJva2F5IjsKPj4+PiArCj4+Pj4gKwloeW04NTYzOiBydGNANTEgewo+Pj4+
ICsJCWNvbXBhdGlibGUgPSAiaGFveXUsaHltODU2MyI7Cj4+Pj4gKwkJcmVnID0gPDB4NTE+Owo+
Pj4+ICsJCSNjbG9jay1jZWxscyA9IDwwPjsKPj4+PiArCQljbG9jay1vdXRwdXQtbmFtZXMgPSAi
aHltODU2MyI7Cj4+Pj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPj4+PiArCQlwaW5j
dHJsLTAgPSA8Jmh5bTg1NjNfaW50PjsKPj4+PiArCQlpbnRlcnJ1cHQtcGFyZW50ID0gPCZncGlv
MD47Cj4+Pj4gKwkJaW50ZXJydXB0cyA9IDxSS19QQjAgSVJRX1RZUEVfTEVWRUxfTE9XPjsKPj4+
PiArCQl3YWtldXAtc291cmNlOwo+Pj4KPj4+IEFyZSB5b3UgYWJsZSB0byBhY3R1YWxseSB1c2Ug
cnRjIGFzIGEgd2FrZXVwIHNvdXJjZT8gSSB0cmllZCB0aGlzCj4+PiBvbiBhIGRvd25zdHJlYW0g
a2VybmVsIHRoYXQgSSBtZW50aW9uIGJlbG93Li4KPj4+Cj4+PiBydGN3YWtlIC1zIDEwIC1tIG1l
bQo+Pj4KPj4+IGRpZG4ndCBhY3R1YWxseSBzZWVtIHRvIHdha2UgdGhlIGRldmljZSBmcm9tIGRl
ZXBzbGVlcCBhZnRlciAxMCBzZWNvbmRzLgo+Pj4gRG8geW91IGtub3cgd2hhdCBvdGhlciBwaW5z
IEkgY2FuIHVzZSBhcyB3YWtldXAgc291cmNlcz8KPj4KPj4gTm8sIGkndmUgbm90IHRyaWVkIGl0
IGJlZm9yZS4KPiAKPiBhaCBva2F5Cj4gCj4+Cj4+Pgo+Pj4+ICsJfTsKPj4+PiArfTsKPj4+PiAr
Cj4+Pj4gKyZtZGlvMSB7Cj4+Pj4gKwlyZ21paV9waHkxOiBldGhlcm5ldC1waHlAMSB7Cj4+Pj4g
KwkJY29tcGF0aWJsZSA9ICJldGhlcm5ldC1waHktaWVlZTgwMi4zLWMyMiI7Cj4+Pgo+Pj4gSnVz
dCB3b25kZXJpbmcsIGNhbiB5b3UgcGxlYXNlIGdpdmUgc29tZSBsb2dzIG9mIHRoZSBib2FyZCB3
aXRoIGV0aAo+Pj4gd29ya2luZz8gVGhlIGltYWdlIHRoYXQgSSBoYXZlIGZyb20gb3BpIHNlZW1z
IHRvIGZhaWwgZXRoPyBBcyBpbiBJIGFtCj4+PiBub3QgYWJsZSB0byBzZWUgYW55IGlwIGFkZHJl
c3MuIGhlcmUgYXJlIHRoZSBsb2dzOgo+Pj4KPj4+IGh0dHBzOi8vZ2lzdC5naXRodWIuY29tL0Ro
cnV2YUcyMDAwL2VkYTI3NjJlMzUwMTNjOGQ1YWM5ZjM3ZTgxODEwM2EzCj4+Cj4+IFVuZm9ydHVu
YXRlbHkgdGhlIGJvYXJkIGlzIG5vdCBuZWFyIG1lIGN1cnJlbnRseS4gSG93ZXZlciwgaSB3YXMg
YWJsZSB0byB1c2UgR01BQyBldGhlcm5ldCBpbiBib3RoIHRoZSB1cHN0cmVyYW0gYW5kIGRvd25z
dHJlYW0ga2VybmVscy4gRGlkIHlvdSB0cnkgYW55IGltYWdlcyBvdGhlciB0aGFuIE9yYW5nZSBQ
aSBvbmVzPwo+IAo+IE5vcGUsIGFyZSB0aGVyZSBhbnkgb3RoZXIgaW1hZ2VzIHRoYXQgbWF5YmUg
bW9yZSBzdWl0YWJsZT8gUGxlYXNlIGNhbiB5b3UgcG9pbnQgbWUgdG8gdGhlbT8KCllvdSBjYW4g
Y2hlY2sgdGhlIGltYWdlcyBiZWxvdyB0aGUgVGhpcmQgUGFydHkgSW1hZ2VzIHNlY3Rpb24gaW4g
T1BpJ3MgZG93bmxvYWQgcGFnZS4gR01BQyBzaG91bGQgd29yayBwcm9wZXJseSB3aXRoIG1vc3Qg
b2YgdGhlbS4KCj4gCj4+Cj4+Pgo+Pj4gLi4uCj4+Pgo+Pgo+IAoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
