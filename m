Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E696EC3ABC9
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 21:41:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aZx1bEZJqGEqvD4yXe3usfmlNEEIZiI+z9moK38dK/s=; b=Opdh0y5JU4bnCk
	Eh035u2E6C9jmKG8ZwS7GVipKwL5jBEg4woljy5RkuHBaKs8I25kMPnXVzIbqcKU+hnXGtvnoMU/f
	M8zymlyUB+NuZgITZUK6IUdMMqhoZFh7ZOLQA8GESF9Ac9YEaP1xV7YJ4UGXt9i9t35fIV9KkkQjh
	QZzs8zx4NQd72qCK4Wwo1CAB3NM7ZraMcZCP1goV4mibMQGmobjDsYJ0aCF46S3Ep/noPS8GW3js7
	PsKzdGv0ox8KVc7Zq7QnWq+uE/YTCsxO2pdVpGKS1mzz4/plOL2gKjhjruTVy9iYRUz4MfI4D+tWo
	d09/mFYwv3OCORkLTkTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDVSr-00000004zBF-3KLl;
	Fri, 09 May 2025 21:41:05 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDVSq-00000004zAm-0YPs;
	Fri, 09 May 2025 21:41:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID;
	bh=4NnvhEy7eKpv6yWsDNTdTDOS3gwfxi78lgDlzZL6Ozw=; b=Rzyaa8sQrkA51gLAga5MF6OA6C
	QOyGED9EqCuzTyEvYER4V7TSxNtPA5sBxfNFJhytT6GuGwLJ/cS9/TCsXxMZ9hC/KkZl1+MSuy1RD
	FNgeAraozsudfuwXEz6m7bVKnBXN2GsBW1tBQ77FseLXglNfzqCcKPe6pnP4zuQiL/uYulYW2sR1E
	N4d72gCl8sUhivv2Grw2NiQFAaYc1AxJ/aJuEpOfZqKi0AENAygPpbzTX0Mxe3Ik0kHo5RAVog1iz
	Z8syAbwzL9LnDxSkWl6/C6UKZ2gz4wA8LxZIkfdrlHhrkXJQ8DeSvPXoO7QzsyG9RrVnpQpNk8qxQ
	8OhbNE3g==;
Received: from i53875a1d.versanet.de ([83.135.90.29] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uDVSj-0006A9-LB; Fri, 09 May 2025 23:40:57 +0200
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Jonas Karlman <jonas@kwiboo.se>
Cc: Yao Zi <ziyao@disroot.org>, Chukun Pan <amadeus@jmu.edu.cn>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Jonas Karlman <jonas@kwiboo.se>
Subject: Re: [PATCH v3 0/2] rockchip: Enable Ethernet controller on Radxa E20C
Date: Fri, 09 May 2025 23:40:56 +0200
Message-ID: <2728051.BddDVKsqQX@diego>
In-Reply-To: <20250509202402.260038-1-jonas@kwiboo.se>
References: <20250509202402.260038-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_144104_168532_97CF0081 
X-CRM114-Status: GOOD (  19.14  )
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

QW0gRnJlaXRhZywgOS4gTWFpIDIwMjUsIDIyOjIzOjU2IE1pdHRlbGV1cm9ww6Rpc2NoZSBTb21t
ZXJ6ZWl0IHNjaHJpZWIgSm9uYXMgS2FybG1hbjoKPiBUaGUgUm9ja2NoaXAgUkszNTI4IGhhcyB0
d28gRXRoZXJuZXQgY29udHJvbGxlcnMsIG9uZSAxMDAvMTAgTUFDIHRvIGJlCj4gdXNlZCB3aXRo
IHRoZSBpbnRlZ3JhdGVkIFBIWSBhbmQgYSBzZWNvbmQgMTAwMC8xMDAvMTAgTUFDIHRvIGJlIHVz
ZWQKPiB3aXRoIGFuIGV4dGVybmFsIEV0aGVybmV0IFBIWS4KPiAKPiBUaGlzIHNlcmllcyBhZGQg
ZGV2aWNlIHRyZWUgbm9kZXMgZm9yIHRoZSBFdGhlcm5ldCBjb250cm9sbGVycyBmb3VuZCBpbgo+
IFJLMzUyOCBhbmQgZW5hYmxlIHRoZSBMQU4gaW50ZXJmYWNlIG9uIFJhZHhhIEUyMEMuCj4gCj4g
VGhpcyBpbmNsdWRlIGEgZ21hYzAgbm9kZSBmb3IgdGhlIDEwMC8xMCBNQUMgYW5kIGl0cyByZWxh
dGVkIGludGVncmF0ZWQKPiBQSFkgbm9kZSB0aGF0IG9ubHkgaGF2ZSByZWNpdmVkIGxpbWl0ZWQg
dGVzdGluZy4gSSBoYXZlIG5vIGJvYXJkIHRoYXQKPiBleHBvc2UgYW4gRXRoZXJuZXQgcG9ydCBm
b3IgdGhlIGdtYWMwIGFuZCB0aGUgaW50ZWdyYXRlZCBQSFkuIEhvd2V2ZXIsCj4gdGhlIFBIWSBj
YW4gYmUgaWRlbnRpZmllZCBvbiBhZGRyIDB4MiBhcyAwMDQ0LjE0MDAgYW5kIGluIHZlbmRvciBr
ZXJuZWwKPiB0aGlzIHJlbGF0ZSB0byB0aGUgUm9ja2NoaXAgUks2MzAgUEhZLiBBIHByb3BlciBQ
SFkgZHJpdmVyIHdpbGwgYmUKPiBuZWVkZWQgdG8gc3VwcG9ydCBhbnkgcmVhbCB1c2Ugb2YgZ21h
YzAuCj4gCj4gQ2hhbmdlcyBpbiB2MzoKPiAtIFJlYmFzZSBvbiB0b3Agb2YgbGF0ZXN0IG1taW5k
L2Zvci1uZXh0Cj4gCj4gQ2hhbmdlcyBpbiB2MjoKPiAtIFNwbGl0IGZyb20gdGhlICJBZGQgR01B
QyBzdXBwb3J0IGZvciBSSzM1MjgiIGRyaXZlciBzZXJpZXMgWzFdCgpzcGxpdCBmcm9tIC4uLiB3
YXMgdGhhdCBzZXJpZXMgbWVyZ2VkIGFscmVhZHk/CgpUaGUgbGlua2VkIGxvcmUtdGhyZWFkIG9u
bHkgdGFsa3MgYWJvdXQgdGhlIHNlcmllcyBuZWVkaW5nIHRvIGJlIHJlcG9zdGVkLgoKCkhlaWtv
Cgo+IC0gQWRkIGV0aGVybmV0LXBoeUAyIGZvciB0aGUgaW50ZWdyYXRlZCBQSFkKPiAtIFJlYmFz
ZSBvbiB0b3Agb2YgdGhlICJTdXBwb3J0IEkyQyBjb250cm9sbGVycyBpbiBSSzM1MjgiIHNlcmll
cyBbMl0KPiAKPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvci8yMDI1MDMwOTIzMjYyMi4x
NDk4MDg0LTEtam9uYXNAa3dpYm9vLnNlCj4gWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3Iv
MjAyNTAzMDkwNzA2MDMuMzUyNTQtMS16aXlhb0BkaXNyb290Lm9yZwo+IAo+IEpvbmFzIEthcmxt
YW4gKDIpOgo+ICAgYXJtNjQ6IGR0czogcm9ja2NoaXA6IEFkZCBHTUFDIG5vZGVzIGZvciBSSzM1
MjgKPiAgIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBFbmFibGUgRXRoZXJuZXQgY29udHJvbGxlciBv
biBSYWR4YSBFMjBDCj4gCj4gIC4uLi9ib290L2R0cy9yb2NrY2hpcC9yazM1MjgtcmFkeGEtZTIw
Yy5kdHMgICB8ICAzMCArKysrKwo+ICBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzUy
OC5kdHNpICAgICAgfCAxMDUgKysrKysrKysrKysrKysrKysrCj4gIDIgZmlsZXMgY2hhbmdlZCwg
MTM1IGluc2VydGlvbnMoKykKPiAKPiAKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
