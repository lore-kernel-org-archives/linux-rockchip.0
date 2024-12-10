Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD5F6E7717F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Dec 2024 14:01:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iY5rQn8IOMrm5oN/jIbgslGninzF24KiExf6e37AEcs=; b=wiuAPgX3klRomXCqKGPCX9Osdw
	e4oTQQI5VwUe6gk8gc/M4/RNz3CxgwMJamLMzMaGM0d6Gd8U1pTl3OORts1/uzpw2SP5HGyv0Et/w
	+TZui3GcWrF7B9jDUXLKpqNorK19IEqigkEVobnPhBbXLJT+tfMUfwXvVj55lcbUMravQ5viKlExG
	0uptzrPN83BA/WDB/35pNe2zqoqeZIvFo8I7ZMVN/rTFbNjpLbBCwskLyvKVJLwAiKX/1kKZSOKUL
	OLqoywhK9a4BABbbnpvqOBYfi5R+4T/gWPwtpHOXhj0qL5vq5HjXop0uyDOgkVU0sfMxPuUHNXHLz
	PoQLjdqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tL0np-0000000Bf8T-3V7r;
	Tue, 10 Dec 2024 14:01:29 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tL0lq-0000000BehF-0kA8;
	Tue, 10 Dec 2024 13:59:27 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733839164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=WGtCSR7EeU4PQbry3weYc55FRPjXetuC+CXU0b67FGM=;
	b=r/8E9EC6TV/aMV/96LuAUOyPdx+bIPuJE6ANGTFf2tdpwYfvhMz2NbAanz1XEQGvfgI5DH
	pBlpCmOH7yIqG9sXrjxWxspNIuPhBoSNVhij7YLVT2W05+I2hL8KEKAtgKh3qCUy5ZJayM
	G5bXalU+rQ4kytfHZlrYZ4qCqvtkFFRhx8XPQrtf6wsX/6Osm4KZ6x8j+0DOoAD+dqwQUk
	4nVfgMNOA5p0AS/T55BZQ4H0kN7WIS6Wqi7F1orbxTX3wrTeEU6jK7WJNdTrsb1lEbk+8h
	m7oFqofKVDEgJRWswfF4BgOxiM8IXmODZGpAe0kPJu3dZl+xq/IGuKNAxXjwzQ==
Date: Tue, 10 Dec 2024 14:59:23 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Elaine Zhang
 <zhangqing@rock-chips.com>, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/6] clk: rockchip: fix wrong clk_ref_usb3otg parent for
 rk3328
In-Reply-To: <CAMdYzYqJLK6oJHCUVztth6mtJsYrRQSPzNYpR-ZmR7rNprZXfg@mail.gmail.com>
References: <20241210013010.81257-1-pgwipeout@gmail.com>
 <20241210013010.81257-3-pgwipeout@gmail.com>
 <0d11705121f29ccfb7cfa342505a6e35@manjaro.org>
 <CAMdYzYqJLK6oJHCUVztth6mtJsYrRQSPzNYpR-ZmR7rNprZXfg@mail.gmail.com>
Message-ID: <bcc296ea8c15eddce62a8d3ef3a509b7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_055926_510536_5B63D521 
X-CRM114-Status: GOOD (  24.87  )
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

SGVsbG8gUGV0ZXIsCgpPbiAyMDI0LTEyLTEwIDE0OjI3LCBQZXRlciBHZWlzIHdyb3RlOgo+IE9u
IFR1ZSwgRGVjIDEwLCAyMDI0IGF0IDQ6NDTigK9BTSBEcmFnYW4gU2ltaWMgPGRzaW1pY0BtYW5q
YXJvLm9yZz4gCj4gd3JvdGU6Cj4+IE9uIDIwMjQtMTItMTAgMDI6MzAsIFBldGVyIEdlaXMgd3Jv
dGU6Cj4+ID4gQ29ycmVjdCB0aGUgY2xrX3JlZl91c2Izb3RnIHBhcmVudCB0byBmaXggY2xvY2sg
Y29udHJvbCBmb3IgdGhlIHVzYjMKPj4gPiBjb250cm9sbGVyIG9uIHJrMzMyOC4gVmVyaWZpZWQg
YWdhaW5zdCB0aGUgcmszMzI4IHRybSBhbmQgdXNiMyBjbG9jawo+PiA+IHRyZWUKPj4gPiBkb2N1
bWVudGF0aW9uLgo+PiA+Cj4+ID4gRml4ZXM6IGZlMzUxMWFkOGExYyAoImNsazogcm9ja2NoaXA6
IGFkZCBjbG9jayBjb250cm9sbGVyIGZvciByazMzMjgiKQo+PiA+IFNpZ25lZC1vZmYtYnk6IFBl
dGVyIEdlaXMgPHBnd2lwZW91dEBnbWFpbC5jb20+Cj4+ID4gLS0tCj4+ID4KPj4gPiAgZHJpdmVy
cy9jbGsvcm9ja2NoaXAvY2xrLXJrMzMyOC5jIHwgMiArLQo+PiA+ICAxIGZpbGUgY2hhbmdlZCwg
MSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4gPgo+PiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzI4LmMKPj4gPiBiL2RyaXZlcnMvY2xrL3JvY2tjaGlw
L2Nsay1yazMzMjguYwo+PiA+IGluZGV4IDNiYjg3YjI3YjY2Mi4uY2Y2MGZjZjJmYTVjIDEwMDY0
NAo+PiA+IC0tLSBhL2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMjguYwo+PiA+ICsrKyBi
L2RyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMzMjguYwo+PiA+IEBAIC0yMDEsNyArMjAxLDcg
QEAgUE5BTUUobXV4X2FjbGtfcGVyaV9wcmVfcCkgICAgICAgID0geyAiY3BsbF9wZXJpIiwKPj4g
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImdwbGxfcGVyaSIsCj4+ID4gICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJoZG1pcGh5X3BlcmkiIH07Cj4+ID4gIFBO
QU1FKG11eF9yZWZfdXNiM290Z19zcmNfcCkgPSB7ICJ4aW4yNG0iLAo+PiA+IC0gICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAiY2xrX3VzYjNvdGdfcmVmIiB9Owo+PiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAiY2xrX3JlZl91c2Izb3RnX3NyYyIgfTsKPj4gPiAg
UE5BTUUobXV4X3hpbjI0bV8zMmtfcCkgICAgICAgICAgICAgID0geyAieGluMjRtIiwKPj4gPiAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgImNsa19ydGMzMmsiIH07Cj4+ID4gIFBO
QU1FKG11eF9tYWMyaW9fc3JjX3ApICAgICAgICAgICAgICA9IHsgImNsa19tYWMyaW9fc3JjIiwK
Pj4gCj4+IFNvcnJ5LCBidXQgSSB3YXMgdW5hYmxlIHRvIHZlcmlmeSB0aGlzIGluIHRoZSBwYXJ0
IDEgb2YgdGhlCj4+IFJLMzMyOCBUUk0sIGluIGJvdGggdmVyc2lvbnMgMS4xIGFuZCAxLjIsIHdo
aWNoIGlzIGFsbCBJIGhhdmUKPj4gd2hlbiBpdCBjb21lcyB0byB0aGUgUkszMzI4IFRSTS4gIElz
IHRoYXQgbWF5YmUgZGVzY3JpYmVkIGluCj4+IHRoZSBwYXJ0IDIsIHdoaWNoIEkndmUgYmVlbiB1
bmFibGUgdG8gbG9jYXRlIGZvciB5ZWFycz8KPj4gCj4+IE1vcmVvdmVyLCB0aGUgZG93bnN0cmVh
bSBrZXJuZWwgc291cmNlIGZyb20gUm9ja2NoaXAgZG9lcyBpdAo+PiB0aGUgd2F5IFsxXSBpdCdz
IGN1cnJlbnRseSBkb25lIGluIHRoZSBtYWlubGluZSBrZXJuZWwsIHdoaWNoCj4+IG1ha2VzIG1l
IGNvbmZ1c2VkIGEgYml0PyAgQ291bGQgeW91LCBwbGVhc2UsIHByb3ZpZGUgbW9yZQo+PiBkZXRh
aWxzIGFib3V0IHRoZSB0d28gcmVmZXJlbmNlcyB5b3UgbWVudGlvbmVkIGluIHRoZSBwYXRjaAo+
PiBkZXNjcmlwdGlvbiwgb3IgbWF5YmUgZXZlbiB5b3UgY291bGQgcHJvdmlkZSB0aGUgbGlua3Mg
dG8KPj4gdGhvc2UgdHdvIHJlZmVyZW5jZXM/Cj4+IAo+PiBbMV0gCj4+IGh0dHBzOi8vcmF3Lmdp
dGh1YnVzZXJjb250ZW50LmNvbS9yb2NrY2hpcC1saW51eC9rZXJuZWwvcmVmcy9oZWFkcy9kZXZl
bG9wLTQuNC9kcml2ZXJzL2Nsay9yb2NrY2hpcC9jbGstcmszMzI4LmMKPiAKPiBJdCBpcyB1bmZv
cnR1bmF0ZSB0aGUgVFJNIGRvZXNuJ3QgaW5jbHVkZSB0aGUgY2xvY2sgbWFwcywgYmVjYXVzZSB0
aGV5Cj4gYXJlIGV4dHJlbWVseSBoZWxwZnVsIHdoZW4gb25lIGNhbiBhY3F1aXJlIHRoZW0uIEl0
IGFsc28gZG9lc24ndCBoZWxwCj4gdGhhdCB0aGUgVFJNIHJlZ2lzdGVyIGRlZmluaXRpb24gb25s
eSByZWZlcnJlZCB0byB0aGlzIGFzICJwbGwiLiBJIHdhcwo+IHNlbnQgc3BlY2lmaWNhbGx5IHRo
ZSB1c2IzIHBoeSBjbG9jayBtYXAgZm9yIG15IHdvcmsgb24gdGhlIGRyaXZlciwKPiB3aGljaCBo
YWQgdGhlIGxvY2F0aW9uIG9mIGVhY2ggc3dpdGNoIGFuZCBkaXZpZGVyIGFsb25nIHdpdGggdGhl
Cj4gcmVnaXN0ZXIgYW5kIGJpdCB0aGF0IGNvbnRyb2xsZWQgaXQuIFRoYXQgY29tYmluZWQgd2l0
aCB0aGUgVFJNCj4gcmVnaXN0ZXIgbWFwIGFsbG93ZWQgbWUgdG8gZmluZCB0aGlzIGVycm9yLgoK
SSBzZWUsIHRoYW5rcyBmb3IgdGhlIGNsYXJpZmljYXRpb24uICBJJ2QgYXNzdW1lIHRoYXQgeW91
IGFyZW4ndCBhbGxvd2VkCnRvIHNoYXJlIHRoZSBhZGRpdGlvbmFsIGRvY3VtZW50YXRpb24geW91
J3ZlIGdvdCwgd2hpY2ggaXMgdW5mb3J0dW5hdGUsCmJ1dCBpdCBpcyB3aGF0IGl0IGlzLiAgV2Ug
c2hvdWxkIGJlIGhhcHB5IHRoYXQgYXQgbGVhc3QgeW91IGdvdCBpdCwgYW5kCndlcmUgYWJsZSB0
byBwdXQgaXQgaW50byBnb29kIHVzZS4KClRoYW5rcyBmb3IgZml4aW5nIHRoaXMhCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
