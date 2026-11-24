Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4F8606A331
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 13:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=qowCwpp9;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=AwVkoZL0
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=MiWX2W3/ILHx5u37Vzf/iGtnqGVd5mvjMSAQUqcGgx0=; b=qowCwpp9RPKbQV6X0nRjke/Lwy
	+/WhBPFkkCHFOJuDeBFupj8fPljd8kjjtX7zCMU2a3r8ecoprCt9XS7XFYIZcgl2b0wogT1hB3lyo
	RR4OmssocTRDepDq1pl2uXh1S+dAnO2lrKPomSoC8Foy35rqx4Rz2aYlbwMdkxCjjdiwsck0MJL/e
	r1nl02qY91elcXqwgXCCz30LMNT0wEnxqP736ksPKyrKpFpnCl+qv/B4aJ8cTLLaFlYtEeHW931G1
	MfWKsv3TFeq6uzrsS/zWeRBLXi9S7FCTrysYduK4Yk+B9WGLZkgX7pH4WhjwPpRzwqIrCZBvoKNy3
	IhBxQ9cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVqRf-00000006cev-3B4k;
	Tue, 24 Nov 2026 13:20:27 +0000
Received: from sender5-op-o11.zoho.com ([165.173.182.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVqRP-00000006cbA-0LHY;
	Tue, 24 Nov 2026 13:20:14 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1795526398; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LOwRIjs1wsFGb8Mjv9bwP1HYHL8EgTZVQvpp8eqhlM0lmJO4Jdhf/7v5VLvwqw9dx2+6oowjoGYmrrJ5CUzAKruAIrlEPg4NPlB+IOg+Y+CJKXMClD2IYefFVb1hmHwlNE+trjxhtzMsrEdil9bwNR0ZAK01pTBbzSYtf2FB7ro=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1795526398; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Xi9+n6mqjen7xK0aEroUXyIA3DFP060y5zPoLf1Eehc=; 
	b=EMF6+ukaUhVN3AnviAu9l8x7FxSTpD1QVsY/4+GXBHwDrgBboDynHpJz3qsGHLTyZJOaVwgFGTUrVxcFq7qBpD5PNsJVte5aGyk2nAN6KUCtehk1uf/MxYAwNr7F6rGf1P2Lnj+fbLTUS47wXzxMkQNQ6htT7+YaTswl4+8rOtY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: a=rsa-sha256; b=AwVkoZL0pZ/5m6zosyq6PPf0lR13fLOzXsaev1rIOHGJKAgv0UvcrMxAgYBx3a0D35u90tvIadG36jusM1KqWrOny5eXuLiuxHDw4/wAHJaiU8PH+Kp//Gen/DsIjeEvMikB8KWvMaMHl7dl0dYkdqO8PrZp5iU5OgtQxzy21Mc=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=Xi9+n6mqjen7xK0aEroUXyIA3DFP060y5zPoLf1Eehc=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 179552639643419.95007240456698;
	Tue, 24 Nov 2026 05:19:56 -0800 (PST)
Message-ID: <21937a4c-44ad-4511-b408-00a5607c9c24@collabora.com>
Date: Tue, 24 Nov 2026 14:19:53 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 1/3] media: verisilicon: AV1: Check reference frame
 index
To: Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 p.zabel@pengutronix.de, mchehab@kernel.org, heiko@sntech.de,
 hverkuil@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-media@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
References: <20261120143135.71134-1-benjamin.gaignard@collabora.com>
 <20261120143135.71134-2-benjamin.gaignard@collabora.com>
 <9c7ee6cfa9f4923756ce6355ec20fa8ac916b9ff.camel@collabora.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <9c7ee6cfa9f4923756ce6355ec20fa8ac916b9ff.camel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_052011_432817_C0902A6C 
X-CRM114-Status: GOOD (  16.14  )
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

CkxlIDI0LzExLzIwMjYgw6AgMDQ6MjksIE5pY29sYXMgRHVmcmVzbmUgYSDDqWNyaXTCoDoKPiBM
ZSB2ZW5kcmVkaSAyMCBub3ZlbWJyZSAyMDI2IMOgIDE1OjMxICswMTAwLCBCZW5qYW1pbiBHYWln
bmFyZCBhIMOpY3JpdMKgOgo+PiBNYWtlIHN1cmUgdGhhdCByZWZlcmVuY2UgZnJhbWUgaW5kZXgg
aXMgdmFsaWQgYmVmb3JlIHVzaW5nIGl0Lgo+Pgo+PiBTaWduZWQtb2ZmLWJ5OiBCZW5qYW1pbiBH
YWlnbmFyZCA8YmVuamFtaW4uZ2FpZ25hcmRAY29sbGFib3JhLmNvbT4KPj4gRml4ZXM6IDcyN2E0
MDA2ODZhMmMgKCJtZWRpYTogdmVyaXNpbGljb246IEFkZCBSb2NrY2hpcCBBVjEgZGVjb2RlciIp
Cj4+IC0tLQo+PiAgIC4uLi9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdf
YXYxX2RlYy5jIHwgMTEgKysrKysrKysrKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQo+Pgo+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jIGIvZHJpdmVy
cy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5j
Cj4+IGluZGV4IDJhMTQ1NDMzZTZkMS4uNWRhNTkxMDRhOTY2IDEwMDY0NAo+PiAtLS0gYS9kcml2
ZXJzL21lZGlhL3BsYXRmb3JtL3ZlcmlzaWxpY29uL3JvY2tjaGlwX3ZwdTk4MV9od19hdjFfZGVj
LmMKPj4gKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92
cHU5ODFfaHdfYXYxX2RlYy5jCj4+IEBAIC0xMjEsNyArMTIxLDEyIEBAIHN0YXRpYyBpbnQgcm9j
a2NoaXBfdnB1OTgxX2dldF9mcmFtZV9pbmRleChzdHJ1Y3QgaGFudHJvX2N0eCAqY3R4LCBpbnQg
cmVmKQo+PiAgIAlzdHJ1Y3QgaGFudHJvX2F2MV9kZWNfY3RybHMgKmN0cmxzID0gJmF2MV9kZWMt
PmN0cmxzOwo+PiAgIAljb25zdCBzdHJ1Y3QgdjRsMl9jdHJsX2F2MV9mcmFtZSAqZnJhbWUgPSBj
dHJscy0+ZnJhbWU7Cj4+ICAgCXU2NCB0aW1lc3RhbXA7Cj4+IC0JaW50IGksIGlkeCA9IGZyYW1l
LT5yZWZfZnJhbWVfaWR4W3JlZl07Cj4+ICsJaW50IGksIGlkeDsKPj4gKwo+PiArCWlmIChyZWYg
PCAwIHx8IHJlZiA+PSBWNEwyX0FWMV9SRUZTX1BFUl9GUkFNRSkKPj4gKwkJcmV0dXJuIEFWMV9J
TlZBTElEX0lEWDsKPj4gKwo+PiArCWlkeCA9IGZyYW1lLT5yZWZfZnJhbWVfaWR4W3JlZl07Cj4+
ICAgCj4+ICAgCWlmIChpZHggPj0gVjRMMl9BVjFfVE9UQUxfUkVGU19QRVJfRlJBTUUgfHwgaWR4
IDwgMCkKPj4gICAJCXJldHVybiBBVjFfSU5WQUxJRF9JRFg7Cj4+IEBAIC0xMjYyLDYgKzEyNjcs
MTAgQEAgc3RhdGljIHZvaWQgcm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfc2V0X3Byb2Ioc3RydWN0
IGhhbnRyb19jdHggKmN0eCkKPj4gICAJCXJvY2tjaGlwX2F2MV9kZWZhdWx0X2NvZWZmX3Byb2Jz
KHF1YW50aXphdGlvbi0+YmFzZV9xX2lkeCwKPj4gICAJCQkJCQkgYXYxX2RlYy0+Y2Rmcyk7Cj4+
ICAgCX0gZWxzZSB7Cj4+ICsJCWlmIChmcmFtZS0+cHJpbWFyeV9yZWZfZnJhbWUgPCAwIHx8Cj4+
ICsJCSAgICBmcmFtZS0+cHJpbWFyeV9yZWZfZnJhbWUgPj0gVjRMMl9BVjFfUkVGU19QRVJfRlJB
TUUpCj4+ICsJCQlyZXR1cm47Cj4gSnVzdCByZXR1cm5pbmcgZG9lcyBub3QgYWJvcnQgZGVjX3J1
bigpIGFuZCB3aWxsIGxlYWQgdG8gdHJpZ2dlcmluZyB0aGUgSFcgd2l0aAo+IHBhcnRpYWxseSBp
bml0aWFsaXplZCBkYXRhLiBFaXRoZXIgdGhpcyBzaG91bGQgbGVhZCB0byBzb21lIGRlZmF1bHQg
Y2RmIHRvIGJlCj4gcGlja2VkLCBvciB3ZSBhZGQgYSByZXR1cm4gdmFsdWUgYW5kIGNoZWNrIGl0
IGluIGRlY19ydW4oKS4KPgo+IE1heSBJIHByb3Bvc2UgdG8gdmFsaWRhdGUgdGhlc2Ugb25jZSBv
bmNlIGluIHByZXBhcmVfcnVuKCk/CgpJIHdpbGwgZG8gaXQgd2hlbiB2YWxpZGF0aW5nIEFWMSBm
cmFtZSBwYXJhbWV0ZXJzIGluIHY0bDItY3RybC1jb3JlLmMKClJlZ2FyZHMsCkJlbmphbWluCgo+
Cj4+ICsKPj4gICAJCXJvY2tjaGlwX2F2MV9nZXRfY2RmcyhjdHgsIGZyYW1lLT5yZWZfZnJhbWVf
aWR4W2ZyYW1lLT5wcmltYXJ5X3JlZl9mcmFtZV0pOwo+IEhlcmUsIHRoZSBpbmRleCBwYXNzZWQg
dG8gZ2V0X2NkZnMoKSBpcyBub3QgdmFsaWRhdGVkIGFuZCB3aWxsIGxlYWQgdG8gb3V0IG9mCj4g
YmFuZCBpbmRleGluZyBpbnNpZGUgdGhhdCBmdW5jdGlvbi4uCj4KPgo+PiAgIAl9Cj4+ICAgCXJv
Y2tjaGlwX2F2MV9zdG9yZV9jZGZzKGN0eCwgZnJhbWUtPnJlZnJlc2hfZnJhbWVfZmxhZ3MpOwoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9j
a2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0
cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
