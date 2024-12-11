Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF94DE77182
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 07:14:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=edJQbnMZ+F7NxGiybap1AxDBdd5nlmo8Fyxd11B8pvo=; b=V6WROHONTD0IFTFz9IAtUzvHVr
	/A5F0eVGlFJFzlDMSb2vMwwHqEKmRFOzL1sArD6279ocdo0Dy4VoQP2DrTrSwsalLqw3vjZRd8BN7
	pC8f/IG9xxEH62DW+d4M7515mIK5sv7U4ibrbuwYHpL3viMH9hoUsQf1jew0OQ4BfJ/UeYQnTNzjL
	YzGansSt+mWpZ6xPvwuA+l4LrC4h4hoe/LA+IqfIOJ4GvEXyrbhAfaOvDI/sKqk1DzjQB6EbCVZd/
	sbfCy0TCcu/9u8MfLMX5hUspoRA9dLoi7GsuxD4jNDTcFJni4D8EFN0nwiaYtEviFh00bD/S/39X3
	P07ylrWg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGv6-0000000E1WE-2Viq;
	Wed, 11 Dec 2024 07:14:04 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLGv4-0000000E1UV-3xE3
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Dec 2024 07:14:04 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733901240;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JHl9gzsBHUpWjWrE/MPO0hV7MPKXbQVYexA7ms6rlMY=;
	b=mig7R1zalvHErfR+nvWbOvZdJXIZnMmqpGsrkYxd4DwIhOlFzU300lm1pKO5NWx+azG/RN
	jgk/vjg4MhM+KSVDUVzmUIctlfvJxrk3AWInyv53xzvyR54SZyKntSukQtYkC5c5eq6WaF
	I0ew/ksLXrrdss/jMx3RNKcrzxAq9AR3KfC3kPqCzzHTY3WB9cQESHSz0/7feLbcUHUzMM
	p0dwUcBInH+vxxd8Nwc1Un0hPGvjO8+HWXXl/rRWhUFGsmHDGIS5tdO/4uwidPr9QRGprn
	5xGJaHqLXvfHYhFvGjnxthFlxgY8qlML2Q7Uyml4vUchHbEZLrO+4OW5Qp3nrQ==
Date: Wed, 11 Dec 2024 08:14:00 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, macromorgan@hotmail.com, jonas@kwiboo.se,
 andyshrk@163.com, liujianfeng1994@gmail.com, tim@feathertop.org,
 devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: arm: rockchip: add Radxa ROCK 5C Lite
In-Reply-To: <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
References: <20241211060936.57452-1-naoki@radxa.com>
 <c6ba70f1681bb635190e9452ecb22d59@manjaro.org>
 <FE22A7AEB0707DE7+903efcab-b291-4a12-a9a5-ba1cc3658016@radxa.com>
Message-ID: <99758008e8501d799c2a93e192645590@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_231403_125475_102D795E 
X-CRM114-Status: GOOD (  12.49  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjAyNC0xMi0xMSAwNzo0NCwgRlVLQVVNSSBOYW9raSB3cm90ZToKPiBPbiAxMi8xMS8yNCAx
NTozNiwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiBPbiAyMDI0LTEyLTExIDA3OjA5LCBGVUtBVU1J
IE5hb2tpIHdyb3RlOgo+Pj4gVGhlIFJhZHhhIFJPQ0sgNUMgTGl0ZSB1c2VzIGEgZGlmZmVyZW50
IFNvQyAoUkszNTgyKSBjb21wYXJlZCB0byB0aGUKPj4+IFJhZHhhIFJPQ0sgNUMgKFJLMzU4OFMy
KSwgYnV0IHRoZSB0d28gYXJlIGNvbXBhdGlibGUgZnJvbSBhIHNvZnR3YXJlCj4+PiBwZXJzcGVj
dGl2ZS4KPj4+IAo+Pj4gRml4ZXM6IGRmNGUwOGE1ZWVkMSAoImR0LWJpbmRpbmdzOiBhcm06IHJv
Y2tjaGlwOiBhZGQgUmFkeGEgUk9DSyA1QyIpCj4+PiBTaWduZWQtb2ZmLWJ5OiBGVUtBVU1JIE5h
b2tpIDxuYW9raUByYWR4YS5jb20+Cj4+PiAtLS0KPj4+IMKgRG9jdW1lbnRhdGlvbi9kZXZpY2V0
cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgMiArLQo+Pj4gwqAxIGZpbGUgY2hhbmdl
ZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKPj4+IAo+Pj4gZGlmZiAtLWdpdCBhL0Rv
Y3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAo+Pj4gYi9E
b2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPj4+IGlu
ZGV4IDc1MzE5OWExMjkyMy4uMjI1NGVlMDc5MDk0IDEwMDY0NAo+Pj4gLS0tIGEvRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4+PiArKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKPj4+IEBAIC04
OTUsNyArODk1LDcgQEAgcHJvcGVydGllczoKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29u
c3Q6IHJhZHhhLHJvY2stNWIKPj4+IMKgwqDCoMKgwqDCoMKgwqDCoMKgIC0gY29uc3Q6IHJvY2tj
aGlwLHJrMzU4OAo+Pj4gCj4+PiAtwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBSYWR4YSBST0NL
IDVDCj4+PiArwqDCoMKgwqDCoCAtIGRlc2NyaXB0aW9uOiBSYWR4YSBST0NLIDVDLzVDIExpdGUK
Pj4+IMKgwqDCoMKgwqDCoMKgwqAgaXRlbXM6Cj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNv
bnN0OiByYWR4YSxyb2NrLTVjCj4+PiDCoMKgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiByb2Nr
Y2hpcCxyazM1ODhzCj4+IAo+PiBJIHRoaW5rIGl0IHdvdWxkIGJlIGJldHRlciB0byB1c2UgInJv
Y2tjaGlwLHJrMzU4MiIgaGVyZSwgdG8gYWxsb3cKPj4gdXMgdG8gcG9zc2libHkgdXNlIHRoYXQg
aW5mb3JtYXRpb24gbGF0ZXIuwqAgRm9yIGV4YW1wbGUsIHdlIG1pZ2h0Cj4+IHdhbnQgdG8gYmUg
YWJsZSB0byByZWNvZ25pemUgUkszNTgyLWJhc2VkIGJvYXJkcyBpbiBVLUJvb3Qgd2l0aG91dAo+
PiB0aGUgbmVlZCB0byBsb29rIGludG8gdGhlIGUtZnVzZXMgYXQgc29tZSBwb2ludCwgZm9yIHdo
aWNoIHB1cnBvc2UKPj4gaGF2aW5nIGEgY2xlYXIgZGVzaWduYXRvciBpbiB0aGUgRFQgd291bGQg
Zml0IHBlcmZlY3RseS4KPiAKPiBJdCBtYXkgYmUgb2theSB0byBpbnRyb2R1Y2UgInJvY2tjaGlw
LHJrMzU4MiIsIGJ1dCByZWFkaW5nIGUtZnVzZSBpcwo+IHN0aWxsIHJlcXVpcmVkIGluIFUtQm9v
dCBiZWNhdXNlIHdoaWNoIHVuaXQgKGNwdSBjb3JlWCwgZ3B1LCBldGMpIGlzCj4gYnJva2VuIGNh
bm5vdCBiZSBkZXRlcm1pbmVkIHdpdGhvdXQgcmVhZGluZyBlLWZ1c2UgYXQgcnVuLXRpbWUuCgpT
dXJlLCBidXQgSSB0aGluayBpdCB3b3VsZCBiZSByYXRoZXIgYmFkIHRvIG1pc3MgdGhpcyBvcHBv
cnR1bml0eQp0byBpbnRyb2R1Y2UgYSBjbGVhciBEVCBkZXNpZ25hdG9yIGZvciBSSzM1ODItYmFz
ZWQgYm9hcmRzLiAgSXQncwpiZXR0ZXIgdG8gaGF2ZSB0aGUgZGVzaWduYXRvciB1bnVzZWQsIHRo
YW4gdG8gYmFuZyBvdXIgaGVhZHMgbGF0ZXIsCmlmIHdlIGNvbmNsdWRlIHRoYXQgd2UgbmVlZCBp
dCBhdCBzb21lIHBvaW50LiA6KQoKPj4gQXMgYSByZW1pbmRlciwgdXNpbmcgInJvY2tjaGlwLHJr
MzU4MiIgd291bGQgYWxzbyByZXF1aXJlIGEgc21hbGwKPj4gYWRkaXRpb24gdG8gZHJpdmVycy9p
cnFjaGlwL2lycS1naWMtdjMtaXRzLmMuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
