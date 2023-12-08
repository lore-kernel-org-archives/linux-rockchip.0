Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26934C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 13:09:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vlCKeL66nLAnjlPKALJLhFM4pYfKaYLY11tYdbLEhqU=; b=VC0VxaILuRfqvZ1zY/GsK3Fh4F
	hkXzW5HUckHRzsndeJbqpnXXogh1bDTy4thrVIExh4JZfHsUX+HajmuA7jBb6oZrZbmdxNqJOAz6m
	AnHnFfUWkg4877hy3CAqc1klbHeGtj0XCx/XbJn8jDZJu0UFv9RABxT2OjH7fTWN+GpfyWLvN9nrm
	Vcq7iTSnv+PhashLOEzb16670wy9FbOki+iKukMt62B80MhJZH5hoylsBv5ENFJ73n+PI4QJS5uPK
	/5sYBipY7fozIZXlikbbwhsexLOjgmScn5LYS2H0DfE4qvhJ2hEO06oLkOf3+Kdt0awuR4/HVmXgA
	jDdH4EaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBac1-00FfBG-0y;
	Fri, 08 Dec 2023 13:09:49 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBaby-00FfA7-32
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Dec 2023 13:09:48 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702040981;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=AvAxCokv/esmFeMuU6yBtus8XBaoTu608CTWToOl24I=;
	b=rfYbV4T5rPN1ZUXe1FeY2J98asd+3Gnwd3ZJ+82WomHULYNfGmh6oJId2qMEkX+BKFBwhP
	MADGkfYbu6PB4kHRZCHbfkbqkAJ6jNrsbJwwULYRTorzJovSdt1e4j0ZuyANCUXKaEsBqz
	dAp6DjMbz8PKYLiGwNaag7FOLfDE1eku+90jB3IW7k1dRQ4EmHw4VwVCQmvNE65OafdFUG
	MQgMRYARfRGeEyMM2ZxgLerMlQdgDJ5QRIO3Qd2s1h+LbVGoCwxKa0oKjQph99WIoMXMT0
	JPKAQl1t9YARz3EBblc3M8EBHiaMkNrgk/yNfLx4vkfyAdpcTn9clDQARGOGyA==
Date: Fri, 08 Dec 2023 14:09:41 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Shantur Rathore <i@shantur.com>
Subject: Re: Rk3399 - Typec - Extcon
In-Reply-To: <CAHc5_t2OHZ9Q+rQHfjhT90ZPtpDtSF7vaOdCbXDKszCNWCjHtw@mail.gmail.com>
References: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
 <6c89feb8ca7701d2a45710485fef8fc8@manjaro.org>
 <CACdvmAhzOnR=uQ-6MH30jiH1wyzO=fuqk4U4ayp03H53hqA3gQ@mail.gmail.com>
 <2ab01ab4d93dd22fd8b7bb48fdc8d41f@manjaro.org>
 <CACdvmAgDdjG_smJ0mWtOQWyMAtEMhLsUTN3PdcrYmxCqkzfoKg@mail.gmail.com>
 <CAHc5_t2OHZ9Q+rQHfjhT90ZPtpDtSF7vaOdCbXDKszCNWCjHtw@mail.gmail.com>
Message-ID: <3b9b260ad9c512f5683f4104d44c8fb5@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231208_050947_451907_F3ED8EB3 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, tom@radxa.com, cw00.choi@samsung.com, Jagan Teki <jagan@amarulasolutions.com>, dmitry.baryshkov@linaro.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyMy0xMi0wOCAxMTowOSwgU2hhbnR1ciBSYXRob3JlIHdyb3RlOgo+Pj4+IE9uIFRodSwg
RGVjIDcsIDIwMjMgYXQgNzowN+KAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3Jn
PiAKPj4+PiB3cm90ZToKPj4+Pj4gT24gMjAyMy0xMi0wNyAyMjoxMiwgU2hhbnR1ciBSYXRob3Jl
IHdyb3RlOgo+Pj4+Pj4gV291bGQgeW91IGtub3cgaWYgdGhlcmUncyBiZWVuIGFueSBvdGhlciBk
ZXZlbG9wbWVudCBvbiBzdXBwb3J0aW5nCj4+Pj4+PiBSb2NrY2hpcC1UeXBlQy1QaHkgd2l0aCBG
VVNCMzAyIGJvYXJkcyBsaWtlIFJvY2tQcm82NCBvciBQaW5lQm9vayAKPj4+Pj4+IFByby4KPj4+
Pj4+IAo+Pj4+Pj4gWzBdIAo+Pj4+Pj4gaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIw
MDkwNDE5MTgzMC4zODcyOTYtMy1qYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbS9ULyNtN2I1ZDY3
NDc2NDM3OTI1MzU2OGE0OTE1ZjJmOTk4OGQ3NGM4NjU5Mwo+Pj4+PiAKPj4+Pj4gQmFzaWNhbGx5
LCB3ZSBuZWVkIHRvIGdldCByaWQgb2YgdGhlIHdob2xlIGV4dGNvbiBoYWNrLCBhcyAKPj4+Pj4g
ZGVzY3JpYmVkIGluCj4+Pj4+IHRoZSB0aHJlYWQgbGlua2VkIGFib3ZlLCB3aGljaCBpcyBhIG1h
c3NpdmUgam9iIHRoYXQgYm9yZGVycyB3aXRoIGEKPj4+Pj4gY29tcGxldGUgcmV3cml0ZS4gIEkn
bGwgcHJvYmFibHkgKGFuZCBob3BlZnVsbHkgOikgZGl2ZSBpbnRvIGFsbCAKPj4+Pj4gdGhhdCBp
bgo+Pj4+PiB0aGUgZm9yZXNlZWFibGUgZnV0dXJlLgo+IAo+IFRoYXQgd291bGQgYmUgYXdlc29t
ZS4gRG9lcyB0aGlzIGFsc28gYWZmZWN0IHRoZSBTdXBlclNwZWVkCj4gaW1wbGVtZW50YXRpb24g
b24gUEJQIFR5cGVDIHBvcnQgPwo+IEFzIFBCUCBhbmQgUlA2NCBoYXZlIHZlcnkgc2ltaWxhciBo
YXJkd2FyZSwgSSBhbSBob3BpbmcgdG8gZ2V0Cj4gU3VwZXJTcGVlZCB3b3JraW5nIG9uIFR5cGVD
IHBvcnQgb24gbWFpbmxpbmUgb24gUlA2NC4KCklJUkMsIHNvbWUgb2YgdGhlIGFzc29jaWF0ZWQg
aXNzdWVzIG9uIHRoZSBSb2NrUHJvNjQgY2FuIGJlIGZpeGVkIAp3aXRob3V0IHRoZSBlbnRpcmUg
cmV3cml0ZSwgb3IgYXQgbGVhc3QgSSByZW1lbWJlciBzbyBiYWNrIGZyb20gZGlnZ2luZyAKdGhy
b3VnaCB0aGUgY29kZS4gIFRob3VnaCwgSSBjb3VsZCBiZSB3cm9uZywgaXQncyBiZWVuIGEgd2hp
bGUuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51
eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tj
aGlwCg==
