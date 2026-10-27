Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB40606A31A
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Oct 2026 10:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bmEydzsU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=dzX2nS9D
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=7hTA+CduC25i7AK7EoYZAYA2iHU66/yprtEa7dbF9Ec=; b=bmEydzsU8bSoxsJVpg6mjCCYst
	5qBd2PzeRyC4jjBQ74p7LJUbjDwxoeue9Ht97jrjXlncxfm50MhL3tMhyVwZlbljRGDbeLoTQyPuF
	CAeaMIEcCtYXAdg51gTR6K78vE4GPdnvAoJDNs5IMMplVWUkOgjK5mqVPrrne++VYOzRuFY1VeXI9
	f9AE6Xn6TXxBRJdn/O6/73h0AFE+Cez6mrhgmnTEdYs+yPGRgb2lf1UPgllJknGz1rdbtpxTlsU4h
	s+H6tzK3/4N+XYlF+ZJ664uo8C43+4NYxiwBSt8e7NoeJ5UO5xtnphpGVTmAI92RnYkz0d5BkIFE6
	Yun/RrcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLefB-00000004KU0-2ZC8;
	Tue, 27 Oct 2026 10:44:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLef8-00000004KTT-3T8o;
	Tue, 27 Oct 2026 10:44:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=EmwVVNfWTX/oFCv0ig9mplNZI03jXLrvbbZUZU4TCdw=; b=dzX2nS9D8BTfbltg7sf8EyWnIF
	YR5/lR8p2o7W4dSnji19TWCRsn1H6oc6EmAvEpiz+FBLQKDWeEgI7pTHnlTtIvp1nsnLXX8UVC2ft
	IPwf/6y30bWKyAuWnlAW4wtOf/pNr9jhSZ77jBW65spt2KshPXsdUzelQxnGT8T88QeTnipw4Ommm
	Hy1HiU7KeYrnWfYkjaQczWONxNwSpZjyJ/IYOSkv1vMtYOGqCz6QPQkkXX0HUiPo0VGPzSN/v3uao
	9gQc8Vy2Lgs9IxG+6H8yrUt8Tt+mHDKwYtFuFylXHSJtnAQEyzYFucOGzx988/fa3z7gsfQ/MCXw2
	/RfziD/Q==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: Cunhao Lu <1579567540@qq.com>, Krzysztof Kozlowski <krzk@kernel.org>
Cc: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Richard Cochran <richardcochran@gmail.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: clock: rockchip: Add RK3572 CRU
Date: Tue, 27 Oct 2026 11:43:56 +0100
Message-ID: <3011736.yaVYbkx8dN@diego>
In-Reply-To: <20261027-vagabond-gabby-caracara-4edabe@quoll>
References: <20261026-add-board-ok3572-c-clk-v3-0-dbabfa39d692@qq.com>
 <20261026-add-board-ok3572-c-clk-v3-1-dbabfa39d692@qq.com>
 <20261027-vagabond-gabby-caracara-4edabe@quoll>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_034414_886599_26F25C67 
X-CRM114-Status: GOOD (  13.55  )
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
X-Spam-Status: No, score=-9.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

QW0gRGllbnN0YWcsIDI3LiBPa3RvYmVyIDIwMjYsIDExOjE3OjA4IE1pdHRlbGV1cm9ww6Rpc2No
ZSBOb3JtYWx6ZWl0IHNjaHJpZWIgS3J6eXN6dG9mIEtvemxvd3NraToKPiBPbiBNb24sIE9jdCAy
NiwgMjAyNiBhdCAwMjo1Njo0N1BNICswODAwLCBDdW5oYW8gTHUgd3JvdGU6Cj4gPiBGcm9tOiBF
bGFpbmUgWmhhbmcgPHpoYW5ncWluZ0Byb2NrLWNoaXBzLmNvbT4KPiA+IAo+ID4gVGhlIFJLMzU3
MiBDUlUgdXNlcyB0aGUgUE1VMCBHUkYgZm9yIHRoZSBBVVBMTCByZWZlcmVuY2UgbXV4Lgo+ID4g
RGVzY3JpYmUgdGhlIGNvbnRyb2xsZXIgYW5kIGRlZmluZSBpdHMgY2xvY2sgYW5kIHJlc2V0IElE
cy4KPiA+IAo+ID4gU2lnbmVkLW9mZi1ieTogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1j
aGlwcy5jb20+Cj4gPiAKPiA+IC0gRG9jdW1lbnRlZCB0aGUgeGluMjRtIGlucHV0Lgo+ID4gLSBN
YWRlIHRoZSBQTVUwIEdSRiBwaGFuZGxlIHJlcXVpcmVkLgo+ID4gLSBVcGRhdGVkIHRoZSBleGFt
cGxlLgo+ID4gLSBDbG9zZWQgdGhlIHJlc2V0IElEIGdhcCB3aGlsZSBwcmVzZXJ2aW5nIGVhY2gg
bmFtZWQgcmVzZXQncyByZWdpc3Rlcgo+ID4gICBtYXBwaW5nLgo+ID4gLSBSZW1vdmVkIENMS19O
Ul9DTEtTIGZyb20gdGhlIGNsb2NrIGJpbmRpbmcuCj4gPiAKPiAKPiBBbGwgeW91ciBwYXRjaGVz
IHNlZW1zIHRvIGhhdmUgb2RkIGNvbW1pdCBtc2cuCj4gCj4gPiBTaWduZWQtb2ZmLWJ5OiBDdW5o
YW8gTHUgPDE1Nzk1Njc1NDBAcXEuY29tPgoKV2l0aCBjb2RlIG9yaWdpbmF0aW5nIGluIHRoZSB2
ZW5kb3Iga2VybmVsLCBpdCBpcyBuaWNlIHRvIGtub3cgd2hhdCBjaGFuZ2VkLApidXQgSSBndWVz
cyB0aGVyZSBpcyBhIHRyYWRlb2ZmIGJldHdlZW4gYnJldml0eSBhbmQgbW9yZSBkZXRhaWxzLgoK
SSBndWVzcyB0aGlzIGNvdWxkIGJlIHNob3J0ZWQgdG8gc29tZXRoaW5nIGxlc3MgdmVyYm9zZSwg
bGlrZQoKKysrKysrKysrKysrKwpTaWduZWQtb2ZmLWJ5OiBFbGFpbmUgWmhhbmcgPHpoYW5ncWlu
Z0Byb2NrLWNoaXBzLmNvbT4KW2FkYXB0ZWQgdG8gbWFpbmxpbmUgcm9ja2NoaXAgY2xvY2sgYW5k
IHJlc2V0IGhhbmRsaW5nICh4aW4yNG0gaW5wdXQsCiAgZG9uJ3QgaW50cm9kdWNlIENMS19OUl9D
TEtTLCBldGMgXQpTaWduZWQtb2ZmLWJ5OiBDdW5oYW8gTHUgPDE1Nzk1Njc1NDBAcXEuY29tPgor
KysrKysrKysrKysrCgoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
