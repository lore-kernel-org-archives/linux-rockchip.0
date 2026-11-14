Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13DA9606A32D
	for <linux-rockchip@archiver.kernel.org>; Sat, 14 Nov 2026 11:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=K3Srkhe6;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=bauvin.com header.i=alexis@bauvin.com header.a=rsa-sha256 header.s=s1-ionos header.b=hKQBMCt6
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:Cc:To:From:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Unsubscribe-Post:List-Owner;
	bh=92lIqfDqaBsFlsgDYRbxWkFH52gj5rD+T7gCeqeR7fY=; b=K3Srkhe6B3PlB2yIdtuYvIsDAG
	MEj2jMKvax97rhvg9XzztcwwVws9fpHhwFtuks5uQK4Nsx4GHLzqn6COTuBrHkq1uMKj2sWauqaP0
	iRZfR1T/BmjCbpCrKEo0ptrUwhkTWhg94XEPGEVQSd+4YlRTQFoaoXkBCosQdE8yWDtLj9NZEDRVZ
	2u6GntGXbAuXmtsZWi/PgCmssfyepdZHPPJnyDTQqt1nySbkyrapNh5YXVm2GOOhH4DaFtHDu5Ujt
	TGOC9K7FdkVwo31qsZ9nsSIkmhZ73cnl/ZAUWG8+hyOg/V5m9b3vFhq2l1GqIPwr1RkJdPszGZIp3
	6LbIIN1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC7I-0000000Fuht-3Dpx;
	Sat, 14 Nov 2026 11:40:20 +0000
Received: from mout.kundenserver.de ([212.227.126.134])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xSC7F-0000000Fuh6-14rz
	for linux-rockchip@lists.infradead.org;
	Sat, 14 Nov 2026 11:40:19 +0000
DKIM2-Signature: i=1; m=1; t=1794656412;
 mf=PGFsZXhpc0BiYXV2aW4uY29tPg==;
 rt=PGxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmc+;
 d=bauvin.com;
 s=s1-ionos:rsa-sha256:ArFmccZjoiAlRF2oOZqhMUJEwFwe
   7fyaMfVPFwnpAtV1Gv9SMJOkiGb2C3YGH2S7Mu0mHVl7sQUzenKTw0W3w5iV9aQBq3aRVnM0pRN
   YTbRb9iwM+qxHbSgJzZswXlzc9iQDpeqRKoZxQUD8yCsFd/y1iCkDRPSAlbxyGGFSSp8IEqtYgJ
   vgBhd0IEvIajGoVQ8ZJLXYKrF8oFAJI4m/ObY5tHgeO9QBZhvsrQQPXCUNBlZUXONzczOo2ziqN
   ShU3SWscnOexu9jI1StM97kfSJWmmixjqD3TPWOEL4L95RLIwIHVocCAxIIksQM9NlRQP0tf5Li
   QIcZw70i+rD2LQ==;
Message-Instance: m=1;
 h=sha256:
   Jm6r6uooLLJpwB7hImgcsTuNqnaBaDdx7MunBBEJLJM=:
   Hx4VaJrPDvbIRRPy/kzIFe7K0N4CF4Wh+2AJCIWjIEc=,
  sha512:
   A9GbSUehsxg0dgK6ub+d3ZWgZ8PeCOTiVo6YWmf/T/4wRsw1BNLy/Kz4RNYrjtzSrDQYpw78EW5LYKVO+v1yGg==:
   JrlZBcJ7n69qbUiByS6sgHSLZqkmQvQ8kz8P1IEBf7WkUm9BedEE78CcLsbrTxwYKl72L77VEINJuzn8dACJ8w==;
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bauvin.com;
	s=s1-ionos; t=1794656404; x=1795261204; i=alexis@bauvin.com;
	bh=/LSzf3Dc3sZeqTJQ65o60YqexTWF6Kz+dtJLldprZn8=;
	h=X-UI-Sender-Class:Date:From:To:Cc:Message-ID:In-Reply-To:
	 References:Subject:MIME-Version:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=hKQBMCt6BoqCTUDsiBRVSvfommOeO70GqROEequu6WF1nBc3s4PNfhKPbtRP11gA
	 EkTLUKz3pyJb6w6IPObaFl3haHQUr60/XY5LQnO9O5HOdABRUNUQjLJTRdigCgFVJ
	 b6dA/cOIC8e60+AZS1wutDCRFFP/ZdStvgG31+Q44jJZXljiwtC5Hep67FIkWECMR
	 x15myH5ZHhxxJYMSTnMzJEeaP9XAdf0gymrGPYZlXk0mFi5GyqSmB5kf1D4lDViTP
	 9FPzTaNBuMXxKtPmOw9RYOo1ytZwjPfxnW0yPKGg+etkWQN+38RqbenfgLVjP9OuX
	 PC1pPQimvSXVPIJ2Xg==
X-UI-Sender-Class: 55c96926-9e95-11ee-ae09-1f7a4046a0f6
Received: from client.hidden.invalid by mrelayeu.kundenserver.de (mreue010
 [10.74.24.7]) with ESMTPSA (Nemesis) id 1Ma1kC-1wyU3E0m72-00SnWR; Sat, 14 Nov
 2026 12:40:04 +0100
Date: Sat, 14 Nov 2026 12:40:03 +0100 (CET)
From: Alexis Bauvin <alexis@bauvin.com>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	linux-rockchip@lists.infradead.org
Message-ID: <2123340969.276526.1794656403451@email.ionos.fr>
In-Reply-To: <33ca64d0-baa9-4184-a42d-85628478e443@rock-chips.com>
References: <20261110200050.2529828-1-alexis@bauvin.com>
 <33ca64d0-baa9-4184-a42d-85628478e443@rock-chips.com>
Subject: Re: [PATCH] mmc: dw_mmc-rockchip: fix training on devices with
 internal phases
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Priority: 3
Importance: Normal
X-Mailer: Open-Xchange Mailer v8.46.152
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K1:AILYF9WPuYNOsKPVJ8pquIeFHnT+kEWUDJJnttt2p/Hh9Ax8aDf
 +bXt0EbOoCEMPeoD1Q4dC+XZosyLLVRhT/EyaZjKI6ygAUIWBJWRu0BeCdlsYCQO7PEMBAG
 xC/yDQHt+M9PU7tdrYdPocsG0HIttMY1a9/HePz6VITaUtuTp84gqKrN0z/3VFZgbBoiXsN
 1vvGba5v8ACFnNY3n0dug==
UI-OutboundReport: notjunk:1;M01:P0:fUpVzsPaWz8=;zXOpbAXzsGDTMOvX1sz34HtqSr3
 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
 7cwj3TE3dlakYJDY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261114_034017_735166_94889546 
X-CRM114-Status: GOOD (  23.21  )
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

PiBMZSAxNC8xMS8yMDI2IDEwOjA5IENFVCwgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlw
cy5jb20+IGEgw6ljcml0IDoKPiAKPiAgCj4gSGkKPiAKPiDlnKggMjAyNi8xMS8xMSDmmJ/mnJ/k
uIkgNDowMCwgQWxleGlzIEJhdXZpbiDlhpnpgZM6Cj4gPiBDb250cm9sbGVycyB3aXRoIGludGVy
bmFsIHBoYXNlcyBkb24ndCBuZWVkIHRoZSAiY2l1LWRyaXZlIiBhbmQKPiA+ICJjaXUtc2FtcGxl
IiBjbG9ja3MsIGFuZCByZWNlbnQgdmVyc2lvbnMgZG9uJ3QgaGF2ZSB0aGVtIGF0IGFsbC4gVHVu
aW5nCj4gPiBleHBlY3RzIHRob3NlIGNsb2NrcyB0byBiZSBmaWxsZWQgd2hlbiBpdCBpcyBub3Qg
bmVjZXNzYXJ5LCBhbmQgZmFpbHMgb24KPiA+IGRldmljZXMgd2hpY2ggZG9uJ3QgbmVlZCB0aGVt
Lgo+ID4gCj4gPiBGaXhlcyBlTU1DIHRyYWluaW5nIG9uIHN1Y2ggZGV2aWNlIGJ5IG5vdCByZXF1
aXJpbmcgdGhlIGNsb2NrcyB3aGVuIHRoZXkKPiA+IGFyZSBpbnRlcm5hbCB0byB0aGUgY29udHJv
bGxlciwgYXMgdGhleSBhcmUgbm90IHBvcHVsYXRlZCBhbnltb3JlIG9uCj4gPiBkZXZpY2VzIHVz
aW5nIHRoZSBSSzM1NzYgY29tcGF0aWJsZSBzdHJpbmdzLgo+ID4gCj4gPiBUaGlzIGhhcyBiZWVu
IHRlc3RlZCBvbiBhbiBSSzM1MDYgb24gdGhlIDYuMTIgYnJhbmNoIGZyb20KPiA+IGxpbnV4LXJv
Y2tjaGlwLgo+ID4gCj4gCj4gSSBkb24ndCBrbm93IGZvciB3aGljaCB0cmVlIHRoaXMgcGF0Y2gg
d2lsbCBiZSBhcHBsaWVkPyA2LjEyIHN0YWJsZT8KPiBGb3Igbm93LCBzYW1wbGVfY2xrIGFuZCBk
cnZfY2xrIGFyZSBOVUxMIGluIHN1Y2ggY2FzZSwgc28gSVNfRVJSIGNoZWNrCj4gZmFpbGVkLgoK
VGhhbmtzIGZvciBsb29raW5nIG1vcmUgaW50byB0aGlzLiBBbmQsIGluZGVlZCwgdGhvc2UgYXJl
IGJvdGggTlVMTC4gU29tZWhvdywKd2hlbiBkb2luZyBteSBrZXJuZWwgdXBncmFkZXMgZnJvbSA2
LjEgdG8gNi4xMiwgSSBlbmRlZCB1cCB3aXRoIHRob3NlCmNvbnRhaW5pbmcgYW4gZXJyb3IgdmFs
dWUuCgpJIHJlYnVpbHQgZXZlcnl0aGluZyBmcmVzaCBhbmQgdGhpcyBwYXRjaCBpcyBpbiBmYWN0
IG5vdCBuZWVkZWQuIEkgbXVzdCBoYXZlCmhhZCBhIHN0YWxlIGRldmljZSB0cmVlIHNvbWV3aGVy
ZSBwb2ludGluZyBhdCB0aGUgMzI4OCBEVCBwYXJzaW5nLgoKU29ycnkgZm9yIHRoZSBub2lzZSwg
YW5kIHRoYW5rcyBmb3IgeW91ciB0aW1lIQoKUmVnYXJkcywKQWxleGlzCgo+ID4gRml4ZXM6IDcz
YWJiMWYxNmUgKCJtbWM6IGR3X21tYy1yb2NrY2hpcDogQWRkIHN1cHBvcnQgZm9yIHJrMzU3NiBT
b0NzIikKPiA+IFNpZ25lZC1vZmYtYnk6IEFsZXhpcyBCYXV2aW4gPGFsZXhpc0BiYXV2aW4uY29t
Pgo+ID4gLS0tCj4gPiAgIGRyaXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMgfCAyICst
Cj4gPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQo+ID4g
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYyBiL2Ry
aXZlcnMvbW1jL2hvc3QvZHdfbW1jLXJvY2tjaGlwLmMKPiA+IGluZGV4IGExMzRiZTU5NjAxZC4u
ZDMxNThhYjA1YWExIDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9j
a2NoaXAuYwo+ID4gKysrIGIvZHJpdmVycy9tbWMvaG9zdC9kd19tbWMtcm9ja2NoaXAuYwo+ID4g
QEAgLTM1NCw3ICszNTQsNyBAQCBzdGF0aWMgaW50IGR3X21jaV9yazMyODhfZXhlY3V0ZV90dW5p
bmcoc3RydWN0IGR3X21jaV9zbG90ICpzbG90LCB1MzIgb3Bjb2RlKQo+ID4gICAJaW50IG1pZGRs
ZV9waGFzZTsKPiA+ICAgCWludCBwaGFzZTsKPiA+ICAgCj4gPiAtCWlmIChJU19FUlIocHJpdi0+
c2FtcGxlX2NsaykpIHsKPiA+ICsJaWYgKElTX0VSUihwcml2LT5zYW1wbGVfY2xrKSAmJiAhcHJp
di0+aW50ZXJuYWxfcGhhc2UpIHsKPiA+ICAgCQlkZXZfZXJyKGhvc3QtPmRldiwgIlR1bmluZyBj
bG9jayAoc2FtcGxlX2Nsaykgbm90IGRlZmluZWQuXG4iKTsKPiA+ICAgCQlyZXR1cm4gLUVJTzsK
PiA+ICAgCX0KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
