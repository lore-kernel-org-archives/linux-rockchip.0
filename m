Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24F82C25B08
	for <linux-rockchip@archiver.kernel.org>; Sun, 21 Aug 2022 00:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AjBqYIZiND5Cr2J1gHTHT9qc1EiKMCJTfPuXCRoAHjs=; b=KPjCsnKRSCeehH
	xfqYmTyhePlqb7rOWVOZ5PNxboSSX+Hvv6awMFyImk9sAG+Xn5B58agr6tkDhZ0RKB9a6TJ3izcMu
	/Ws//5IaD+ccmHnmLoKeiJoAc0nTdyjK6musx/Uk7NS/ZAQhwRohixbKMLIk8n/sVZTu6PeBEJJGM
	AD9c0EKHFTrzmPyLx2r54tvR5v1P0K9euv2UFdA5MhBNryEUEP5wBHOMfYEDQYJojKMnhzdDYsMTE
	8K+C8zmB6DN/6U/HUcTouaJLZTAA5iQpQfUipYpF0L92sgeIrbOhUvxv/rbvpMn88kLJECFofZ9ef
	JMe1Rs/ftWaDKuH9nD7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPYZ7-00EG8s-NA; Sun, 21 Aug 2022 00:11:45 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPYYr-00EFgP-NH; Sun, 21 Aug 2022 00:11:31 +0000
Received: (Authenticated sender: n@nfraprado.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 8912BFF804;
	Sun, 21 Aug 2022 00:11:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nfraprado.net;
	s=gm1; t=1661040681;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ZVc/spzvVRXvcAwGLO93tueirWsgH1TzbcCXIqS2zJg=;
	b=CSrtbKcSPKr+c/PD7wvl7QBCDvWS5Ptbe6a/G0efcVFbPQyXWAoq6ZssqmM1FIVQyMCWCi
	LEJhrT67lNJndYhhgIJH+VIPdNHEloVKtEYBFNrSNyEPgz2t31gKiNoHnTyDa8OO8kJlmV
	f6rCj4UddJmjUwXHzpoQOFuiqxIQuaMlWs0dqJlNWfCgr/0XwB5RR0h8Y6xq4vFB3DDSdU
	ZOPqb1D1O3xR8Ytc9pe9RrF7crHrt2KCyzlCc6/OJQes1WlPAXDugI5fa75pdaKn0eVgTx
	Rarc7oFRU8vHa8sXVetzcfuGqZrSlsrPs04Mw+Xuj6843Cgd0mBk3+FeNyiHfQ==
Date: Sat, 20 Aug 2022 20:11:14 -0400
From: =?utf-8?B?TsOtY29sYXMgRi4gUi4gQS4=?= Prado <n@nfraprado.net>
To: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
	martijn@brixit.nl, ayufan@ayufan.eu, megi@xff.cz,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, phone-devel@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Message-ID: <20220821001114.ahnb4f6hcykt5nrm@notapiano>
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
 <20220815123004.252014-3-tom@tom-fitzhenry.me.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220815123004.252014-3-tom@tom-fitzhenry.me.uk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220820_171130_108065_28BFC7A4 
X-CRM114-Status: GOOD (  11.19  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBBdWcgMTUsIDIwMjIgYXQgMTA6MzA6MDRQTSArMTAwMCwgVG9tIEZpdHpoZW5yeSB3
cm90ZToKPiBGcm9tOiBNYXJ0aWpuIEJyYWFtIDxtYXJ0aWpuQGJyaXhpdC5ubD4KPiAKPiBUaGlz
IGlzIGEgYmFzaWMgRFQgY29udGFpbmluZyByZWd1bGF0b3JzIGFuZCBVQVJULCBpbnRlbmRlZCB0
byBiZSBhCj4gYmFzZSB0aGF0IG15c2VsZiBhbmQgb3RoZXJzIGNhbiBhZGQgYWRkaXRpb25hbCBu
b2RlcyBpbiBmdXR1cmUgcGF0Y2hlcy4KPiAKPiBUZXN0ZWQgdG8gd29yazogYm9vdGluZyBmcm9t
IGVNTUMsIG91dHB1dCBvdmVyIFVBUlQuCj4gCj4gaHR0cHM6Ly93aWtpLnBpbmU2NC5vcmcvd2lr
aS9QaW5lUGhvbmVfUHJvCj4gCj4gVGhpcyBpcyBkZXJpdmVkIGZyb20KPiBodHRwczovL2dpdGxh
Yi5jb20vcGluZTY0LW9yZy9saW51eC8tL2NvbW1pdC8yNjFkM2I1ZjhhYzUwM2Y5N2RhODEwOTg2
ZDFkNjQyMjQzMGM4NTMxCj4gd2l0aCBmaXhlcyBmcm9tIGh0dHBzOi8vbWVnb3VzLmNvbS9naXQv
bGludXguCj4gCj4gU2lnbmVkLW9mZi1ieTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQu
bmw+Cj4gQ28tZGV2ZWxvcGVkLWJ5OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1
Pgo+IFtubyBTb0IsIGJ1dCBLYW1pbCBpcyBoYXBweSBmb3IgdGhpcyBwYXRjaCB0byBiZSBzdWJt
aXR0ZWRdCj4gQ28tZGV2ZWxvcGVkLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiBT
aWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiBDby1kZXZlbG9wZWQt
Ynk6IFRvbSBGaXR6aGVucnkgPHRvbUB0b20tZml0emhlbnJ5Lm1lLnVrPgo+IFNpZ25lZC1vZmYt
Ynk6IFRvbSBGaXR6aGVucnkgPHRvbUB0b20tZml0emhlbnJ5Lm1lLnVrPgoKVGVzdGVkLWJ5OiBO
w61jb2xhcyBGLiBSLiBBLiBQcmFkbyA8bkBuZnJhcHJhZG8ubmV0PgoKSW5kZWVkIGJvb3Rpbmcg
ZnJvbSB0aGUgU0QgY2FyZCBhbHNvIHdvcmtzIHdpdGggdGhpcyBtaW5pbWFsIERULiBBbHNvIGNv
bmZpcm1lZAp0aGF0IGVNTUMsIHRoZXJtYWwgc2Vuc29ycywgcG93ZXIgYnV0dG9uLCByZWd1bGF0
b3JzIGFuZCBVQVJUIGFyZSBhbGwgd29ya2luZy4KClRoYW5rcywKTsOtY29sYXMKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
