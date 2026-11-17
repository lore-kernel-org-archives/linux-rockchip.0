Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1D2606A89B
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 15:50:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=hWTMik2H;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=collabora.com header.i=@collabora.com header.a=rsa-sha256 header.s=zohomail header.b=hfz1DwFR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=SftwJO/BNr69h+0fRWAbpNCMIGTaoURXotPLiOZy1KU=; b=hWTMik2HkONixQvTFrhV0ZJO06
	7BLc3eaHlLv+ruBTcpEIQK5ghM7K836S5bxcdWm9+brRgQHAoDWUC/SWiprYLlAVTp6bNzmleQ1Rx
	T6fuuLABBekObIh0xKmbqSsKSSzw953B3XEqwU1Z/qdp+qdf0Y7AUlLvur9xp3Zq9sN16KOs5rScV
	BqaiSEqnV+v2/yombvqT+PRzJOsY1ncS3zyIJB2My1NX9fFk/0CkUdr09z5UKU+H4FvIRsxiloiXA
	w3R9Q9sb0ctpYfDn1RMNoNn0F7FQbaRyHXZv3NKsNjOrO7H0xtq+g31nwCt55mIkoJZmhwTMVHGAj
	c4wrdahQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTLSA-00000006LuA-2UiJ;
	Tue, 17 Nov 2026 15:50:38 +0000
Received: from sender6-op-o11.zoho.com ([165.173.180.11])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTLS8-00000006LtN-1RKv;
	Tue, 17 Nov 2026 15:50:37 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1794930629; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=M+ZrGkTyiA8mwALNyDzkzYpqOuc0nk8rmPgHMbEodQl2vZLceLmuJhx0znthV3bbNnTHSd2FH5+eNy1ekBAVnajB/5F6/fyw7NVxVymy2+4CKSaVehsf+ryAUiQpqQ0SGD3MpNK2a8vPiigIhAWyMpm/Ssr5mbHQgutT53IyyL4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1794930629; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=G1LL/x7N77Eu1XLmVkvU8EZYqDRVKlBzvqhN4r+M2Js=; 
	b=iZK1oKOEBlWQDlGQ6qNLIdCkTCV7v2bHmLs9GWvOgrqVeJaqJ75+EcQZlO5lpJEeyveuGOUD/mYRtdjljISHPweKHwES8MS11buv1sN7I2iZIA9HwycDLm/lirZRJVPrXiA5AL/p2uvOKKGJemENT36JrKYgfEGaEgWgmcNU7IY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=benjamin.gaignard@collabora.com;
	dmarc=pass header.from=<benjamin.gaignard@collabora.com>
DKIM-Signature: a=rsa-sha256; b=hfz1DwFRq3HWKRf2nl7c818zlf3EcVL9zW5dXCaoQaXM+BjqHTCDnFcCOUMBcNxWuKkCs0ROA04nWwMXZYrP5YR6H6aUFyOAWD/9IqiyBFUPEpMVOi61iBD8lzOIxfFySCJC+RBAkqxIgEp15kncqGhzWb0CAS4QvYJIEko786o=; c=relaxed/relaxed; s=zohomail; d=collabora.com; v=1; bh=G1LL/x7N77Eu1XLmVkvU8EZYqDRVKlBzvqhN4r+M2Js=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zohomail.com with SMTPS id 1794930627710904.9822389417972;
	Tue, 17 Nov 2026 07:50:27 -0800 (PST)
Message-ID: <93161ff8-dd0d-4253-aa80-174a33de30dc@collabora.com>
Date: Tue, 17 Nov 2026 16:50:24 +0100
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] media: verisilicon: av1: Read the segmentation map at
 the reference's offset
To: aiyengar1990@gmail.com, Nicolas Dufresne
 <nicolas.dufresne@collabora.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Heiko Stuebner
 <heiko@sntech.de>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 stable@vger.kernel.org
References: <20261115-b4-vpu981-av1-refs-v1-0-c65769715db9@gmail.com>
 <20261115-b4-vpu981-av1-refs-v1-2-c65769715db9@gmail.com>
Content-Language: en-US
From: Benjamin Gaignard <benjamin.gaignard@collabora.com>
In-Reply-To: <20261115-b4-vpu981-av1-refs-v1-2-c65769715db9@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_075036_436345_884B84C6 
X-CRM114-Status: GOOD (  17.66  )
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

CkxlIDE1LzExLzIwMjYgw6AgMDk6NTksIEFydW4gSXllbmdhciB2aWEgQjQgUmVsYXkgYSDDqWNy
aXTCoDoKPiBGcm9tOiBBcnVuIEl5ZW5nYXIgPGFpeWVuZ2FyMTk5MEBnbWFpbC5jb20+Cj4KPiBU
aGUgc2VnbWVudGF0aW9uIG1hcCBvZiB0aGUgcHJpbWFyeSByZWZlcmVuY2UgaXMgcmVhZCBhdCB0
aGUgbW90aW9uCj4gdmVjdG9yIG9mZnNldCBvZiB0aGUgY3VycmVudCBDQVBUVVJFIGZvcm1hdC4g
QWZ0ZXIgYSBzd2l0Y2ggdG8gYSBsYXJnZXIKPiBmb3JtYXQsIHRoYXQgaXMgcGFzdCB0aGUgZW5k
IG9mIGEgcmVmZXJlbmNlIGhlbGQgaW4gYSBzbWFsbGVyIGJ1ZmZlci4KPgo+IFVzZSB0aGUgcmVm
ZXJlbmNlJ3Mgb3duIG9mZnNldCwgYW5kIHNraXAgdGhlIG1hcCBvZiBhIHJlZmVyZW5jZSBvZgo+
IGFub3RoZXIgc2l6ZSAodGhlIHNwZWMgdGhlbiB1c2VzIHNlZ21lbnQgMCwgbG9hZF9wcmV2aW91
c19zZWdtZW50X2lkcygpCj4gaW4gc2VjdGlvbiA2LjguMikuCj4KPiBGaXhlczogNzI3YTQwMDY4
NmEyICgibWVkaWE6IHZlcmlzaWxpY29uOiBBZGQgUm9ja2NoaXAgQVYxIGRlY29kZXIiKQo+IENj
OiBzdGFibGVAdmdlci5rZXJuZWwub3JnCj4gU2lnbmVkLW9mZi1ieTogQXJ1biBJeWVuZ2FyIDxh
aXllbmdhcjE5OTBAZ21haWwuY29tPgoKUmV2aWV3ZWQtYnk6IEJlbmphbWluIEdhaWduYXJkIDxi
ZW5qYW1pbi5nYWlnbmFyZEBjb2xsYWJvcmEuY29tPgoKPiAtLS0KPiAgIGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vdmVyaXNpbGljb24vcm9ja2NoaXBfdnB1OTgxX2h3X2F2MV9kZWMuYyB8IDggKysr
KystLS0KPiAgIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKyksIDMgZGVsZXRpb25zKC0p
Cj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2Nr
Y2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4gaW5kZXggNTlmMmFkZjc0ODUwLi5m
MjNhZjQzNWY5NjEgMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS92ZXJpc2ls
aWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4gKysrIGIvZHJpdmVycy9tZWRpYS9w
bGF0Zm9ybS92ZXJpc2lsaWNvbi9yb2NrY2hpcF92cHU5ODFfaHdfYXYxX2RlYy5jCj4gQEAgLTg5
OSwxNSArODk5LDE3IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3ZwdTk4MV9hdjFfZGVjX3NldF9z
ZWdtZW50YXRpb24oc3RydWN0IGhhbnRyb19jdHggKmN0eCkKPiAgIAlpZiAoISEoc2VnLT5mbGFn
cyAmIFY0TDJfQVYxX1NFR01FTlRBVElPTl9GTEFHX0VOQUJMRUQpICYmCj4gICAJICAgIGZyYW1l
LT5wcmltYXJ5X3JlZl9mcmFtZSA8IFY0TDJfQVYxX1JFRlNfUEVSX0ZSQU1FKSB7Cj4gICAJCWlu
dCBpZHggPSByb2NrY2hpcF92cHU5ODFfZ2V0X2ZyYW1lX2luZGV4KGN0eCwgZnJhbWUtPnByaW1h
cnlfcmVmX2ZyYW1lKTsKPiArCQlpbnQgbWlfY29scyA9IERJVl9ST1VORF9VUChmcmFtZS0+ZnJh
bWVfd2lkdGhfbWludXNfMSArIDEsIDgpOwo+ICsJCWludCBtaV9yb3dzID0gRElWX1JPVU5EX1VQ
KGZyYW1lLT5mcmFtZV9oZWlnaHRfbWludXNfMSArIDEsIDgpOwo+ICAgCj4gLQkJaWYgKGlkeCA+
PSAwKSB7Cj4gKwkJaWYgKGlkeCA+PSAwICYmIGF2MV9kZWMtPmZyYW1lX3JlZnNbaWR4XS5taV9j
b2xzID09IG1pX2NvbHMgJiYKPiArCQkgICAgYXYxX2RlYy0+ZnJhbWVfcmVmc1tpZHhdLm1pX3Jv
d3MgPT0gbWlfcm93cykgewo+ICAgCQkJZG1hX2FkZHJfdCBsdW1hX2FkZHIsIG12X2FkZHIgPSAw
Owo+ICAgCQkJc3RydWN0IGhhbnRyb19kZWNvZGVkX2J1ZmZlciAqc2VnOwo+IC0JCQlzaXplX3Qg
bXZfb2Zmc2V0ID0gcm9ja2NoaXBfdnB1OTgxX2F2MV9kZWNfY2hyb21hX3NpemUoY3R4KTsKPiAg
IAo+ICAgCQkJc2VnID0gdmIyX3RvX2hhbnRyb19kZWNvZGVkX2J1Zihyb2NrY2hpcF92cHU5ODFf
YXYxX2RlY19yZWZfYnVmKGN0eCwgaWR4KSk7Cj4gICAJCQlsdW1hX2FkZHIgPSBoYW50cm9fZ2V0
X2RlY19idWZfYWRkcihjdHgsICZzZWctPmJhc2UudmIudmIyX2J1Zik7Cj4gLQkJCW12X2FkZHIg
PSBsdW1hX2FkZHIgKyBtdl9vZmZzZXQ7Cj4gKwkJCW12X2FkZHIgPSBsdW1hX2FkZHIgKyBzZWct
PmF2MS5tdl9vZmZzZXQ7Cj4gICAKPiAgIAkJCWhhbnRyb193cml0ZV9hZGRyKHZwdSwgQVYxX1NF
R01FTlRBVElPTiwgbXZfYWRkcik7Cj4gICAJCQloYW50cm9fcmVnX3dyaXRlKHZwdSwgJmF2MV91
c2VfdGVtcG9yYWwzX212cywgMSk7Cj4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
