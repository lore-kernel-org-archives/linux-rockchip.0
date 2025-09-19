Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AD12CCAC59A
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Sep 2025 09:29:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JTR8zqf78M7Wl+fL0VxxJ0hkBYUIiWB9VX23f0KVG28=; b=LUB0+k0t0/L81d
	EkscmXcNzBhFRHhClxjMLMe/xFpFyXknH9WLyUeOV0SW2RljQlFvqGYlynACWYUyjUM44jQgejjvz
	wf5uOJiZZUDWdDL45WnVtbERpGyNkJeTMXsF0cY538ySKen1r2zaRFxGEw7HGB06wlQLaQIyZ8Sak
	4qThPA7PH3ZA5Pfo0whooNvrhldjbpWJPaKqXg5T3Vq+p78F+QQHyuTYp2I9H1sr5GkqcPRifW7Ie
	LQ5OYmjN+ICk43fDEC3t98zrqR8n781ivWgU5ovj4NXhcjsm3lBluDC4YTQmur+Xsv5sVakZqIuuI
	WqU8CmYn3jcmmuXyRZPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzXQQ-00000002NRh-2ZLg;
	Fri, 19 Sep 2025 09:29:06 +0000
Received: from mail1.nippynetworks.com ([91.220.24.129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uzXQN-00000002NQY-0QYp;
	Fri, 19 Sep 2025 09:29:04 +0000
Received: from [192.168.8.153] (unknown [94.228.36.46])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature ECDSA (P-256) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: ed@wildgooses.com)
	by mail1.nippynetworks.com (Postfix) with ESMTPSA id 4cSnJ75j6rzkd2v;
	Fri, 19 Sep 2025 10:28:55 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wildgooses.com;
	s=dkim; t=1758274139;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/bBCEPU2/0tv/K9YmbIdh5G90E4fXWa6Xx5dfbkFTiY=;
	b=feONaI8Lw64SjaoDRMMiIvlGMwvLCFWYcp5EFABRsaS8yWkOIE3/uxBdPMBw+ds7phhE+u
	ILyaf27i9LOJdFQlkn02/HVKGg25a+4nn6RKmIG0wQIrPnPfw25MmbNo4kesaYOzxNnIlu
	+oIoDq8x2vqMfIeswxMTGhjx06poDfs=
Message-ID: <da24e503-cb43-45e7-99ff-38eab11a203b@wildgooses.com>
Date: Fri, 19 Sep 2025 10:28:54 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: correct uart mux for Radxa
 ZERO3
To: FUKAUMI Naoki <naoki@radxa.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?=
 <heiko@sntech.de>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
References: <20250917114932.25994-1-lists@wildgooses.com>
 <FBB5B30DE8FEABD7+59ee6f48-2ad1-45dd-8cf1-8b58a03513a9@radxa.com>
 <adbc2396-d5f0-4dd6-a65e-0dd78a58b9a4@wildgooses.com>
 <2325560.3ZeAukHxDK@diego>
 <0DB47BC84E90B0E6+694b1274-4826-4ec1-9aa2-ca8aa790f61a@radxa.com>
From: Ed W <lists@wildgooses.com>
Content-Language: en-GB
In-Reply-To: <0DB47BC84E90B0E6+694b1274-4826-4ec1-9aa2-ca8aa790f61a@radxa.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250919_022903_335304_156607FE 
X-CRM114-Status: GOOD (  19.68  )
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

T24gMTkvMDkvMjAyNSAwMDo1NywgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBIaSBIZWlrbywgRWQs
Cj4KPiBPbiA5LzE5LzI1IDAxOjE4LCBIZWlrbyBTdMO8Ym5lciB3cm90ZToKPj4gQW0gRG9ubmVy
c3RhZywgMTguIFNlcHRlbWJlciAyMDI1LCAxNzoyMzowNCBNaXR0ZWxldXJvcMOkaXNjaGUgU29t
bWVyemVpdCBzY2hyaWViIEVkIFc6Cj4+PiBQZXJzb25hbGx5LCBhbmQgSSdtIHNheWluZyB0aGlz
IGFzIGEgdXNlciB3aG8gaXMgdGVjaG5pY2FsIGVub3VnaCB0byBmaXggdGhlIGRlZmluaXRpb25z
LCBpdAo+Pj4gdG9vayBtZQo+Pj4gcXVpdGUgYSBmZXcgZGF5cyB0byBmaWd1cmUgb3V0IHdoYXQg
d2FzIHdyb25nIHdpdGggdGhlIGRlZmluaXRpb25zIGFuZCB1bmRlcnN0YW5kIHRoZSBpbnRyaWNh
dGUKPj4+IHRyZWUKPj4+IG9mIGR0c2kgaW5jbHVkZXMsIHRvIGZpbmFsbHkgZmlndXJlIG91dCB3
aHkgSSBjb3VsZG4ndCBqdXN0IGRvIGEgInN0YXR1cyA9ICJva2F5IjsiIHRvIGVuYWJsZSB0aGUK
Pj4+IFVBUlRzLi4uICh3aGljaCBpcyByb3VnaGx5IHdoYXQgaXMgc2hvd24gaW4gc2V2ZXJhbCBy
YWR4YSBzdXBwbGllZCBvdmVybGF5cyB0byBlbmFibGUgdWFydHMgb24KPj4+IHZhcmlvdXMgYm9h
cmRzKQo+Pj4KPj4+IFNvIG15IHZvdGUgd291bGQgYmUgdG8gY29ycmVjdGx5IGRlZmluZSBhbGwg
dGhlIGhhcmR3YXJlIGZvciBhIGdpdmVuIGJvYXJkLiBUaGVuIHVzZXJzIGNhbgo+Pj4gc2ltcGx5
IGRvCj4+PiBhIHN0YXR1cz0ib2theSIgdG8gZW5hYmxlIGFuZCBvZmYgdGhleSBnby4KPj4KPj4g
QW5kIEknZCBhZ3JlZSB3aXRoIHRoYXQgYXJndW1lbnQuIFNldHRpbmcgdXAgdGhlIG5lZWRlZCBw
aW5jdHJsIHNldHRpbmdzCj4+IGZvciB0aGUgcGVyaXBoZXJhbHMgZGVzY3JpYmVkIGluIHRoZSBk
ZXZpY2UgZG9jdW1lbnRhdGlvbgo+PiAoIGh0dHBzOi8vZG9jcy5yYWR4YS5jb20vZW4vemVyby96
ZXJvMy9oYXJkd2FyZS1kZXNpZ24vaGFyZHdhcmUtaW50ZXJmYWNlI2dwaW8taW50ZXJmYWNlICkK
Pj4KPj4gaXMgdGhlIHNlbnNpYmxlIHRoaW5nIHRvIGRvLiBXaGlsZSBrZWVwaW5nIHRoZSBwZXJp
cGhlcmFscyBpdHNlbGYgZGlzYWJsZWQKPj4gYW5kIGZvciB0aGUgdXNlciB0byBkZWNpZGUgd2hp
Y2ggcGVyaXBoZXJhbCB0byBlbmFibGUuCj4KPiBJJ20gbm90IHN0cm9uZ2x5IG9wcG9zZWQgdG8g
dGhpcyBwb2xpY3ksIGJ1dCBJIHRob3VnaHQgaWYgeW91J3JlIGdvaW5nIHRvIGRvIHRoaXMsIHlv
dSBzaG91bGQgZG8KPiBpdCBmb3IgZXZlcnl0aGluZywgbm90IGp1c3QgVUFSVHMuCj4KPiBCZXN0
IHJlZ2FyZHMsCj4KPiAtLSAKPiBGVUtBVU1JIE5hb2tpCj4gUmFkeGEgQ29tcHV0ZXIgKFNoZW56
aGVuKSBDby4sIEx0ZC4KCgpJIHdvdWxkIG1vc3QgZGVmaW5pdGVseSBiZSBpbiBmYXZvdXIgb2Yg
ZG9pbmcgdGhpcyBmb3IgYWxsIHBlcmlwaGVyYWxzISBZZXMgcGxlYXNlIQoKSSBoYXZlIGEgc2Vs
ZWN0aW9uIG9mIFplcm8gM1cgYW5kIEUgZGV2aWNlcyBoZXJlLiBXZSBhcmUgZ29pbmcgdG8gcG90
ZW50aWFsbHkgdXNlIHRoZW0gaW4gYW4gT0VNCmNhcGFjaXR5LCBhbmQgSSBtaWdodCBoYXZlIHNv
bWUgSTJDIGRldmljZXMgdG8gcGx1ZyBpbnRvIHRoZW0gaW4gdGhlIGZ1dHVyZSwgYW5kIGZvciBl
eGFtcGxlIHdvdWxkCmxpa2UgdG8gZ2V0IHRoZSBJMkMgd29ya2luZyBvbiB0aGUgcGlucyAoaXMg
aXQgMiBhbmQgND8pLiBJdCB3aWxsIGJlIGF0IGxlYXN0IHNvbWUgd2Vla3MgYmVmb3JlIEkKY2Fu
IHdvcmsgb24gdGhhdCwgYnV0IGlmIHlvdSB3YW50IHRvIG9mZmVyIHNvbWUgc3VwcG9ydCB0byBm
aXh1cCBhdCBsZWFzdCB0aGF0IGRldmljZSBJIHdvbid0IGRlY2xpbmUhCgpUaGFua3MgZm9yIG1h
a2luZyB0aGVzZSBib2FyZHMKCkVkIFcKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
