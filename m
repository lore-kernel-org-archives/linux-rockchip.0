Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1DC8C7619A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 09:16:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4c/fJxl7AnuQfVtn9kSyY1RJQi6gB+zaZkpbfb5KH94=; b=2A87t2eV+R79oq
	3NJSU9sIo3qXSo9UUUfeznsNnFvKqRRMIpOCkKWZ4DPrLqDOTg5wqMCnpFXHvn57vFBrveQnt1evW
	u1hwi76oO65PjaobYwWOeXbhOrLvqVLGpQnprXDA2nKb5gEXUkNi9FWxlatAh2Oi29/f1ZZtVIWqK
	I9Y7OKd5rzgIsRhHPRkqBuOIs4JiY2rY0+D+HpHbznofXTiYGtD1nOOZPVlmN21//wHJUKVRtcfj3
	qfxSYt4M7i97UDn69nZVBBmbmbmhbaA0eczRfHsTdFC18TAUjgY7kXycxSHDFcQlGhrJzWc7EHxHz
	hMY+OHfTU4B2Q0W3g5qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgixZ-00ARBg-09;
	Mon, 27 Mar 2023 09:16:13 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgixS-00AR9U-1p;
	Mon, 27 Mar 2023 09:16:10 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 7C972320084E;
	Mon, 27 Mar 2023 05:15:58 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Mon, 27 Mar 2023 05:15:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=undef.tools; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1679908558; x=1679994958; bh=D6nNTX0D5vA8BTdg4fTxXWIrP7TJxRhrZG5
	DkHgHPUg=; b=xtrmlM7g2RJAHTuKggOp5ZHWRHpVyMfcrp51M5bzZsy/VHub+pQ
	6NelFxmwu8mtsa2Eu8ApG1q1zQFRz2NiDpwk6Myir+kwXjRRUJTudTTXtHWJBgtp
	aIOCFM9Xr787C9guxF5Nl+5LWyjwuiva9X1x5xBqDZlDOxRQomp2RbHE6HRmPaDH
	gJ++tJ7ecDEpakLxaNH5HSB3l91PaMl9i2VK4V9DasBOPk+ohUEDZGdGozeHjgG6
	Kr58jBv6EUNQJi3bLeCIKKSuaeztqfLXFt1zss1u3TdGSV3+398W2I5cfE1Mjsg5
	7Ow9WVpxacIXsjIfMq9rcVaVA0icOjptzBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1679908558; x=1679994958; bh=D6nNTX0D5vA8BTdg4fTxXWIrP7TJxRhrZG5
	DkHgHPUg=; b=PrCIB5DaJ5Uk2W4j7BZy5R2DKTH2qEMbrxjWnBuybRd1664L6Sa
	23kddC4HZG7yS8WC4UiplJ8TmdwCrWi9k9vsUqygUliJ4tccNtVSAvIblrUH2GxP
	9lqZqRrQnMEFOqlja/V3oKSVOeJjAcLKZXJrV8hRxwrjqkZ3dKTwzaF9pVJJfHkG
	/2BR74WXrfNsKmTRSfQAsxjEqWmydeuubRR8+oSUHZG1onyUwmIAVSBxwG9wcGl0
	m6twyVF+66FSjBX574irZvLJnMbLUnyTCjU/4tGcpi6tG09aGSuPskdqCZ12p+3q
	TDkGAo0JfgIopXTFZaSpR3tkZRHjBCBTH2g==
X-ME-Sender: <xms:zV4hZIzXDzL8l2mpKbZ4ovrjVUvtwNT7xn9f2Mat2TlfS92DUgxplA>
    <xme:zV4hZMSqbPEknmMfyLntnJE5VT2_9acM6mLj6g0MVnqsFs6bc-DXkWf95gpSWVA1z
    3lprJ4VN2qvcMbK-CU>
X-ME-Received: <xmr:zV4hZKUlwchIbJy78drih0SQLDc4uR7znloBHrkoEvGzmUT2Rp1T7R48uo9w_0w4DW9q8F95blxHcScmzce0cyGgrysX8Q5mUTNJaVMtyjn0rf0>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdehvddgudegucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtfeejnecuhfhrohhmpeflrghr
    rhgrhhcuoehkvghrnhgvlhesuhhnuggvfhdrthhoohhlsheqnecuggftrfgrthhtvghrnh
    epgefgjedtudfgueejfeegueeiieduleetueekfffhieekudduvedtvdfhtdejudehnecu
    ffhomhgrihhnpehkvghrnhgvlhdrohhrghenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehkvghrnhgvlhesuhhnuggvfhdrthhoohhlsh
X-ME-Proxy: <xmx:zV4hZGixDhEOULIQDyZHTYzCpDp1qmdBa_Je3oIliNz5bE2xoLunow>
    <xmx:zV4hZKC9yG4LHpW1vq5q28f9m3pTAqBwdClCQRTkYE4vs49YGDEyiw>
    <xmx:zV4hZHIZPZYaU0wFfc8eNeFoWx_E3iRlPfXgxTQBatpElHXDmAiFEw>
    <xmx:zl4hZAQ6JOqRC8BOM_KivVUxpOH-UzQqfuZVZLsHNnOsTOVWBxTnqw>
Feedback-ID: id76147eb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Mar 2023 05:15:52 -0400 (EDT)
Message-ID: <40e61776-bcdd-25ac-286a-1ba0184dbd7e@undef.tools>
Date: Mon, 27 Mar 2023 20:15:46 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal display
 support
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Javier Martinez Canillas <javierm@redhat.com>, linux-kernel@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Peter Robinson <pbrobinson@gmail.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>,
 Martijn Braam <martijn@brixit.nl>, =?UTF-8?Q?Kamil_Trzci=c5=84ski?=
 <ayufan@ayufan.eu>, Caleb Connolly <kc@postmarketos.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20230327074136.1459212-1-javierm@redhat.com>
 <e4f82c1e-621e-7e94-497d-8c579264f996@undef.tools> <8197476.T7Z3S40VBb@diego>
From: Jarrah <kernel@undef.tools>
In-Reply-To: <8197476.T7Z3S40VBb@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_021606_936524_717AE8D9 
X-CRM114-Status: GOOD (  11.94  )
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

Ck9uIDMvMjcvMjMgMjA6MTEsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IEFtIE1vbnRhZywgMjcu
IE3DpHJ6IDIwMjMsIDA5OjU1OjE1IENFU1Qgc2NocmllYiBKYXJyYWg6Cj4+IEhpIEphdmllciwK
Pj4KPj4gT24gMy8yNy8yMyAxODo0MSwgSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIHdyb3RlOgo+
Pj4gRnJvbTogT25kcmVqIEppcm1hbiA8bWVnaUB4ZmYuY3o+Cj4+Pgo+Pj4gVGhlIHBob25lJ3Mg
ZGlzcGxheSBpcyB1c2luZyBhIEhhbm5zdGFyIExDRCBwYW5lbC4gU3VwcG9ydCBpdCBieSBhZGRp
bmcgYQo+Pj4gcGFuZWwgRFQgbm9kZSBhbmQgYWxsIG5lZWRlZCBub2RlcyAoYmFja2xpZ2h0LCBN
SVBJIERTSSwgcmVndWxhdG9ycywgZXRjKS4KPj4+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWog
SmlybWFuIDxtZWdpQHhmZi5jej4KPj4+IENvLWRldmVsb3BlZC1ieTogTWFydGlqbiBCcmFhbSA8
bWFydGlqbkBicml4aXQubmw+Cj4+PiBDby1kZXZlbG9wZWQtYnk6IEthbWlsIFRyemNpxYRza2kg
PGF5dWZhbkBheXVmYW4uZXU+Cj4+PiBTaWduZWQtb2ZmLWJ5OiBKYXZpZXIgTWFydGluZXogQ2Fu
aWxsYXMgPGphdmllcm1AcmVkaGF0LmNvbT4KPj4+IC0tLQo+Pj4KPj4+IENoYW5nZXMgaW4gdjI6
Cj4+PiAtIERyb3AgdG91Y2hzY3JlZW4gbm9kZSBiZWNhdXNlIHVzZWQgdGhlIHdyb25nIGNvbXBh
dGlibGUgKE9uZHJlaiBKaXJtYW4pLgo+Pgo+PiBBbnkgcmVhc29uIG5vdCB0byBpbmNsdWRlIHRo
aXMgd2l0aCB0aGUgY29ycmVjdCBjb21wYXRpYmxlIHN0cmluZz8gSXQncwo+PiBiZWVuIGF2YWls
YWJsZSBzaW5jZQo+PiBodHRwczovL2xvcmUua2VybmVsLm9yZy9hbGwvMjAyMjA4MTMwNDM4MjEu
OTk4MS0xLWtlcm5lbEB1bmRlZi50b29scy8uCj4+IFN3YXBwaW5nIG91dCBndDkxN3MgZm9yIGd0
MTE1OCBpbiB0aGUgbm9kZSBmcm9tIHlvdXIgcHJldmlvdXMgcGF0Y2gKPj4gc2hvdWxkIGJlIGVu
b3VnaC4KPiBKdXN0IHdvbmRlcmluZyBpZiBJJ20gYmxpbmQsIEphdmllcidzIHBhdGNoIGRvZXNu
J3QgY29udGFpbiBhbnkgdG91Y2hzY3JlZW4KPiBjb250cm9sbGVyIChoYXZlbid0IGZvdW5kIG5l
aXRoZXIgZ3Q5KiBvciBndDExKiBtZW50aW9uZWQgdGhlcmUpLCBzbwo+IEknbSBpbmNsaW5lZCB0
byBnbyB3aXRoIHRoZSAidG91Y2hzY3JlZW4gY2FuIGJlIGFkZGVkIGxhdGVyIiB0aGluZy4KCgpJ
IHdhcyBqdXN0IGNvbW1lbnRpbmcgb24gdGhlICJDaGFuZ2VzIGluIHYyIiBzZWN0aW9uLiB2MSBo
YWQgYSAKdG91Y2hzY3JlZW4gbm9kZSBpbiBpdCAoYXNzdW1pbmcgSSBmb3VuZCB0aGUgcmlnaHQg
djEpLgoKCkFsbCBnb29kLCBJIGNhbiBmb2xsb3cgdXAgd2l0aCBhIHBhdGNoIGZvciB0aGUgdG91
Y2hzY3JlZW4uCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
