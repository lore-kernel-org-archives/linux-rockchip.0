Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F1D606A8A2
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 09:56:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=U2GTyYyQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=Xic6RRQk
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=OF4GW17tlqfOgNjUktE+R489ViWyq1GBNQIFNjBupp4=; b=U2GTyYyQUL/1MQGWI2j2ETioTN
	ooP49aY3SlXpcYjj5SD37Gerfc7dkVtdIqu25MGPWMvcOHy/7lp3+uu+LbzKpUC58yZmNR10VdApj
	D9POYrHJq1CGCeCvhn/4a/STtxH5k1nZmVw8GunW/5VO4bMMiovQjX7leRkNkWeJFlqNnc60w5mcC
	eafwsTBUXNU40r7Co9K5VnG/fc+xG5eUzfY6o4bHwMmYojbSO8Kk1IWCvciJMys8/XWLfiAJaZPNS
	7oFsmV8AfpRo9APiuAFPO9l/kG45+MlF/inAIyfoDUpoOkC/J12k5tFciewuSj8mwlPt15MUzzkfm
	RUziK/Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRRY2-00000009RID-1RJ1;
	Thu, 12 Nov 2026 09:56:50 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRRXr-00000009RDs-1nHL;
	Thu, 12 Nov 2026 09:56:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=z6JTZh8vNDGRD9x0jZi5MafAeLnjKMbQyD95TlqG/OM=; b=Xic6RRQkqxB4/7hx0qfNs4vPAH
	6jnUKY/DtcS/rcmP+Jzd58MEZw/xE2ekU9owR/e2/PLQxcceHWCLf+UGK5uA0mtExyxxy3DIPjSOw
	YPrePb+ZSdV2E8o+LGOnvRB/DTJU7cT2q58WZeKj4bTgDkCxS4d+1UVLGKKwGeeE7sE5Hg1Tm1J/7
	uxKwRBcuovEWZK5ny7FaX1SqEeLFaMVk3O4ADPVh8Lwt/TiOMwnLiB+X8VB1hqFiZ+I13/Ahz5iGv
	uTgJONfjj/MeC49xcJWWa6B83ezlAW5JgiA0I8htiX85JVt4TeNVfl5pUsQtE2wO7gyzTaoo+gjsP
	C/EoR3Cw==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, aiyengar1990@gmail.com
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Arun Iyengar <aiyengar1990@gmail.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Mark the Orange Pi 5/5B Type-C port
 self-powered
Date: Thu, 12 Nov 2026 10:56:32 +0100
Message-ID: <lAAxUnzGTXWSlQTm8PmFcg@sntech.de>
In-Reply-To: <20261112-opi5-typec-self-powered-v2-1-751906d65b70@gmail.com>
References: <20261112-opi5-typec-self-powered-v2-1-751906d65b70@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_015639_560887_9D19A39C 
X-CRM114-Status: GOOD (  13.74  )
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

QW0gRG9ubmVyc3RhZywgMTIuIE5vdmVtYmVyIDIwMjYsIDA5OjI1OjEwIE1pdHRlbGV1cm9ww6Rp
c2NoZSBOb3JtYWx6ZWl0IHNjaHJpZWIgQXJ1biBJeWVuZ2FyIHZpYSBCNCBSZWxheToKPiBGcm9t
OiBBcnVuIEl5ZW5nYXIgPGFpeWVuZ2FyMTk5MEBnbWFpbC5jb20+Cj4gCj4gVGhlIGJvYXJkIGlz
IHBvd2VyZWQgZnJvbSBpdHMgc2VwYXJhdGUgcG93ZXItb25seSBVU0ItQyBpbnB1dC4gVGhlCj4g
RlVTQjMwMiBwb3J0J3MgVkJVUyBjb21lcyBmcm9tIHZjYzV2MF9zeXMgdGhyb3VnaCBhIGxvYWQg
c3dpdGNoLCBzbyB0aGUKPiBib2FyZCBuZXZlciBydW5zIGZyb20gdGhpcyBwb3J0J3MgVkJVUy4K
PiAKPiBXaXRob3V0IHNlbGYtcG93ZXJlZCwgdGNwbSBrZWVwcyBScCBvbiBDQyBkdXJpbmcgUE9S
VF9SRVNFVCAoZXJyb3IKPiByZWNvdmVyeSksIGJlY2F1c2Ugb3BlbmluZyBDQyBvbiBhIHBvcnQt
cG93ZXJlZCBkZXZpY2Ugd291bGQgcmVtb3ZlIGl0cwo+IG93biBzdXBwbHkuIFdpdGggc2VsZi1w
b3dlcmVkLCB0aGUgcG9ydCBvcGVucyBDQyBmb3IgdEVycm9yUmVjb3ZlcnkKPiB3aGVuZXZlciBp
dCByZXNldHMsIGluY2x1ZGluZyBhdCBib290LiBBIHBhcnRuZXIgbGVmdCBpbiBhIHN0YWxlIHN0
YXRlCj4gYnkgYSB3YXJtIHJlYm9vdCB0aGVuIHNlZXMgYSByZWFsIGRldGFjaC4KPiAKPiBTaWdu
ZWQtb2ZmLWJ5OiBBcnVuIEl5ZW5nYXIgPGFpeWVuZ2FyMTk5MEBnbWFpbC5jb20+Cj4gLS0tCj4g
VGhpcyB3YXMgcGF0Y2ggMyBvZiB0aGUgc2VyaWVzICJ1c2I6IHR5cGVjOiBGaW5kIGEgVHlwZS1D
IHBhcnRuZXIKPiBhZnRlciBhIHdhcm0gcmVib290IG9uIHRoZSBPcmFuZ2UgUGkgNSI7IGl0IGlz
IHNwbGl0IG91dCBvZiB2MiBvZiB0aGF0Cj4gc2VyaWVzIHNvIHRoYXQgaXQgZ29lcyB0aHJvdWdo
IHRoZSBSb2NrY2hpcCB0cmVlLiBJdCBkb2VzIG5vdCBkZXBlbmQgb24KPiB0aGF0IHNlcmllcyB0
byBidWlsZCwgYnV0IHdpdGhvdXQgaXRzIHRjcG0gcGF0Y2ggKCJ1c2I6IHR5cGVjOiB0Y3BtOgo+
IERvbid0IGN1dCBhIHBlbmRpbmcgc3RhdGUgZGVsYXkgc2hvcnQgb24gYSByZS1xdWV1ZSIgWzFd
KSB0aGUgb3Blbi1DQwo+IHBlcmlvZCBhdCBib290IGlzIGN1dCBzaG9ydC4KCkFzIHlvdSBkZXNj
cmliZSB0aGlzIGFzIGZpeGluZyBhIHN0YWxlIHN0YXRlIGFjY3Jvc3MgcmVib290cywgZG9lcwph
cHBseWluZyB0aGlzIGJlZm9yZSB0aGUgdGNwbSBwYXRjaCBkZWdyYWRlIGN1cnJlbnQgZnVuY3Rp
b25hbGl0eSBvZgp0aGUgZGV2aWNlPwoKClRoYW5rcwpIZWlrbwoKCgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
