Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E764606A31E
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Nov 2026 13:55:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=X8cRYDEJ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=uQ8AM8JJ
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Duq/3FKBj7Guh72kAh4UrQeCuPlRmON0JVCRQv8255E=; b=X8cRYDEJZISAzTn/kKP4QD63Op
	x/NIOMLLdNXprfNcD5o2VyMLxSzmk7l3YhWNrIAzVd4WelJg9iSZ9WKFCLzW19fZQVX4ObaoZ5pl4
	XACbQan3P9PbYOme+7t607noSDmHajVxD5sInvF7BrByOhtMetZaRK0RRTQvu5/1PLg3QBFSWNYGA
	EavDNxjdIPD79Ky6kNeRVjF3oLEuGPAlos7oCfpSDi0xiq3xvIizlP3y56ghwNVOURcDhvFb8nwpd
	Ze6eHf9I4qBVZp0F7mNWWoNH5wuukTyhECI+5OhnJaAhQgaDtUF2mGFQCOkFcMtVUQM+PTCVogY9i
	RFKzpUKA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDT3-0000000A4TZ-0Y8h;
	Wed, 25 Nov 2026 13:55:25 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWDSx-0000000A4QT-2y5I
	for linux-rockchip@lists.infradead.org;
	Wed, 25 Nov 2026 13:55:24 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-c4d5b2db4bbso1110303066b.0
        for <linux-rockchip@lists.infradead.org>; Wed, 25 Nov 2026 05:55:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795614916; cv=none;
        d=google.com; s=arc-20260327;
        b=CvPFeyKQ8h976qqrwWG6z0NeBtoWRWT+3fz584AcfOxOmDFSu7RHXcFO/3jRk8ZebW
         BaJvMlIOVhT7Z7okqttwquXbGbcbemR89pKXAgZKahLlYLPFgj9kUYme9wvpI7QRakug
         Y+voPhCedsfRYLatnAYymyO9Z/6ltXc2RziphkBFLbih7m/C2ZPFUD/Om9DetXucNXe7
         FB7RFXwqC/PS44PhcLRvPUe7/2GFxaFWdqAdhx+uyni5IRvYxlW7m1Rop77rVkD4b0zm
         D9d5NhAwCLBjuDh4qxPtMQ61Q8t/TR/g8qo1Zc79+3OqKdN7K7BgdFbQzNNBqjK6UQoT
         kR/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=FCuANSuXIYamXWDtNf7w7lG6eHXyutyXEO9DVfxIUGI=;
        fh=bZzWGKWPsUJB3MjKN7j1oKmLYY0W19yCh72HevY/rck=;
        b=oW97KZIaiy6777pXScMQ4OPuZfmHMAsm7l8Xf9YQXg+Xv6MWA0drm7OfTLLz7G1zKW
         xGcKnwWfQotKybZ8tsVfNmX/jKMnHR8bCC4pmtDy7waAuG/cYLh50d8YymoKpYGU18Q9
         +gq9o3dZTZQv0UC2q14ewm2bGWqAvv4tpRoDCW8FFFrxUMgttey6L9PkntXkttnSEOXA
         o4Pc/H7ZmgOPvbgneM+GFYCeNxhdziVqkJZSWRUi/6+hucJkz1GvTx2nb8v7XyeYsqA1
         UMWISuH9Z2qLI7eNINjMBC/wSafyzRcA/jco+hS6V+IOq8xPAiXgHVboZNbBy6R4vuMZ
         XHvQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795614916; x=1796219716; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=FCuANSuXIYamXWDtNf7w7lG6eHXyutyXEO9DVfxIUGI=;
        b=uQ8AM8JJt5iQo3kBaghdvbpgKev28iXkGyV6tKgj5kalKQmQI3sW9pJtJx47Pm1q/q
         MvyTZMNPVn8/yvVdYbXP9mXttsocHADhWNbNAfyRWd1IMtwLVLFBZ56/7oJ58KBABsX7
         PDbLLsZ0xwGhag5QLQgFPYWCqUt4qjniYbVUDz3bzasg4f8x1m10aoTXVKocpZ+kQlVr
         wfHJVrQY//SMP0564O2TyeOrw++l+NfJVnZ8gor9Gq8mUq7YYZf5rwUUWfUCQU9Ta0nC
         fu94fX0xzpjEViO8Im37QvdRkofLEtWMX/pSY3olSC51x23TA7eIEgB5JtuvnC55ATvl
         5K/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795614916; x=1796219716;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=FCuANSuXIYamXWDtNf7w7lG6eHXyutyXEO9DVfxIUGI=;
        b=W9uUwSgr81aFYY2KJEG9gvhRbVSHXpD6fJgEO0FlkULpeLQnkb0A+uGq7D1KtIBmFu
         3DuevNBk1JOc4R2mchNPGuXA0H8kQXMyGuZ12ZVQOAd2pwrJfWLEL+k/rSuEiEiespPQ
         KeW6ZhWS3aTSe1QcjBTMEAmivqu65r068nJEOnF1Q59aUpmWzVNGKfQDumfmcdbJv1jT
         w1F0do0GWn523HQ1y/K3QKA1xuF5zuItzeAN3dFwBlJpBvJWMnxKlZyCxqd8XTK72yNz
         ZKxbk1xNsfqCG2WzE0Jszoh8C7M71LIe1OSfed2NZCToyINdXmT4Y2SaHLgIvNm7emE4
         ptEg==
X-Forwarded-Encrypted: i=1; AL+hErGlQMzLmCBzX62MFf5wZFRB+ajHPY3WzpREAMR5WpkXv40/yW2dSAviewMJtoEY465ZHwZMD+7u1RhcwcJPbQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z+QuMhc6GoI4Br7eGNO2HQ1RMTe3ukoUWYLyd/Mf+uVOMGiblFS
	D/sr+vC8bbrBXwvZXgIJ6skq7QRAVrnz1fqniWBVU7wCe9RCCAAi5YouMzw+SjMf0jOHFgh9KGi
	PUKHqJfxOenGraYbXArAOYuXupBmEZm4T0zTOCzmgsg==
X-Gm-Gg: AZFdTZeEndQUgeV4pn6uLd284/cHrnqpngHySEgU0CtSpw721dvZImRvXMwiPss8WaE
	ujLYyWuTp3mw1zaxz1/S0k7HpP8R4+YCvDcAinwj4UOv0Y06pT4lyNfkr4RcdpbuGpbyV2T3p6b
	n4miA+JaLpPro+WXzvL1iU6P8jjUPd6vpNrvoznCaayd/KBzOxrl9EE+gkMyakgtrVWm7qbZ24w
	Qmx8/ZPTmsH6c3jWA8dR6LcHHQWHrMojoY/emvvEzm3ukC/+gpQvHRrYBjVyp0lua8zuFS88Ko/
	wtEDsrHtwEZN8TzbS/gWqdKHFWquWgbzY5fmABGRONNRkv/l5AhN4OaPhpn3yLZyzNpz5LA1l3U
	e/bOe0RdodP5uaTlD8tzEReCJox9M8av6IEziH+OcTXXF2W4xdSddnA==
X-Received: by 2002:a17:907:6d26:b0:c51:50c9:741c with SMTP id
 a640c23a62f3a-c5150c98208mr1275142566b.10.1795614916108; Wed, 25 Nov 2026
 05:55:16 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261124-rk3576-otp-cpuid-mac-v4-0-d403b8a25113@flipper.net>
 <20261124-rk3576-otp-cpuid-mac-v4-3-d403b8a25113@flipper.net> <0aH4P5VH9HNiTXpCUTaTlvGaoUDQBnvv-0cSXtipSDkLOGjzGy96jDqsVtU0DJTWrocgoMcGFEgd0JUlF5mljVvCzGKVz4yUgDQ0s6HaDLg=@protonmail.com>
In-Reply-To: <0aH4P5VH9HNiTXpCUTaTlvGaoUDQBnvv-0cSXtipSDkLOGjzGy96jDqsVtU0DJTWrocgoMcGFEgd0JUlF5mljVvCzGKVz4yUgDQ0s6HaDLg=@protonmail.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Wed, 25 Nov 2026 17:55:04 +0400
X-Gm-Features: Aa3M54pv9ze0w4z1urAY277TKJgQi-9HwT3ngn04WBh3FoiAC5gcBe50J9g0GsQ
Message-ID: <CAKTNdwFwuG9bWStnuttiXY0o_iqMX3Eu_0DhFtxXt09Bp3Dz4A@mail.gmail.com>
Subject: Re: [PATCH v4 3/5] nvmem: rockchip-otp: Derive MAC addresses from the
 CPU ID
To: Ryan Leung <untilscour@protonmail.com>
Cc: Srinivas Kandagatla <srini@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>, 
	Andrew Lunn <andrew@lunn.ch>, Heiner Kallweit <hkallweit1@gmail.com>, 
	Russell King <linux@armlinux.org.uk>, "David S. Miller" <davem@davemloft.net>, 
	Eric Dumazet <edumazet@kernel.org>, Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
	Willem de Bruijn <willemb@google.com>, Simon Horman <horms@kernel.org>, 
	Ricardo Pardini <ricardo@pardini.net>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_055519_756550_700A4C03 
X-CRM114-Status: GOOD (  18.51  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-8.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgUnlhbiwKCk9uIFdlZCwgTm92IDI1LCAyMDI2IGF0IDU6NDnigK9QTSBSeWFuIExldW5nIDx1
bnRpbHNjb3VyQHByb3Rvbm1haWwuY29tPiB3cm90ZToKPgo+IEhpIEFsZXhleSwKPgo+IE9uIFR1
ZXNkYXksIE5vdmVtYmVyIDI0dGgsIDIwMjYgYXQgODowNCBQTSwgQWxleGV5IENoYXJrb3YgPGFs
Y2hhcmtAZmxpcHBlci5uZXQ+IHdyb3RlOgo+Cj4gPiBSb2NrY2hpcCBib290bG9hZGVycyBkZXJp
dmUgc3RhYmxlIEV0aGVybmV0IE1BQyBhZGRyZXNzZXMgZnJvbSB0aGUgQ1BVCj4gPiBJRCBpbiB0
aGUgT1RQIG1lbW9yeSBhbmQgcGF0Y2ggdGhlbSBpbnRvIHRoZSBkZXZpY2UgdHJlZSB0aGV5IHBh
c3Mgb24uCj4gPiBLZXJuZWxzIHN0YXJ0ZWQgYW55IG90aGVyIHdheSwgZS5nLiBzdHJhaWdodCBm
cm9tIHRoZSBTUEwgaW4gRmFsY29uCj4gPiBtb2RlLCBlbmQgdXAgd2l0aCByYW5kb20gYWRkcmVz
c2VzIHdoaWNoIGNoYW5nZSBvbiBldmVyeSBib290LCBldmVuCj4gPiB0aG91Z2ggdGhlIENQVSBJ
RCBpcyBqdXN0IGFzIHJlYWRhYmxlIGZyb20gTGludXguCj4gPgo+ID4gSW1wbGVtZW50IHRoZSBk
ZXJpdmF0aW9uIGZvciBjZWxscyBtYXJrZWQgYXMgInJvY2tjaGlwLGNwdWlkIiwgaGFuZGluZwo+
ID4gdGhlIHJlc3VsdCB0byBjb25zdW1lcnMgd2hpY2ggYXNrIGZvciB0aGUgY2VsbCBhcyAibWFj
LWFkZHJlc3MiLCBzdWNoIGFzCj4gPiBvZl9nZXRfbWFjX2FkZHJlc3MoKS4gTGVhdmUgdGhlIENQ
VSBJRCB1bmNoYW5nZWQgZm9yIGFueSBvdGhlciByZWFkZXIsCj4gPiBzbyB0aGF0IHRoZSBzYW1l
IGNlbGwga2VlcHMgc2VydmluZyB0aGUgSUQgaXRzZWxmLgpbLi4uXQo+Cj4gUGVyaGFwcyAicm9j
a2NoaXAsY3B1aWQiIGNvdWxkIGluY2x1ZGUgYSBtZW50aW9uIG9mICJtYWMiIHNvbWV3aGVyZT8K
CkkgZGVsaWJlcmF0ZWx5IGF2b2lkZWQgdGhhdCBiZWNhdXNlLCBhdCB0aGUgaGFyZHdhcmUgbGV2
ZWwsIHRoZSBPVFAKY2VsbCBjb250YWlucyBhIENQVUlELCBub3QgYW4gYWRkcmVzcy4gVGhlIHNw
ZWNpYWwgdHJlYXRtZW50IGFwcGxpZXMKb25seSB3aGVuIHRoZSBDUFVJRCBpcyB1c2VkIGZvciBN
QUMgYWRkcmVzcyBkZXJpdmF0aW9uIC0gd2hpY2ggSU1PIGlzCmJldHRlciBjYXB0dXJlZCBpbiB0
aGUgYmluZGluZyBkZXNjcmlwdGlvbi4gTGV0J3Mgc2VlIHdoYXQgdGhlCm1haW50YWluZXJzIGhh
dmUgdG8gc2F5IHRob3VnaC4KCj4gVGVzdGVkLWJ5OiBSeWFuIExldW5nIDx1bnRpbHNjb3VyQHBy
b3Rvbm1haWwuY29tPiAjIFJLMzUyOCBOYW5vUGkgUjI4Uwo+Cj4gSSB0ZXN0ZWQgb24gRnJpZW5k
bHlFTEVDIE5hbm9QaSBSMjhTIChSSzM1MjgpIHdpdGggaW5kZXggb2YgMTAwIGFuZCB0aGUgTUFD
IGFkZHJlc3Mgd2FzIGV4YWN0bHkgYXMgZXhwZWN0ZWQuCgpUaGFua3MgYSBsb3QgZm9yIHRlc3Rp
bmchCgpCZXN0IHJlZ2FyZHMsCkFsZXhleQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
