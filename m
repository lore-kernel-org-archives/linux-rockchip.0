Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88920606A31A
	for <linux-rockchip@archiver.kernel.org>; Mon, 23 Nov 2026 12:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=uPMhODEm;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=flipper.net header.i=@flipper.net header.a=rsa-sha256 header.s=google header.b=LVVCYyO1
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=N1pTMiv0RVHikdQM5bRmWKgGt79A/TYy3xH3DdVHPCg=; b=uPMhODEmyLwfRi2T9NulR4bdbt
	PVy1rnWAUmsVFrJmHeE2mpGgWAHGpFgBozBdHx6c09NXqv0nK582WsVfqMcdgT8U4jryJIa8IlrQ4
	6dz6D/wPj6k9fJETJbd/zN/LwXRBKibXv00D7ZLVodc5w4UeLWgqXcFMGnJMN6ARKnCNHDw8dNe6G
	LKIMsYRgzBVUvXcfnLxD89jeN1OJmH07ZybDPCAGOqCRqB71JNZNrMJUhha08yp3hEUrDkcjTStNq
	EsfrOJl9T1Nl8TxzVEEOIVb2kL+yVcUcZKyfkhc3JFakWX6aYwjnfJWtx3lh+Zc64vq7WWbxQvTOA
	NAmN2Eow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVT6U-00000003Lq3-170s;
	Mon, 23 Nov 2026 12:25:02 +0000
Received: from mail-ej1-x631.google.com ([2a00:1450:4864:20::631])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVT6P-00000003Lo3-0QUd
	for linux-rockchip@lists.infradead.org;
	Mon, 23 Nov 2026 12:24:59 +0000
Received: by mail-ej1-x631.google.com with SMTP id a640c23a62f3a-c506a231b88so443580466b.3
        for <linux-rockchip@lists.infradead.org>; Mon, 23 Nov 2026 04:24:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1795436693; cv=none;
        d=google.com; s=arc-20260327;
        b=VA+nZ/QOZSbw5JIRGnMFWxxw0AA9J6DjjnC21+4xq9vfsTI0ugi2qHXVDg0ydrWMxx
         Y4ihClDhYz2+57Vbuh1jk54J5OgqT0m1TB4qQTTuyNs+uI8hUUL2H1hD0NfvVMsQfT5/
         z/6OF85caaYZguL43vIe07L8MrP7mjgipLcXNECacexj3TlWjqdwJbcp6Ah6rWj7sL6Q
         NiYui2oTjNH3sXUe//lstQusx0aRXGe2zKtYdtpk/ERw8y5vvRY7xcSHN2YuHNAaDwsb
         DOnDyE7iDQfiXqZuBwNxbgg9NKrhxkx/SHykFs/soRzG+8LqSNaK6/J1v7qur7LiqWcO
         iBwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=3JGEHCaGHgSI8BrKRQk6rt3qVFIqpC8XEVH84mN8VhI=;
        fh=6YgjywK12UFYuD9RvPw/eS2Nb/p9qCAFIGo8ubMWvbk=;
        b=JDmYdstJ0OVREKuy2QPypbyoBy0hj7Qcv6tktRmxUpzOjaBH4HXlT4StPoluVevSKS
         z6tXWKsoyJwQeuXJNQkIQcYNmFZPRbtj6/BomTBg7lVE2MSDuRFUBkO3jAO0+vVjmNFN
         pcHQxddkZC+oDcFn8uu1YU3rpiCJ8kGqpCbOFXUWlHl+R0fqMyj6sFjGNwKiaKtCKMFN
         DMNnjf1vznkw9sHXpAMw7gb2AqEIVDAbLr4dZRrd/50TIwhDZWK4IztYFHtUW1p7EFE4
         +cg7jenXhCFPcaqNVS/6nrZYB9cMnLmqvcuYv7tQKOtwcpMgSD0MMgmUqMvJ4Htbq431
         CcVg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=flipper.net; s=google; t=1795436693; x=1796041493; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=3JGEHCaGHgSI8BrKRQk6rt3qVFIqpC8XEVH84mN8VhI=;
        b=LVVCYyO1OhKHxOFyOJcVEHGR8LKSHlkcHeUFy4CUqLVHXKX0752yESmPSd280vx5Fu
         O1pBNbm6AiWgo4UofrLXqVjDEPGIz8F5Yk64jmg8LBA01mtfzPRu15+d1q3KHY34Wrc2
         xI9vWAttdUyFUar2g1owjrgHIGT0KfyQH5UfgOkrpoEn2EgTQv/FPxbOg2muylxJ9RTA
         l/Qtn4IjJ+tkKt+mPR3fIQsISIjaqmfkZJD+96vEYefGQLygBwr1OCLB1FtHEhpYUaft
         H1JyKJu9pvChjbziifraIOXKTkofx/s/kSVj2mvEFaLCXiDyTIVu19e2ZrtfT5gXfvBe
         0V7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795436693; x=1796041493;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=3JGEHCaGHgSI8BrKRQk6rt3qVFIqpC8XEVH84mN8VhI=;
        b=OkDzYRI5CD5H//j1UDkA/UvuRIAA602PdUDq53JGNO71AOEvM04xtEcgawc9jEiJtj
         kHJ+yfQcequzPjLfMxwBcn6oIOKRPmaDyfZtqqJjrTkPZKAkVNzSmQe9j8P0Quxu3Zm2
         XQH6Lvfv2UIwDzWrJg3ga+Y/IPO+c2zasMSkoXqCXaMF3mILmA7h4ntlccMg2/ctyIGs
         VEmLv5Y30ISEJfsAdkCkhq5UD0HB8gHRpE9k/Fp/qzd0p5Y0eTlC10w+wX22i/mA/dDP
         +q5XLBejiPFnaPAPNrk2QlSyhqbovcb4tJGQ6K4423OWecayMNehxNWOtvD27yqEo6jh
         JZZQ==
X-Forwarded-Encrypted: i=1; AL+hErE6E2Pvbumi/txFjO2OKDD3P835mYwSeCI97a9g+hr+wAycEuJn2OFLljdzQivaGEsEKB7r2wkHZRDJy7maHg==@lists.infradead.org
X-Gm-Message-State: APuU4Z+ou04fPejvC/mTU9RvwUoO4KDDn2hmjgOgLmEuUPwjxrqieAbe
	bgt96JOxFldfC/tFoKehhxslbEojrTsFHHnO5MAC3zg9MGDj4IEw6LXUroxNSkFFRmy5+7GeZOA
	Z/aaahtWEuCffmL2gJ/DLsTNNedpB+3XqglmQQy1QNQ==
X-Gm-Gg: AZFdTZc0dK3UYcGBHcVgqnEtzPGACy/qzPMScaLqZOwkh20bX0qE+gr7L9RI5M5yGD8
	Khw2T4ussYfQRWD7gr1TQ4hBnOGJs6hjSeS3P6lNIszi29RXUvC2vr6B2BasrzdQCGC6kkZZJKg
	IiUJlVypC3PEsgTWbDL1NbMaTqRtrUlJl7/m5Ew/yjqP2XTUzr0lWezPJ/3xGu4FI2gXY8/vwu+
	1in//YiEpWNkNefGYnhRjA+zEgO43gWj8UVx+Y69WcZ10RuePQECLIImSGtLsYfBHqXR1LrtAEt
	miI5yRCsx/c2J9v4k0X1KmrPHcaZ0HAkFwwQlAlJS7uXozdwStXSnqb/kbNlIceH6VYDOCjNGMB
	BqrkAfnU7m7jNqe8CMtnSD0fUskdhlIVdYUd4eGRepx2obZhmG1Vnn9cscXDIrBELTQNAI1ND9c
	Ug0ao6v4xk/9CwUJg=
X-Received: by 2002:a17:907:fd15:b0:c40:33d:f06f with SMTP id
 a640c23a62f3a-c513aaad90bmr920564266b.39.1795436692893; Mon, 23 Nov 2026
 04:24:52 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20260902-rk3576-otp-cpuid-mac-v2-0-e4b7fe2ab13f@flipper.net>
 <CAKTNdwH9QAgreJ-6+t1j_P1di4VyoMBSsFkf_g=mCi_-M8g9Pw@mail.gmail.com>
 <20260917221857.GA4056431-robh@kernel.org> <CAKTNdwH6E5=9gZHB6tdianC2+1aDv4wnLmvL59kDW-dR3a12bg@mail.gmail.com>
 <AQpdyd6hRl9cLAxBK-fEdzq0dcZsWpHP63dbDpOxcNQWCdaNIc4D3Mfi9Ll86jBVsbEVhr5-9EZzFHbkF6efBDcRUT7nXx9TH5Aeffy5DyU=@protonmail.com>
 <RWg2ZbGh-TJtEJMDWD9DGxBKsszG10BM07351ALdCUa9UL-IImPGxSYztcNF3kiRFVCA0x5cECwign-2lb56nPMGZQ5LVZhckY4-KTb5qpk=@protonmail.com>
In-Reply-To: <RWg2ZbGh-TJtEJMDWD9DGxBKsszG10BM07351ALdCUa9UL-IImPGxSYztcNF3kiRFVCA0x5cECwign-2lb56nPMGZQ5LVZhckY4-KTb5qpk=@protonmail.com>
From: Alexey Charkov <alchark@flipper.net>
Date: Mon, 23 Nov 2026 16:24:40 +0400
X-Gm-Features: Aa3M54pJDInt1dUc3UbuIPmLJ056A7-Am1qM49T-fqpCAj8EFLf-eta10BiPxGY
Message-ID: <CAKTNdwHOoG8j59X7z6j15n8TTf-A-+EQhvC+SqNWOq24p9vNLw@mail.gmail.com>
Subject: Re: [PATCH v2 0/4] nvmem: Derive Rockchip MAC addresses from the OTP
 CPU ID
To: Ryan Leung <untilscour@protonmail.com>
Cc: Rob Herring <robh@kernel.org>, Srinivas Kandagatla <srini@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Michael Walle <michael@walle.cc>, 
	Miquel Raynal <miquel.raynal@bootlin.com>, Finley Xiao <finley.xiao@rock-chips.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org, stable@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_042457_202803_026F59CE 
X-CRM114-Status: GOOD (  47.08  )
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
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

SGkgUnlhbiwKCk9uIFN1biwgTm92IDIyLCAyMDI2IGF0IDY6MDjigK9BTSBSeWFuIExldW5nIDx1
bnRpbHNjb3VyQHByb3Rvbm1haWwuY29tPiB3cm90ZToKPgo+IEhpIEFsZXhleSwKPgo+IE9uIFdl
ZG5lc2RheSwgTm92ZW1iZXIgMTh0aCwgMjAyNiBhdCAxMDo1MSBQTSwgUnlhbiBMZXVuZyA8dW50
aWxzY291ckBwcm90b25tYWlsLmNvbT4gd3JvdGU6Cj4KPiA+IE9uIEZyaWRheSwgU2VwdGVtYmVy
IDE4dGgsIDIwMjYgYXQgMzowOCBQTSwgQWxleGV5IENoYXJrb3YgPGFsY2hhcmtAZmxpcHBlci5u
ZXQ+IHdyb3RlOgo+ID4KPiA+ID4gSGkgUm9iLAo+ID4gPgo+ID4gPiBPbiBGcmksIFNlcCAxOCwg
MjAyNiBhdCAyOjE54oCvQU0gUm9iIEhlcnJpbmcgPHJvYmhAa2VybmVsLm9yZz4gd3JvdGU6Cj4g
PiA+ID4KPiA+ID4gPiBPbiBUaHUsIFNlcCAxMCwgMjAyNiBhdCAwNjo0ODozM1BNICswNDAwLCBB
bGV4ZXkgQ2hhcmtvdiB3cm90ZToKPiA+ID4gPiA+IE9uIFdlZCwgU2VwIDIsIDIwMjYgYXQgNTow
OOKAr1BNIEFsZXhleSBDaGFya292IDxhbGNoYXJrQGZsaXBwZXIubmV0PiB3cm90ZToKPiA+ID4g
PiA+ID4KPiA+ID4gPiA+ID4gUm9ja2NoaXAgU29DcyBhcmUgc2hpcHBlZCB3aXRoIGEgdW5pcXVl
IENQVSBJRCBpbiB0aGVpciBpbnRlcm5hbCBPVFAKPiA+ID4gPiA+ID4gbWVtb3J5LCBhbmQgUm9j
a2NoaXAgYm9vdGxvYWRlcnMgdXNlIGl0IHRvIGdpdmUgYm9hcmRzIHdoaWNoIGhhdmUgbm8KPiA+
ID4gPiA+ID4gZGVkaWNhdGVkIHN0b3JhZ2UgZm9yIGEgTUFDIGFkZHJlc3MgYSBzdGFibGUgb25l
IGFueXdheTogdGhleSBoYXNoIHRoZSBDUFUKPiA+ID4gPiA+ID4gSUQgYW5kIHBhdGNoIHRoZSBy
ZXN1bHRpbmcgYWRkcmVzc2VzIGludG8gdGhlIGRldmljZSB0cmVlIHRoZXkgaGFuZCBvdmVyLgo+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBLZXJuZWxzIHN0YXJ0ZWQgd2l0aG91dCB0aGF0IGZpeHVw
LCBlLmcuIHN0cmFpZ2h0IGZyb20gdGhlIFNQTCBpbiBGYWxjb24KPiA+ID4gPiA+ID4gbW9kZSBv
ciBieSBhbnkgb3RoZXIgbG9hZGVyIHdoaWNoIGRvZXMgbm90IGltcGxlbWVudCBSb2NrY2hpcCdz
IGRlcml2YXRpb24sCj4gPiA+ID4gPiA+IGZhbGwgYmFjayB0byByYW5kb20gTUFDIGFkZHJlc3Nl
cyB3aGljaCBjaGFuZ2Ugb24gZXZlcnkgYm9vdC4KPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4gRm9y
bWFsaXplIHRoZSBkZXJpdmF0aW9uIGluIHRoZSBEVCBiaW5kaW5nIGFuZCBhZGQgYSBMaW51eCBr
ZXJuZWwgZHJpdmVyCj4gPiA+ID4gPiA+IGltcGxlbWVudGluZyBpdCwgc28gdGhhdCBhIExpbnV4
IGltYWdlIGNhbiB1c2UgdGhlIHNhbWUgc3RhYmxlIGFkZHJlc3Nlcwo+ID4gPiA+ID4gPiByZWdh
cmRsZXNzIG9mIHRoZSBib290IGZsb3cuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IE9ubHkgUksz
NTc2IGlzIHdpcmVkIHVwIGhlcmUsIHRoYXQgYmVpbmcgdGhlIFNvQyBJIGNhbiB0ZXN0IG9uLiBP
dGhlcgo+ID4gPiA+ID4gPiBSb2NrY2hpcCBTb0NzIGtlZXAgdGhlIHNhbWUgQ1BVIElEIGF0IGEg
ZGlmZmVyZW50IE9UUCBvZmZzZXQgLSAweDcgcmF0aGVyCj4gPiA+ID4gPiA+IHRoYW4gMHhhIG9u
IFJLMzU4OCwgZm9yIGluc3RhbmNlIC0gd2hpY2ggbWFrZXMgc3VwcG9ydGluZyB0aGVtIGEgdHdv
LWxpbmUKPiA+ID4gPiA+ID4gYWRkaXRpb24gdG8gdGhlIGRyaXZlcidzIG1hdGNoIHRhYmxlIHBs
dXMgdGhlIGxheW91dCBub2RlLgo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBQYXRjaCAxIGlzIGEg
cHJlcmVxdWlzaXRlIGZpeC4gVGhlIE9UUCBoYXJkd2FyZSBoYXMgaXRzIG93biBpbnRlcm5hbCBz
dGF0ZQo+ID4gPiA+ID4gPiBtYWNoaW5lIHdoaWNoIG9ubHkgd29ya3MgY29ycmVjdGx5IHdpdGgg
c2VyaWFsIGFjY2VzcywgYnV0IHRoZSBjdXJyZW50Cj4gPiA+ID4gPiA+IGRyaXZlciBzZXJpYWxp
emVzIG5vdGhpbmcsIHdoaWNoIHJlc3VsdHMgaW4gdGltZW91dHMgYW5kL29yIGNvcnJ1cHRlZAo+
ID4gPiA+ID4gPiByZWFkcyAoZS5nLiByZXR1cm5pbmcgc3BsaWNpbmcgYSBUU0FEQyB0cmltIHZh
bHVlIGludG8gdGhlIGJ1ZmZlciBvZiBhCj4gPiA+ID4gPiA+IGNhbGxlciBhc2tpbmcgZm9yIHRo
ZSBDUFUgSUQsIG9yIG1peGluZyB1cCB0cmltIHZhbHVlcyBvZiBkaWZmZXJlbnQgVFNBREMKPiA+
ID4gPiA+ID4gY2FsbGVycykuIEhlbmNlIHRoZSBGaXhlczogdGFnIGFuZCBDYzogc3RhYmxlLgo+
ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBDcm9zcy1jaGVja2VkIG9uIGFuIFJLMzU3NiBib2FyZDog
dGhlIGFkZHJlc3NlcyBmaXhlZCB1cCBpbnRvIHRoZSBGRFQgYnkKPiA+ID4gPiA+ID4gVS1Cb290
IG1hdGNoIHRoZSBvbmVzIGRlcml2ZWQgYnkgdGhlIG5ldyBkcml2ZXIsIGFuZCB0aGUgZHJpdmVy
IGNvcnJlY3RseQo+ID4gPiA+ID4gPiBhc3NpZ25zIHRoZW0gdG8gdGhlIG5ldHdvcmsgaW50ZXJm
YWNlcyB3aGVuIHRoZSBrZXJuZWwgaXMgYm9vdGVkIHdpdGhvdXQKPiA+ID4gPiA+ID4gVS1Cb290
IHByb3BlciBhdCBhbGwgKHZpYSBGYWxjb24gbW9kZSkuCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+
IFNhc2hpa28gYWxzbyByaWdodGx5IHBvaW50ZWQgb3V0IGEgdXNlLWFmdGVyLWZyZWUgaW4gdGhl
IG52bWVtIGNvcmUgd2hlbgo+ID4gPiA+ID4gPiBhIGxheW91dCBkcml2ZXIgaXMgdW5sb2FkZWQg
bGVhdmluZyBpdHMgc3lzZnMgbm9kZXMgYW5kIHRoZSBwb3N0cHJvY2Vzc29yCj4gPiA+ID4gPiA+
IGZ1bmN0aW9uIHBvaW50ZXIgZGFuZ2xpbmcuIFRoaXMgaXMgZml4ZWQgc2VwYXJhdGVseSBpbiBb
MV0uCj4gPiA+ID4gPiA+Cj4gPiA+ID4gPiA+IFsxXSBodHRwczovL2xvcmUua2VybmVsLm9yZy9h
bGwvMjAyNjA5MDItbnZtZW0tbGF5b3V0LXVucmVnLXYxLTEtMmQxNmJlYmViNTE4QGZsaXBwZXIu
bmV0Lwo+ID4gPiA+ID4gPgo+ID4gPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbGV4ZXkgQ2hhcmtv
diA8YWxjaGFya0BmbGlwcGVyLm5ldD4KPiA+ID4gPiA+ID4gLS0tCj4gPiA+ID4gPiA+IENoYW5n
ZXMgaW4gdjI6Cj4gPiA+ID4gPiA+IC0gU3dpdGNoZWQgZnJvbSBhIHNjb3BlLWJhc2VkIGd1YXJk
IHRvIGV4cGxpY2l0IGxvY2svdW5sb2NrIGNhbGxzIGluIHRoZQo+ID4gPiA+ID4gPiAgIE9UUCBk
cml2ZXIgdG8gYXZvaWQgbWl4aW5nIHN0eWxlcyBpbiBhIGZ1bmN0aW9uIHVzaW5nIGdvdG8gZXJy
b3IKPiA+ID4gPiA+ID4gICBoYW5kbGluZyAoU2FzaGlrbykKPiA+ID4gPiA+ID4gLSBMaW5rIHRv
IHYxOiBodHRwczovL3BhdGNoLm1zZ2lkLmxpbmsvMjAyNjA5MDEtcmszNTc2LW90cC1jcHVpZC1t
YWMtdjEtMC1lYTkxMzUyNzBmYzJAZmxpcHBlci5uZXQKPiA+ID4gPiA+ID4KPiA+ID4gPiA+ID4g
LS0tCj4gPiA+ID4gPiA+IEFsZXhleSBDaGFya292ICg0KToKPiA+ID4gPiA+ID4gICAgICAgbnZt
ZW06IHJvY2tjaGlwLW90cDogU2VyaWFsaXplIHJlYWRzCj4gPiA+ID4gPgo+ID4gPiA+ID4gSW5j
aWRlbnRhbGx5LCBwYXRjaCAxIG9mIHRoaXMgc2VyaWVzIGFsc28gZml4ZXMgQ1BVIHRoZXJtYWwg
dGhyb3R0bGluZwo+ID4gPiA+ID4gb24gbXkgUkszNTc2IGRldmljZTogYXBwYXJlbnRseSwgdGhl
IG1pcy1yZWFkIE9UUC1wcm9ncmFtbWVkIHRoZXJtYWwKPiA+ID4gPiA+IHRyaW0gdmFsdWVzIGJy
b2tlIHRoZSB0aGVybWFsIGdvdmVybm9yIGxvZ2ljLCB3aGljaCBub3cgd29ya3MKPiA+ID4gPiA+
IGNvcnJlY3RseSB3aXRoIHByb3Blcmx5IHNlcmlhbGl6ZWQgT1RQIHJlYWRzLiBTbyBpdCB3b3Vs
ZCBiZSBncmVhdCB0bwo+ID4gPiA+ID4gaGF2ZSB0aGVzZSBtZXJnZWQuCj4gPiA+ID4KPiA+ID4g
PiBJdCB3b3VsZCBiZSBncmVhdCB0byBoYXZlIHRoZSBzYXNoaWtvIGNvbW1lbnRzIGFuYWx5emVk
IGFuZCByZXBsaWVkIHRvCj4gPiA+ID4gYXMgd2VsbCBpZiB5b3Ugd291bGQgbGlrZSB0aGlzIHRv
IGJlIHJldmlld2VkLgo+ID4gPgo+ID4gPiBPZiBjb3Vyc2UuIE9uZSBjb2RlLXJlbGF0ZWQgY29t
bWVudCBTYXNoaWtvIHJhaXNlZCBoYXMgYmVlbiBhZGRyZXNzZWQKPiA+ID4gaW4gYSBzZXBhcmF0
ZSBwYXRjaCBbMV0gd2hpY2ggaXMgc3RpbGwgcGVuZGluZyByZXZpZXcuIFRoZQo+ID4gPiBiaW5k
aW5nLXJlbGF0ZWQgY29tbWVudHMgd2lsbCBuZWVkIHRvIGJlIHJldmlzaXRlZCwgYXMgSSdkIGxp
a2UgdG8KPiA+ID4gZmlyc3QgZXhwbG9yZSB0aGUgaWRlYSBSeWFuIHByb3Bvc2VkIGluIHRoZSBh
ZGphY2VudCB0aHJlYWQgWzJdLCBhcyBpdAo+ID4gPiB3aWxsIGNoYW5nZSB0aGUgYXBwcm9hY2gg
c29tZXdoYXQgaWYgaXQgd29ya3Mgb3V0Lgo+ID4gPgo+ID4gPiBCZXN0IHJlZ2FyZHMsCj4gPiA+
IEFsZXhleQo+ID4gPgo+ID4gPiBbMV0gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvYWxsLzIwMjYw
OTAyLW52bWVtLWxheW91dC11bnJlZy12MS0xLTJkMTZiZWJlYjUxOEBmbGlwcGVyLm5ldC8KPiA+
ID4gWzJdIGh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2FsbC8yMDI2MDkxNjEyMzM1NS40NTA3LTEt
dW50aWxzY291ckBwcm90b25tYWlsLmNvbS8KPiA+Cj4gPiBIaSBBbGV4ZXksCj4gPgo+ID4gSGF2
ZSB5b3UgaGFkIGEgY2hhbmNlIHRvIGV4cGxvcmUgdGhpcz8gSSBoYXZlIGdvdCBhIHdvcmtpbmcg
cHJvb2Ygb2YKPiA+IGNvbmNlcHQgWzFdIGZvciB0aGUgZm9ybWF0IEkgc3VnZ2VzdGVkLCB0ZXN0
ZWQgb24gUkszNTc2IChOYW5vUGkgTTUpIGFuZAo+ID4gUkszNTI4IChOYW5vUGkgUjI4UykuCj4g
Pgo+ID4gQmVzdCByZWdhcmRzLAo+ID4gUnlhbgo+ID4KPiA+IFsxXSBodHRwczovL2dpdGh1Yi5j
b20vdW50aWxzY291ci9vcGVud3J0L2NvbW1pdC9hNjIyYzFjZjI5MmY3YTRiYjcwOTM1MjFlMjU0
MzZiZTMyNGZjMWE0Cj4KPiBJJ3ZlIHVwZGF0ZWQgWzFdIHRoZSBwcm9vZiBvZiBjb25jZXB0IHNs
aWdodGx5LiBQZXJoYXBzIHlvdSBhcmUgYnVzeQo+IHdpdGggb3RoZXIgcGF0Y2hlcz8gQXMgaXQn
cyBiZWVuIG1vcmUgdGhhbiAyIG1vbnRocywgaWYgeW91IGRvbid0IG1pbmQsCj4gSSdkIGxpa2Ug
dG8gc2VuZCBpdCBpbiBhcyB2MyBvZiB0aGlzIHNlcmllcywgd2l0aCB5b3UgYXMgY28tYXV0aG9y
LgoKSSd2ZSBoYWQgYSBsb29rIGF0IHlvdXIgcHJvb2Ygb2YgY29uY2VwdC4gV2hhdCB3b3JyaWVz
IG1lIGlzIHRoYXQgaXQKaW50cm9kdWNlcyBhICJ2aXJ0dWFsIiBEVCBub2RlIGZvciB0aGUgTUFD
IGFkZHJlc3MgZGVyaXZhdGlvbiB3aXRob3V0CmEgY29ycmVzcG9uZGluZyBoYXJkd2FyZSBibG9j
ayB1bmRlcm5lYXRoIGl0LCB3aGljaCBzb3VuZHMgYWdhaW5zdCBEVApjb252ZW50aW9ucy4KCkkn
ZCBsaWtlIHRvIHRyeSBhIHNsaWdodGx5IGRpZmZlcmVudCBhcHByb2FjaDogaGF2ZSB0aGUgQ1BV
SUQgY2VsbApjYXJyeSBhIGRlZGljYXRlZCBjb21wYXRpYmxlIHN0cmluZyBzdWNoIGFzICJyb2Nr
Y2hpcCxjcHVpZCIsIHdpdGggYQpiaW5kaW5nIGRlc2NyaXB0aW9uIG91dGxpbmluZyB0aGUgYWRk
ZWQgc2VtYW50aWNzIGZvciBkZXJpdmluZyBhIE1BQwphZGRyZXNzIGZyb20gaXQuIFRoZW4gaGF2
ZSB0aGUgTlZNRU0gZHJpdmVyIGNoZWNrIGlmIHRoZSBjZWxsIGlzCmFjY2Vzc2VkIGFzICJtYWMt
YWRkcmVzcyIgYW5kIGFwcGx5IHBvc3Rwcm9jZXNzaW5nIGJlZm9yZSByZXR1cm5pbmcKdGhlIGJ1
ZmZlci4gVGhhdCdzIHdoYXQgZS5nLiBkcml2ZXJzL252bWVtL2lteC1vY290cC5jIGRvZXMgY3Vy
cmVudGx5LgoKTGV0IG1lIGdpdmUgaXQgYSB0cnksIGFuZCB0aGVuIGxldCdzIHNlZSB3aGF0IG90
aGVyIHJldmlld2VycyBzYXkuCkknbGwgYWRkIHlvdSBpbiBDYy4KCkJlc3QgcmVnYXJkcywKQWxl
eGV5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
