Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0612C3ABA9
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Apr 2025 10:18:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fMdjGTkUr5KUfDjKlVrWUEXowJbbFatsnXDQP9T/HBA=; b=mpPGxw1i8JcmaU
	kpBz4xSR0nL6Y/NG+ds8Ro57aZ6AbNEQzBY9ltF+yQ3Kct42qtARnrgzmSqP8iSohgd/Tl2fzQ10M
	IkFntCiYxSRXNMBmT/xqgTcdeFAsBvuFFiG8gr4C8sOti+ppM1RVDiNb3ZfN+xY16iNFlJ6hpLm8x
	HywTLGNVcyQUDFqTIwYC8ji7aX3g6aXkPQS2bA9XLsO0IpwmFUKOCNxpQIJl/SLut/bgKlIJx134/
	IjnzAb4eAtR3iGkcuRKSIPtEXbXZBSocnfHcrm+R88ReBBX/Aqf24u8FB02q+KiRwchWtuZcKIw2Y
	yXB5/84wt96paJoMY0Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA4WP-0000000CVKa-2jyn;
	Wed, 30 Apr 2025 10:18:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uA3yB-0000000CPjn-463r;
	Wed, 30 Apr 2025 09:43:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=WPJRIRjIVSNpyQoQChOyubUqA46qURdU/3MhDLyhuMA=; b=iH2jCh3nF+5D+w/4JTWbSM4goC
	lDV6IqfGiig3EW29GLuNMI/wtYevpDoGkmc7pXJAqXOnViyXgnfPvxfXtgHxJ1zl3ToRmZNI4KJAU
	9YyDvRoFtfrcsmp3oq45MS1YWgbbDFkD/in20lJijdwbny+0LQUbYG+4DIb2rd4CL1QLuEkmZ5Efz
	8mRi0pY6pHLbfU8GqGt/41ijHDGtSgAw6ll6+ejoJSsOWWFeg3gxoW1YLz1dMFWIJSfUYQovTu62X
	HxZaVwvNP6dLxhcEzFqccpEHKHWK5N6N87OjzRSO6LMWeVM0CyQiLYOW0XNWCpzU6YXz0JISLmY4H
	ZgCPZIhw==;
Received: from i53875ba4.versanet.de ([83.135.91.164] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uA3xi-0004AU-M6; Wed, 30 Apr 2025 11:42:42 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Mehdi Djait <mehdi.djait@linux.intel.com>,
 Maxime Chevallier <maxime.chevallier@bootlin.com>,
 =?UTF-8?B?VGjDqW8=?= Lebrun <theo.lebrun@bootlin.com>,
 Gerald Loacker <gerald.loacker@wolfvision.net>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Kever Yang <kever.yang@rock-chips.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Collabora Kernel Team <kernel@collabora.com>,
 Paul Kocialkowski <paulk@sys-base.io>,
 Alexander Shiyan <eagle.alexander923@gmail.com>,
 Val Packett <val@packett.cool>, Rob Herring <robh@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, michael.riesch@collabora.com
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Michael Riesch <michael.riesch@collabora.com>
Subject: Re: [PATCH v6 01/13] Documentation: admin-guide: media: add rockchip camera
 interface
Date: Wed, 30 Apr 2025 11:42:41 +0200
Message-ID: <1833589.VLH7GnMWUR@diego>
In-Reply-To: <20240220-rk3568-vicap-v6-1-d2f5fbee1551@collabora.com>
References: <20240220-rk3568-vicap-v6-0-d2f5fbee1551@collabora.com>
 <20240220-rk3568-vicap-v6-1-d2f5fbee1551@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250430_024312_009141_8FCEFBAF 
X-CRM114-Status: GOOD (  28.19  )
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

SGV5IE1pY2hhZWwsCgpBbSBNaXR0d29jaCwgMzAuIEFwcmlsIDIwMjUsIDExOjE1OjUwIE1pdHRl
bGV1cm9ww6Rpc2NoZSBTb21tZXJ6ZWl0IHNjaHJpZWIgTWljaGFlbCBSaWVzY2ggdmlhIEI0IFJl
bGF5Ogo+IEZyb206IE1pY2hhZWwgUmllc2NoIDxtaWNoYWVsLnJpZXNjaEBjb2xsYWJvcmEuY29t
Pgo+IAo+IEFkZCBhIGRvY3VtZW50IHRoYXQgZGVzY3JpYmVzIHRoZSBkaWZmZXJlbnQgdmFyaWFu
dHMgb2YgdGhlIFJvY2tjaGlwCj4gQ2FtZXJhIEludGVyZmFjZSAoQ0lGKSwgdGhlaXIgaGFyZHdh
cmUgbGF5b3V0LCBhcyB3ZWxsIGFzIHRoZWlyCj4gcmVwcmVzZW50YXRpb24gaW4gdGhlIG1lZGlh
IGNvbnRyb2xsZXIgY2VudHJpYyBya2NpZiBkZXZpY2UgZHJpdmVyLAo+IHdoaWNoIGlzIGxvY2F0
ZWQgdW5kZXIgZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9ya2NpZi4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBNaWNoYWVsIFJpZXNjaCA8bWljaGFlbC5yaWVzY2hAY29sbGFib3JhLmNvbT4K
Cj4gZGlmZiAtLWdpdCBhL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvbWVkaWEvcmtjaWYucnN0
IGIvRG9jdW1lbnRhdGlvbi9hZG1pbi1ndWlkZS9tZWRpYS9ya2NpZi5yc3QKPiBuZXcgZmlsZSBt
b2RlIDEwMDY0NAo+IGluZGV4IDAwMDAwMDAwMDAwMC4uZjM1ZjY0NGE1NGEwCj4gLS0tIC9kZXYv
bnVsbAo+ICsrKyBiL0RvY3VtZW50YXRpb24vYWRtaW4tZ3VpZGUvbWVkaWEvcmtjaWYucnN0Cj4g
QEAgLTAsMCArMSw4MyBAQAo+ICsuLiBTUERYLUxpY2Vuc2UtSWRlbnRpZmllcjogR1BMLTIuMAo+
ICsKPiArPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0KPiArUm9ja2No
aXAgQ2FtZXJhIEludGVyZmFjZSAoQ0lGKQo+ICs9PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PQo+ICsKPiArSW50cm9kdWN0aW9uCj4gKz09PT09PT09PT09PQo+ICsKPiAr
VGhlIFJvY2tjaGlwIENhbWVyYSBJbnRlcmZhY2UgKENJRikgaXMgZmVhdHVyZWQgaW4gbWFueSBS
b2NrY2hpcCBTb0NzIGluCj4gK2RpZmZlcmVudCB2YXJpYW50cy4KPiArVGhlIGRpZmZlcmVudCB2
YXJpYW50cyBhcmUgY29tYmluYXRpb25zIG9mIGNvbW1vbiBidWlsZGluZyBibG9ja3MsIHN1Y2gg
YXMKPiArCj4gKyogSU5URVJGQUNFIGJsb2NrcyBvZiBkaWZmZXJlbnQgdHlwZXMsIG5hbWVseQo+
ICsKPiArICAqIHRoZSBEaWdpdGFsIFZpZGVvIFBvcnQgKERWUCwgYSBwYXJhbGxlbCBkYXRhIGlu
dGVyZmFjZSkKPiArICAqIHRoZSBpbnRlcmZhY2UgYmxvY2sgZm9yIHRoZSBNSVBJIENTSS0yIHJl
Y2VpdmVyCj4gKwo+ICsqIENST1AgdW5pdHMKPiArCj4gKyogTUlQSSBDU0ktMiByZWNlaXZlciAo
bm90IGF2YWlsYWJsZSBvbiBhbGwgdmFyaWFudHMpOiBUaGlzIHVuaXQgaXMgcmVmZXJyZWQKPiAr
ICB0byBhcyBNSVBJIENTSSBIT1NUIGluIHRoZSBSb2NrY2hpcCBkb2N1bWVudGF0aW9uLgo+ICsg
IFRlY2huaWNhbGx5LCBpdCBpcyBhIHNlcGFyYXRlIGhhcmR3YXJlIGJsb2NrLCBidXQgaXQgaXMg
c3Ryb25nbHkgY291cGxlZCB0bwo+ICsgIHRoZSBDSUYgYW5kIHRoZXJlZm9yZSBpbmNsdWRlZCBo
ZXJlLgo+ICsKPiArKiBNVVggdW5pdHMgKG5vdCBhdmFpbGFibGUgb24gYWxsIHZhcmlhbnRzKSB0
aGF0IHBhc3MgdGhlIHZpZGVvIGRhdGEgdG8gYW4KPiArICBpbWFnZSBzaWduYWwgcHJvY2Vzc29y
IChJU1ApCj4gKwo+ICsqIFNDQUxFIHVuaXRzIChub3QgYXZhaWxhYmxlIG9uIGFsbCB2YXJpYW50
cykKPiArCj4gKyogRE1BIGVuZ2luZXMgdGhhdCB0cmFuc2ZlciB2aWRlbyBkYXRhIGludG8gc3lz
dGVtIG1lbW9yeSB1c2luZyBhCj4gKyAgZG91YmxlLWJ1ZmZlcmluZyBtZWNoYW5pc20gY2FsbGVk
IHBpbmctcG9uZyBtb2RlCj4gKwo+ICsqIFN1cHBvcnQgZm9yIGZvdXIgc3RyZWFtcyBwZXIgSU5U
RVJGQUNFIGJsb2NrIChub3QgYXZhaWxhYmxlIG9uIGFsbAo+ICsgIHZhcmlhbnRzKSwgZS5nLiwg
Zm9yIE1JUEkgQ1NJLTIgVmlydHVhbCBDaGFubmVscyAoVkNzKQo+ICsKPiArVGhpcyBkb2N1bWVu
dCBkZXNjcmliZXMgdGhlIGRpZmZlcmVudCB2YXJpYW50cyBvZiB0aGUgQ0lGLCB0aGVpciBoYXJk
d2FyZQo+ICtsYXlvdXQsIGFzIHdlbGwgYXMgdGhlaXIgcmVwcmVzZW50YXRpb24gaW4gdGhlIG1l
ZGlhIGNvbnRyb2xsZXIgY2VudHJpYyBya2NpZgo+ICtkZXZpY2UgZHJpdmVyLCB3aGljaCBpcyBs
b2NhdGVkIHVuZGVyIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmtjaWYuCj4gKwo+
ICtWYXJpYW50cwo+ICs9PT09PT09PQo+ICsKPiArUm9ja2NoaXAgUFgzMCBWaWRlbyBJbnB1dCBQ
cm9jZXNzb3IgKFZJUCkKPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPiArCj4gK1RoZSBQWDMwIFZpZGVvIElucHV0IFByb2Nlc3NvciAoVklQKSBmZWF0dXJlcyBh
IGRpZ2l0YWwgdmlkZW8gcG9ydCB0aGF0IGFjY2VwdHMKPiArcGFyYWxsZWwgdmlkZW8gZGF0YSBv
ciBCVC42NTYuCj4gK1NpbmNlIHRoZXNlIHByb3RvY29scyBkbyBub3QgZmVhdHVyZSBtdWx0aXBs
ZSBzdHJlYW1zLCB0aGUgVklQIGhhcyBvbmUgRE1BCj4gK2VuZ2luZSB0aGF0IHRyYW5zZmVycyB0
aGUgaW5wdXQgdmlkZW8gZGF0YSBpbnRvIHN5c3RlbSBtZW1vcnkuCj4gKwo+ICtUaGUgcmtjaWYg
ZHJpdmVyIHJlcHJlc2VudHMgdGhpcyBoYXJkd2FyZSB2YXJpYW50IGJ5IGV4cG9zaW5nIG9uZSBW
NEwyIHN1YmRldmljZQo+ICsodGhlIERWUCBJTlRFUkZBQ0UvQ1JPUCBibG9jaykgYW5kIG9uZSBW
NEwyIGRldmljZSAodGhlIERWUCBETUEgZW5naW5lKS4KPiArCj4gK1JvY2tjaGlwIFJLMzU2OCBW
aWRlbyBDYXB0dXJlIChWSUNBUCkKPiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLQo+ICsKPiArVGhlIFJLMzU2OCBWaWRlbyBDYXB0dXJlIChWSUNBUCkgdW5pdCBmZWF0dXJl
cyBhIGRpZ2l0YWwgdmlkZW8gcG9ydCBhbmQgYSBNSVBJCj4gK0NTSS0yIHJlY2VpdmVyIHRoYXQg
Y2FuIHJlY2VpdmUgdmlkZW8gZGF0YSBpbmRlcGVuZGVudGx5Lgo+ICtUaGUgRFZQIGFjY2VwdHMg
cGFyYWxsZWwgdmlkZW8gZGF0YSwgQlQuNjU2IGFuZCBCVC4xMTIwLgo+ICtTaW5jZSB0aGUgQlQu
MTEyMCBwcm90b2NvbCBtYXkgZmVhdHVyZSBtb3JlIHRoYW4gb25lIHN0cmVhbSwgdGhlIFJLMzU2
OCBWSUNBUAo+ICtEVlAgZmVhdHVyZXMgZm91ciBETUEgZW5naW5lcyB0aGF0IGNhbiBjYXB0dXJl
IGRpZmZlcmVudCBzdHJlYW1zLgo+ICtTaW1pbGFybHksIHRoZSBSSzM1NjggVklDQVAgTUlQSSBD
U0ktMiByZWNlaXZlciBmZWF0dXJlcyBmb3VyIERNQSBlbmdpbmVzIHRvCj4gK2hhbmRsZSBkaWZm
ZXJlbnQgVmlydHVhbCBDaGFubmVscyAoVkNzKS4KPiArCj4gK1RoZSBya2NpZiBkcml2ZXIgcmVw
cmVzZW50cyB0aGlzIGhhcmR3YXJlIHZhcmlhbnQgYnkgZXhwb3NpbmcgdXAgdG8gdGhyZWUgVjRM
Mgo+ICtzdWJkZXZpY2VzOgo+ICsKPiArKiBya2NpZi1kdnAwOiBJTlRFUkZBQ0UvQ1JPUCBibG9j
ayBmb3IgdGhlIERWUAo+ICsqIHJvY2tjaGlwLW1pcGktY3NpIGZkZmIwMDAwLmNzaTogTUlQSSBD
U0ktMiByZWNlaXZlcgo+ICsqIHJrY2lmLW1pcGkwOiBJTlRFUkZBQ0UvQ1JPUCBibG9jayBmb3Ig
dGhlIE1JUEkgQ1NJLTIgcmVjZWl2ZXIKPiArCj4gK2FuZCB1cCB0byBmaXZlIFY0TDIgZGV2aWNl
czoKPiArCj4gKyogcmtjaWYtZHZwMC1pZDA6IFRoZSBzdXBwb3J0IGZvciBtdWx0aXBsZSBzdHJl
YW1zIG9uIHRoZSBEVlAgaXMgbm90IHlldAo+ICsgIGltcGxlbWVudGVkLCBhcyBpdCBpcyBoYXJk
IHRvIGZpbmQgdGVzdCBoYXJkd2FyZS4gVGh1cywgdGhpcyB2aWRlbyBkZXZpY2UKPiArICByZXBy
ZXNlbnRzIHRoZSBmaXJzdCBETUEgZW5naW5lIG9mIHRoZSBSSzM1NjggRFZQLgo+ICsqIHJrY2lm
LW1pcGkwLWlkWzAuLi4zXTogVGhlIGZvdXIgRE1BIGVuZ2luZXMgb2YgdGhlIFJLMzU2OCBNSVBJ
IENTSS0yCj4gKyAgcmVjZWl2ZXIuIEVhY2ggRE1BIGVuZ2luZSBjYW4gY2FwdHVyZSBhIGNlcnRh
aW4gTUlQSSBDU0ktMiBWaXJ0dWFsIENoYW5uZWwuCj4gKwo+ICsuLiBrZXJuZWwtZmlndXJlOjog
cmtjaWYtcmszNTY4LXZpY2FwLmRvdAo+ICsgICAgOmFsdDogICBUb3BvbG9neSBvZiB0aGUgUksz
NTY4IFZpZGVvIENhcHR1cmUgKFZJQ0FQKSB1bml0Cj4gKyAgICA6YWxpZ246IGNlbnRlcgoKaW4g
cGF0Y2ggNiB5b3UgYWxyZWFkeSBoYXZlIGEgYmxvY2sgc3RhdGluZwoKCUZpbmFsbHksIHRoZSBS
SzM1ODggVklDQVAgdW5pdCBjb25zdGl0dXRlcyBhbiBlc3NlbnRpYWwgcGllY2Ugb2YgdGhlCglj
YW1lcmEgaW50ZXJmYWNlIHdpdGggb25lIERWUCwgc2l4IE1JUEkgQ1NJLTIgcmVjZWl2ZXJzLCBz
Y2FsZS9jcm9wCgl1bml0cywgYW5kIGEgZGF0YSBwYXRoIG11bHRpcGxleGVyICh0byBzY2FsZXIg
dW5pdHMsIHRvIElTUCwgLi4uKS4KCnNvIHRoZSByazM1ODggc2VlbXMgdG8gYmUgb24gdGhlIHRh
YmxlICJzb29uaXNoIiA7LSkgLgpTbyBtYXliZSBhbHNvIGFscmVhZHkgaW5jbHVkZSBpdCBoZXJl
IGluIHRoZSBkZXNjcmlwdGlvbiBhbHJlYWR5LCBpZiB0aGVyZQppcyBhIG5leHQgdmVyc2lvbiwg
YW5kIHlvdXIgaW52ZXN0aWdhdGlvbiBpcyBhbHJlYWR5IHRoYXQgZmFyIGFsb25nPwoKT3RoZXJ3
aXNlIGEgcmVhbGx5IG5pY2UgKGFuZCBjb25jaXNlKSByZWFkLCBhbmQgbWFkZSBtZSB1bmRlcnN0
YW5kIHRoZQpzZXR1cCBzb21ld2hhdCBuaWNlbHkuCgpSZXZpZXdlZC1ieTogSGVpa28gU3R1ZWJu
ZXIgPGhlaWtvQHNudGVjaC5kZT4KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
