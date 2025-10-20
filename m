Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7417CCCD199
	for <linux-rockchip@archiver.kernel.org>; Mon, 20 Oct 2025 14:44:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PeoLaUJ3AZ7DYnjJmp7uL1sVbM/nu51G+9d/M9if+hg=; b=LdoL5mVga7HKmS
	ozJYiS9NDZBSSuG5g0QVwOtlOU+UNiTFM+LQ4LITmh3NZ1SecsAtiaFjMDgo1kzwU3Yc6T5h6Zaqu
	7LyUJpwpjz+KcAAoS3vetTc60iLI9DvuR3O01DTMLfA5Mu7p2MOpISWyM7l/VX1fXDK8eBGZQbLSr
	69gf1jtlQDcuZ+eULZaUs5T7qDkBgmOeb3cTCFX2+eXp/nhkGhP4Nm/rhIi3fgb9ntYut7itDH06t
	4c+otj/V1zjwdc9Wdy+kYY8L53RYnFxKpyT09b8AskKnoihmf7ISQcAR9LmCZZi8SefMFfs5p37xR
	UqQZ8GCzLjzRXYxnEC+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAr7f-0000000Dzf8-0hSe;
	Mon, 20 Oct 2025 14:44:31 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vAr7c-0000000Dzdq-0oyM;
	Mon, 20 Oct 2025 14:44:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=AT8kvrM/pmB47OHQy99Ebe3K0Er153ALtlnbPz3lC68=; b=MZzlvL561DhtDq2BnjgVNhw48X
	LdAaF8ZhQcfaQgm+NAamiJkMr1WoA4Bu+vWxwcgA8s87SSytjOE920W12HnSzH968gx/MuzEGhHbD
	cxjoHsx9T4BY87bsYn+dVVg21RLcSxSSZbHPwh/7s9VIQwrPjqWLzq1mshNxOI0TOHOscFvu+d8Sq
	F8u1vl5xdWcg4gPAi9uiykIAgMyOVqoUA+jxcMMYASFvKKrhHMPFL0BNMUBxYkBFH+mLSmYOfHq0q
	llao0jVA859vPzpB2Wgb3Sp+Zv9DYtQn369m9EtC0CggdZFfCJK2HoqdkAX5ODls1ZArzmC0j1iiq
	PKgScYYw==;
Received: from [212.111.240.218] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vAr7W-0002MH-Fu; Mon, 20 Oct 2025 16:44:22 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Subject: Re: [PATCH v2 0/5] arm64: dts: rockchip: Add device tree for the Orange Pi
 CM5 Base board
Date: Mon, 20 Oct 2025 16:44:21 +0200
Message-ID: <2328202.iZASKD2KPV@phil>
In-Reply-To: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
References: <20251005235542.1017-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251020_074428_232311_89B641A1 
X-CRM114-Status: GOOD (  21.42  )
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
Cc: Ondrej Jirman <megi@xff.cz>, Conor Dooley <conor+dt@kernel.org>, Cenk Uluisik <cenk.uluisik@googlemail.com>, Rob Herring <robh@kernel.org>, Jimmy Hon <honyuenkwun@gmail.com>, Kever Yang <kever.yang@rock-chips.com>, Maxime Ripard <mripard@kernel.org>, Sandy Huang <hjc@rock-chips.com>, Muhammed Efe Cetin <efectn@6tel.net>, Algea Cao <algea.cao@rock-chips.com>, Alexey Charkov <alchark@gmail.com>, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

SGkgTGF1cmVudCwKCkFtIE1vbnRhZywgNi4gT2t0b2JlciAyMDI1LCAwMTo1NTozNiBNaXR0ZWxl
dXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIExhdXJlbnQgUGluY2hhcnQ6Cj4gSGVsbG8s
Cj4gCj4gVGhpcyBwYXRjaCBzZXJpZXMgYWRkcyBhIGRldmljZSB0cmVlIGZvciB0aGUgT3Jhbmdl
IFBpIENNNSBCYXNlIGJvYXJkCj4gZnJvbSBYdW5sb25nLiBUaGlzIGlzIGEgY29tYmluYXRpb24g
b2YgYSBjb21wdXRlIG1vZHVsZSBhbmQgYSBjYXJyaWVyCj4gYm9hcmQsIHNvIHRoZSBkZXZpY2Ug
dHJlZSBpcyBzcGxpdCBpbiB0d28gZmlsZXMuCj4gCj4gVGhlIHdvcmsgaXMgYmFzZWQgb24gYSBj
b21iaW5hdGlvbiBvZiB1cHN0cmVhbSBkZXZpY2UgdHJlZXMgZm9yIG90aGVyCj4gUkszNTg4LWJh
c2VkIE9yYW5nZSBQaSBib2FyZHMgYW5kIHRoZSBkb3duc3RyZWFtIGRldmljZSB0cmVlLCBhbGwK
PiBjaGVja2VkIGFnYWluc3QgdGhlIGF2YWlsYWJsZSBzY2hlbWF0aWNzIGZvciB0aGUgY2Fycmll
ciBib2FyZC4gVGhlCj4gY29tcHV0ZSBtb2R1bGUgc2NoZW1hdGljcyBpcyB1bmZvcnR1bmF0ZWx5
IG5vdCBhdmFpbGFibGUuCj4gCj4gVGhlIHNlcmllcyBzdGFydHMgd2l0aCB0aHJlZSBwYXRjaGVz
IHRoYXQgYWRkIGEgbmV3IHRtZHMtZW5hYmxlLWdwaW9zCj4gcHJvcGVydHkgdG8gdGhlIHJrMzU4
OC1kdy1oZG1pLXFwIERUIGJpbmRpbmcgKDEvNSkgYW5kIHVwZGF0ZSB0aGUgZHJpdmVyCj4gYWNj
b3JkaW5nbHkgKDIvNSBhbmQgMy81KS4gVGhvc2UgcGF0Y2hlcyBoYXZlIGJlZW4gYXV0aG9yZWQg
YnkgQ3Jpc3RpYW4KPiBDaW9jYWx0ZWEgYXMgcGFydCBvZiBhIGxhcmdlciBzZXJpZXMsIEkgaGF2
ZSBpbmNvcnBvcmF0ZWQgdGhlbSBoZXJlCj4gYXMtaXMuCj4gCj4gUGF0Y2ggNC81IHRoZW4gYWRk
IGEgbmV3IGNvbXBhdGlibGUgZm9yIHRoZSBib2FyZCB0byBhcm0vcm9ja2NoaXAueWFtbC4KPiBU
aGUgbGFzdCBwYXRjaCAoNS81KSBhZGRzIHRoZSBkZXZpY2UgdHJlZSBmb3IgdGhlIGJvYXJkLgo+
IAo+IFBhdGNoZXMgMi81IGFuZCAzLzUgY291bGQgYmUgbWVyZ2VkIHNlcGFyYXRlbHkgdGhyb3Vn
aCB0aGUgRFJNIHRyZWUsCj4gYnV0IHBhdGNoIDEvNSBuZWVkcyB0byBiZSBtZXJnZWQgd2l0aCB0
aGUgZGV2aWNlIHRyZWUgaW4gNS81IHRvIGF2b2lkCj4gaW50cm9kdWNpbmcgRFQgdmFsaWRhdGlv
biB3YXJuaW5ncy4gSSdkIGFwcHJlY2lhdGUgYWR2aWNlIGZyb20gdGhlIERUCj4gbWFpbnRhaW5l
cnMgcmVnYXJkaW5nIGhvdyB0byBoYW5kbGUgdGhpcywgYXMgSSBoYXZlIGJlZW4gdG9sZCBiZWZv
cmUKPiB0aGF0IERUIGJpbmRpbmdzIGFuZCBEVCBzb3VyY2VzIGNhbid0IGJlIG1lcmdlZCB0aHJv
dWdoIHRoZSBzYW1lIHRyZWUuCgpJIHRoaW5rIHdlIGdlbmVyYWxseSBvbmx5IGNhcmUgYWJvdXQg
YmluZGluZyB3YXJuaW5ncyBoYXBwZW5pbmcKaW4gbGludXgtbmV4dC4KCkkuZS4gaW4gbW9zdCBj
YXNlcywgdGhlIGJpbmRpbmcgaXMgbWVyZ2VkIHdpdGggdGhlIGRyaXZlciBhbmQKdGhlIGR0cyB0
aGVuIGludG8gYSBzZXBhcmF0ZSB0cmVlIC0gc29ydCBvZiBpZ25vcmluZyB0aGUgbG9jYWwKYmlu
ZGluZyBlcnJvciwgYmVjYXVzZSBldmVyeXRoaW5nIHdpbGwgYmUgZmluZSBvbmNlIHN0dWZmIGNv
bWVzCnRvZ2V0aGVyIGluIGxpbnV4LW5leHQuCgoKU3BlYWtpbmcgb2YgYmluZGluZ3MsIGRvZXMg
eW91ciBib2FyZCBfbmVlZF8gdGhlIGZybC1ncGlvIHRvIHByb2R1Y2UKYW55IGhkbWkgb3V0cHV0
PyBMaWtlIGNvdWxkIHdlIG1lcmdlIHRoZSBib2FyZCB3aXRob3V0IHRoZSAob3B0aW9uYWwpCmdw
aW8gYW5kIHRoZW4gYWRkIGl0IGxhdGVyLCBvbmNlIHRoZSBiaW5kaW5nK2RyaXZlciBoYXZlIG1h
ZGUgaXQgaW4/CgpKdXN0IG1lIHRyeWluZyB0byBncmFiIHRoZSBiaWcgY2h1bmtzIGVhcmxpZXIg
aW4gdGhlIGN5Y2xlLgoKClRoYW5rcwpIZWlrbwoKCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
