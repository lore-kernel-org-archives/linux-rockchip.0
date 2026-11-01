Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DEB5606A325
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 14:06:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=1JazunrU;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=f3h37cP4
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Feo4Qo6Bsy/GbXRl2GZ+O13UTtamTOAtmvedkPOAQqc=; b=1JazunrUtaY6GCz20onLNyaLvv
	cPGHqgN+AgB3TORbjfEgiAYtfw8bnaKFnmE7HdQ3qpInOms39KTOKbokUbRbvZO8KgtA/CPiLOZtV
	r958Q8JVqwBG2oE+zz/Iw962vaem+u/c/70138Xafi4JY8LkqY8pGzwUJ+UvC8i/Gcr85BESAb584
	gYDMGg8WR13XyHTDAGFYtCyda4vNxH0wmzKh+EZcoYCBI62HFvVjYBLqkK/JMI6Db0K89U/2D4hMG
	rZpZSz8PHWUlutEmibvfRuX2y/1xqyxjmv9AgXW6zhGECtVE02nDp8agKvFAuWLzdQ67EsI0b/50v
	tgSJ6B0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNWC9-0000000EZCV-1O48;
	Sun, 01 Nov 2026 14:06:01 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNWC6-0000000EZBn-3YRN;
	Sun, 01 Nov 2026 14:06:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=Pb2tgUvSCnXik9d7e+k7c23WDjV6nr8u+NYxLcvKygc=; b=f3h37cP4p7Is2X4TRLMrgHrtFy
	8sv5yL/fdmgiuWxyCUNn/Q2YIlV4y8NA0atk/aDivmvAyaVqAp7XH7aAkA5zqfOO+dSrACQRF3XsZ
	qGGMuYBkVlCejDDQYEJUWR51EmubT57Ehstj+sLN8/Jj1m32JRG1PQoXarqjjOrkKW0DcyEVHtkIv
	tqKvrVkZCnt4c32AYEV3eTYZ9LI04N+DCAflaTg6OY7z8BlckXcpiBwcyVYVt/o7/RbMcBUqq0Dyn
	/r0RtfZyuvu51bg2EEm6VqYQC0kHQy0aQCFBFCQE1XyW8R6zgyMSs9w5ZgHR29ToiocQUs5AfiJJ/
	TQxYC2dw==;
From: Heiko Stuebner <heiko@sntech.de>
To: Coia Prant <coiaprant@gmail.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>,
 David Heidelberg <david@ixit.cz>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Coia Prant <coiaprant@gmail.com>
Subject: Re: [PATCH v12 1/3] arm64: dts: rockchip: rk3568: add XPCS and fixed-clock
 nodes
Date: Sun, 01 Nov 2026 15:05:43 +0100
Message-ID: <2977688.AiC22s8V5E@phil>
In-Reply-To: <20261023053548.1595033-2-coiaprant@gmail.com>
References: <20261023053548.1595033-1-coiaprant@gmail.com>
 <20261023053548.1595033-2-coiaprant@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261101_060559_049320_5AF0F05C 
X-CRM114-Status: GOOD (  21.02  )
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

SGksCgpBbSBGcmVpdGFnLCAyMy4gT2t0b2JlciAyMDI2LCAwNzozNTo0NiBNaXR0ZWxldXJvcMOk
aXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIENvaWEgUHJhbnQ6Cj4gVGhlIFJLMzU2OCBTb0MgaW50
ZWdyYXRlcyBhIFN5bm9wc3lzIERlc2lnbldhcmUgWFBDUyB0aGF0IHByb3ZpZGVzCj4gdGhlIFBo
eXNpY2FsIENvZGluZyBTdWJsYXllciBmb3IgMTAwMEJBU0UtWCwgU0dNSUksIGFuZCBRU0dNSUkK
PiBpbnRlcmZhY2VzIHZpYSBpdHMgZm91ciBNSUkgcG9ydHMuICBBZGQgdGhlIFhQQ1MgZGV2aWNl
IG5vZGUgdG8gdGhlCj4gU29DIGRldmljZSB0cmVlLgo+IAo+IFRoZSBYUENTIGRldmljZSBpcyBh
Y2Nlc3NlZCB2aWEgdGhlIEFQQjMgYnVzIGF0IDB4ZmRhMDAwMDAgYW5kCj4gcmVxdWlyZXMgdGhl
IENTUiBjbG9jayAoUENMS19YUENTKSBmb3IgcmVnaXN0ZXIgYWNjZXNzIGFuZCB0aGUgRUVFCj4g
Y2xvY2sgKENMS19YUENTX0VFRSkgZm9yIEVuZXJneSBFZmZpY2llbnQgRXRoZXJuZXQgb3BlcmF0
aW9uLiAgVGhlCj4gUERfUElQRSBwb3dlciBkb21haW4gbXVzdCBiZSBlbmFibGVkIGJlZm9yZSBh
bnkgcmVnaXN0ZXIgYWNjZXNzLgo+IAo+IEFsc28gYWRkIHR3byBmaXhlZC1jbG9jayBub2RlcyAo
Y2xvY2steHBjcy1nbWFjMCBhbmQgY2xvY2steHBjcy1nbWFjMSwKPiBsYWJlbGxlZCBjbGtfZ21h
YzBfeHBjc19taWkgYW5kIGNsa19nbWFjMV94cGNzX21paSkgcHJvdmlkaW5nIHRoZQo+IDEyNSBN
SHogcmVmZXJlbmNlIGNsb2NrIGZvciB0aGUgR01BQ3Mgd2hlbiBvcGVyYXRpbmcgd2l0aCBYUENT
LiAgVGhlaXIKPiBjbG9jay1vdXRwdXQtbmFtZXMgbWF0Y2ggdGhlIENSVSBtdXggcGFyZW50IG5h
bWVzIGluIGNsay1yazM1NjguYywgc28KPiBib2FyZHMgY2FuIHJlcGFyZW50IFNDTEtfR01BQzBf
UlhfVFggLyBTQ0xLX0dNQUMxX1JYX1RYIHRocm91Z2gKPiBhc3NpZ25lZC1jbG9jay1wYXJlbnRz
Lgo+IAo+IFRoZSBYUENTIG5vZGUgaXMgZGlzYWJsZWQgYnkgZGVmYXVsdCBhbmQgbXVzdCBiZSBl
bmFibGVkIGF0IHRoZSBib2FyZAo+IGxldmVsIHdoZW4gMTAwMEJBU0UtWC9TR01JSS9RU0dNSUkg
aXMgaW4gdXNlLiAgVGhlIGZpeGVkLWNsb2NrIG5vZGVzCj4gYXJlIGFsd2F5cyBwcmVzZW50IGFu
ZCBkbyBub3QgaGF2ZSBhIHN0YXR1cyBwcm9wZXJ0eSwgYXMgdGhleSBhcmUKPiBzdGF0aWMgY2xv
Y2sgc291cmNlcy4KPiAKPiBUaGUgWFBDUyBub2RlIHJlcXVpcmVzIGEgcmVmZXJlbmNlIHRvIHRo
ZSBhcHByb3ByaWF0ZSBOYW5lbmcgQ29tYm8gUEhZCj4gdmlhIHRoZSBwaHlzIHByb3BlcnR5LiAg
ZHRic19jaGVjayBvbmx5IHZhbGlkYXRlcyByZXF1aXJlZCBwcm9wZXJ0aWVzCj4gZm9yIGVuYWJs
ZWQgbm9kZXMsIHNvIHRoZSBTb0MgZHRzaSBkb2VzIG5vdCBwcm92aWRlIHBoeXM6IGJvYXJkcyB0
aGF0Cj4gZW5hYmxlIHRoZSBYUENTIG11c3Qgc3VwcGx5IGl0LCBzaW5jZSB0aGUgU2VyRGVzIGxp
bmsgaXMgYSBib2FyZC1sZXZlbAo+IGRlc2lnbiBjaG9pY2UgKGNvbWJwaHkxIG9uIHNvbWUgYm9h
cmRzLCBjb21icGh5MiBvbiBvdGhlcnMpLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENvaWEgUHJhbnQg
PGNvaWFwcmFudEBnbWFpbC5jb20+Cj4gLS0tCj4gIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTY4LmR0c2kgfCAyMyArKysrKysrKysrKysrKysrKysrKysrKwo+ICAxIGZpbGUgY2hh
bmdlZCwgMjMgaW5zZXJ0aW9ucygrKQo+IAo+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9y
azM1NjguZHRzaQo+IGluZGV4IDNiYzY1M2YwMjdmMWYuLjIwYTcyNzg1YWRiYzIgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjguZHRzaQo+ICsrKyBiL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LmR0c2kKPiBAQCAtOCw2ICs4LDIwIEBA
Cj4gIC8gewo+ICAJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgiOwo+ICAKPiArCWNsa19n
bWFjMF94cGNzX21paTogY2xvY2steHBjcy1nbWFjMCB7Cj4gKwkJY29tcGF0aWJsZSA9ICJmaXhl
ZC1jbG9jayI7Cj4gKwkJY2xvY2stZnJlcXVlbmN5ID0gPDEyNTAwMDAwMD47Cj4gKwkJY2xvY2st
b3V0cHV0LW5hbWVzID0gImNsa19nbWFjMF94cGNzX21paSI7Cj4gKwkJI2Nsb2NrLWNlbGxzID0g
PDA+Owo+ICsJfTsKPiArCj4gKwljbGtfZ21hYzFfeHBjc19taWk6IGNsb2NrLXhwY3MtZ21hYzEg
ewo+ICsJCWNvbXBhdGlibGUgPSAiZml4ZWQtY2xvY2siOwo+ICsJCWNsb2NrLWZyZXF1ZW5jeSA9
IDwxMjUwMDAwMDA+Owo+ICsJCWNsb2NrLW91dHB1dC1uYW1lcyA9ICJjbGtfZ21hYzFfeHBjc19t
aWkiOwo+ICsJCSNjbG9jay1jZWxscyA9IDwwPjsKPiArCX07Cj4gKwoKdGhlc2UgY2xvY2tzIGRv
bid0IGJlbG9uZyBoZXJlLgoKV2hlbiB5b3UgcGxhY2UgdGhlc2Ugbm9kZXMgaW4gdGhlIG1haW4s
IHRoZXkgc2VlbSB0byBjb21lIG91dCBvZgp0aGluIGFpciwgd2hpbGUgdGhhdCBtaWdodCBiZSB0
cnVlIGZvciBzb21lIGJvYXJkcywgdGhhdCB0aGV5CmhhdmUgZGVkaWNhdGVkIG9zY2lsbGF0b3Jz
IGZvciB0aGF0LCB0aGlzIHdpbGwgbGlrZWx5IG5vdCBiZSB0cnVlCmZvciBhbGwuCgpTbyB0aGVz
ZSBzaG91bGQgYmUgZGVmaW5lZCBpbiB0aGUgYm9hcmQgZHRzLCB0byBtYXRjaCB0aGUgYWN0dWFs
CmhhcmR3YXJlLgoKCkhlaWtvCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
