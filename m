Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A3FBC28B24
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 17:04:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SmVLFENyLufPexp4go/3Q+utWJwise3h/2n4PsiHSBg=; b=V8YvByPXFZvTWt
	sjhkd/CpJGJgh0dPK+7qbvydZVlUnFITToWfSDBrYB9hWUN6GSIsgOWngufWKOgWQ8H8wPn5vutld
	uqb7b9MaHk1dX/WIL0m85AjhBWI+SjYWaU5cGqWcdpqhtabDN/KOjBM9n/TG0sMCQbvQUH/0A4kYh
	ocG9R6rCKuLupIAC5Tj+hn9gX5x2L9ikBLADC6mBaD/tbTywK+B3TvbYxYdd48TSyS7tfCYx1tOvY
	U8tG3MnGJffm3hTyb13CwblLkZXtD3z6HcOWdB6XLz8oX+yuDqnuiS07bwZnxFT7AM9JWYZvZqJ7E
	CfMgtJmGBE/S9wYFsNaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqEdc-0000000BcGR-2VA4;
	Thu, 06 Mar 2025 17:04:00 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqDYh-0000000BNod-0RTv
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 15:54:52 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741276436; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=UzUgJMyXzSDXVYt2rs1iZca/mHvJEFZnEALrzOL6YY0LSaZqATV+TpzjPG/OCAjtOwUu0XAUwbtxIs7KVYi9/gWLFzAdGWw31J3eDxoQrkWTS1a+MhM0VATiv+Q0rvTHKwx+a9dZYfmTZJQLA7PzRH4mDzqFoFaZzPbLm2AtiuA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741276436; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=9RLMymZvzrB2rucmHDCFIoCm3hDd8BfOl7cSA/Mw3JA=; 
	b=fRYWhOkLgqZuM38ZHBcI2YsQbR+90T/v1F4QXy9QdTYmyxpXbxcOhQBVal8D0NwnqPRzmGt5fhyIXoQIAuLBsXDtfDUyw+1X0QEeGesZr8usohSMjB7GWurRv0wi9gZ7G10EP4zq3L1kQIwn37X+AbDnK+ydFtFpp12vq/LED0U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741276435;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=9RLMymZvzrB2rucmHDCFIoCm3hDd8BfOl7cSA/Mw3JA=;
	b=IFT+T9RMj0Zx3DB3tASzcDIV7qS2QbE6EzXiKgP8gaalo8lEaKMtrpI7czRuewbe
	AbAaGtB/X4D7K1xuRWQVGpwEtZtKGKTEwj9HlO0uYNEeZTjqVYoBVYc+bw047oKzVdD
	i9IAEYPP8yQLU4L/5ssTzF9yeSavOGQb+fRrhFsY=
Received: by mx.zohomail.com with SMTPS id 1741276434441715.0460931361157;
	Thu, 6 Mar 2025 07:53:54 -0800 (PST)
Message-ID: <f5f3dd36-0f90-47dd-bc12-1e2f0207fe7d@collabora.com>
Date: Thu, 6 Mar 2025 18:53:48 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v14 1/3] arm64: dts: rockchip: Add device tree support for
 HDMI RX Controller
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Shreeya Patel <shreeya.patel@collabora.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Hans Verkuil
 <hverkuil@xs4all.nl>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Tim Surber <me@timsurber.de>,
 Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
 Diederik de Haas <didi.debian@cknow.org>
References: <20250306072842.287142-1-dmitry.osipenko@collabora.com>
 <20250306072842.287142-2-dmitry.osipenko@collabora.com>
 <9489391.T7Z3S40VBb@diego>
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
Content-Language: en-US
In-Reply-To: <9489391.T7Z3S40VBb@diego>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_075451_213358_36711EE3 
X-CRM114-Status: GOOD (  15.26  )
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

T24gMy82LzI1IDE2OjA2LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPiBIaSBEbWl0cnksCj4gCj4g
QW0gRG9ubmVyc3RhZywgNi4gTcOkcnogMjAyNSwgMDg6Mjg6NDAgTUVaIHNjaHJpZWIgRG1pdHJ5
IE9zaXBlbmtvOgo+PiBGcm9tOiBTaHJlZXlhIFBhdGVsIDxzaHJlZXlhLnBhdGVsQGNvbGxhYm9y
YS5jb20+Cj4+Cj4+IEFkZCBkZXZpY2UgdHJlZSBzdXBwb3J0IGZvciBTeW5vcHN5cyBEZXNpZ25X
YXJlIEhETUkgUlgKPj4gQ29udHJvbGxlci4KPj4KPj4gUmV2aWV3ZWQtYnk6IERtaXRyeSBPc2lw
ZW5rbyA8ZG1pdHJ5Lm9zaXBlbmtvQGNvbGxhYm9yYS5jb20+Cj4+IFRlc3RlZC1ieTogRG1pdHJ5
IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNvbT4KPj4gQ28tZGV2ZWxvcGVk
LWJ5OiBEaW5neGlhbiBXZW4gPHNoYXduLndlbkByb2NrLWNoaXBzLmNvbT4KPj4gU2lnbmVkLW9m
Zi1ieTogRGluZ3hpYW4gV2VuIDxzaGF3bi53ZW5Acm9jay1jaGlwcy5jb20+Cj4+IFNpZ25lZC1v
ZmYtYnk6IFNocmVleWEgUGF0ZWwgPHNocmVleWEucGF0ZWxAY29sbGFib3JhLmNvbT4KPj4gU2ln
bmVkLW9mZi1ieTogRG1pdHJ5IE9zaXBlbmtvIDxkbWl0cnkub3NpcGVua29AY29sbGFib3JhLmNv
bT4KPj4gLS0tCj4+ICAuLi4vZHRzL3JvY2tjaGlwL3JrMzU4OC1iYXNlLXBpbmN0cmwuZHRzaSAg
ICAgfCAxNCArKysrKwo+PiAgLi4uL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1leHRy
YS5kdHNpIHwgNTcgKysrKysrKysrKysrKysrKysrKwo+PiAgMiBmaWxlcyBjaGFuZ2VkLCA3MSBp
bnNlcnRpb25zKCspCj4+Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU4OC1iYXNlLXBpbmN0cmwuZHRzaSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LWJhc2UtcGluY3RybC5kdHNpCj4+IGluZGV4IDdmODc0Yzc3NDEwYy4uMmQ0Yjk5
ODZhMTc3IDEwMDY0NAo+PiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4
OC1iYXNlLXBpbmN0cmwuZHRzaQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC1iYXNlLXBpbmN0cmwuZHRzaQo+PiBAQCAtNTk0LDYgKzU5NCwyMCBAQCBoZG1pbTBf
dHgxX2hwZDogaGRtaW0wLXR4MS1ocGQgewo+PiAgCQkJCS8qIGhkbWltMF90eDFfaHBkICovCj4+
ICAJCQkJPDEgUktfUEE2IDUgJnBjZmdfcHVsbF9ub25lPjsKPj4gIAkJfTsKPj4gKwo+PiArCQkv
b21pdC1pZi1uby1yZWYvCj4+ICsJCWhkbWltMV9yeDogaGRtaW0xLXJ4IHsKPj4gKwkJCXJvY2tj
aGlwLHBpbnMgPQo+PiArCQkJCS8qIGhkbWltMV9yeF9jZWMgKi8KPj4gKwkJCQk8MyBSS19QRDEg
NSAmcGNmZ19wdWxsX25vbmU+LAo+PiArCQkJCS8qIGhkbWltMV9yeF9zY2wgKi8KPj4gKwkJCQk8
MyBSS19QRDIgNSAmcGNmZ19wdWxsX25vbmVfc210PiwKPj4gKwkJCQkvKiBoZG1pbTFfcnhfc2Rh
ICovCj4+ICsJCQkJPDMgUktfUEQzIDUgJnBjZmdfcHVsbF9ub25lX3NtdD4sCj4+ICsJCQkJLyog
aGRtaW0xX3J4X2hwZGluICovCj4+ICsJCQkJPDMgUktfUEQ0IDUgJnBjZmdfcHVsbF9ub25lPjsK
Pj4gKwkJfTsKPj4gKwo+IAo+IHdoYXQncyB0aGUgcmVhc29uIGZvciBkdXBsaWNhdGluZyB0aGVz
ZSBwaW5jdHJsIGVudHJpZXM/Cj4gCj4gVGhlIGJhc2UtcGluY3RybCBhbHJlYWR5IGNvbnRhaW5z
IGEgc2VwYXJhdGUgc2V0IG9mIHBpbnMgKGFuZCBhbHNvIGEKPiB2YXJpYW50IGZvciB0aGUgbTAg
c2V0IG9mIHBpbnMpLCBzbyB3aHkgbm90IGNoZWNrIGFuZCB1c2UgdGhlIGFscmVhZHkKPiBleGlz
dGluZyBvbmVzOgo+IAo+ICAgICAgICAgICAgICAgICBoZG1pbTFfcnhfY2VjOiBoZG1pbTEtcngt
Y2VjIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxwaW5zID0KPiAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIC8qIGhkbWltMV9yeF9jZWMgKi8KPiAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIDwzIFJLX1BEMSA1ICZwY2ZnX3B1bGxfbm9uZT47Cj4gICAg
ICAgICAgICAgICAgIH07Cj4gCj4gICAgICAgICAgICAgICAgIGhkbWltMV9yeF9ocGRpbjogaGRt
aW0xLXJ4LWhwZGluIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxwaW5zID0K
PiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIGhkbWltMV9yeF9ocGRpbiAqLwo+
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPDMgUktfUEQ0IDUgJnBjZmdfcHVsbF9u
b25lPjsKPiAgICAgICAgICAgICAgICAgfTsKPiAKPiAgICAgICAgICAgICAgICAgaGRtaW0xX3J4
X3NjbDogaGRtaW0xLXJ4LXNjbCB7Cj4gICAgICAgICAgICAgICAgICAgICAgICAgcm9ja2NoaXAs
cGlucyA9Cj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAvKiBoZG1pbTFfcnhfc2Ns
ICovCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8MyBSS19QRDIgNSAmcGNmZ19w
dWxsX25vbmU+Owo+ICAgICAgICAgICAgICAgICB9Owo+IAo+ICAgICAgICAgICAgICAgICBoZG1p
bTFfcnhfc2RhOiBoZG1pbTEtcngtc2RhIHsKPiAgICAgICAgICAgICAgICAgICAgICAgICByb2Nr
Y2hpcCxwaW5zID0KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8qIGhkbWltMV9y
eF9zZGEgKi8KPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIDwzIFJLX1BEMyA1ICZw
Y2ZnX3B1bGxfbm9uZT47Cj4gICAgICAgICAgICAgICAgIH07Cj4gCj4gCj4gSGF2aW5nIG11bHRp
cGxlIHNldHMgKGV2ZW4gd2l0aCBkaWZmZXJlaW5nIHNldHRpbmdzKSB3aWxsIGNhdXNlIGNvbmZ1
c2lvbgo+IGxhdGVyIG9uLgoKV2lsbCB0cnkgdGhpcyB2YXJpYW50LCB0aGFua3MhCgo+PiAgCQkv
b21pdC1pZi1uby1yZWYvCj4+ICAJCWhkbWltMV9yeF9jZWM6IGhkbWltMS1yeC1jZWMgewo+PiAg
CQkJcm9ja2NoaXAscGlucyA9Cj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3Jv
Y2tjaGlwL3JrMzU4OC1leHRyYS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtZXh0cmEuZHRzaQo+PiBpbmRleCA0YTk1MDkwN2VhNmYuLmI3ZDA2ZjkzYzhjZSAxMDA2
NDQKPj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXh0cmEuZHRz
aQo+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1leHRyYS5kdHNp
Cj4+IEBAIC0xMzUsNiArMTU5LDM5IEBAIGkyczEwXzhjaDogaTJzQGZkZTAwMDAwIHsKPj4gIAkJ
c3RhdHVzID0gImRpc2FibGVkIjsKPj4gIAl9Owo+PiAgCj4+ICsJaGRtaV9yZWNlaXZlcjogaGRt
aV9yZWNlaXZlckBmZGVlMDAwMCB7Cj4+ICsJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmszNTg4
LWhkbWlyeC1jdHJsZXIiLCAic25wcyxkdy1oZG1pLXJ4IjsKPj4gKwkJcmVnID0gPDB4MCAweGZk
ZWUwMDAwIDB4MCAweDYwMDA+Owo+PiArCQlwb3dlci1kb21haW5zID0gPCZwb3dlciBSSzM1ODhf
UERfVk8xPjsKPj4gKwkJcm9ja2NoaXAsZ3JmID0gPCZzeXNfZ3JmPjsKPj4gKwkJcm9ja2NoaXAs
dm8xLWdyZiA9IDwmdm8xX2dyZj47Cj4+ICsJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxNzcgSVJR
X1RZUEVfTEVWRUxfSElHSCAwPiwKPj4gKwkJCSAgICAgPEdJQ19TUEkgMTc4IElSUV9UWVBFX0xF
VkVMX0hJR0ggMD4sCj4+ICsJCQkgICAgIDxHSUNfU1BJIDE3OSBJUlFfVFlQRV9MRVZFTF9ISUdI
IDA+Owo+PiArCQlpbnRlcnJ1cHQtbmFtZXMgPSAiY2VjIiwgImhkbWkiLCAiZG1hIjsKPj4gKwkJ
Y2xvY2tzID0gPCZjcnUgQUNMS19IRE1JUlg+LAo+PiArCQkJIDwmY3J1IENMS19IRE1JUlhfQVVE
PiwKPj4gKwkJCSA8JmNydSBDTEtfQ1JfUEFSQT4sCj4+ICsJCQkgPCZjcnUgUENMS19IRE1JUlg+
LAo+PiArCQkJIDwmY3J1IENMS19IRE1JUlhfUkVGPiwKPj4gKwkJCSA8JmNydSBQQ0xLX1NfSERN
SVJYPiwKPj4gKwkJCSA8JmNydSBIQ0xLX1ZPMT47Cj4+ICsJCWNsb2NrLW5hbWVzID0gImFjbGsi
LAo+PiArCQkJICAgICAgImF1ZGlvIiwKPj4gKwkJCSAgICAgICJjcl9wYXJhIiwKPj4gKwkJCSAg
ICAgICJwY2xrIiwKPj4gKwkJCSAgICAgICJyZWYiLAo+PiArCQkJICAgICAgImhjbGtfc19oZG1p
cngiLAo+PiArCQkJICAgICAgImhjbGtfdm8xIjsKPj4gKwkJcmVzZXRzID0gPCZjcnUgU1JTVF9B
X0hETUlSWD4sIDwmY3J1IFNSU1RfUF9IRE1JUlg+LAo+PiArCQkJIDwmY3J1IFNSU1RfSERNSVJY
X1JFRj4sIDwmY3J1IFNSU1RfQV9IRE1JUlhfQklVPjsKPj4gKwkJcmVzZXQtbmFtZXMgPSAiYXhp
IiwgImFwYiIsICJyZWYiLCAiYml1IjsKPj4gKwkJbWVtb3J5LXJlZ2lvbiA9IDwmaGRtaV9yZWNl
aXZlcl9jbWE+Owo+PiArCQlwaW5jdHJsLTAgPSA8JmhkbWltMV9yeD47Cj4+ICsJCXBpbmN0cmwt
bmFtZXMgPSAiZGVmYXVsdCI7Cj4gCj4gaG1tLCB0aGlzIG1pZ2h0IGJlIGJldHRlciBsaXZpbmcg
aW4gdGhlIGJvYXJkIGR0cz8KCkhETUkgUlggY29udHJvbGxlciBpcyBhIHBhcnQgb2YgdGhlIFNv
QywgaXQncyBub3Qgc3BlY2lmaWMgdG8gYQpwYXJ0aWN1bGFyIGJvYXJkLiBJZiB5b3UgbWVhbmlu
ZyBtb3ZlIGl0IGludG8gcm9jazViLmR0cywgdGhlbiB3ZQpkZWZpbml0ZWx5IHNob3VsZG4ndCBk
byBpdC4gSXQncyBsaWtlIG1vdmluZyBQQ0llIGNvbnRyb2xsZXIgbm9kZSBpbnRvIGEKYm9hcmQg
RFQgOikKCi0tIApCZXN0IHJlZ2FyZHMsCkRtaXRyeQoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
