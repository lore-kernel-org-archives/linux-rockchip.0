Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54E1C606E4CD
	for <linux-rockchip@archiver.kernel.org>; Wed,  4 Nov 2026 19:59:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=tZdm08FE;
	dkim=fail reason="signature verification failed" (1024-bit key, unprotected) header.d=iav.lv header.i=@iav.lv header.a=rsa-sha256 header.s=zoho header.b=F/mPSDlc
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=d2eLQe56oC7LMHa9g8FCiKmWaZY1Pk2q25jZeklV9/U=; b=tZdm08FECtCW49B39bVs84PWZl
	JBNlp32tHJ/W5y25CeRKUd2UKyU5C5vgkubB8XnzFryYbfYpedgYZ4olzzYmlgUOVshBycrQJe1e2
	QLwpg7q3N2IoTCSOQUUjr/nJQqYIw2QTmc7CW3JaW1N2vP2iO9gK72/bLwAlArI/+FdTxVf/K+sNm
	XMik0at9+z+AwxPQlvK91oYk/tvcyCiBAEuPWNeQr2zeSlsytBzO4Em1ePSJzumRPu+NkSS4D+5Xf
	SFGp6hBcIKBnVILpvcoK25/BgdaJhL0NC5D3UTHeV9/4eezX/k/j6bKLAwYCdjTXfCKxxSzTLN1DO
	ENBBqu5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOh8n-00000006pcP-0hFz;
	Wed, 04 Nov 2026 19:59:25 +0000
Received: from sender-op-o15.zoho.eu ([136.143.169.15])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOh8k-00000006pa8-0rgU;
	Wed, 04 Nov 2026 19:59:23 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1793822353; cv=none; 
	d=zohomail.eu; s=zohoarc; 
	b=dlV+Ny7hMOkt5HlZXhS26tgvbGlxQSLVURMm88dYkJMHWlULVV0zmrBO9gxBn7WMswHyq/aRkHk/hkyUyvQvScLFrcd8md0fionlD+5VJGGGlpae+fCFMb/iWwjsmTQeHrRisYXN+w2vbaABX7Rhqsco+EvwZnyT7xXZBsWUXTI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.eu; s=zohoarc; 
	t=1793822353; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=ItJWBgurNWrKzbA3+9kWCtCIwN+CzwIffxyCOBCEeZ4=; 
	b=PHRuyDioZ2UmrngLNTXv1sxpH7KF6ZBwgzXJgOwZ5rnw0a0Aq7NDbBfsyHjNUGBJwUnw7IxEoBUBo73S9YeWNC9D6cNo4Gpp2E3Y92HjLrV1SSKbUriY79tl6jBRoJ2xGgp54GzaX4L/+0woOci0HiY4/Iu0wyvaQGRKFob+b+4=
ARC-Authentication-Results: i=1; mx.zohomail.eu;
	dkim=pass  header.i=iav.lv;
	spf=pass  smtp.mailfrom=iav@iav.lv;
	dmarc=pass header.from=<iav@iav.lv>
DKIM-Signature: a=rsa-sha256; b=F/mPSDlc4uIp6nAJHIOr/sNm8CuQcnOjV63n6wSvUpp1rZ03Ldkn+O6DHim38i2EcxTOGPx7aGWqjPccxvtEG+L0CnB5dOhByaaEYd6rxSYmXDvrFrB9l6yiwzpf2SdRkXldpUkcc/j9XVnviticvo6Y8DKw3tzzz0kxkrtonrM=; c=relaxed/relaxed; s=zoho; d=iav.lv; v=1; bh=ItJWBgurNWrKzbA3+9kWCtCIwN+CzwIffxyCOBCEeZ4=; h=Content-Description:Content-ID:Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:List-Subscribe:List-Post:List-Owner:List-Id:List-Archive:List-Help:List-Unsubscribe:MIME-Version:Message-ID:Resent-Sender:Resent-Cc:Resent-Date:Resent-To:Reply-To:Resent-Message-ID:Resent-From:Sender:Subject:To:Date:From:Message-Id:Reply-To:Subject:To:Cc;
Received: by smtp.zoho.eu with SMTPS id 1793822350815917.9354164021267;
	Wed, 4 Nov 2026 20:59:10 +0100 (CET)
Date: Wed, 04 Nov 2026 21:59:09 +0200
From: Igor Velkov <iav@iav.lv>
To: =?utf-8?Q?Adri=C3=A1n?= Larumbe <adrian.larumbe@collabora.com>
Cc: iav@iav.lv, Boris Brezillon <boris.brezillon@collabora.com>,
 Rob Herring <robh@kernel.org>, Steven Price <steven.price@arm.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 Heiko Stuebner <heiko@sntech.de>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/panfrost: Gate the RK3399 GPU clock in runtime suspend
Message-ID: <20261104-panfrost-rk3399-pm-rt-larumbe-reply-1@iav.lv>
In-Reply-To: <autNWETrwrHbD2H9@sobremesa>
References: <20261030-panfrost-rk3399-pm-rt-v1-1-e94437159a9d@iav.lv>
 <autNWETrwrHbD2H9@sobremesa>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261104_115922_383802_5F95F5A7 
X-CRM114-Status: GOOD (  23.86  )
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

SGkgQWRyacOhbiwKCk9uIDA0LjExLjIwMjYsIEFkcmnDoW4gTGFydW1iZSB3cm90ZToKPj4gT24g
Uk9DSyBQaSA0QSByZXN0b3JlIGZyb20gaGliZXJuYXRpb24gaGFuZ3MgaW4gZ2VucGRfcmVzdG9y
ZV9ub2lycSgpCj4+IG9mIHRoZSBHUFUgd2hpbGUgcGFuZnJvc3QgaXMgYm91bmQuIFdpdGggdGhl
IGNsb2NrIGdhdGVkIGluIHJ1bnRpbWUKPj4gc3VzcGVuZCwgYXMgb24gdGhlIEFsbHdpbm5lciBI
NjE2IGFuZCB0aGUgUmVuZXNhcyBwYXJ0cywgaXQgcmVzdG9yZXMuCj4KPiBJIGZpbmQgdGhlIHdv
cmRpbmcgaW4gdGhlIHByZWNlZGluZyBwYXJhZ3JhcGggYSBiaXQgY29uZnVzaW5nIC4gV291bGQK
PiB5b3UgbWluZCBjbGFyaWZ5aW5nIHdoYXQgJ3BhcnRzJyBtZWFucyBoZXJlPyBJIGd1ZXNzIHlv
dSByZWZlciB0bwo+IHNwZWNpZmljIFNvQ3MuCgpZZXMsIFNvQ3M6IGFsbHdpbm5lcixzdW41MGkt
aDYxNi1tYWxpLCByZW5lc2FzLHI5YTA4ZzA0Ni1tYWxpIGFuZApyZW5lc2FzLHI5YTA5ZzA0Ny1t
YWxpIGFscmVhZHkgdXNlIGRlZmF1bHRfcG1fcnRfZGF0YS4gdjIgd2lsbCBuYW1lCnRoZW0uCgo+
IEFsc28sIEkgd29uZGVyIHdoeSBub3QgZGlzYWJsaW5nIHRoZSBjbG9ja3Mgd291bGQgZm9yZXN0
YWxsIGNvbWluZyBiYWNrCj4gZnJvbSBhIHBvd2VyIHN1c3BlbnNpb24gc3RhdGUuIEhhdmUgeW91
IHJhaXNlZCB0aGlzIG1hdHRlciB0byB0aGUKPiBtYWludGFpbmVycyBvZiB0aGUgUkszMzk5IFNv
QyBzdWJzeXN0ZW0/CgpUaGUga2VybmVsIHRoYXQgcmVhZHMgdGhlIGltYWdlIG5ldmVyIGJpbmRz
IHBhbmZyb3N0LCBzbyBhZnRlcgpjbGtfZGlzYWJsZV91bnVzZWQoKSBhY2xrX2dwdSBzdGF5cyBn
YXRlZC4gVGhlIHJlc3RvcmVkIGltYWdlIHN0aWxsIGhhcwppdCBlbmFibGVkIGluIHNvZnR3YXJl
IChlbmFibGUgY291bnQgMSBzaW5jZSBwcm9iZSksIHNvIHBvd2VyaW5nIHRoZSBHUFUKZG9tYWlu
IGJhY2sgb24sIHdob3NlIGNsb2NrcyBpbmNsdWRlIGFjbGtfZ3B1LCBvbmx5IGJ1bXBzIHRoZSBj
b3VudCwgYW5kCnRoZSBRb1Mgd3JpdGVzIHRoYXQgZm9sbG93IGluIHJvY2tjaGlwX3BkX3Bvd2Vy
KCkgZ28gdG8gYSBnYXRlZCBibG9jawphbmQgaGFuZy4gSSB0cmFjZWQgdGhpcyBmb3Igcmt2ZGVj
IFsxXTsgZm9yIHRoZSBHUFUgSSBzZWUgdGhlIGhhbmcgYXQKdGhlIHNhbWUgc3BvdCwgZ2VucGRf
cmVzdG9yZV9ub2lycSgpLCBhbmQgZ2F0aW5nIGluIHJ1bnRpbWUgc3VzcGVuZApyZW1vdmVzIGl0
LiBJIGhhdmVuJ3QgcmFpc2VkIGl0IHNlcGFyYXRlbHk7IEhlaWtvIGlzIG9uIFRvLgoKPiBXb3Vs
ZCB5b3UgYWxzbyBtaW5kIGRlc2NyaWJpbmcgd2hhdCB5b3UgZGlkIHRvIHJlcHJvZHVjZSB0aGlz
Cj4gcmVzdW1lLWZyb20tc3VzcGVuZCBpc3N1ZT8gTGF0ZWx5IHdlJ3ZlIGJlZW4gZ2V0dGluZyBz
b21lIGZpeGVzIGZvcgo+IHNpbWlsYXIgU29DIGlzc3VlcyBhbmQgSSB3b25kZXIgd2hldGhlciBt
aW5lIGFsc28gaGFzIGl0LgoKSXQgaXMgaGliZXJuYXRpb24gKHJlc3RvcmUgZnJvbSBkaXNrKSwg
bm90IHN1c3BlbmQgdG8gUkFNLiBST0NLIFBpIDRBLApkcm0tbWlzYy1uZXh0IDMzZWQyNjIzNWRi
OSBwbHVzIFsxXSwgcGFuZnJvc3QgYXMgYSBtb2R1bGUsIGJvdW5kLCBHUFUKaWRsZSwgc3dhcCBm
aWxlIHdpdGggcmVzdW1lPSBhbmQgcmVzdW1lX29mZnNldD06IHN5c3RlbWN0bCBoaWJlcm5hdGUs
CnBvd2VyIG9mZiBhbmQgb24uIFdpdGhvdXQgdGhlIHBhdGNoIHJlc3RvcmUgaGFuZ3MgYXQgInBh
bmZyb3N0CmZmOWEwMDAwLmdwdTogY2FsbGluZyBnZW5wZF9yZXN0b3JlX25vaXJxIiAyIG9mIDIs
IHdpdGggaXQgcmVzdG9yZXMKNiBvZiA2LiBBIHF1aWNrIGNoZWNrIG9uIGFub3RoZXIgYm9hcmQ6
IHdpdGggcGFuZnJvc3QgYm91bmQgYW5kIHRoZSBHUFUKaWRsZSwgaXRzIGNvcmUgY2xvY2sga2Vl
cHMgZW5hYmxlIGNvdW50IDEgaW4gY2xrX3N1bW1hcnkuCgo+IElmIHRoaXMgcGF0Y2ggZGVwZW5k
cyBvbiBhbm90aGVyIGZpeCBiZWluZyBtZXJnZWQgZmlyc3QsIEkgdGhpbmsgaXQncwo+IGJlc3Qg
eW91IGRlbGF5IHNlbmRpbmcgYSB2MiB1bnRpbCBpdCdzIGJlZW4gY29tbWl0dGVkIHRvIGl0cyBy
ZWxldmFudAo+IHN1YnN5c3RlbSB0cmVlIGFuZCBjaGFuZ2VzIHB1bGxlZCBpbnRvIGRybS1taXNj
LW5leHQuCgpJdCBhcHBsaWVzIGFuZCBidWlsZHMgd2l0aG91dCBbMV07IFsxXSBvbmx5IGdldHMg
dGhpcyBib2FyZCB0aHJvdWdoCnJlc3RvcmUgdXAgdG8gdGhlIEdQVS4gWzFdIGdvZXMgdGhyb3Vn
aCBsaW51eC1tZWRpYSwgc28gSSdkIHJhdGhlciBub3QKdGllIHYyIHRvIGl0LCBidXQgZmluZSBl
aXRoZXIgd2F5LgoKPiBJJ20gbm90IGVudGlyZWx5IHN1cmUgYWJvdXQgd2hhdCBwYXRjaCBzdWJt
aXNzaW9uIGd1aWRlbGluZXMgc2F5IGFib3V0Cj4gdGVzdGluZyBpbmZvcm1hdGlvbiwgYnV0IG5v
cm1hbGx5IGNvbW1pdCB0cmFpbGVycyBtdXN0IGNvbWUgYWJvdXQKPiBsYXN0LiBXb3VsZCB5b3Ug
bWluZCB0aGVuIG1vdmluZyB0aGlzIHRvIHJpZ2h0IGJlZm9yZSB0aGUgUy1vLWI/CgpUaGUgdGVz
dCBub3RlcyBhcmUgYmVsb3cgdGhlICItLS0iIG9uIHB1cnBvc2UsIHNvIHRoZXkgc3RheSBvdXQg
b2YgdGhlCmNvbW1pdC4KCj4+ICsJeyAuY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktbWFs
aSIsIC5kYXRhID0gJmRlZmF1bHRfcG1fcnRfZGF0YSB9LAo+Cj4gWW91J3JlIGVmZmVjdGl2ZWx5
IGFkZGluZyBzdXBwb3J0IHRvIGEgd2hvbGUgbmV3IFNvQy4gVGhpcyBtYWRlIG1lCj4gd29uZGVy
LCBhcmUgd2Ugc3VyZSBzdXNwZW5zaW9uIHJlc3VtcHRpb24gbm90IHdvcmtpbmcgaXMgb25seSBi
ZWNhdXNlIG9mCj4gR1BVX1BNX1JUPyBTaG91bGRuJ3Qgd2Uga25vdyBmaXJzdCBhYm91dCBpdHMg
c3VwcGxpZXMgYW5kIHBvd2VyIGRvbWFpbnMsCj4gYW5kIGFueSBwb3RlbnRpYWwgR1BVIHF1aXJr
cz8gSSB0aGluayB0aGlzIGdvZXMgYmV5b25kIG15IGtub3dsZWRnZSwgc28KPiBtYXliZSBTdGV2
ZW4gUHJpY2UgY2FuIHBpdGNoIGluLgoKVGhlIG5vZGUgYWxyZWFkeSBjYXJyaWVzICJyb2NrY2hp
cCxyazMzOTktbWFsaSIsICJhcm0sbWFsaS10ODYwIiBhbmQKYmluZHMgdGhyb3VnaCB0aGUgZmFs
bGJhY2sgdG9kYXkuIGRlZmF1bHRfcG1fcnRfZGF0YSBkaWZmZXJzIGZyb20KZGVmYXVsdF9kYXRh
IG9ubHkgaW4gR1BVX1BNX1JUOyBzdXBwbGllcyBhbmQgdGhlIHBvd2VyIGRvbWFpbiBzdGF5IGFz
CnRoZXkgYXJlLiBUaGUgUkszMzk5IEdQVSBub2RlIGhhcyBubyBidXMgY2xvY2tzIGFuZCBubyBy
ZXNldHMsIHNvCkdQVV9QTV9SVCBjaGFuZ2VzIG9ubHkgYWNsa19ncHUgaGVyZS4gU3RldmVuJ3Mg
dmlldyBpcyB3ZWxjb21lLgoKWzFdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL3IvMjAyNjEwMzAt
cmt2ZGVjLXJ1bnRpbWUtcG0tY2xvY2tzLXYyLTEtOGZmNTEwYTIzMWRlQGlhdi5sdgoKLS0KSWdv
ciBWZWxrb3YKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
