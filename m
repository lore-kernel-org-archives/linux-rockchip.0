Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66A14606A330
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Nov 2026 21:26:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=QqMa+kmQ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=AKqtjcn9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=AGkO0lRCGwse1TgZ1JBMFGcdA37XGb/SCSrXObvywqQ=; b=QqMa+kmQNZ7MFV+DZPbbunyeyF
	cooygLnMJpLdbRDBm2Zm6QCb2ZX/GRNmi/dtkRThKR8oHI6MNJpJBwknuOpZR9uoozRVT+Sg74mVs
	l3FzROQ28SZftuHfVfczELDyOue/3bKJSS17RT3UiCbIEP21HN45/XHGi469Vy+TpzVmwkD6dJdg+
	9DW8s3GUcWdmYtR1IDZ0lPrckZB14i4+t2MABZxAJcKaV2Gkp41Oy3ikDnXevGAWVdeOFj6qoWNJh
	Z/vUBwox6cbrCcb3PNuaoHOd7vlUkR9dDowb6/7Q/XancryK9S1EEvLFuwE68zVWQeBCsLyEJlIBd
	wXw1f9MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRymg-0000000Ea8c-2B14;
	Fri, 13 Nov 2026 21:26:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRyme-0000000Ea7y-1b3d;
	Fri, 13 Nov 2026 21:26:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=14DbhITib14ppVX3i7Picll2u9OpRT8wBV6cw1FaJPg=; b=AKqtjcn9H5nJ/tb/KVjKAhGI/L
	6FHDvu1Aj51VzpM+SCyLiV+/0BrV/gxyS4fhEbHJMP3ms9/TUQ4ZGw/uNwga4LPjxV8/p3vEn2YkL
	TMkSrJEDq1rDTm4Z5oedrU7wQMQ+OLvF67lqIuaiiJkxAr4yNehWj191xEz0tdHRfad74DdfHm5u6
	aY2fvq0o5kloTw6OExdw6AmUFgG4fBTLwPMeBKvYg8u0mf5sKJctUAMHv5xTS0TV2nhYhdryNvVsq
	8/DEv4d4D+blQJR3R9kEA45UGOGXMWNXxYC4OXvcKNa8qAgQwUj1ZEj44d4nAk6zZFxMhVFD0QNOs
	ESQ1gGXw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>,
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Richard Cochran <richardcochran@gmail.com>, 1579567540@qq.com
Cc: Cunhao Lu <1579567540@qq.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 netdev@vger.kernel.org
Subject: Re: [PATCH v5 2/4] clk: rockchip: Add internal support for 24-bit fractional
 dividers
Date: Fri, 13 Nov 2026 22:25:55 +0100
Message-ID: <Yf6NfRPFTxKjDagKAm6hpw@sntech.de>
In-Reply-To: <20261030-add-board-ok3572-c-clk-v5-2-9a43403cb149@qq.com>
References: <20261030-add-board-ok3572-c-clk-v5-0-9a43403cb149@qq.com>
 <20261030-add-board-ok3572-c-clk-v5-2-9a43403cb149@qq.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261113_132608_524825_A5EB3D0F 
X-CRM114-Status: GOOD (  25.33  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGksCgoKc29ycnkgaXQgdG9vayBtZSBhIGJpdCB0byBnZXQgdG8gY2xvY2sgZHJpdmVyIHBhdGNo
ZXMgOi0pCgpBbSBGcmVpdGFnLCAzMC4gT2t0b2JlciAyMDI2LCAxMDo0Mzo1OCBNaXR0ZWxldXJv
cMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIEN1bmhhbyBMdSB2aWEgQjQgUmVsYXk6Cj4gRnJv
bTogRWxhaW5lIFpoYW5nIDx6aGFuZ3FpbmdAcm9jay1jaGlwcy5jb20+Cj4gCj4gU29tZSBSb2Nr
Y2hpcCBjbG9ja3Mgc3BsaXQgZWFjaCAyNC1iaXQgbnVtZXJhdG9yIGFuZCBkZW5vbWluYXRvciBi
ZXR3ZWVuCj4gYSBsb3cgcmVnaXN0ZXIgY29udGFpbmluZyAxNiBiaXRzIG9mIGVhY2ggdmFsdWUg
YW5kIGEgaGlnaCByZWdpc3Rlcgo+IGNvbnRhaW5pbmcgdGhlIHJlbWFpbmluZyA4IGJpdHMuCj4g
Cj4gQWRkIGFuIGludGVybmFsIFJvY2tjaGlwIGZyYWN0aW9uYWwtZGl2aWRlciBoZWxwZXIgYW5k
IGNsb2NrIGJyYW5jaCB0eXBlCj4gZm9yIHRoaXMgcmVnaXN0ZXIgbGF5b3V0LiBUaGlzIHByb3Zp
ZGVzIHRoZSBzdXBwb3J0IG5lZWRlZCBieSB0aGUgUkszNTcyCj4gYXVkaW8gZnJhY3Rpb25hbCBj
bG9ja3MuCgpQbGVhc2UgYWRkIGEgcGFyYWdyYXBoIGFib3V0IHRoZSAidjIiIG5hbWluZy4KSSBh
c3N1bWUgdGhlIHYyIGlzIGEgUm9ja2NoaXAgbmFtaW5nLCBiZWNhdXNlIHYxIHdhcyB0aGUgb3Ro
ZXIgb25lIHRoYXQKY291bGQgc3RpbGwgZml0IHRoZSByZWd1bGFyIGZyYW5jdGlvbmFsIGRpdmlk
ZXIuCgoKCj4gK3N0YXRpYyBpbmxpbmUgdTMyIGNsa19mZF92Ml9yZWFkbChzdHJ1Y3QgY2xrX2Zy
YWN0aW9uYWxfZGl2aWRlcl92MiAqZmQsCj4gKwkJCQkgIHZvaWQgX19pb21lbSAqcmVnKQo+ICt7
Cj4gKwlyZXR1cm4gcmVhZGwocmVnKTsKPiArfQo+ICsKPiArc3RhdGljIGlubGluZSB2b2lkIGNs
a19mZF92Ml93cml0ZWwoc3RydWN0IGNsa19mcmFjdGlvbmFsX2RpdmlkZXJfdjIgKmZkLAo+ICsJ
CQkJICAgIHZvaWQgX19pb21lbSAqcmVnLCB1MzIgdmFsKQo+ICt7Cj4gKwl3cml0ZWwodmFsLCBy
ZWcpOwo+ICt9CgoKd2h5IGRvIHdlIGhhdmUgdGhvc2U/IFRoZXkgZG8gbm90IHNlcnZlIGFueSBw
dXJwb3NlIEkgY2FuIHNlZS4KU28gcGxlYXNlIGp1c3QgdXNlIHJlYWRsIGFuZCB3cml0ZWwgZGly
ZWN0bHkgYXQgdGhlIGFwcHJvcHJpYXRlIHBsYWNlcy4KCgo+ICtzdGF0aWMgaW50IGNsa19mZF92
Ml9nZXRfZGl2aWRlcihzdHJ1Y3QgY2xrX2h3ICpodywgdW5zaWduZWQgbG9uZyByYXRlLAo+ICsJ
CQkJIHVuc2lnbmVkIGxvbmcgcGFyZW50X3JhdGUsCj4gKwkJCQkgdW5zaWduZWQgbG9uZyAqbSwg
dW5zaWduZWQgbG9uZyAqbikKPiArewo+ICsJc3RydWN0IGNsa19mcmFjdGlvbmFsX2RpdmlkZXJf
djIgKmZkID0gdG9fY2xrX2ZkX3YyKGh3KTsKPiArCXUzMiBmYWN0b3I7Cj4gKwo+ICsJaWYgKCFw
YXJlbnRfcmF0ZSkKPiArCQlyZXR1cm4gLUVJTlZBTDsKPiArCWlmICghcmF0ZSB8fCByYXRlID4g
cGFyZW50X3JhdGUpCj4gKwkJcmF0ZSA9IHBhcmVudF9yYXRlOwo+ICsKPiArCXJhdGlvbmFsX2Jl
c3RfYXBwcm94aW1hdGlvbihyYXRlLCBwYXJlbnRfcmF0ZSwKPiArCQkJCSAgICBHRU5NQVNLKGZk
LT5td2lkdGggLSAxLCAwKSwKPiArCQkJCSAgICBHRU5NQVNLKGZkLT5ud2lkdGggLSAxLCAwKSwK
PiArCQkJCSAgICBtLCBuKTsKPiArCj4gKwlpZiAoZmQtPmZsYWdzICYgQ0xLX0ZSQUNfRElWSURF
Ul9aRVJPX0JBU0VEKSB7Cj4gKwkJKCptKS0tOwo+ICsJCSgqbiktLTsKPiArCX0KCi4uLiBibGFu
ayBsaW5lIHBsZWFzZSAuLi4KCj4gKwlpZiAoISptICYmICEoZmQtPmZsYWdzICYgQ0xLX0ZSQUNf
RElWSURFUl9aRVJPX0JBU0VEKSkKPiArCQlyZXR1cm4gY2xrX2ZkX3YyX2dldF9sb3dfcmF0ZV9k
aXZpZGVyKGZkLCByYXRlLCBwYXJlbnRfcmF0ZSwgbSwgbik7CgouLi4gYmxhbmsgbGluZSBwbGVh
c2UgLi4uCgo+ICsJLyoKPiArCSAqIFdoZW4gY29tcGVuc2F0aW9uIHRoZSBmcmFjdGlvbmFsIGRp
dmlkZXIsCj4gKwkgKiB0aGUgWzE6MF0gYml0cyBvZiB0aGUgbnVtZXJhdG9yIHJlZ2lzdGVyIGFy
ZSBvbWl0dGVkLAo+ICsJICogd2hpY2ggd2lsbCBsZWFkIHRvIGEgbGFyZ2UgZGV2aWF0aW9uIGlu
IHRoZSByZXN1bHQuCj4gKwkgKiBUaGVyZWZvcmUsIGl0IGlzIHJlcXVpcmVkIHRoYXQgdGhlIG51
bWVyYXRvciBtdXN0Cj4gKwkgKiBiZSBhdCBsZWFzdCA0Lgo+ICsJICoKPiArCSAqIE5vdGUgdGhh
dCB0aGVyZSBhcmUgc29tZSBleGNlcHRpb25zIGhlcmU6Cj4gKwkgKiBJZiB0aGVyZSBpcyBhbiBl
dmVuIGZyYWMgZGl2LCB3ZSBuZWVkIHRvIGtlZXAgdGhlIG9yaWdpbmFsCj4gKwkgKiBudW1lcmF0
b3IoPDQpIGFuZCBkZW5vbWluYXRvci4gT3RoZXJ3aXNlLCBpdCBtYXkgY2F1c2UgdGhlCj4gKwkg
KiBpc3N1ZSB0aGF0IHRoZSBkdXR5IHJhdGlvIGlzIG5vdCA1MCUuCj4gKwkgKi8KPiArCWlmICgq
bSA8IDQgJiYgKm0gIT0gMCkgewo+ICsJCWlmICgqbiAlIDIgPT0gMCkKPiArCQkJZmFjdG9yID0g
MTsKPiArCQllbHNlCj4gKwkJCWZhY3RvciA9IERJVl9ST1VORF9VUCg0LCAqbSk7Cj4gKwo+ICsJ
CWlmICgqbSA+IEdFTk1BU0soZmQtPm13aWR0aCAtIDEsIDApIC8gZmFjdG9yIHx8Cj4gKwkJICAg
ICpuID4gR0VOTUFTSyhmZC0+bndpZHRoIC0gMSwgMCkgLyBmYWN0b3IpIHsKPiArCQkJaWYgKGZk
LT5mbGFncyAmIENMS19GUkFDX0RJVklERVJfWkVST19CQVNFRCkKPiArCQkJCXJldHVybiAtRUlO
VkFMOwo+ICsJCQlyZXR1cm4gY2xrX2ZkX3YyX2dldF9sb3dfcmF0ZV9kaXZpZGVyKGZkLCByYXRl
LCBwYXJlbnRfcmF0ZSwgbSwgbik7Cj4gKwkJfQo+ICsKPiArCQkqbiAqPSBmYWN0b3I7Cj4gKwkJ
Km0gKj0gZmFjdG9yOwo+ICsJfQo+ICsKPiArCXJldHVybiAwOwo+ICt9Cj4gKwoKWy4uLl0KCj4g
Kwo+ICtzdGF0aWMgY29uc3Qgc3RydWN0IGNsa19vcHMgY2xrX2ZyYWN0aW9uYWxfZGl2aWRlcl9v
cHNfdjIgPSB7Cj4gKwkucmVjYWxjX3JhdGUgPSBjbGtfZmRfdjJfcmVjYWxjX3JhdGUsCj4gKwku
ZGV0ZXJtaW5lX3JhdGUgPSBjbGtfZmRfdjJfZGV0ZXJtaW5lX3JhdGUsCj4gKwkuc2V0X3JhdGUg
PSBjbGtfZmRfdjJfc2V0X3JhdGUsCj4gK307Cj4gKwo+ICtzdGF0aWMgc3RydWN0IGNsa19odyAq
Y2xrX2h3X3JlZ2lzdGVyX2ZyYWN0aW9uYWxfZGl2aWRlcl92MihzdHJ1Y3QgZGV2aWNlICpkZXYs
CgptYXliZSBhZGFwdCB0aGUgZnVuY3Rpb24gbmFtZS4KRnVuY3Rpb24gYWJvdmUgYWJicmV2aWF0
ZWQgdGhpbmdzIHRvCgpjbGtfZmRfdjJfc29tZXRoaW5nLCBzbyBuYW1pbmcgdGhpcyBjbGtfaHdf
cmVnaXN0ZXJfZmRfdjIoKQptaWdodCBtYWtlIHRoYXQgbGluZSBsZXNzIHVud2llbGR5PwoKCgpU
aGFua3MKSGVpa28KCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
