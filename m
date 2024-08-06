Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5B378C52D6F
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Aug 2024 11:58:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4i6q/6H6wiRKpHTEV/fyJHyzUpIiME7iZErzCJZWJtI=; b=KpRqOfTJb8BudX
	UjtVv5uqQW3C+k0leO7Y8Mw8pQiBxdyMU2Ss0LlyPtyvbbb6hsvyZGk+g1aXfqBJEOiit8xUppZJu
	4yebG+MXrThwKP1uGDomwBoP85FFhzwW/NH6NhRVKgotBZ549QEyu9CJDNXYEXDhhNhGz4PNBm+71
	phopNWNas+pib2+Kn+hxKY8wGtdpk2f5XU3swROL6mk5iwsfs8odSLQEWAuGjbYgxRjw7WwbiHapq
	2WyD5GOvj8QbFSpYMpLI9YOvIEJ8Z/F6EDDUq0CclMn3XMsRuYBRTJPOdkGpFZJQhE5Og8+eEMWsK
	T77jXFDwyJaOtufaCIJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbIpt-00000001Pk7-0q51;
	Tue, 06 Aug 2024 11:58:41 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sbIpo-00000001PjR-1oq4;
	Tue, 06 Aug 2024 11:58:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1722945497; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=OtfNcwuLHczvL3PGe4brG2g1/ATYA97GUqWrNCS/kqHaAIUyU72cHXqkBi99QibOGMTF3ox31D4V+j5tlTZUWOK6f3A1CO29Z172tYrnokLc2Jox7lUaAmZuPxAzbgZofHuGtfE+RWKhujZotdvgsGZmKXcgOfqHpd7DFa5pqeo=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1722945497; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=GUl7n+rnOu9EMuo1/gD5MP5eCxVNnOpkTAodKwwv4e4=; 
	b=D6wxYgNk7hdmVztiEz/yP34x3N93lsoFngMqeTPkDNGl3eVbuZhVPuKtL4R2m6MKJ9N1bk54OsSsCwu5sgPX22ea4U6hyvwTKoegMgwIqzkIy+W4Rca6BOQtB7s9RcHhelBrThoSWgNw9r3PeZztsotU7caqFdlce42LiKmQWCk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1722945497;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=Message-ID:Date:Date:MIME-Version:Subject:Subject:To:To:Cc:Cc:References:From:From:In-Reply-To:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=GUl7n+rnOu9EMuo1/gD5MP5eCxVNnOpkTAodKwwv4e4=;
	b=bkh98zX1F1CBHoTSUQkD8/YaKz3/kdxoxgoAVVYS4lgnhSmRXKzMtugxJQXTTmDy
	TepE5MqSGt9XcEpgHQpA4eQB8el87wBucUDXmlkJ2tIioRmL1baacIwojDSW45WoYQ+
	qWwB3jg7KP6b25eVzzB+RYJ9I743gvVCZIlnI28I=
Received: by mx.zohomail.com with SMTPS id 1722945495133332.7271484161171;
	Tue, 6 Aug 2024 04:58:15 -0700 (PDT)
Message-ID: <929d2f50-6b0e-4d1e-a6d3-482d615bd06a@collabora.com>
Date: Tue, 6 Aug 2024 14:58:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 0/4] Add Synopsys DesignWare HDMI RX Controller
To: Tim Surber <me@timsurber.de>, Shreeya Patel
 <shreeya.patel@collabora.com>, heiko@sntech.de, mchehab@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
 jose.abreu@synopsys.com, nelson.costa@synopsys.com,
 shawn.wen@rock-chips.com, nicolas.dufresne@collabora.com,
 hverkuil@xs4all.nl, hverkuil-cisco@xs4all.nl
Cc: kernel@collabora.com, linux-kernel@vger.kernel.org,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20240719124032.26852-1-shreeya.patel@collabora.com>
 <6f5c4ebb-84ab-4b65-9817-ac5f6158911f@timsurber.de>
Content-Language: en-US
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
In-Reply-To: <6f5c4ebb-84ab-4b65-9817-ac5f6158911f@timsurber.de>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240806_045836_559439_93E7C7BE 
X-CRM114-Status: GOOD (  15.08  )
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

T24gOC80LzI0IDAyOjU3LCBUaW0gU3VyYmVyIHdyb3RlOgo+IEhpIFNocmVleWEsCj4gCj4gSSB0
ZXN0ZWQgeW91ciBwYXRjaCBhbmQgbm90aWNlZCBwcm9ibGVtcyB3aGVuIHVzaW5nIDM4NDB4MjE2
MCByZXNvbHV0aW9uCj4gYXQgwqA2MGZwcy4KPiAKPiBGb3IgbXkgdGVzdGluZyBJIGNvbm5lY3Rl
ZCBhbiBIRE1JIHNvdXJjZSBhbmQgc2V0IGl0IHRvIDRrNjBmcHMuIEkKPiB2ZXJpZmllZCB0aGF0
IHRoaXMgc291cmNlIGFuZCB0aGUgY2FibGVzIHdvcmsgb24gYSBzY3JlZW4gYXQgdGhpcwo+IHJl
c29sdXRpb24uCj4gCj4gVXNpbmcKPiAndjRsMi1jdGwgLS12ZXJib3NlIC1kIC9kZXYvdmlkZW8x
Cj4gLS1zZXQtZm10LXZpZGVvPXdpZHRoPTM4NDAsaGVpZ2h0PTIxNjAscGl4ZWxmb3JtYXQ9J05W
MTInCj4gLS1zdHJlYW0tbW1hcD00IC0tc3RyZWFtLXNraXA9MyAtLXN0cmVhbS1jb3VudD0xMDAg
LS1zdHJlYW0tcG9sbCcKPiBJIGdldCB0aGUgdmlkZW8gZm9ybWF0IG91dHB1dCwgYnV0IG5vdCB0
aGUgcGVyaW9kaWMgb3V0cHV0IHdoaWNoIHNob3dzCj4gdGhlIGZwcy4KPiAKPiBVc2luZwo+ICdH
U1RfREVCVUc9NCBnc3QtbGF1bmNoLTEuMCAtdiB2NGwyc3JjIGRldmljZT0vZGV2L3ZpZGVvMSAh
Cj4gZnBzZGlzcGxheXNpbmsgdGV4dC1vdmVybGF5PWZhbHNlIHZpZGVvLXNpbms9ImZha2V2aWRl
b3NpbmsiJwo+IEkgZ2V0IHRoZSBmb2xsb3dpbmcgZXJyb3IgbWVzc2FnZToKPiAKPiAoZ3N0LWxh
dW5jaC0xLjA6MzIzMSk6IEdTdHJlYW1lci1DUklUSUNBTCAqKjogMDE6MzQ6MzkuMTM3Ogo+IGdz
dF9tZW1vcnlfcmVzaXplOiBhc3NlcnRpb24gJ3NpemUgKyBtZW0tPm9mZnNldCArIG9mZnNldCA8
PQo+IG1lbS0+bWF4c2l6ZScgZmFpbGVkCj4gMDowMDowMy40ODkzODI1MjkgwqAzMjMxIDB4ZmZm
ZmEwMDAwYjkwIFdBUk4gwqB2NGwyYnVmZmVycG9vbAo+IGdzdHY0bDJidWZmZXJwb29sLmM6MjIw
OTpnc3RfdjRsMl9idWZmZXJfcG9vbF9wcm9jZXNzOjx2NGwyc3JjMDpwb29sMDpzcmM+IERyb3Bw
aW5nIHRydW5jYXRlZCBidWZmZXIsIHRoaXMgaXMgbGlrZWx5IGEgZHJpdmVyIGJ1Zy4KPiAwOjAw
OjAzLjQ4OTQyMTkwNiDCoDMyMzEgMHhmZmZmYTAwMDBiOTAgV0FSTiDCoGJ1ZmZlcnBvb2wKPiBn
c3RidWZmZXJwb29sLmM6MTI1MjpkZWZhdWx0X3Jlc2V0X2J1ZmZlcjo8djRsMnNyYzA6cG9vbDA6
c3JjPiBCdWZmZXIKPiAweGZmZmY5ODAwOGU4MCB3aXRob3V0IHRoZSBtZW1vcnkgdGFnIGhhcyBt
YXhzaXplICg4Mjk0NDAwKSB0aGF0IGlzCj4gc21hbGxlciB0aGFuIHRoZSBjb25maWd1cmVkIGJ1
ZmZlciBwb29sIHNpemUgKDEyNDQxNjAwKS4gVGhlIGJ1ZmZlciB3aWxsCj4gYmUgbm90IGJlIHJl
dXNlZC4gVGhpcyBpcyBtb3N0IGxpa2VseSBhIGJ1ZyBpbiB0aGlzIEdzdEJ1ZmZlclBvb2wgc3Vi
Y2xhc3MKPiAKPiAKPiBFdmVyeXRoaW5nIHdvcmtzIHdpdGggNGszMGZwcyBvciAxMDgwcCA2MGZw
cy4gVGhlIGhhcmR3YXJlIHNob3VsZAo+IHN1cHBvcnQgNGs2MGZwcy4KClBsZWFzZSBkbyBgZWNo
byAzID4gL3N5cy9tb2R1bGUvc3lub3BzeXNfaGRtaXJ4L3BhcmFtZXRlcnMvZGVidWdgIGFuZApz
aG93IHRoZSBrZXJuZWwgbG9nIG9mIGNhcHR1cmluZyA0a0A2MCB3aXRoIHY0bDItY3RsLgoKLS0g
CkJlc3QgcmVnYXJkcywKRG1pdHJ5CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
