Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18BE8C02194
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 17:43:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=W47RVXNkHaGQ3CkKmxfDNOI5ML75a997gPKTnaibm08=; b=RFh56+fYzBZMqRb13d3RnipEsX
	h6ydyeM/OmLZa50a2R1KR3Ofo1YznAuKGyBm0e4EXZ9ntQuKCeYGLJdfqsNUuETU/NNYeQJnNbhYN
	NdHvqXNyraVT88Zg/W/s78Z0XH5UR8gFZIVaaxcKNPq+f4ZevEcjH9spImBJeXpZRiEa6oS9nUZxe
	V0Eg+2eUiD0E1MN5tOZnZMKAqyFkhUODdTTNyrjpaPdcYgLOYFmDAoS68odmEs5uVZUNhXCfZer+Q
	6ELqe3Y7KBNupRSsgybWV+8bsF/VCFjc0LZJPceHIlmbOoqz7BlXqvRcdfEjPIActfm6JBTMInbmM
	bcyl4QXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgSNY-0000000AX7t-3FpU;
	Fri, 07 Feb 2025 17:43:00 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgRwr-0000000AS3D-1lgZ;
	Fri, 07 Feb 2025 17:15:27 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1738948522;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=C9sJgZkwObZZZ/WV0HjnziR3OT4ESIIcpDukzt2Zb4s=;
	b=Mme29LFFtloTAst8s+o3ggTPvUtlDtIDaHNR4Ti+CdP8H4fDOMgUQEFHtPReb4j4HU65w2
	RYlzX9uZKgnJkc6CDP5htfsDwwlbFVD/D8XOX9Hd21Gqza6iHpkqjL/ir+H1VEX+OzIad1
	bihpS+mAHXlaA4hORWckcP2yXtfX9NVlivPzKOHcAkbZo5KT9//J1DDDk2t5aJLv84vaAe
	Cy7jdZPSSvyOI++KZXMB1YM9S9njI4GSZhbxR9ohSMw7DJ+LnezliWZ+Dj78pux/JGfbz4
	2NeSnNAexum0rP1+jqyuneuVQlxKWUQ+jvf0SVXxQgwfllFfo2GRSaXduMKAZw==
Date: Fri, 07 Feb 2025 18:15:22 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Trevor Woerner <twoerner@gmail.com>
Cc: linux-kernel@vger.kernel.org, "Rafael J. Wysocki" <rafael@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>,
 Lukasz Luba <lukasz.luba@arm.com>, Heiko Stuebner <heiko@sntech.de>,
 linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] thermal/drivers/rockchip: add missing rk3328 mapping
 entry
In-Reply-To: <20250207164740.14475-1-twoerner@gmail.com>
References: <20250207164740.14475-1-twoerner@gmail.com>
Message-ID: <fc3c4542d5cc4d95f74692140e5ea8b5@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_091525_611084_A75CF17F 
X-CRM114-Status: GOOD (  14.46  )
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

SGVsbG8gVHJldm9yLAoKT24gMjAyNS0wMi0wNyAxNzo0NywgVHJldm9yIFdvZXJuZXIgd3JvdGU6
Cj4gVGhlIG1hcHBpbmcgdGFibGUgZm9yIHRoZSByazMzMjggaXMgbWlzc2luZyB0aGUgZW50cnkg
Zm9yIC0yNcKwQyB3aGljaCAKPiBpcwo+IGZvdW5kIGluIHRoZSBUUk1bMV0gwqc5LjUuMiAiVGVt
cGVyYXR1cmUtdG8tY29kZSBtYXBwaW5nIi4KPiAKPiBOT1RFOiB0aGUga2VybmVsIHVzZXMgdGhl
IHRzYWRjX3Ffc2VsPTEnYjEgbW9kZSB3aGljaCBpcyBkZWZpbmVkIGFzOgo+ICAgICAgIDQwOTYt
PGNvZGUgaW4gdGFibGU+LiBXaGVyZWFzIHRoZSB0YWJsZSBpbiB0aGUgVFJNIGdpdmVzIHRoZSBj
b2RlCj4gICAgICAgIjM3NzQiIGZvciAtMjXCsEMsIHRoZSBrZXJuZWwgdXNlcyA0MDk2LTM3NzQ9
MzIyLgo+IAo+IExpbms6Cj4gaHR0cHM6Ly9vcGVuc291cmNlLnJvY2stY2hpcHMuY29tL2ltYWdl
cy85Lzk3L1JvY2tjaGlwX1JLMzMyOFRSTV9WMS4xLVBhcnQxLTIwMTcwMzIxLnBkZgo+IFNpZ25l
ZC1vZmYtYnk6IFRyZXZvciBXb2VybmVyIDx0d29lcm5lckBnbWFpbC5jb20+CgpUaGFua3MgZm9y
IHRoZSBwYXRjaC4gIEkgdGhpbmsgdGhpcyBzaG91bGQgYWxzbyBpbmNsdWRlIGEgRml4ZXMgdGFn
CmFuZCBiZSBzdWJtaXR0ZWQgZm9yIGluY2x1c2lvbiBpbnRvIHN0YWJsZSBrZXJuZWxzLgoKPiAt
LS0KPiAgZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyB8IDEgKwo+ICAxIGZpbGUg
Y2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPiAKPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy90aGVybWFs
L3JvY2tjaGlwX3RoZXJtYWwuYwo+IGIvZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwu
Ywo+IGluZGV4IGY1NTFkZjQ4ZWVmOS4uYThhZDg1ZmViNjhmIDEwMDY0NAo+IC0tLSBhL2RyaXZl
cnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKPiArKysgYi9kcml2ZXJzL3RoZXJtYWwvcm9j
a2NoaXBfdGhlcm1hbC5jCj4gQEAgLTM4Niw2ICszODYsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0
IHRzYWRjX3RhYmxlIHJrMzMyOF9jb2RlX3RhYmxlW10gCj4gPSB7Cj4gIAl7Mjk2LCAtNDAwMDB9
LAo+ICAJezMwNCwgLTM1MDAwfSwKPiAgCXszMTMsIC0zMDAwMH0sCj4gKwl7MzIyLCAtMjUwMDB9
LAo+ICAJezMzMSwgLTIwMDAwfSwKPiAgCXszNDAsIC0xNTAwMH0sCj4gIAl7MzQ5LCAtMTAwMDB9
LAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
