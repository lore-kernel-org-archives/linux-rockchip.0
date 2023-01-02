Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3A4B9C3DA7A
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Jan 2023 11:19:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RFvDgxWMfRboDuFo9KWNjv3oOGiY1lIYShoA0oZx3FY=; b=4GBxQi8ro3XMdD
	pc9kjY6D2j66kDbjGVt8AyYEB85f4ok6dlDTfIZVpkLEXQM1GKjBjun3opRi6BkaVmWu4Qew9OGXO
	yqhlQr6ovfKH2xyZGBIC7hXy8WDCfYNQS5woSKCm7w2AGcf2Vtv9JRBKF2zgD1uDc5NS7XXLyzKJo
	EhqnX8S/c2ap5xeBkE/UfezAshyRtcqFJV1wU6EXaoJJ20kmQzSNHgd/VTh8dH0DqA47+uAPPRNFE
	5d7zkwTFjk5js9fQ/ZM0G49wf2FjCqarYXyDGAtML5KHH8nhlfxY0VghH19APj6qxMe5Qz71fm4B4
	jy2hW4ZEhOkO5//QRv7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCIoO-00Aigz-Jc; Mon, 02 Jan 2023 11:17:00 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pCIlH-00AiEr-3B
	for linux-rockchip@lists.infradead.org; Mon, 02 Jan 2023 11:13:49 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id 2046A32008FC;
	Mon,  2 Jan 2023 06:13:46 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Mon, 02 Jan 2023 06:13:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1672658025; x=1672744425; bh=AeCxzdEEDX
	jsBxrZ1LBS601ThZjz/mppC452AduVDQA=; b=XYYjydhSD7SEVV8fomPxX4DGgB
	coW2BPhbN1WaJuTwfphNSoij6BgiV331j8h7FaeY2jI/S9aH9V7MkoM4rZTeVPqc
	9T2rKkcTwEDrsu5p7X866NOHSN5PkfqLfIbt8SuASbOaWjvZkHpT+LlJCSd+sqlw
	8l5atpjoL4MAMiIY0yzrpDefPcI79dQJMkGJA8XxRl3XLFxLlVr459QWi1EAgoGZ
	eTTqXELUiph8BqWe9cTNzOBy5RnyyPDLX6XoZ9APgaRftXH1ncwb1WE0SK+LYUkG
	DJtFHI8D1lSpyL/+dCYeHltkBw7IAOaVJzl49qTAaJhWb1gu7kfFXPDmUSaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1672658025; x=
	1672744425; bh=AeCxzdEEDXjsBxrZ1LBS601ThZjz/mppC452AduVDQA=; b=M
	FaytC+s6K5DUgqnI86Da9oEjmhms6gV5ELE/1vcy8XT751voH80wF/BYu5l7+PfK
	9/gLrau3k6DTOeIhcbdoC0loEO9jORp89UyR0IyQSsCEZBbyBJ/KGSoKM4Tgm++h
	XOnYDAbHquukWRwHbhsORlcexDk8lQ5GzIMO7flXLdiHAyy8EP3DTyaoaAVeAZza
	N9bgN/hFsbyyv6BmelIP9i9SjY9/SRr/TQER3FBXaP7pX9EKGK/M0BWcvvEGsDMb
	v2Eg+VaxLf4U6E3nC6uRukrbjBGSHvJyICRrFLSPEmUAzJYdMW/iu4botavSgLqj
	PZgn5wWBK7xg6NqvXMbGw==
X-ME-Sender: <xms:abyyYwYksfDkdpGjQr9goDw_CxQztD9EE7J9d_4UVIjrq-gb3ZhI6A>
    <xme:abyyY7bWR1MTkiarCHjpUZWHXZRzsX_inRTNHxmrAHveP4nMDvejKS0_DJgdfqKb-
    d_MiOGjcjuToiE0_Q>
X-ME-Received: <xmr:abyyY69Hpru1k2QirWoIMB9X2fXNq2U1h9Mb4n6VhSZ1RReYDU7xkm0ZBPLMBAwq2qEMWm_tz-onbCjMLD-cS-ct>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrjedvgddviecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfuvfevfhfhjggtgfesthekredttdefjeenucfhrhhomhepvfhomhcu
    hfhithiihhgvnhhrhicuoehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhkqe
    enucggtffrrghtthgvrhhnpeefgfekteduffeiudegfeejfefgvddufefhvedukeeiffdu
    gfeludfhhefgvdegffenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:abyyY6ora2bXoGXBGGv1d2UetLqwfW2ndeIFTPh3r1wya0jI56PujA>
    <xmx:abyyY7oX2M2yc5dUxrqho_kx5QiFPd2m-m7PKygEsRvQY3T_AoCZLw>
    <xmx:abyyY4TSsXYLw9b9WZfzbC0STdDvsqtMfv82XFqMUwCD-ydl9d9X3Q>
    <xmx:abyyY-2Kqn3BR9T06RyovQfUjJ6xfuhgy34NOcwMmxwIZJe-79zZNw>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 2 Jan 2023 06:13:43 -0500 (EST)
Message-ID: <aef7295e-264c-4812-06f5-b8f7a8339ed9@tom-fitzhenry.me.uk>
Date: Mon, 2 Jan 2023 22:13:41 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH] mfd: rk808: re-add rk808-clkout to RK818
To: neil.armstrong@linaro.org, Lee Jones <lee@kernel.org>
Cc: Ondrej Jirman <megi@xff.cz>, Javier Martinez Canillas
 <javierm@redhat.com>, Martijn Braam <martijn@brixit.nl>,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221228140708.26431-1-tom@tom-fitzhenry.me.uk>
 <3f40e58a-dcd2-7c9a-1a9d-cae36719352f@linaro.org>
Content-Language: en-US
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
In-Reply-To: <3f40e58a-dcd2-7c9a-1a9d-cae36719352f@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230102_031347_212318_3533B3FE 
X-CRM114-Status: GOOD (  13.14  )
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

T24gMi8xLzIzIDIxOjA2LCBOZWlsIEFybXN0cm9uZyB3cm90ZToKPiBPbiAyOC8xMi8yMDIyIDE1
OjA3LCBUb20gRml0emhlbnJ5IHdyb3RlOgo+PiBGaXhlcyBSSzgxOCAoZS5nLiBvbiBQaW5lcGhv
bmUgUHJvKSB0byByZWdpc3RlciBpdHMgY2xvY2ssIHdpdGhvdXQgd2hpY2gKPj4gZGVwZW5kZW50
IGRldmljZXMgKGUuZy4gd2lmaS9CVCwgdmlhIHNkaW8td2lmaS1wd3JzZXEpIGZhaWwgdG8gcHJv
YmUuCj4+Cj4+IFRoaXMgbGluZSB3YXMgcmVtb3ZlZCBpbiBjb21taXQgMzYzM2RhYWNlYTJlCj4+
ICgibWZkOiByazgwODogUGVybWl0IGhhdmluZyBtdWx0aXBsZSBQTUlDIGluc3RhbmNlcyIpLCBi
dXQgb25seSBmcm9tIAo+PiBSSzgxOC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogVG9tIEZpdHpoZW5y
eSA8dG9tQHRvbS1maXR6aGVucnkubWUudWs+Cj4+IC0tLQo+PiDCoCBkcml2ZXJzL21mZC9yazgw
OC5jIHwgMSArCj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKQo+Pgo+PiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9tZmQvcms4MDguYyBiL2RyaXZlcnMvbWZkL3JrODA4LmMKPj4gaW5k
ZXggZjQ0ZmMzZjA4MGE4Li4wZjIyZWY2MWU4MTcgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvbWZk
L3JrODA4LmMKPj4gKysrIGIvZHJpdmVycy9tZmQvcms4MDguYwo+PiBAQCAtMTg5LDYgKzE4OSw3
IEBAIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWZkX2NlbGwgcms4MTdzW10gPSB7Cj4+IMKgIH07Cj4+
IMKgIHN0YXRpYyBjb25zdCBzdHJ1Y3QgbWZkX2NlbGwgcms4MThzW10gPSB7Cj4+ICvCoMKgwqAg
eyAubmFtZSA9ICJyazgwOC1jbGtvdXQiLCAuaWQgPSBQTEFURk9STV9ERVZJRF9OT05FLCB9LAo+
PiDCoMKgwqDCoMKgIHsgLm5hbWUgPSAicms4MDgtcmVndWxhdG9yIiwgLmlkID0gUExBVEZPUk1f
REVWSURfTk9ORSwgfSwKPj4gwqDCoMKgwqDCoCB7Cj4+IMKgwqDCoMKgwqDCoMKgwqDCoCAubmFt
ZSA9ICJyazgwOC1ydGMiLAo+Pgo+PiBiYXNlLWNvbW1pdDogYzc2MDgzZmFjM2JhZTFhODdhZTNk
MDA1YjVjYjFjYmM3NjFlMzFkNQo+IAo+IFNvcnJ5LCBteSBiYWQuLi4KCk5vIHdvcnJpZXMhCgo+
IEFja2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmVpbC5hcm1zdHJvbmdAbGluYXJvLm9yZz4KClRo
YW5rcywgSSBoYXZlIGFkZGVkIHRoaXMgdG8gdGhlIHYyIHBhdGNoLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
