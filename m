Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B614CC43458
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 14:23:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JsgwG04U2bKyHVBhmvPrU7H6D1MGddPG99rqz9/Y5pc=; b=RMrC0s3U2beJdY
	Oxh53gyih9ReQMlZmyrzQlv39NTdNhNNVtd2JiNW0ytqkqTbIFhG4yNkdRAIVdQYhfSV8cfkiy15P
	SRv4dS5jvo0NlTvZBnSKakbAdiPCBU/1V3zbkd0pSh5UxXzkKgdbHjHMW4cVhOBGePvvgedbFCwrS
	tIdPFrqsVnf4l1RguMAEPuNWAjY+y7qnQG6W7kNMzrab+TGhH+rcRAxBSlDVwOBriaNtNMDghkkot
	y3Zb8hYwkvxj3/gBURsiratykaSyLfBCMiBfmebVzCOQMRnsdS0nASGkqXcX0WqIDoix42Q/+4C+6
	zEZVRnlktVBGoRRot/zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfenx-00000007FXG-2LVy;
	Fri, 03 Jul 2026 14:23:45 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfent-00000007FVK-2xQn;
	Fri, 03 Jul 2026 14:23:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=1lCH77eIOkpyT6UD6CNZ7GGsrspDZ0kqeiwmNw7g46I=; b=TPLyRFDV5oqX2oLuzs2c7r4tay
	CsE76Bq2bIY/IcZOm78Rj0OUPdsOmW/E9AL0oHE2vGBwCCUqRJcsCspd6RWCkl1FjrzE2yP8VjD5c
	o69aPl5YR/YB2/DP5acrfQX5WgAfQRCgG5hUs+PQ0JPOIFbH20tsG4BMCh3Wtdwe/bDwna5fkYl6X
	614NQpT8M06EOrbiSrzhf0Q/XhQycxO4Z8DIPHrXqSu/UCI9OjhdcEJqEf+TEfU95qDXwehdI/KDi
	WE1Of/5DDRF1pKFiqava9nEWMeJm1Mf4HrwFgoHnT1E/Qxs3G/ag/VLsvkz1bQyWEloSNWnjEjX1H
	oVkrIpwA==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Cunhao Lu <1579567540@qq.com>, Marc Kleine-Budde <mkl@pengutronix.de>,
 kernel@pengutronix.de, Vincent Mailhol <mailhol@kernel.org>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Quentin Schulz <quentin.schulz@cherry.de>
Cc: linux-can@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: Re: [PATCH v4 4/4] arm64: dts: rockchip: Enable CAN controller on
 RK3588-Tiger-Haikou
Date: Fri, 03 Jul 2026 16:23:22 +0200
Message-ID: <3078012.2VHbPRQshP@diego>
In-Reply-To: <e03fcd5c-de56-4f39-90c2-3ba0636a1cca@cherry.de>
References: <20260703-master-v4-0-47d40bbf5fda@qq.com>
 <tencent_F79E849B11AF805A4401BF9F263B1A469907@qq.com>
 <e03fcd5c-de56-4f39-90c2-3ba0636a1cca@cherry.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_072341_866295_CB029ED6 
X-CRM114-Status: GOOD (  30.82  )
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

QW0gRnJlaXRhZywgMy4gSnVsaSAyMDI2LCAxNjowNToxOCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIFF1ZW50aW4gU2NodWx6Ogo+IEhpIEhlaWtvLCBDdW5oYW8sCj4gCj4g
T24gNy8zLzI2IDEwOjAxIEFNLCBDdW5oYW8gTHUgd3JvdGU6Cj4gPiBGcm9tOiBIZWlrbyBTdHVl
Ym5lciA8aGVpa28uc3R1ZWJuZXJAY2hlcnJ5LmRlPgo+ID4gCj4gPiBDQU4wIGlzIHBpcGVkIHRo
cm91Z2ggdGhlIFE3LWNvbm5lY3RvciB0byB0aGUgQ0FOLUhlYWRlciBvbiB0aGUgSGFpa291Cj4g
PiBiYXNlLWJvYXJkLCBzbyBlbmFibGUgc3VwcG9ydCBmb3IgaXQgdGhlcmUuCj4gPiAKPiA+IEF0
IGxlYXN0IG9uIFJLMzU4OC1UaWdlciwgdGhlIENBTiBjbG9ja3MgZGVmYXVsdCB0byA5OU1Ieiwg
bGltaXRpbmcKPiA+IHVzYWJsZSBDQU4gYml0cmF0ZXMgd2l0aG91dCBza2V3LiBFcnJhdGEgZG9j
dW1lbnRhdGlvbiBtZW50aW9ucwo+ID4gMzAwTUh6IGFzIHRoZSBkZWZhdWx0IGZyZXF1ZW5jeSBv
biBSSzM1NjgsIHNvIHJlcGxpY2F0ZSB0aGlzIGhlcmUKPiA+IHRvIGFsbG93IG1vcmUgYml0cmF0
ZXMuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IEhlaWtvIFN0dWVibmVyIDxoZWlrby5zdHVlYm5l
ckBjaGVycnkuZGU+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBDdW5oYW8gTHUgPDE1Nzk1Njc1NDBAcXEu
Y29tPgo+ID4gLS0tCj4gPiAgIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXRp
Z2VyLWhhaWtvdS5kdHMgfCA2ICsrKysrKwo+ID4gICAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRp
b25zKCspCj4gPiAKPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlw
L3JrMzU4OC10aWdlci1oYWlrb3UuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1ODgtdGlnZXItaGFpa291LmR0cwo+ID4gaW5kZXggODczZmJlYjhkYWExLi42MjczZTY5NWIw
MzkgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10
aWdlci1oYWlrb3UuZHRzCj4gPiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3Jr
MzU4OC10aWdlci1oYWlrb3UuZHRzCj4gPiBAQCAtMTU1LDYgKzE1NSwxMiBAQCB2ZGRkX2F1ZGlv
XzF2NjogcmVndWxhdG9yLXZkZGQtYXVkaW8tMXY2IHsKPiA+ICAgCX07Cj4gPiAgIH07Cj4gPiAg
IAo+ID4gKyZjYW4wIHsKPiA+ICsJYXNzaWduZWQtY2xvY2tzID0gPCZjcnUgQ0xLX0NBTjA+Owo+
ID4gKwlhc3NpZ25lZC1jbG9jay1yYXRlcyA9IDwzMDAwMDAwMDA+Owo+IAo+IFdoeSBpcyB0aGlz
IG5vdCBTb0Mtc3BlY2lmaWM/IFdlIGFyZSBvbmx5IHJvdXRpbmcgdGhlIHNpZ25hbCBmcm9tIHRo
ZSAKPiBTb0MgYWZ0ZXIgYWxsLgoKTXkgbWFpbiByZWFzb24gd2FzIHRoYXQgSSBoYXZlIG5vIGNs
dWUgd2hhdCBhIHJlYXNvbmFibGUgY29udHJvbGxlcgpmcmVxdWVuY3kgaXMuIFRoZSBkZWZhdWx0
IG9uIFRpZ2VyIG9uIGJvb3QgIGlzIDk5TUh6LCB3aGljaCBjYXVzZXMKcHJvYmxlbXMgd2l0aCBh
Y2N1cmF0ZSByYXRlcy4KClNpbWlsYXJseSB0aGUgY29udHJvbGxlciBoYXMgaXNzdWVzIHdpdGgg
bG93IGNsb2NrIHJhdGVzIChlcnJhdHVtIDUgaWYKSSdtIG5vdCBtaXN0YWtlbikgYW5kIHRoZXIg
TWFyayB3cm90ZSB0aGF0IGF0IDMwME1IeiB0aGUgaXNzdWUgaXMgbGVzcwp2aXNpYmxlLiBTbyBJ
IHRvb2sgdGhhdCBmcmVxdWVuY3ksIGJ1dCBoYXZlIG5vIGNsdWUgd2hhdCB0aGUgInJpZ2h0Igpm
cmVxdWVuY3kgaXMuCgpTaW1pbGFybHksIG9ubHkgUmVuZXNhcyBzb2NzIHNlZW0gdG8gc2V0IHRo
ZWlyIGNhbiBmcmVxdWVuY3kgaW4gdGhlIERUCmFuZCB0aGF0IHRvIDQwTUh6LgoKSW4gdGhlIFJv
Y2tjaGlwIHZlbmRvci1rZXJuZWwgSSd2ZSBzZWVuIHJhdGVzIHRvIHNldCB0byAxNTBNSHosIDIw
ME1Iegoob3IgbGVmdCBhbG9uZSkgb24gYSBib2FyZC1sZXZlbAoKcmszNTY4LW9rMzU2OGMuZHRz
IGV2ZW4gc2V0cyBib3RoIDE1ME1IWiBBTkQgMjAwTUh6IGRlcGVuZGluZwpvbiB0aGUgQ0FOIGNv
bnRyb2xsZXIgKDIwMCBmb3IgY2FuMCsxLCAxNTAgZm9yIGNhbjIpIC4KClRoaXMgZG9lcyBzdWdn
ZXN0IHRoZSB1c2FibGUgZnJlcXVlbmN5IGJlaW5nIHNwZWNpZmljIHRvIHRoZSBib2FyZC1kZXNp
Z24uCgoKPiBJZiBpdCBjYW5ub3QgYmUgcHV0IGludG8gcmszNTg4LWJhc2UuZHRzaSBmb3Igc29t
ZSByZWFzb24gYW5kIGlzIAo+IHByb2R1Y3Qtc3BlY2lmaWMuLi4gV2h5IGlzIHRoaXMgaW4gdGhl
IGJhc2Vib2FyZCBEVFMgYW5kIG5vdCBpbiB0aGUgU29NIAo+IERUU0k/IEkgd291bGQgbGlrZSB0
byBhdm9pZCBvdXIgY3VzdG9tZXJzIHRvIGhhdmUgdG8gY29weSB0aGluZ3Mgb3ZlciBpZiAKPiB0
aGV5IHNob3VsZCBqdXN0IHdvcmsgb24gdGhlaXIgYmFzZWJvYXJkIHRvbyBpZiB0aGV5IGRvbid0
IGRvIGNyYXp5IAo+IHRoaW5ncyB0aGVyZS4KCldlIGNhbiBvZiBjb3Vyc2UgbW92ZSB0aGUgY2xr
LXJhdGUgdG8gdGhlIHRpZ2VyLmR0c2kuCihUaGlzIHNob3VsZCBub3QgYWZmZWN0IHRoZSByZXN0
IG9mIHRoZSBzZXJpZXMsIGFzIEknbGwgYmUgYXBwbHlpbmcgdGhlCmR0cyBwYXRjaGVzIGFueXdh
eSkKCgpIZWlrbwoKCj4gSSdsbCB0cnkgdG8gZmluZCB0aW1lIHRvIHRlc3QgdGhlIHRocmVlIENB
TiBjb250cm9sbGVycyBvbiBSSzM1ODggSmFndWFyIAo+IHdpdGggdGhlIENBTjEtQ0FOMi1VQVJU
NCBNZXp6YW5pbmUgYWRhcHRlciBib2FyZCBhbmQgd2lsbCBjb250cmlidXRlIGFuIAo+IG92ZXJs
YXkgZm9yIHRoYXQgaWYgaXQgZ29lcyB3ZWxsLiBJIGRvbid0IGhhdmUgYSBDQU4tRkQgYWRhcHRl
ciB0aG91Z2ggCj4gYnV0IEkgaG9wZSB0aGV5IHJldXNlZCB0aGUgZXhhY3Qgc2FtZSBJUCBmb3Ig
dGhlIHRocmVlIGNvbnRyb2xsZXJzIGluIAo+IHRoZSBTb0MgOikKCgoKCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5n
IGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
