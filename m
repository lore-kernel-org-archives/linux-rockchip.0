Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB84A606A31F
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 09:27:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bsH3gcx1;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=Lq8kSUT0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=8tIaZ/ooVeDSo18scng0r9E48HTeA947F4q4+Q8TR1g=; b=bsH3gcx1WCxwdsTvHt374S8moK
	ikH2C+Ly2X6R8llXXoOAeUEHOQ1OI7SaRTPGK+NWyS7UOPD1P9fN6yzhTSOSDMdVm1gwAbSw/JKuC
	SIiIn08+zyygL24VkSpz+8DPbMEWUlNPcvYmTwm0RgyNDHl53kGVgO6u7caEMPmt8AgvZw16osFPX
	Nk3OL86VMCWZwbfVTv/Jhicv8tocoTCzFXay8Rr2PvUImCLSx+crWeioqVisuaCIieh0GSv5hp/rt
	mbJZeFkzhBoS43YLN0avYKwOrXuJ4sIE1KxNE9Q+HDu7vupVK6enOAhS5lOHKF+pCgdsnT4EeCrAE
	pyWnU32g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQKW-00000002iOU-40QV;
	Mon, 23 Nov 2026 09:27:20 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVQKQ-00000002iLX-0CXK
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 09:27:16 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1795426001; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=lULQlH/iWZZAdHdVhCjEwlcIzQA41m4SqeNp1MPnq9Jt/tYdxzg3aHTgGj1D2rz+KsuCUGwWnaVUvosX47EyOBrDbAiRBsYZxxwyIk7N28IBwB/qIZbt0oHJQb7YCfzbN+/0X/vCy6DZt97F/biYn2YeSVTsI/G2hWO9GPU6IzY=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1795426001; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=O9WYOpMy3rGcu2QFyMreqnCz0RC3LAV/SW4SChJTtnQ=; 
	b=Vd2ywhMpqKj7PqWkZl2NRUcPuWD5TwNdurhTts1g7C9OI3IlVBXUkByYjeBXo+DMs3X/V74YIyp1KYAV1tCnS1Fcgm1IOqY+D3aGt6r1r3PoN3fPTs0rIxBZi6h7khs/Lgol0aJ+k6PzcYR6ijxXRgTFbD16sYrLLTXP3emy6GI=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: a=rsa-sha256; b=Lq8kSUT0J+v9ygmmcSasd3NU78h95TZpZxPHb+q8M9V34UAys8cfLKpk78g6OMR0k0Tr3dwBNTdK/2MN3UtIZfH/i4xwvvn5zc+9mqrh/acmWBugjARWoaC/mLFSVdmxrSvVEA//lCYB2L2TmkaREdzX42092zNRrBzhUiYCxq8=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=O9WYOpMy3rGcu2QFyMreqnCz0RC3LAV/SW4SChJTtnQ=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1795425996155774.0498302105844;
	Mon, 23 Nov 2026 01:26:36 -0800 (PST)
Message-ID: <793eccf2-712b-44b8-8d71-5c69460cd5b8@collabora.com>
Date: Mon, 23 Nov 2026 10:26:31 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 1/4] media: verisilicon: Size the VP8 segment map for
 the largest frame
To: aiyengar1990@gmail.com, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Andrzej Pietrasiewicz <andrzej.p@collabora.com>,
 Hans Verkuil <hverkuil@kernel.org>, Jernej Skrabec
 <jernej.skrabec@gmail.com>, Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org
References: <20261115-hantro-fixes-v2-0-bfecfb07a3e7@gmail.com>
 <20261115-hantro-fixes-v2-1-bfecfb07a3e7@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20261115-hantro-fixes-v2-1-bfecfb07a3e7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_012715_049653_6A00AC47 
X-CRM114-Status: GOOD (  11.13  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_SANE_1 autolearn=ham autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

CkxlIDE1LzExLzIwMjYgw6AgMDk6MzksIEFydW4gSXllbmdhciB2aWEgQjQgUmVsYXkgYSDDqWNy
aXTCoDoKPiBGcm9tOiBBcnVuIEl5ZW5nYXIgPGFpeWVuZ2FyMTk5MEBnbWFpbC5jb20+Cj4KPiBU
aGUgc2VnbWVudCBtYXAgaXMgc2l6ZWQgYXQgU1RSRUFNT04sIGJ1dCB0aGUgQ0FQVFVSRSBmb3Jt
YXQgY2FuIGdyb3cKPiB3aGlsZSBzdHJlYW1pbmcgYW5kIG92ZXJydW4gaXQuIFNpemUgaXQgZm9y
IHRoZSBsYXJnZXN0IGZyYW1lLCBhcyBWUDkKPiBkb2VzLgo+Cj4gRml4ZXM6IGJiZDI2N2RhZjRm
YyAoIm1lZGlhOiB2ZXJpc2lsaWNvbjogdnA5OiBBbGxvdyB0byBjaGFuZ2UgcmVzb2x1dGlvbiB3
aGlsZSBzdHJlYW1pbmciKQo+IENjOiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9m
Zi1ieTogQXJ1biBJeWVuZ2FyIDxhaXllbmdhcjE5OTBAZ21haWwuY29tPgoKUmV2aWV3ZWQtYnk6
IEJlbmphbWluIEdhaWduYXJkIDxiZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKPiAt
LS0KPiAgIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3ZwOC5jIHwg
NCArKy0tCj4gICAxIGZpbGUgY2hhbmdlZCwgMiBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygt
KQo+Cj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFu
dHJvX3ZwOC5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9oYW50cm9fdnA4
LmMKPiBpbmRleCAzODFiYzFkM2JmZGEuLjk4YWQ4NjI2OWJjMyAxMDA2NDQKPiAtLS0gYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL2hhbnRyb192cDguYwo+ICsrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vdmVyaXNpbGljb24vaGFudHJvX3ZwOC5jCj4gQEAgLTE1MSw4ICsx
NTEsOCBAQCBpbnQgaGFudHJvX3ZwOF9kZWNfaW5pdChzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4KQo+
ICAgCWludCByZXQ7Cj4gICAKPiAgIAkvKiBzZWdtZW50IG1hcCB0YWJsZSBzaXplIGNhbGN1bGF0
aW9uICovCj4gLQltYl93aWR0aCA9IERJVl9ST1VORF9VUChjdHgtPmRzdF9mbXQud2lkdGgsIDE2
KTsKPiAtCW1iX2hlaWdodCA9IERJVl9ST1VORF9VUChjdHgtPmRzdF9mbXQuaGVpZ2h0LCAxNik7
Cj4gKwltYl93aWR0aCA9IERJVl9ST1VORF9VUChjdHgtPnZwdV9zcmNfZm10LT5mcm1zaXplLm1h
eF93aWR0aCwgMTYpOwo+ICsJbWJfaGVpZ2h0ID0gRElWX1JPVU5EX1VQKGN0eC0+dnB1X3NyY19m
bXQtPmZybXNpemUubWF4X2hlaWdodCwgMTYpOwo+ICAgCXNlZ21lbnRfbWFwX3NpemUgPSByb3Vu
ZF91cChESVZfUk9VTkRfVVAobWJfd2lkdGggKiBtYl9oZWlnaHQsIDQpLCA2NCk7Cj4gICAKPiAg
IAkvKgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpM
aW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFk
Lm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJv
Y2tjaGlwCg==
