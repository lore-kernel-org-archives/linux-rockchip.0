Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6247BC433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 29 May 2022 11:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RGzWsZRZ/EqCPEXeyO4WheBCQH1gjo1/cwQEgitS8Xg=; b=rJ0F2kobtN1PVQI2/6aKbrDri3
	i9i0YoCKynK62N8YlL7qR0zv6JFNWEaHRQksF8VM5iV07cFw9Kv2dYUeLsQNPgxV6crFzINEed80f
	9IRRyOIWDKKx1QNgwNs5xT9O6e8zYTxC/DRrwq9bjaJZmJ+yi2kkXP8wzoT95gRqO4IEPGa9neLqW
	+VnUxtx4/ze7oJQowMuaUgXE3uRD8cX1z/HVSb+fmOUKf2XSjhks4XnTwtJT6tcnzrVyODteSy0XM
	nJzlMVZlYdf/f92OEsTKTtzXzNaAZguuCEDtzUDHGkYz2/8PgQ2VQVXjwRHkNdZI2/cBpDDWNvweu
	D2WnIIBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvHV0-003ooG-Rk; Sun, 29 May 2022 11:54:22 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nvHUm-003omq-IO; Sun, 29 May 2022 11:54:11 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id A7B713200344;
	Sun, 29 May 2022 07:54:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Sun, 29 May 2022 07:54:04 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:content-transfer-encoding:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm1; t=1653825243; x=1653911643; bh=TyMkJ9S3FIKXSrx+MW8UBtd0k
	Xmm/kUUdF7+pxja3NY=; b=tRuEE1q1RsrhQULFDbRCFLBbltENYtBnOvTAeaVol
	qmw/xZOl2hfLQAE551FeSZ3CNeC8XSZNVoTscnCLNPLjcpcuCzzRrnvAHhu8JJHv
	OwqcYoNVACriqMmjJfr1QWserF79PsIPVSBbx1QCrHTpGlmyiKSW3ZnCT/HFxcKi
	rnMzbGBBQfiZhKWR3ZYT+DD+4hvdIhKG0/eJs34GElALn4+DnEB/av7ooS+AxQ1g
	E0C3nofSsasyXfxH5psvChlxcZKPJFCwLzCEB56UF8Ice9i/cN7TVy9NusTlNQVD
	00RzPIga0qG7Np8uKt7WdcMBTyUxFCVDSmyRrTROMKolA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:feedback-id:feedback-id:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1653825243; x=1653911643; bh=T
	yMkJ9S3FIKXSrx+MW8UBtd0kXmm/kUUdF7+pxja3NY=; b=yMv7jd+l+N7duKaUP
	spA1Ssicv4zAjj8OdSYNdFRuv3XL6bosaIqYFgSx9rzOjRsCltJovv0zGXq6UPQs
	mAIYBGIg3QP7qVCJyhZFOyJQDFxlkN8GaNa39GOMRkK/q389J+giLQ0/GUmivKex
	TsvvU2KjS9bGzMp+uKxBR49zZtxX74rdLB0yhFR4plz78Z4t7+eGmv8V5aWf7aGu
	P4mTTaBSEld6hKYRWjF7qW09ej6XXdZjHHeHPpnBLlumLg1b9demHquhHR8jtFxQ
	jDGuPT1Hik84LdFHV3jYk6X+BOapgIPQIYi0ilzky/fj3KY6j4sZPc4dLOXTe8Po
	D6TbA==
X-ME-Sender: <xms:2l6TYj0cpGRJ52HuKYi2ApYY8oFlp4QplMpuMA0-JaGTNBAYbLLjkQ>
    <xme:2l6TYiHwcIGgR5uhNdmM9hh4uveM6I_gm25xuNjhef02_3a9NHXxtNDYuQtEo8v2d
    PL8R2EltgZu4UPNCg>
X-ME-Received: <xmr:2l6TYj48oIgFPX-fHvxLkBZnofGWSLbKhisPDRjC05WHLuLuwYEM5T-L5zjJ3dZndKk_WvjgWpViQh-OTp2KjwyZ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrkeeggdeggecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfuvfhfhfgjtgfgsehtkeertddtfeejnecuhfhrohhmpefvohhmucfh
    ihhtiihhvghnrhihuceothhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukheqne
    cuggftrfgrthhtvghrnhepfeffuedtjeelteffheegudekudetvdejgfejieekteeutdfh
    lefhtdeuffduueehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepthhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:2l6TYo3GZLQCAIPzlMCPynJiRrVeLIfQO1ZW-uHkZzW8xkqRp9qzPA>
    <xmx:2l6TYmH8iuVqMuVF1_3Qo0W7spEXuF_qrkoY-SyUO_TLsUNj0kCpcw>
    <xmx:2l6TYp83P-N6d8R3njAYyCh5F5JHno2mBLpsbQ8WH9bfdIZMB45aUQ>
    <xmx:216TYtcaEIFWK0nCgJisHuah0FkQsZn0mT5J_aK0S6C8tcqt7Ur1NQ>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 29 May 2022 07:53:59 -0400 (EDT)
Message-ID: <11f38463-1e3f-8fda-c54f-77c4065b06fc@tom-fitzhenry.me.uk>
Date: Sun, 29 May 2022 21:53:56 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add initial support for Pine64
 PinePhone Pro
Content-Language: en-US
To: =?UTF-8?Q?Ond=c5=99ej_Jirman?= <megous@megous.com>,
 Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Samuel Holland <samuel@sholland.org>,
 Martijn Braam <martijn@brixit.nl>
References: <20220529031705.278631-1-tom@tom-fitzhenry.me.uk>
 <20220529031705.278631-3-tom@tom-fitzhenry.me.uk>
 <20220529113309.imsy7j3cnl4ihc52@core>
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
In-Reply-To: <20220529113309.imsy7j3cnl4ihc52@core>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220529_045409_174739_4B4C323F 
X-CRM114-Status: UNSURE (   6.07  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gMjkvNS8yMiAyMTozMywgT25kxZllaiBKaXJtYW4gd3JvdGU6Cj4gSSBzdWdnZXN0IHRvIHdh
aXQgZm9yIHRoZSBvcmlnaW5hbCBhdXRob3IncyBzdWJtaXNzaW9uLgoKU0dUTS4gSSB3aWxsIGhh
cHBpbHkgd2l0aGRyYXcgdGhlIHBhdGNoIHNlcmllcy4KCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
