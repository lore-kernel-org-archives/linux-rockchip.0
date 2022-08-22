Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B0425C00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Aug 2022 00:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=klaZZfwM3rtmjSNtJlH31kD/zmbyFFKo8mYiIvtPOIY=; b=o3+NPtNgWCj6TK05oN0Wr1KdkM
	vqbuPbIpZIU+RVh/tXyhCbSSkCcm+kRDGJjaih37efjJe1uY/7Jctnm7xKGWnUjxzk9BjKfbVPTVF
	4jI5qUPKclipntS6A3ffnqnZeaDDLBS93CKMAdS2jjVRDwf4K9wNmcf8qp/0HwbdFkwV6/dLj7Vzh
	kaFUBtZxzSw5absCkg+TXR5Q+l8CnxbCTwcpDefRkYpmL3AYtHmvQnE8xobYvCfvObMmdRSOZYvNG
	reU5+aN6S55CEQaVuHsnyRMekRtVktSW+R+FCAff5T9wWrUz31XxjAiZiVTRLAwioijltOdTcRRtC
	MXh/1Kug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPvE5-002Fpt-Oj; Mon, 22 Aug 2022 00:23:33 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPvDl-002FX0-4g; Mon, 22 Aug 2022 00:23:14 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 63E205C0183;
	Sun, 21 Aug 2022 20:23:12 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute2.internal (MEProxy); Sun, 21 Aug 2022 20:23:12 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:content-transfer-encoding:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm1; t=1661127792; x=1661214192; bh=+zNgsAGmXbExkylqMIpidshfU
	kOgsclf/BPqr+bOrXo=; b=a5OXRJjCxp1SgQnWJ2bvPslnliwdjuQPaASjuNMqd
	CkOt7Xx0bTXA+KYWLfibAgTdiA74GeokttfReUm5rrV8tPLKxpExU6SUKavhFf2y
	XiOdcKkseNhER2oJtONeO0uJm5Sck1r1A0+zjpvX3GAYOwgAxyAZMLRkC4r3oLQM
	EuOus2gL+n9/hsXTNQuVPV8CKoGsziagYfaWB/IHNw1GOZoFvRxev6JsJ1UWsYl5
	QMfYAYKMLYf3JmPPxp223u/bgKvLn9R61jEMHG/3iGYrDvmTmZIrtlvLe+Qz14bo
	MOIzDceDw4K2fgXcrFrLcAvCkgGvQu1LBYg8+ddG1JfgQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:feedback-id:feedback-id:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; t=1661127792; x=1661214192; bh=+
	zNgsAGmXbExkylqMIpidshfUkOgsclf/BPqr+bOrXo=; b=see+EMnXNoWKlmNDx
	mLWp9rJq5bv0hnA62mQr0zhTrRQgjc16G7bZmzUxs51tnDFAy3ojA4bMCNzQI6mo
	NG4DFlvAb6fKZZkKLI82FiDwoF4nLjsfCe3n0VfT0cFM8Tv2Nnf64P1szZ04mO5j
	XDLWlimrh7fIt8IKb1WfhUFRkufChPADPLEE7MXRxk/vL8+SNlwU0lqVkHKc3x8F
	o5c7Yrh5RmQkPmF0rTjrknlzVNPfskHk3CJhUTlU097AKmT57imgAsrweDwzIOjs
	vfAdNyP0sUEMd8dAiAFQ70s4LxzH/eW1guQVK0mIXabbBfa0necrYVdzQnoU29DX
	qEkxg==
X-ME-Sender: <xms:cMwCY-CkUuFf4OHfFiveFnV9iBpH2QTT3-xXJ9lH7szRCR4nOkGg9A>
    <xme:cMwCY4iPx7apyDWRxdEmLaovjqxI9JdZvli6aVWiuc4RIY_bszcRhkMmyKpPBp5Tj
    nn4UzsUqDmDZala0w>
X-ME-Received: <xmr:cMwCYxmlrFbmSC_zSrojVfhhCgzlWAl7RMG8QN7VJ5Bjcz8Dn-pyOb81k-buSx0l7AKmIQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdeiiedgfeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefkffggfgfuvfhfhfgjtgfgsehtke
    ertddtfeejnecuhfhrohhmpefvohhmucfhihhtiihhvghnrhihuceothhomhesthhomhdq
    fhhithiihhgvnhhrhidrmhgvrdhukheqnecuggftrfgrthhtvghrnhepiedtleelgeelje
    egvdeuleeguedtvefhtdeujeektddvleffjefhleethfeufedunecuffhomhgrihhnpehr
    rggugigrrdgtohhmnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilh
    hfrhhomhepthhomhesthhomhdqfhhithiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:cMwCY8wtxinZO_rEoKDKlgdQEhiXgayHjSbzVrMox-uJvwAXuXVFXw>
    <xmx:cMwCYzSM2jJzLmrYAeyFnzcqCqga4lOxJd2-dxsAtYhrN6IUDSFuQQ>
    <xmx:cMwCY3YG29l3_9QJlOrsyP6HmyS4awvxXf7WXTh5KTmBC0eO-UOzlg>
    <xmx:cMwCY_qsnWxDwhg7Tm3CwyeejiKEL_tdydgnZYyZC-pNDgehX73ejg>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 21 Aug 2022 20:23:10 -0400 (EDT)
Message-ID: <bb241882-a8c9-c2ea-a315-43d4929d4d96@tom-fitzhenry.me.uk>
Date: Mon, 22 Aug 2022 10:23:09 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.0.3
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add initial support for
 Pine64 PinePhone Pro
Content-Language: en-US
To: =?UTF-8?Q?Ond=c5=99ej_Jirman?= <megi@xff.cz>,
 =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= <n@nfraprado.net>,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 martijn@brixit.nl, ayufan@ayufan.eu, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 phone-devel@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220815123004.252014-1-tom@tom-fitzhenry.me.uk>
 <20220815123004.252014-3-tom@tom-fitzhenry.me.uk>
 <20220818030547.eblbmchutmnn6jih@notapiano>
 <20220821090005.tshf7z2kklaet7ll@core>
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
In-Reply-To: <20220821090005.tshf7z2kklaet7ll@core>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220821_172313_290983_64C4409D 
X-CRM114-Status: UNSURE (   8.73  )
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

T24gMjEvOC8yMiAxOTowMCwgT25kxZllaiBKaXJtYW4gd3JvdGU6Cgo+IE1heCB2b2x0YWdlcyBp
biBPUFAgdGFibGUgYXJlIGlycmVsZWF2YW50IGZvciBQaW5lcGhvbmUgUHJvIERULCBiZWNhdXNl
IHRoZSBDUFUKPiByZWd1bGF0b3JzIGluIHRoZSBQTUlDIGFyZSBjYXBhYmxlIG9mIHNldHRpbmcg
dGhlIHByZWZlcnJlZCB2b2x0YWdlIG9yIHZlcnkKPiBjbG9zZSB0byBpdC4KPgo+IFRoZSBhY3R1
YWwgbWluL21heCBsaW1pdHMgdGhhdCBhcmUgZW5mb3JjZWQgYnkgdGhlIGtlcm5lbCBmb3IgdGhl
IGJvYXJkIGFyZSBzZXQKPiBvbiB0aGUgQ1BVIHJlZ3VsYXRvciwgd2hpY2ggYXJlIGFjdHVhbGx5
IHdyb25nbHkgc2V0IGluIHRoaXMgRFQuIFNlZToKPgo+IGh0dHBzOi8vZGwucmFkeGEuY29tL3Jv
Y2twaTQvZG9jcy9ody9kYXRhc2hlZXRzL1JvY2tjaGlwJTIwUkszMzk5LVQlMjBEYXRhc2hlZXQl
MjBWMS4wLTIwMjEwODE4LnBkZgoKR29vZCBzcG90LCBJIHdpbGwgZml4IHRoZXNlIGluIHY0LgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
