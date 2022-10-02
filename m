Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BF223C433F5
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 09:35:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwfkkOSs1rqyaelEdH+EP2TOir1GMUr1gQ250YfkC+0=; b=vYwdW5dRzV1y4J
	kEMMm9IsWg1vX9R+F3MuRNu9cExRLS8mM5sNaTMiyVq88WTkaec6iLksC0ds070IuQe5WQ0is365H
	BS7odMwvGwo1s1qPt9FuuuHsPuNRP6mt54to7se4MPM5BW2LhMtK7L6iKhjuToYJw+hnUkk15+B/E
	S1gnRPZWrTXdvPD94Jqta34XYadrlkNh12rFF7KppQaY4seHgDrFf1mxNI2aHxGzcxUkSofg53n1U
	hM6gyF6x7eyulcY+fwqXUlYLsA5L46xCSSvg7UP0sWo6MiVW6rVnNWPQGrlg5cjUT20sxjJxEgwdX
	43O9zeQJvR3P8fg1HFLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oevNm-000XXD-1t; Sun, 02 Oct 2022 09:35:34 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oevNY-000XRy-5R; Sun, 02 Oct 2022 09:35:23 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id 0647C32008FB;
	Sun,  2 Oct 2022 05:35:18 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute2.internal (MEProxy); Sun, 02 Oct 2022 05:35:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1664703318; x=1664789718; bh=8bchpnxrRv
	N9buSlyqfr4HeiutePi3l9kvoIge3/5PY=; b=dDhvCkoqtZCQBzGCDjC/eYRBJb
	zSSvtZZeFA8gC+59LKsZMNoXk7PcK3Qo+9ds9euiayM3r2C4HiPstBM88vyoCOQ9
	0R4aUcA7uDBvvqaZQeWvHRYXlX7A0ycgSt5RophRm5kY1F7Xd/+kSvs/o7hUpfe4
	xBgu+s2Ckx4V6Eeol9xgdnjAmS8EeY00cpgmkoa9YBEDEeGs8rdEabjb+G0KrIzd
	jUhe8yxoBUNaDOzaWlUJ6kgg7tA7kFKpasH7zKjgV1//wOG5GD1P1pA5NMaObLRV
	NLFVP5pm2bQ86z1tffth55CrLKCPtztIpZ227EwCVfiYhEixxTtolgFfjIFg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1664703318; x=
	1664789718; bh=8bchpnxrRvN9buSlyqfr4HeiutePi3l9kvoIge3/5PY=; b=C
	/vYuHvEpEQwfv1nSs2bnlIFAjWjJruQWzGRVtlaLj14ecZ8Gbb/05jNGIvF2omPA
	3ePGn4RgIpXcB0Ip1mwro38MQuZ0WUF2qGzhetGsmDuf1U9ZnQWshVmL1/1hAY6c
	hmVJ4acsMEINHIKA28NtlzAEy73UZQ3B1VpWwqAZq4Eqrgb/XwzfzwOdno4jNSMM
	Ub96dBAy3++C6KeDKjMRtecHKUa6uJFSqA1z+SHQ4Fg6Av5+J59tqbTHmFeZRAgO
	DTXvmvEYjOsZ79c1ogRgJ8KbDqDi9ORUY4rSKh90R6Eapuz1J6ZXCLhLkrcXSbt7
	cCe1VqsnD5oTkajSdID1Q==
X-ME-Sender: <xms:Vls5Y8WeCAQXx1yGLRraHSkcGDtu4dMEFh5iHYmR-mSu7uo2Se-Qnw>
    <xme:Vls5Ywm04vGiEqBgJyOHxlLHqUopouNr3N8RDsdo1wk2N_Jgci9_BGGdgArdAgeR7
    Nb27GoqHtR4o6o7Gw>
X-ME-Received: <xmr:Vls5YwYW82jGR1EBOsOGkn9o4BkM9N6GrX8mupy6LD0pzAIa4EYviCjg8AwPCZAZOn7wzEIX59IWxpJp8PjsrIJc>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeehjedgudejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvvehfhfgjtgfgsehtkeertddtfeejnecuhfhrohhmpefvohhm
    ucfhihhtiihhvghnrhihuceothhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukh
    eqnecuggftrfgrthhtvghrnhepfefgkeetudffiedugeefjeefgfdvudefhfevudekieff
    udfgleduhfehgfdvgeffnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrg
    hilhhfrhhomhepthhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:Vls5Y7Uwtdsq9PkUYBIjz2KDRpB3Lg6yjAYsiNHiwN55k8FbIbzv4Q>
    <xmx:Vls5Y2kfCG9U_blE311z6fVxT4fn1XnKfBJW4xD3KRimpwdI_QLvmA>
    <xmx:Vls5YwdSYBZs_QQJGZtgpfMxAzgRO0HYSsEFvTOAWw09hQQhQ_ywXA>
    <xmx:Vls5Y4f02ngk-cZ5dMzif0_SiGngN_7hqirBN476PMEKtSe2wdSrKw>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 2 Oct 2022 05:35:15 -0400 (EDT)
Message-ID: <5ba8f523-dc55-1f12-729e-c65d741c4175@tom-fitzhenry.me.uk>
Date: Sun, 2 Oct 2022 20:35:14 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH] arm64: dts: rockchip: add BT/wifi nodes to Pinephone Pro
Content-Language: en-US
To: =?UTF-8?Q?Heiko_St=c3=bcbner?= <heiko@sntech.de>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Caleb Connolly <kc@postmarketos.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 phone-devel@vger.kernel.org
References: <Rk3c--Dksit7gaQSddtVEaF5_7FlNYE4KZKQKaLsRu2GXMXoBgp5C2DSPNublHMr6E135nPS2B9JkQyf6aSZjw==@protonmail.internalid>
 <20220906124713.1683587-1-tom@tom-fitzhenry.me.uk>
 <57395b20-6352-8414-3078-cdad6bbbe999@postmarketos.org>
 <46977559.XUcTiDjVJD@diego>
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
In-Reply-To: <46977559.XUcTiDjVJD@diego>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221002_023520_268328_644DE4C6 
X-CRM114-Status: GOOD (  11.89  )
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

SGkgQ2FsZWIgYW5kIEhlaWtvLAoKVGhhbmsgeW91IGZvciB5b3VyIHJldmlld3MuCgpPbiA3Lzkv
MjIgMTg6MjYsIEhlaWtvIFN0w7xibmVyIHdyb3RlOgo+Pj4gKwkvKiBQb3dlciBzZXF1ZW5jZSBm
b3IgU0RJTyBXaUZpIG1vZHVsZSAqLwo+Pgo+PiBUaGlzIGNvbW1lbnQgaXNuJ3QgbmVlZGVkLCBp
bnN0ZWFkIGdpdmUgdGhlIG5vZGUgYSBiZXR0ZXIgbmFtZS9sYWJlbAo+Pj4gKwlzZGlvX3B3cnNl
cTogc2Rpby1wd3JzZXEgewo+Pgo+PiAJd2lmaV9wd3JzZXE6IHNkaW8tcHdyc2VxLXdpZmkgewo+
IAo+IEkgZ3Vlc3MsIEknZCBtb3ZlIHRoZSBjb21wb25lbnRzIGFyb3VuZCBhIHRpbnkgYml0IGFu
ZCBnbyB3aXRoCj4gCj4gCXdpZmlfcHdyc2VxOiBzZGlvLXdpZmktcHdyc2VxIHsKPiAKPiBTbyBm
YXIgZXZlcnl3aGVyZSB0aGUgIi1wd3JzZXEiIGlzIGF0IHRoZSBlbmQgYW5kIHdoaWxlIEkgZG9u
J3QKPiB0aGluayB0aGF0IHRoaXMgaXMgZW5mb3JjZWQgKHlldCksIGtlZXBpbmcgc29tZSBzb3J0
IG9mIGNvbnNpc3RlbmN5Cj4gbWlnaHQgYmUgbmljZSA6LSkKCkRvbmUuIEkgaGF2ZSBhcHBsaWVk
IHRoaXMgaW4gdjIuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
