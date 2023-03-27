Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9466C7619A
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Mar 2023 07:55:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JMJ7cQ02ei9t7tl/INl99n0eo9Po9GgSaxujqpyzVqw=; b=tvO6Y1mqRrvUoK
	At+NhW0Jt5COFdbNeG6frc8zJHj5J1rU+k7pwylQTFHO5yEycEQCLsXZlJ0o2X4hSeLviedv6wLFj
	VN3A1Z0UBw3otBM42jgJQnQp+fpldxH0th6wNUjKcqvYS/cCCZUZQU/XUIRvaxcNCWl4i+KC1E/V7
	Gy1rZux//44Y6ijIM9pKhdYJpGMgKc1l6tylgWpE6NQYW6OY6biFoZbOegpxrzakoDjBdEFT7sChl
	xCO08lNZOPR7QVW/9w5ZZ1fZen0Goz1c+FgVzmAcWjpFcV7gQjbd2zniFYKOGg3cgXyRx6z9lOw9x
	rHY0xjzmWrffMneRD2HA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pghhg-00A89d-0j;
	Mon, 27 Mar 2023 07:55:44 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pghhc-00A83l-0X;
	Mon, 27 Mar 2023 07:55:41 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id ED4B5320024A;
	Mon, 27 Mar 2023 03:55:27 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Mon, 27 Mar 2023 03:55:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=undef.tools; h=
	cc:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to; s=fm2; t=
	1679903727; x=1679990127; bh=9Inrf1ZOke+x2q1P5x0Yaqo5GMu+DtQMm2t
	UE2atg+U=; b=E8fDfPjqxMfkNliTqwxFbqAKe5u6GuzECjBRO6dgJLHNofGezwk
	5i/UBav3MvlMOkxvGDTXNuHegTzVwZjoZWvncaDuoxQnDa2mJ34qz0Boz0rN3E8n
	P1SOI/yH0UASz/WaR9b95OAzBM3bO21shwA3DoZry18o+Wq3YXOJ9Htn8N7pMuF0
	CjWbzq6Vlnr5VttVq2drOBsZ/YYpFMkwM+hfeUXv5HIpxbvqgBkKTddv21r+MAek
	SKMISHHHj+SWrbSvmZlyxtFD6XhQ44NEWi98z94ItO918jnuAKiDaaGCNHPBplO6
	AvbTtmaLn9pUuO99CjG4PlWK/yhEqG01HOA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:sender:subject:subject:to:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=
	1679903727; x=1679990127; bh=9Inrf1ZOke+x2q1P5x0Yaqo5GMu+DtQMm2t
	UE2atg+U=; b=DQZETlp5P78NcdUa9qR+Q3GZHzgr+6G2sytU5r8VgI+YqXFS0F2
	R+s45rAsaq/OEBCJ0z82RmZgqCjrTH759QP/mTBb7LL4SR0Md1b6mAiD130lYGpX
	j//Q+VgLnYECDOYBqO4NSb2KrONuRqvqcRyKrXLHbQBRyb+ttSrqM4UNN/cj4Mfy
	HgREg8p9HKjUayAqeQouuEGvy0j4a4bSImnPcEpuseqhcrtuqQU3FOcYnf3ZRaxg
	ktmAEFPpugh3g5xCXBHyNNTk8j8tYdXWXjZrrTBT/Zu8y2yfMwfGmkjnU2L5qzFI
	PInx4iRwCPDM70sCPJcNaoydX/8e6qV02gQ==
X-ME-Sender: <xms:7kshZFVKpbRifoivVRckRW_GqEzxNbIvlcFvTw2g9I3iQts6JVhVHw>
    <xme:7kshZFkge--qWuzITYAYwT2EoyqLtAd6aBUIo7dfNVU5pPb2ajn__6o7Ejo2Yet6K
    ZGvNMx4smlSutXzDXE>
X-ME-Received: <xmr:7kshZBYU6Y0K1NL2x3fP49UGy6-m9omXhbW0Ftbfmaw-pW6f1FWyMv9cWnp9oEPo2htgx98pr52SGCzkGImrB2mD7aIh16IhLRXrx6ntHfJwKX4>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedrvdehuddguddvhecutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
    enucfjughrpefkffggfgfuvfevfhfhjggtgfesthekredttdefjeenucfhrhhomheplfgr
    rhhrrghhuceokhgvrhhnvghlsehunhguvghfrdhtohholhhsqeenucggtffrrghtthgvrh
    hnpeeggfejtddugfeujeefgeeuieeiudelteeukeffhfeikeduudevtddvhfdtjeduheen
    ucffohhmrghinhepkhgvrhhnvghlrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepkhgvrhhnvghlsehunhguvghfrdhtohholhhs
X-ME-Proxy: <xmx:7kshZIW9dLHHp6LgwLxp__BwG8uIQBeWwbMJjghe1SKgyt9tvAaclg>
    <xmx:7kshZPnz2bkQwt2_g5BgTX_4xbCGXPkhkJrL8fgJVfb3JPe1fETLxQ>
    <xmx:7kshZFczcUvxPIGMlwv0Ly3FrB1fNwMGknc9y-CTLb1zgiPIhj1KwA>
    <xmx:70shZHkkaTltQkfZMJJ3TC0wrKAAwhKusno-62j8d1xCkdovOQJVXA>
Feedback-ID: id76147eb:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 27 Mar 2023 03:55:21 -0400 (EDT)
Message-ID: <e4f82c1e-621e-7e94-497d-8c579264f996@undef.tools>
Date: Mon, 27 Mar 2023 18:55:15 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2] arm64: dts: rk3399-pinephone-pro: Add internal display
 support
To: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org
Cc: Robert Mader <robert.mader@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Peter Robinson <pbrobinson@gmail.com>,
 Jacopo Mondi <jacopo.mondi@ideasonboard.com>, Ondrej Jirman <megi@xff.cz>,
 Martijn Braam <martijn@brixit.nl>, =?UTF-8?Q?Kamil_Trzci=c5=84ski?=
 <ayufan@ayufan.eu>, Caleb Connolly <kc@postmarketos.org>,
 Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
References: <20230327074136.1459212-1-javierm@redhat.com>
Content-Language: en-US
From: Jarrah <kernel@undef.tools>
In-Reply-To: <20230327074136.1459212-1-javierm@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_005540_302864_F6AB1ABD 
X-CRM114-Status: GOOD (  10.18  )
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

SGkgSmF2aWVyLAoKT24gMy8yNy8yMyAxODo0MSwgSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIHdy
b3RlOgo+IEZyb206IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZmLmN6Pgo+Cj4gVGhlIHBob25lJ3Mg
ZGlzcGxheSBpcyB1c2luZyBhIEhhbm5zdGFyIExDRCBwYW5lbC4gU3VwcG9ydCBpdCBieSBhZGRp
bmcgYQo+IHBhbmVsIERUIG5vZGUgYW5kIGFsbCBuZWVkZWQgbm9kZXMgKGJhY2tsaWdodCwgTUlQ
SSBEU0ksIHJlZ3VsYXRvcnMsIGV0YykuCj4KPiBTaWduZWQtb2ZmLWJ5OiBPbmRyZWogSmlybWFu
IDxtZWdpQHhmZi5jej4KPiBDby1kZXZlbG9wZWQtYnk6IE1hcnRpam4gQnJhYW0gPG1hcnRpam5A
YnJpeGl0Lm5sPgo+IENvLWRldmVsb3BlZC1ieTogS2FtaWwgVHJ6Y2nFhHNraSA8YXl1ZmFuQGF5
dWZhbi5ldT4KPiBTaWduZWQtb2ZmLWJ5OiBKYXZpZXIgTWFydGluZXogQ2FuaWxsYXMgPGphdmll
cm1AcmVkaGF0LmNvbT4KPiAtLS0KPgo+IENoYW5nZXMgaW4gdjI6Cj4gLSBEcm9wIHRvdWNoc2Ny
ZWVuIG5vZGUgYmVjYXVzZSB1c2VkIHRoZSB3cm9uZyBjb21wYXRpYmxlIChPbmRyZWogSmlybWFu
KS4KCgpBbnkgcmVhc29uIG5vdCB0byBpbmNsdWRlIHRoaXMgd2l0aCB0aGUgY29ycmVjdCBjb21w
YXRpYmxlIHN0cmluZz8gSXQncyAKYmVlbiBhdmFpbGFibGUgc2luY2UgCmh0dHBzOi8vbG9yZS5r
ZXJuZWwub3JnL2FsbC8yMDIyMDgxMzA0MzgyMS45OTgxLTEta2VybmVsQHVuZGVmLnRvb2xzLy4g
ClN3YXBwaW5nIG91dCBndDkxN3MgZm9yIGd0MTE1OCBpbiB0aGUgbm9kZSBmcm9tIHlvdXIgcHJl
dmlvdXMgcGF0Y2ggCnNob3VsZCBiZSBlbm91Z2guCgpUaGFua3MsCgpKYXJyYWguCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
