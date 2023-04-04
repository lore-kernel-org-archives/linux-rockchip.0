Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 60A10C761A6
	for <linux-rockchip@archiver.kernel.org>; Tue,  4 Apr 2023 08:20:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ruVT6x9Xerq/WIEO41c2ONsREtFgKBqKNUhYw+6v3k=; b=z1YNg9/4EOSaJc
	Fsy6Ru7b0wWfIW7oqk+mViQbz07Y4HQh2cLCOoK1OqcGVeyUpwDlTbLwkkLmDSAFHVh9n1U0I1Zlx
	1wQJ3n9xUxk2b3UAoKEEmlqzaaeCX0XZIirB6MZGTPQPNDd80+FiS6A6Vx/Y0Jffyf1OP6uCP08n7
	KArAqXOjVtTeXCMpkSKaRc9DWQ5JT3foCNSB9n0PJzW30eJjCLPfzRA/6k1WjXlkpLhQAX/7aOU/G
	5fRUeE0EJGEUK58Nlzd/qnsQkImoGwILiFCmTPbdDSNz9zN737xoGkXLj5209co3IRpcoL8Tvs7DL
	rQ7/DnImwsEv5ZOiVIkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbtO-000RGe-1Y;
	Tue, 04 Apr 2023 08:19:50 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjbnX-000PgA-2B;
	Tue, 04 Apr 2023 08:13:50 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.west.internal (Postfix) with ESMTP id 6C970320091D;
	Tue,  4 Apr 2023 04:13:36 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute4.internal (MEProxy); Tue, 04 Apr 2023 04:13:37 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=undef.tools; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1680596016; x=1680682416; bh=Tp7vkOp/dRBPmzCPLBDIQLpP/CNY6jKNBGa
	bOjO2c4Q=; b=cM5tsIonRSSfT/eA/CMmsVcDKSwhNqpYL0Y0NrWQYBw4p/OX0eL
	iDbyB910BN0U+bI5mVZeov7NXFuAKzmJrODsqp+KLhVAaBIApVF8cayWoinTZNMw
	4da04eSZlWPlVQLusYN+VnPua0ysWa7tLRZ+bTjBiWJWplE880hH5bm552QysswC
	rrvMY8yHvKNS9wylZHMCwcN/ZtFgNrH0vAUEPdqfrTkTlYUE1LBL+6cGKazJJdrV
	xjKBZQqKXETg9IslXwXged7l81JSDNAACKP237THlB6IfnKPCG7k4b+N34Ga1cQU
	LyTH/BFTlEAYUxi3ANyVOh4I+qs22yOCVkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1680596016; x=1680682416; bh=Tp7vkOp/dRBPmzCPLBDIQLpP/CNY6jKNBGa
	bOjO2c4Q=; b=eccndBjgyirL0Fbcfk6U1BZgJZKRUcKfKCvBcO5cfsuwwcKRvO5
	ImO5wqYDG9UKW0AI2XH0TE7imWlbGtuyBoqglpr9+sUYSP5oJoZ2Qc0dvZ4V3F0T
	Rbmk8GpLzIskyOtwNOoZ5a9dJbt/7ZtwvC9PW3nrDy6IXoJyn8sx4/dDxLrSBZ5y
	jnKltJAw+7KLlFZAIOXF4mKGfj0Idc+b9yuaXuR2sQipxR1rmH4HrGoTfT5gRzWU
	qJyTvE+XtfBHM/HORWptvKk7RxcPHS0dNj5hfvZTOqpcExnJKvZmJw/P2RLVSshh
	eLigdoYkHxJ6yF+p5FY9RZ6ycVcJOF5GQGQ==
X-ME-Sender: <xms:L9wrZIsWuJlvPYf4-mCl4kinjJdaXIYXkkW5APRikREjZMyPoPq3aA>
    <xme:L9wrZFeXvHFh7UF_xbd-gaBaegfny8mHBWFA6u4LI9r3lVvQkjgH3JNm3uYnWeviY
    2dviL7m17ZQjJpuJ1c>
X-ME-Received: <xmr:L9wrZDzy2MqUzxNRDzOg6Y_THwoqekykcDZGiDjBQpToPoTq4v4AqRhexPJVfLPIVZKBYnkd81A7kVkTIOsT0gkW2r3ZSECQG6VV8dfqpqRASYI>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdeilecutefuodetggdotefrodftvfcurf
    hrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecuuegr
    ihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjug
    hrpefkffggfgfuvfevfhfhjggtgfesthekredttdefjeenucfhrhhomheplfgrrhhrrghh
    uceokhgvrhhnvghlsehunhguvghfrdhtohholhhsqeenucggtffrrghtthgvrhhnpeetke
    evgfegudetveeigffhtefhleeugedvieeiuddtfedvkeegieetfeefffeuhfenucffohhm
    rghinhepthhofidqsghoohhtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepkhgvrhhnvghlsehunhguvghfrdhtohholhhs
X-ME-Proxy: <xmx:L9wrZLN3NOQxdzkpYvgT_7FKOICKDSZvMja4YklKCMYZoZIZioNzoA>
    <xmx:L9wrZI-NKR355ZY7pM8IyOK7LTFfOFaR1Mv_Tr1de6scnwQZj9yVaQ>
    <xmx:L9wrZDVcmsJL0rKvEWOfBr9kXi83HosaxiCIirJh9oHu6hQLQ3PrWg>
    <xmx:MNwrZDXmg4TgFBveXiYkbGYJW0_8xVuSnfkRK_fStULP82-WlR8Otw>
Feedback-ID: id76147eb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Tue,
 4 Apr 2023 04:13:31 -0400 (EDT)
Message-ID: <d7efebcc-5b5b-185e-bec8-b6b9d5d27d93@undef.tools>
Date: Tue, 4 Apr 2023 18:13:20 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] arm64: dts: rockchip: Change serial baud rate for
 Pinephone Pro to 1.5 MB
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 linux-kernel@vger.kernel.org, Javier Martinez Canillas <javierm@redhat.com>
Cc: Peter Robinson <pbrobinson@gmail.com>,
 Caleb Connolly <kc@postmarketos.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Martijn Braam <martijn@brixit.nl>, Ondrej Jirman <megi@xff.cz>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20230403175937.2842085-1-javierm@redhat.com>
 <3738011.44csPzL39Z@diego>
Content-Language: en-US
From: Jarrah <kernel@undef.tools>
In-Reply-To: <3738011.44csPzL39Z@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230404_011348_999353_13E8AB09 
X-CRM114-Status: GOOD (  12.01  )
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

SGksCgpPbiA0LzQvMjMgMTc6NTEsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+IFRoZSBpbnRlcmVz
dGluZyBxdWVzdGlvbiBpcyBhbHdheXMgaWYgdGhpcyB3aWxsIGJyZWFrIHNvbWVvbmUgZWxzZSdz
IHNldHVwLgo+IEkndmUgbmV2ZXIgcmVhbGx5IHVuZGVyc3Rvb2QgdGhlIHN0cmFuZ2Ugc2V0dGlu
ZyBvZiAxLjVNQnBzLCBidXQgb24gdGhlCj4gb3RoZXIgaGFuZCBpdCBfaXNfIGEgcmVhbGl0eSBv
biBtb3N0IGJvYXJkcy4KPgo+IFBlcnNvbmFsbHkgSSBkb24ndCBjYXJlIHRoYXQgbXVjaCBlaXRo
ZXIgd2F5LCBidXQgd291bGQgbGlrZSBhIGNvbW1lbnQKPiBmcm9tIHRoZSBvdGhlciBwZW9wbGUg
d29ya2luZyBvbiB0aGF0IGRldmljZSAtIGlmIHBvc3NpYmxlLgoKCkkgZG9uJ3QgaGF2ZSBhIHN0
cm9uZyBvcGluaW9uIGVpdGhlciB3YXksIGJ1dCBJIHdvdWxkIG5vdGUgdGhhdCAKVG93LUJvb3Rb
MF0gd2hpY2ggbGF0ZXIgbW9kZWxzIG9mIHRoaXMgZGV2aWNlIHNoaXAgd2l0aCB1c2VzIDExNTIw
MCwgCm1lYW5pbmcgdGhhdCB0aGlzIHdvdWxkIHB1dCB0aGUgZGV2aWNlIG91dCBvZiBzeW5jIHdp
dGggdGhlIGRlZmF1bHQgCnUtYm9vdCBpbXBsZW1lbnRhdGlvbiBmcm9tIHRoZSBmYWN0b3J5LgoK
QXQgbGVhc3QgZm9yIG1lIGl0J3MgYmVlbiBjb252ZW5pZW50IHRvIGhhdmUgYm90aCB0aGUgUFAg
YW5kIFBQUCB1c2UgdGhlIApzYW1lIHNldHRpbmdzIHdoaWxlIGRlYnVnZ2luZy4KCgpUaGFua3Ms
CgpKYXJyYWguCgoKWzBdIGh0dHBzOi8vdG93LWJvb3Qub3JnLwoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
