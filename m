Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6397C4167B
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Dec 2023 04:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ltJsTNvJNkabL0hOcAr48c7k6mElKDVv/mSrI/OAs/s=; b=h2ggRSDgexFDAM7PF6YEU6CahL
	yMagbacA0q6zuAERhSBoeHP7rIr63ULosErMKg98rbIo1nq5TsHQnSrzmwKCzmHYV//rL4ojVW8aD
	QUN6vQH8IcojDOjYl71dCaESJbczTbtU/ee2qndag+WdrH2hqaeS6c/pUAOCVly47zPjAgpMjCo/+
	J2XFaIhGbxpSKvnd9+iHpVmjvkVzVhikbEJXRqU9KBAuma2fKXkufEKNhy1JNS2+PlqA4RxKUSCCg
	RxZex2WgfCP5AOtyK7cSbSAL0xsglmtShfyPo7gQyb1zu1DytPuk4ocKfFvKIVYP9fjZZHYQ6WU6V
	vUVXlOWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rBSnQ-00Ei21-1g;
	Fri, 08 Dec 2023 04:49:04 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rBSnM-00Ei1X-12
	for linux-rockchip@lists.infradead.org;
	Fri, 08 Dec 2023 04:49:02 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1702010933;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=T0s7PRXFXL40kswtaHmvQ+jUS1xNCX5vzCtnh8sXZx8=;
	b=IFIioyoDFtJag2Yvge852Id9WhUhAigTwoTLHcTnL42fcZ9MBJCRvsV3HTsjZv3IAGKvu3
	B4D0g1Gfbyo5r+tnucYnAB9N6E9pJT/h7J5ytGkgzxvkKl4+wtMfx66in3SCgpBjCyuJ4E
	vW9a7uOkWTgslrmf8Feu6N6Adk9ZQTD7+66+LRCk2WUAlN0+s5D1MgKx13nvNw6xZeqhPH
	slLp6HBQvmOYcVmpxxIRIH3pRxLspHQ/D6AYZtvjFE/fodiyTXTegquBRKQOsZsUJsySMQ
	5weTwedQDocPuZenPlIohXuLKEQ4Qwy5NjKY7oyGHlhv1hZaiDK0SVeApnv0Gg==
Date: Fri, 08 Dec 2023 05:48:52 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Da Xue <da@lessconfused.com>
Cc: Shantur Rathore <i@shantur.com>, Jagan Teki
 <jagan@amarulasolutions.com>, cw00.choi@samsung.com, tom@radxa.com,
 linux-rockchip@lists.infradead.org, dmitry.baryshkov@linaro.org
Subject: Re: Rk3399 - Typec - Extcon
In-Reply-To: <CACdvmAhzOnR=uQ-6MH30jiH1wyzO=fuqk4U4ayp03H53hqA3gQ@mail.gmail.com>
References: <CAHc5_t0N7tDDKvWvviBXTKK_0UAEtKLxuvMYi8qZ6hp_f6LNew@mail.gmail.com>
 <6c89feb8ca7701d2a45710485fef8fc8@manjaro.org>
 <CACdvmAhzOnR=uQ-6MH30jiH1wyzO=fuqk4U4ayp03H53hqA3gQ@mail.gmail.com>
Message-ID: <2ab01ab4d93dd22fd8b7bb48fdc8d41f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231207_204900_821637_2576AA40 
X-CRM114-Status: GOOD (  15.72  )
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

T24gMjAyMy0xMi0wOCAwNToxOCwgRGEgWHVlIHdyb3RlOgo+IE9uIFRodSwgRGVjIDcsIDIwMjMg
YXQgNzowN+KAr1BNIERyYWdhbiBTaW1pYyA8ZHNpbWljQG1hbmphcm8ub3JnPiB3cm90ZToKPj4g
SGVsbG8gU2hhbnR1ciwKPj4gCj4+IE9uIDIwMjMtMTItMDcgMjI6MTIsIFNoYW50dXIgUmF0aG9y
ZSB3cm90ZToKPj4gPiBIaSBKYWdhbiwKPj4gPgo+PiA+IFdoaWxlIHRyeWluZyB0byBmaWd1cmUg
b3V0IGlzc3VlcyB3aXRoIFR5cGVjIEFsdE1vZGUgKyBTdXBlclNwZWVkIG9uCj4+ID4gbWFpbmxp
bmUgZm9yIFJrMzM5OSBiYXNlZCBSb2NrUHJvNjQsIEkgY2FtZSBhY3Jvc3MgeW91ciBwcm9wb3Nl
ZCBwYXRjaAo+PiA+IGZvciBUeXBlQyBWaXJ0dWFsIFBEIERyaXZlciBbMF0uCj4gCj4gSSB3ZW50
IHRvIHRoZSBGVVNCMzAyL1RDUE0gc3RhY2sgaXNzdWVzIGZvciBST0MtUkszMzk5LVBDLCBzZWUg
dGhlCj4gcGF0Y2hlcyBuZWVkZWQgaGVyZQo+IGh0dHBzOi8vZ2l0aHViLmNvbS9saWJyZS1jb21w
dXRlci1wcm9qZWN0L2xpYnJldGVjaC1idWlsZGVyLXNpbXBsZS9pc3N1ZXMvMiNpc3N1ZWNvbW1l
bnQtMTgzNzI2OTQ3NQo+IAo+IEEgbWFqb3IgaXNzdWUgaXMgdGhlIGxhY2sgb2YgYSBkcml2ZXIg
aW4gdS1ib290IHdoaWNoIGNhdXNlcyBtYW55Cj4gbm9uLWNvbmZvcm1hbnQgcG93ZXIgc3VwcGxp
ZXMgdG8gdGltZSBvdXQgY2F1c2luZyBlcnJvciBtZXNzYWdlcy4gVGhlCj4gcGF0Y2hlcyBhYm92
ZSBkbyB0aGVpciBiZXN0IHRvIGtlZXAgdGhlIHN0YWNrIHdvcmtpbmcgZGVzcGl0ZSB0aGlzLgoK
SHVoLCB5b3UgbWFkZSBhIGdvb2QgcG9pbnQsIHRoYW5rcyEgIFRoYXQncyBzb21ldGhpbmcgdG8g
dGhpbmsgYSBsb3QgCmFib3V0OyAgYWN0dWFsbHksIGEgc2ltaWxhciBQRCBpc3N1ZSB3YXMgZGlz
Y3Vzc2VkIGluIHRoZSBQaW5lNjQgCmNvbW11bml0eSBjaGF0cyBhIGZldyB0aW1lcywgd2hpbGUg
ZGlzY3Vzc2luZyBzb21lIFBpbmVib29rIFBybydzIApwb3dlci1yZWxhdGVkIGlzc3Vlcy4KCj4+
ID4gV291bGQgeW91IGtub3cgaWYgdGhlcmUncyBiZWVuIGFueSBvdGhlciBkZXZlbG9wbWVudCBv
biBzdXBwb3J0aW5nCj4+ID4gUm9ja2NoaXAtVHlwZUMtUGh5IHdpdGggRlVTQjMwMiBib2FyZHMg
bGlrZSBSb2NrUHJvNjQgb3IgUGluZUJvb2sgUHJvLgo+PiA+Cj4+ID4gWzBdIC0KPj4gPiBodHRw
czovL2xvcmUua2VybmVsLm9yZy9sa21sLzIwMjAwOTA0MTkxODMwLjM4NzI5Ni0zLWphZ2FuQGFt
YXJ1bGFzb2x1dGlvbnMuY29tL1QvI203YjVkNjc0NzY0Mzc5MjUzNTY4YTQ5MTVmMmY5OTg4ZDc0
Yzg2NTkzCj4+IAo+PiBCYXNpY2FsbHksIHdlIG5lZWQgdG8gZ2V0IHJpZCBvZiB0aGUgd2hvbGUg
ZXh0Y29uIGhhY2ssIGFzIGRlc2NyaWJlZCAKPj4gaW4KPj4gdGhlIHRocmVhZCBsaW5rZWQgYWJv
dmUsIHdoaWNoIGlzIGEgbWFzc2l2ZSBqb2IgdGhhdCBib3JkZXJzIHdpdGggYQo+PiBjb21wbGV0
ZSByZXdyaXRlLiAgSSdsbCBwcm9iYWJseSAoYW5kIGhvcGVmdWxseSA6KSBkaXZlIGludG8gYWxs
IHRoYXQgCj4+IGluCj4+IHRoZSBmb3Jlc2VlYWJsZSBmdXR1cmUuCj4gCj4gZXh0Y29uIGlzIGEg
ZGVhZCBlbmQuIERtaXRyaSBpcyB1c2luZyBzb21ldGhpbmcgZWxzZSBmb3IgUXVhbGNvbW0gYnV0
Cj4gSSdtIG5vdCBzdXJlIGhvdyBtdWNoIG92ZXJsYXAgdGhlcmUgaXMgd2l0aCB0aGUgc3RhbmRh
cmQgVENQTS4KCkFGQUlLLCBzb21lIFF1YWxjb21tLWJhc2VkIHNtYXJ0cGhvbmVzLCBlLmcuIE9u
ZVBsdXMgNlQsIHVzZSBzb21lIApub24tc3RhbmRhcmQgY2hhcmdlciBuZWdvdGlhdGlvbiBtZWNo
YW5pc20uICBJIGNvdWxkIGVhc2lseSBiZSB3cm9uZyAKdGhlcmUsIHRob3VnaC4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
