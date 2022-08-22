Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 52C70C00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 00:34:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eFxtc6Yq+MP9NDRsZ/7wa/aTUVMb0wHwmbUiP8l71Dc=; b=JpzBkAK72tZ7dP
	/WlmaXhfcziNrsuZM/AF2E32J4G6eI1KS7pWWMwS8uXbUam4Ht6wHHwNDBVc+9/Pc/YvzHtVnKv4n
	FVqKqKkFCVK+kQB2fJblyVN4EMtI97H/XIsw/JoHDr3cCPAf8sNel5q6Y8mOjA16rRfIuGuTH3u3c
	Sb6H06eSbcED7E3NOkwXm6fLvViFVxLjSPUUfdfvGGdxVwGhJ9aY03YlgDqqYRLomFdO8aQAP4QWV
	5qJC8lV9+rBURNIzaT9DvEWxx2Pw2MPiZJNLy4mv9W7JoshuyY1Up8rOZ12f6QibMYotljgytbH8N
	Mo2ZadDrud77asQtaWfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPvNv-002V7X-Fu; Mon, 22 Aug 2022 00:33:43 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPvNj-002V12-AO; Mon, 22 Aug 2022 00:33:32 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 7435A5C00FE;
	Sun, 21 Aug 2022 20:33:30 -0400 (EDT)
Received: from imap46 ([10.202.2.96])
  by compute2.internal (MEProxy); Sun, 21 Aug 2022 20:33:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1661128410; x=1661214810; bh=27h43v4nBT
	AlRXCBZnK4UG8wbYzUzFCpxbi0BMYrkbM=; b=Lc2jpMR5ay89ru7Qj+gW2zMRXV
	D7lvXBFEaVaJ7MUM8mGTC3F6Bp0dxWKK5/e7X221AX+rTnZt76/Mv1betZBnHBZH
	JQud96s4tkPI2thDQqUq/FwzPcBrtwjX3P6wEfuYvTXT9qIrVr3T+jglTQhr3qlU
	FckvCctyWfcVYciIiuejKxrJqpAhoSsllq372abYk1N7mlmTxgHIej4C+1xwfjqC
	gN8QXQyUCRkEXPfnPhnLUXiyX69KAOuLeTXtFoaEddc8c2ghnMvPkDerfdxSCscu
	lDpJYpa5K8WBEQKC3VFgphBhcZksLyyPTrBdglHKJ4uXLJt14iVxbs/dueiw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1661128410; x=
	1661214810; bh=27h43v4nBTAlRXCBZnK4UG8wbYzUzFCpxbi0BMYrkbM=; b=l
	592CXRTNKqmCcnghN5YrbqfnlJAqYJ5/f4sKVN1/fZRVJTRZcezwsSabP7rJWqxt
	jZTXUFtLTFQVZqIv3V8HZ9aQ3lEi3WDYa/IZB8H/IonbvATHrmlLh3EdE4mG3zn6
	dA3hvkeHRSBOTMf0v27ytrZY/TSjmk3JBN4nrJDsn9RNgVS58YltAIe/51MK6ciU
	Gf+VIMtkiu9JVdAnSSit6BElF6hiNcvsk4hheWCeZ2Hx5RFTpQhyn9FRhy8YfaUT
	J4Ukb1eVnO/3JWzuf7K6fva5uarQMoXsRebPFVYRXx0RJLg2EgUA2+vHXsoWCCLs
	cBszWecnTWMss65I1dy8Q==
X-ME-Sender: <xms:2s4CYzK0yxz3h5fegyVUgvhdbPTHwu-RseMyvjOifmJ0dt7BQFFAZA>
    <xme:2s4CY3LBrggaoLgaey-MTQx1gY2NT3OkGG8smH2aFi-iOV3vZJc1wrF75MNYGzWYS
    ZH4LwwsGf_QtKm74A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiiedgfeejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfgjfhffhffvvefutgfgse
    htqhertderreejnecuhfhrohhmpedfvfhomhcuhfhithiihhgvnhhrhidfuceothhomhes
    thhomhdqfhhithiihhgvnhhrhidrmhgvrdhukheqnecuggftrfgrthhtvghrnhepiefhge
    eikefgueejtddvueevheeikeeghfehtdffgeeigeeujeeggeffjeeuvdeknecuvehluhhs
    thgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhomhesthhomhdqfh
    hithiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:2s4CY7shrdwtyrF2g4MZ2GcrsHjKOAkhXsxcJ2KY8A2AHUz9Qu_RqA>
    <xmx:2s4CY8bKTAnnU2CiV9FQNKUa_6SCj5kmqqv2DoX7tLgMuMth4fUU3A>
    <xmx:2s4CY6b-q9ILy9zViLhBQOTv1fj5OU77D_2zl_pOVIeysl6lazwedA>
    <xmx:2s4CYyrGoIsoIW2e0LZWSTQRT-FAIs6Y6x7ffKyWbN8xPEAcvuCgng>
Feedback-ID: iefc945ae:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 2B1DC2A20075; Sun, 21 Aug 2022 20:33:30 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-841-g7899e99a45-fm-20220811.002-g7899e99a
Mime-Version: 1.0
Message-Id: <81f06224-2472-4696-b56a-2f4286902d0f@www.fastmail.com>
In-Reply-To: <20220821001114.ahnb4f6hcykt5nrm@notapiano>
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
 <20220815123004.252014-3-tom@tom-fitzhenry.me.uk>
 <20220821001114.ahnb4f6hcykt5nrm@notapiano>
Date: Mon, 22 Aug 2022 00:33:08 +0000
From: "Tom Fitzhenry" <tom@tom-fitzhenry.me.uk>
To: =?UTF-8?Q?N=C3=ADcolas_F=2E_R=2E_A=2E_Prado?= <n@nfraprado.net>
Cc: robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 martijn@brixit.nl, ayufan@ayufan.eu, megi@xff.cz, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 phone-devel@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for Pine64
 PinePhone Pro
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_173331_465635_F90EE8CC 
X-CRM114-Status: UNSURE (   5.87  )
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCAyMSBBdWcgMjAyMiwgYXQgMTI6MTEgQU0sIE7DrWNvbGFzIEYuIFIuIEEuIFByYWRv
IHdyb3RlOgo+IEluZGVlZCBib290aW5nIGZyb20gdGhlIFNEIGNhcmQgYWxzbyB3b3JrcyB3aXRo
IHRoaXMgbWluaW1hbCBEVC4gQWxzbyBjb25maXJtZWQKPiB0aGF0IGVNTUMsIHRoZXJtYWwgc2Vu
c29ycywgcG93ZXIgYnV0dG9uLCByZWd1bGF0b3JzIGFuZCBVQVJUIGFyZSBhbGwgd29ya2luZy4K
ClRoYW5rcyBmb3IgdGhlIHRlc3RpbmchIEkgd2lsbCBpbmNsdWRlIHlvdXIgVGVzdGVkLWJ5IGlu
IHY0LgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
