Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E64F8C48BC4
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Feb 2024 00:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2G8lHJRsGOg5r833HSa/UPQEUCgxEBnXxSsVZpXrPAA=; b=P5cCGHAaYxcHaK
	Ql4w+Fe++zSSNOdsLAsixzwEuF2kzf7I4yd72NVl4V+v4pTfaCCxDBRuICtkb3YeK4ojzdokEO8jJ
	NhBpFkxSWpzXWqHHc/uHV78D/7YPv9qcurOL36Yj+xT5iFUIQZVz087oO77eeH46A0bMFChp7Z6JS
	IvyD8p8ZAdNCg2a74Dlxsu4M8Gv6JPIkMOkGFQUsdtvnUaBULCqyS4stPf3BLR5mdbBhDVsKr4fPL
	PJ9L39kqVdvXtA4hZ+4CBP4+CHF4FNi62NfgjzwGeeAMaTrZVd+GqEhnmlipblIWX994mByGgTTxM
	6QWu/XCwQDhSYFytRapg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raPcN-0000000EfhH-1idW;
	Thu, 15 Feb 2024 00:28:47 +0000
Received: from fout1-smtp.messagingengine.com ([103.168.172.144])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raPcK-0000000Efgj-16YU;
	Thu, 15 Feb 2024 00:28:45 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailfout.nyi.internal (Postfix) with ESMTP id A3C2313800A3;
	Wed, 14 Feb 2024 19:28:42 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Wed, 14 Feb 2024 19:28:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=feathertop.org;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1707956922; x=1708043322; bh=mnIym/CvETLOTPyXJQIqqtBsy3Hph17S
	2YXXegKfVT0=; b=T9uBwEIRpCCPLnuqGur47QNWQp22qKmF7bigQW8TrImzB7kz
	8XvLxXghbj85lO/gggHdU2iuD9L7KWcjMOnwRIFhtz/SxGr9+/gPUv+qVKu4J714
	NR+5CE9eMZvUuczfhCP8GigWd0xFVTQsXWh/xMYhEAaisq59LT1ztKrk6w19kWXw
	o1ljVMuFDXkrzK3ni17WP6ABZd6S7pdeH0VULYUoiejEkToQ/E2KRY+7VJN6QgrM
	2ka8CXYvqqKlcK6E1hNd1cjGhcUS3/N3e9sA07kswdZIJkd3jJmEV/IxwesD1QKG
	c4HV+DZFWRqzhqK96y4UIa0BBFR56vKe7/7P4g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; t=1707956922; x=
	1708043322; bh=mnIym/CvETLOTPyXJQIqqtBsy3Hph17S2YXXegKfVT0=; b=k
	0eOyf14s1VkTUhnE4JZrLCn6jcgQ2UjC4BEiTcw1o4YlfULLq8f5dW50yhAyiwSb
	PCFfWzjs9WsSGZfJv2XWNRNx9kEPr6fGZgwlpMRpCpiYbhQdwus8UvDKNi+Y6Fu2
	gnI/AkSW+2NOf2XBp1a5mPLxO/5aEtsbrIy4oYIWLLD7UcQ49ZbL8RTQ5gt0iI5Y
	XC1A676wP7LfKtcUCg2cOFSbVLZT3ofYShSWCcgkswx16casuM3Hf2IPZypYB/cW
	oLhnQjJ5QIeq9LfHYImzpeGwXJdrZgENtR2Y59BtXVWGYIqSaAosowgPy1GF/HJf
	r4YmV1iWdNUCGbXBzuqCA==
X-ME-Sender: <xms:uVrNZUik4wJFIUWAdR7NMOTANcxr-SgdoOYj6wSyLp_vquvv7RVd1A>
    <xme:uVrNZdC-2-q5QUGzn7UGSUrlMT1Yc1GdSwRBSr1IznilWbA2ieWf1a07n2-sS0UKM
    622z-C8Tw>
X-ME-Received: <xmr:uVrNZcF2H6yu5_o_KUXXZD5OCFvacycjmDqoOS_exLheZW6p2BZUOxpKNe5oSve-3nw50QwtzQTfvbWS_kmGTGeGJ1FcH_4oTSGZEQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvledrudekgddvtdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfuvfevfhfhjggtgfesthekredttddvjeenucfhrhhomhepvfhimhcu
    nfhunhhnuceothhimhesfhgvrghthhgvrhhtohhprdhorhhgqeenucggtffrrghtthgvrh
    hnpeeugeefgfevueeitdehfffgfeevjeekteeihffhvdejveelhfeukeduueelgefhkeen
    ucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtihhmse
    hfvggrthhhvghrthhophdrohhrgh
X-ME-Proxy: <xmx:uVrNZVRi5qofvFQsTfePnTivvlscI_JpYarxNNgTevx5Sp1vCWIkVA>
    <xmx:uVrNZRwaI3qDuG_YFWK-g11VX-KlNUoLhj_Uxrw1VpF-ZZOKfoolDw>
    <xmx:uVrNZT7iHWVJdifyR-aj_ahVirr7lXs8aArQf7lGHSSoctFykU19uA>
    <xmx:ulrNZSqgj0AVOyZPelzaEV3Bv4dYS3VVc3JhpHuXm9cEzG1_SM_p-g>
Feedback-ID: i1f8241ce:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 14 Feb 2024 19:28:35 -0500 (EST)
Message-ID: <cd648b49-b954-45e5-aba7-dee85c0785e5@feathertop.org>
Date: Thu, 15 Feb 2024 11:28:33 +1100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/4] Fix vendor strings on Rockchip boards
Content-Language: en-US
To: Conor Dooley <conor@kernel.org>
Cc: Dragan Simic <dsimic@manjaro.org>, linux-rockchip@lists.infradead.org,
 Andy Yan <andyshrk@163.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Chris Morgan <macromorgan@hotmail.com>, Conor Dooley <conor+dt@kernel.org>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
 David Heidelberg <david@ixit.cz>, Heiko Stuebner <heiko@sntech.de>,
 Jagan Teki <jagan@edgeble.ai>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Ondrej Jirman <megi@xff.cz>, Rob Herring <robh+dt@kernel.org>,
 Tianling Shen <cnsztl@gmail.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20240214040731.3069111-1-tim@feathertop.org>
 <c03220db663279c9e83bab81f3d829e7@manjaro.org>
 <e952d127-b12d-4b5a-838b-807a876db707@feathertop.org>
 <20240214-moocher-womanless-21201b67b76d@spud>
From: Tim Lunn <tim@feathertop.org>
In-Reply-To: <20240214-moocher-womanless-21201b67b76d@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_162844_393611_D4BAFCAC 
X-CRM114-Status: GOOD (  13.37  )
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

SGkgQ29ub3IsCgpPbiAyLzE1LzI0IDA1OjEyLCBDb25vciBEb29sZXkgd3JvdGU6Cj4gT24gV2Vk
LCBGZWIgMTQsIDIwMjQgYXQgMDM6Mjc6MDhQTSArMTEwMCwgVGltIEx1bm4gd3JvdGU6Cj4+IEhp
IERyYWdhbiwKPj4KPj4gT24gMi8xNC8yNCAxNToxNCwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+Pj4g
SGVsbG8gVGltLAo+Pj4KPj4+IE9uIDIwMjQtMDItMTQgMDU6MDcsIFRpbSBMdW5uIHdyb3RlOgo+
Pj4+IEEgY291cGxlIG9mIHJvY2tjaGlwIGJvYXJkcyBpbmNvcnJlY3RseSBsaXN0IHRoZWlyIHZl
bmRvciBhcyBSb2NrY2hpcAo+Pj4+IHdoZW4gdGhleSBhcmUgaW4gZmFjdCBub3QgbWFudWZhY3R1
cmVkIGJ5IFJvY2tjaGlwLgo+Pj4+Cj4+Pj4gRml4IHRoZSB2ZW5kb3Igc3RyaW5ncyB0byBjb3Jy
ZWN0bHkgbGlzdCB0aGUgbWFudWZhY3R1cmVyCj4+PiBKdXN0IGNoZWNraW5nLCBoYXZlIHlvdSB2
ZXJpZmllZCB0aGF0IHRoZSBvbGQsIGluY29ycmVjdCAiY29tcGF0aWJsZSIKPj4+IHN0cmluZ3Mg
ZnJvbSB0aGUgYm9hcmQgZHRzIGZpbGVzIGFyZW4ndCB1c2VkIGFueXdoZXJlIGluIHRoZSBrZXJu
ZWwgY29kZSwKPj4+IHN1Y2ggYXMgaW4gc29tZSBkcml2ZXJzPwo+Pj4KPj4gWWVzIEkgY2hlY2tl
ZCB0aGF0LCB0aGVyZSBhcmUgbm8gcmVtYWluaW5nIHJlZmVyZW5jZXMgdG8gdGhlIG9sZC9pbmNv
cnJlY3QKPj4gY29tcGF0aWJsZSBzdHJpbmdzIGluIGtlcm5lbCBjb2RlCj4gV2hhdCBhYm91dCBv
dGhlciBjb2RlPyBMaWtlIGEgQlNEIG9yIGEgYm9vdGxvYWRlcj8gSWYgbm90aGluZyBpcyB1c2lu
Zwo+IHRoZW0KPiBBY2tlZC1ieTogQ29ub3IgRG9vbGV5IDxjb25vci5kb29sZXlAbWljcm9jaGlw
LmNvbT4KPgo+IEZpeGVzIHRhZ3MgSSB0aGluayB3b3VsZG4ndCBnbyBhbWlzcywgYnV0IEknbSBu
b3QgZXhwZWN0aW5nIGEgcmVzZW5kCj4gd2l0aCB0aGVtLgpJJ3ZlIGFkZGVkIHRoZSBmaXhlcyB0
YWdzIHRvIHRoZSBlbWFpbCB0aHJlYWQuCgpSZWdhcmRzCiDCoCBUaW0KPgo+IENoZWVycywKPiBD
b25vci4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
