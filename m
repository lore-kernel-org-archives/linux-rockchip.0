Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9200606A32C
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Nov 2026 17:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uuBVz1AB;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=LdjTITSv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=S+1x4EBEpoKR8mud5xjzp5O1EBcKkWmTQ8rBQFMSkq4=; b=uuBVz1ABk0RCHVVrac+ZdTLUTv
	gw9H0dw2HxR4Y7BA3HiB+mQVSnB6WOXfjt4RMCWUfBdkU5NHJkd5JbXWTyY13RWGlUBfVNkIJLev1
	BC5gIow94UtuZooiz9l/fAU3LFjtnNVTWED2rM7o5Tm73sb3fs0CJceb2zvkAXn4WlEiw8BeiUvDe
	KOu0ifuTYHUXCQnEY8q5D32QzkpUHGUIGGZ+WZlRE3ESfr+K4U979NvKkFjm2Ul/TxD47YMBtlPuQ
	+qjzziJnE0KMcm/zb7Ide8iLd+0SbVypFT1wUCNpcqs7G0bFB51j85Zf70/qL79EKVEFGIQUdWvLX
	yFQFIGZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOHtP-00000003Flh-2wPV;
	Tue, 03 Nov 2026 17:01:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOHtL-00000003Fl9-3iWD
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Nov 2026 17:01:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=ek9smadtLyva7J0eFk6xYHOFlCqPp9k7Ck6t1GYbu0s=; b=LdjTITSv1I6D7UC1Qub88SVZvI
	Hb90AQA9XrPIUiMSVuhEjbBgReVtl3UQxNgT3At+Md6wz4AvwCKfEY0+g0xfSxvsfurYp49VFXgfi
	WBEAISPOtxRDKc6c37EBQrWpvSZuFaT6vGco5L+ucUnMd8OjTC5gS/8PWpkqELc21dpRPi/1lM5q4
	LWMJ/oh4v/C9X4qdYnM/SrVjjl0loixpr3Gl7m/AHmZ4hxTIMlhSKCy/fPqCxy7eFECWW1656n2r3
	iT3PXvmceFeDntihwjdDi9QjEjyEA3aeGSA15jFZYOy5invJGeQe+uHQI303ZjmHhymS6Zc/klBqO
	lgefN9+Q==;
From: Heiko =?UTF-8?B?U3TDvGJuZXI=?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: devicetree@vger.kernel.org, shawn.lin@rock-chips.com,
 diederik@cknow-tech.com, michael.riesch@collabora.com, conor+dt@kernel.org,
 krzk+dt@kernel.org, robh@kernel.org, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: timer: rockchip: Add rk3568 compatible
Date: Tue, 03 Nov 2026 18:01:37 +0100
Message-ID: <3661431.qSoW2BAyJ8@diego>
In-Reply-To: <20261103153144.343764-2-macroalpha82@gmail.com>
References: <20261103153144.343764-1-macroalpha82@gmail.com>
 <20261103153144.343764-2-macroalpha82@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261103_090147_950757_F9EE7DE6 
X-CRM114-Status: UNSURE (   8.63  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-13.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgQ2hyaXMsCgpBbSBEaWVuc3RhZywgMy4gTm92ZW1iZXIgMjAyNiwgMTY6MzE6NDMgTWl0dGVs
ZXVyb3DDpGlzY2hlIE5vcm1hbHplaXQgc2NocmllYiBDaHJpcyBNb3JnYW46Cj4gRnJvbTogQ2hy
aXMgTW9yZ2FuIDxtYWNyb21vcmdhbkBob3RtYWlsLmNvbT4KPiAKPiBBZGQgY29tcGF0aWJsZSBz
dHJpbmcgZm9yIFJvY2tjaGlwIFJLMzU2OCB0aW1lci4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBDaHJp
cyBNb3JnYW4gPG1hY3JvbW9yZ2FuQGhvdG1haWwuY29tPgo+IC0tLQo+ICBEb2N1bWVudGF0aW9u
L2RldmljZXRyZWUvYmluZGluZ3MvdGltZXIvcm9ja2NoaXAscmstdGltZXIueWFtbCB8IDEgKwoK
UGxlYXNlIG1ha2Ugc3VyZSB0byBjaGVjayBnZXRfbWFpbnRhaW5lcnMgdG8gY2F0Y2ggYWxsIG5l
ZWRlZCByZWNpcGllbnRzLgoKIyBzY3JpcHRzL2dldF9tYWludGFpbmVyLnBsIC1mIERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy90aW1lci9yb2NrY2hpcCxyay10aW1lci55YW1sCgp5
b3UncmUgZXNwZWNpYWxseSBtaXNzaW5nIHRoZSBjbG9ja3NvdXJjZSBtYWludGFpbmVyczoKICAg
IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BrZXJuZWwub3JnPiAobWFpbnRhaW5lcjpD
TE9DS1NPVVJDRSwgQ0xPQ0tFVkVOVCBEUklWRVJTLGluIGZpbGUpCiAgICBUaG9tYXMgR2xlaXhu
ZXIgPHRnbHhAa2VybmVsLm9yZz4gKG1haW50YWluZXI6Q0xPQ0tTT1VSQ0UsIENMT0NLRVZFTlQg
RFJJVkVSUykKCmFuZCBzb21lIGFkZGl0aW9uYWwgbGlzdHM6CiAgICBsaW51eC1rZXJuZWxAdmdl
ci5rZXJuZWwub3JnIChvcGVuIGxpc3Q6Q0xPQ0tTT1VSQ0UsIENMT0NLRVZFTlQgRFJJVkVSUykK
ICAgIGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZyAobW9kZXJhdGVkIGxpc3Q6
QVJNL1JvY2tjaGlwIFNvQyBzdXBwb3J0KQoKdGhlIGNsb2Nrc291cmNlIHBhcnQgZG9lcyBub3Qg
c2VlbSB0byBoYXZlIGEgZGVkaWNhdGVkIGxpc3QsIHNvCmxpbnV4LWtlcm5lbCBzaG91bGQgYmUg
aW5jbHVkZWQuCgoKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
