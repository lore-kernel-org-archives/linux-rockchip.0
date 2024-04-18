Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B38D3C4345F
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Apr 2024 05:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iC5J2K9ncO2J2s+Y8Y9LEzQH4FQzJul6z8OUIOD2Jtk=; b=WJUTew+rYgRY4wKx/E6EUnMSrh
	IApjRX4a36m6FFtihejEttZD4GJZP8SFKj4RQWGaTxJAsIfZQxKFDmUo+o57RZBzvEx52GR1jCLbd
	6i1IO6/HK1YqDJPwFrzTjI9A1HFhmm31IKvKxHs+0icPq7E/kAoqwINPweNOVTLgrQcTkrJt/Or6r
	XUIquxGKKdXS9KxxNR+lG0i2+3AsId8SDCXvLwcINwAkNYyGO+dvls8rzBUCdSR5DbODjhJFOzLsb
	wcuM1+Ul8Tq8P+N7mmgkqT/mJeto35WydRXujHs1qUADwWULvQDx41pm9cexmNuNAXLC2mDB2vCPs
	hc1z/6gA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxKkS-000000012qn-1f3D;
	Thu, 18 Apr 2024 05:55:52 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rxKkO-000000012pq-22JA;
	Thu, 18 Apr 2024 05:55:50 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1713419745;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xSRB1G5vKqQuI0ZVQYhgc4yCtAXJx+kTtv4a9ntPscI=;
	b=Ykfkeqf2xNa5NXF0caDEdaSAf7D7n0bJGV7q7mwW4ZN9pruM2VTw1JSbTOaaRvehuKKfHE
	4kbi+GkCPJUf6gEuUvQlkRI1ZBuJco+3GIAm70o1QCodEe2ui3zRahJfz8xwjohDzi5fRB
	000s4AitRjfBc3OQiMJbyuqFzolVO5Ok2LTjwFtX8cyvsBCvLdJPZpsMqPjTy7kHcCq7p5
	hIzLJ98SDH5/6yhFyQjTbby9cE9W/18THARE/qnbAHxflPk0Ur9MUQM223B4/3FDQ7Ocbi
	WNWLw14B73/PSJy/KMOZei7/b3BgHhDrL28S+HbQlMb/2Np+BcIF5qhhSo1cKw==
Date: Thu, 18 Apr 2024 07:55:44 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Chukun Pan <amadeus@jmu.edu.cn>, jonas@kwiboo.se, conor+dt@kernel.org,
 devicetree@vger.kernel.org, heiko@sntech.de, krzk+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh@kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add Radxa ROCK3 Model C
In-Reply-To: <B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com>
References: <d7de2213-8dd2-42ec-9a30-a569ac71be3e@kwiboo.se>
 <20240417133016.62753-1-amadeus@jmu.edu.cn>
 <a144c052fcc2460a615a754a64a8f739@manjaro.org>
 <B26C732A4DCEA9B3+282b8775-601b-4d4a-a513-4924b7940076@radxa.com>
Message-ID: <9e915ef29a2b49ce56446ec9d474eb64@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240417_225549_159188_959F85C6 
X-CRM114-Status: GOOD (  17.31  )
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

SGVsbG8gTmFva2ksCgpPbiAyMDI0LTA0LTE4IDA3OjUyLCBGVUtBVU1JIE5hb2tpIHdyb3RlOgo+
IHRoaXMgaXMgTmFva2kgQCBSYWR4YS4KPiAKPiB0aGFuayB5b3UgZm9yIHlvdXIgZ3JlYXQgd29y
ayEKPiAKPiBPbiA0LzE4LzI0IDAyOjAyLCBEcmFnYW4gU2ltaWMgd3JvdGU6Cj4+IEhlbGxvIENo
dWt1biwKPj4gCj4+IE9uIDIwMjQtMDQtMTcgMTU6MzAsIENodWt1biBQYW4gd3JvdGU6Cj4+PiBI
aSBKb25hcywKPj4+Pj4gK8KgwqDCoCBtb2RlbCA9ICJSYWR4YSBST0NLMyBNb2RlbCBDIjsKPj4+
PiAKPj4+PiBUaGUgbWFya2V0aW5nIG5hbWUgc2VlbXMgdG8gYmUgIlJhZHhhIFJPQ0sgM0MiIGFj
Y29yZGluZyB0byB0aGUgCj4+Pj4gcHJvZHVjdAo+Pj4+IHBhZ2UgYXQgWzFdLgo+Pj4+IAo+Pj4+
IFsxXSBodHRwczovL3JhZHhhLmNvbS9wcm9kdWN0cy9yb2NrMy8zYwo+Pj4gCj4+PiBBY2NvcmRp
bmcgdG8gaHR0cHM6Ly93aWtpLnJhZHhhLmNvbS9Sb2NrMy8zYyAsIGl0IHNob3VsZCBiZSBjYWxs
ZWQKPj4+ICJSYWR4YSBST0NLIDMgTW9kZWwgQyIuIEkgY29waWVkIHJvY2szYSBoZXJlIHdpdGhv
dXQgcGF5aW5nIAo+Pj4gYXR0ZW50aW9uLgo+IAo+IHNvcnJ5LCB3aWtpLnJhZHhhLmNvbSBpcyBv
dXRkYXRlZC4KPiAKPiBkb2NzLnJhZHhhLmNvbSBpcyBjb3JyZWN0IG9uZSBhbmQgbWFpbnRhaW5l
ZC4KPiAoYnV0IGl0IHN0aWxsIGhhcyBzb21lIGVycm9ycywgc29ycnkpCj4gCj4+IElmIEkgbWF5
IGludGVyamVjdCwgaGVyZSdzIHRoZSByZXN1bHQgb2YgYSBxdWljayBxcmVwOgo+PiAKPj4gLi9y
azMzOTlwcm8tcm9jay1waS1uMTAuZHRzOsKgwqDCoCBtb2RlbCA9ICJSYWR4YSBST0NLIFBpIE4x
MCI7Cj4+IC4vcmszMzk5LXJvY2stcGktNGEtcGx1cy5kdHM6wqDCoMKgIG1vZGVsID0gIlJhZHhh
IFJPQ0sgUGkgNEErIjsKPj4gLi9yazM1ODhzLXJvY2stNWEuZHRzOsKgwqDCoCBtb2RlbCA9ICJS
YWR4YSBST0NLIDUgTW9kZWwgQSI7Cj4+IC4vcmszNTg4LXJvY2stNWIuZHRzOsKgwqDCoCBtb2Rl
bCA9ICJSYWR4YSBST0NLIDUgTW9kZWwgQiI7Cj4+IC4vcmszMzk5LXJvY2stNGMtcGx1cy5kdHM6
wqDCoMKgIG1vZGVsID0gIlJhZHhhIFJPQ0sgNEMrIjsKPj4gLi9yazMzOTktcm9jay1waS00Yi1w
bHVzLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9DSyBQaSA0QisiOwo+PiAuL3JrMzM5OS1y
b2NrLXBpLTRiLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9DSyBQaSA0QiI7Cj4+IC4vcmsz
Mzk5LXJvY2stcGktNGMuZHRzOsKgwqDCoCBtb2RlbCA9ICJSYWR4YSBST0NLIFBpIDRDIjsKPj4g
Li9yazMzMDgtcm9jay1waS1zLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9DSyBQaSBTIjsK
Pj4gLi9yazMzOTktcm9jay1waS00YS5kdHM6wqDCoMKgIG1vZGVsID0gIlJhZHhhIFJPQ0sgUGkg
NEEiOwo+PiAuL3JrMzM5OS1yb2NrLTRzZS5kdHM6wqDCoMKgIG1vZGVsID0gIlJhZHhhIFJPQ0sg
NFNFIjsKPj4gLi9yazMzMjgtcm9jay1waS1lLmR0czrCoMKgwqAgbW9kZWwgPSAiUmFkeGEgUk9D
SyBQaSBFIjsKPj4gLi9yazM1Njgtcm9jay0zYS5kdHM6wqDCoMKgIG1vZGVsID0gIlJhZHhhIFJP
Q0szIE1vZGVsIEEiOwo+PiAKPj4gQmFzZWQgb24gdGhhdCwgSSB0aGluayB0aGF0ICJSYWR4YSBS
T0NLIDMgTW9kZWwgQyIgd291bGQgYWN0dWFsbHkKPj4gYmUgdGhlIHByZWZlcnJlZCBuYW1lLi4u
wqAgUGVyaGFwcz8KPj4gCj4+IElmIHdlIGVuZCB1cCBmb2xsb3dpbmcgdGhhdCBhcHByb2FjaCwg
dGhlIGxhc3QgYm9hcmQgZHRzIG9uIHRoZSBsaXN0Cj4+IGFib3ZlIHNob3VsZCBhbHNvIGJlIGZp
eGVkIHRvIHJlYWQgIlJhZHhhIFJPQ0sgMyBNb2RlbCBBIi4KPj4gCj4+IEVpdGhlciB0aGF0LCBv
ciBhbGwgIk1vZGVsICIgc3RyaW5ncyBzaG91bGQgYmUgc3RyaXBwZWQgb3V0IGZyb20KPj4gYWxs
IGJvYXJkIGR0cyBmaWxlcyB0aGF0IGN1cnJlbnRseSBjb250YWluIGl0Lgo+IAo+IHdlIGhhdmUg
YSBkb2N1bWVudCBuYW1lZCAiUmFkeGEgUHJvZHVjdCBOYW1pbmcgQ29udmVudGlvbiIuCj4gdGhl
cmUgYXJlICJmdWxsIG5hbWUiIGFuZCAic2hvcnQgbmFtZSIuICJNb2RlbCIgaXMgdXNlZCBpbiAi
ZnVsbAo+IG5hbWUiLCBidXQgaXQncyBub3QgdXNlZCBpbiAic2hvcnQgbmFtZSIuIGJvdGggYXJl
IGNvcnJlY3QuCj4gCj4gYnV0LCB3ZSBwcmVmZXJyZWQgdG8gdXNlICJzaG9ydCBuYW1lIiBmb3Ig
Im1vZGVsID0gIiBpbiBtYWlubGluZSAKPiBsaW51eC91LWJvb3QuCj4gCj4gZm9yIFJPQ0sgM0Ms
IHBsZWFzZSB1c2UKPiAKPiAgbW9kZWwgPSAiUmFkeGEgUk9DSyAzQyI7Cj4gCj4gZm9yIFJPQ0sg
NUEvNUIgYW5kIFJPQ0sgM0EsCj4gCj4gIG1vZGVsID0gIlJhZHhhIFJPQ0sgNUEiOwo+ICBtb2Rl
bCA9ICJSYWR4YSBST0NLIDVCIjsKPiAgbW9kZWwgPSAiUmFkeGEgUk9DSyAzQSI7Cj4gCj4gYXJl
IHByZWZlcnJlZC4KPiAKPiB3ZSBuZWVkIHRvIGZpeCB0aGlzIGluY29uc2lzdGVuY3kuIChpbmNs
dWRlIG91ciBkb2NzKQoKR3JlYXQsIHRoYW5rcyBmb3IgdGhpcyBkZXRhaWxlZCBjbGFyaWZpY2F0
aW9uIQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
