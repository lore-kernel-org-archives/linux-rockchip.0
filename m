Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 33B72C433FE
	for <linux-rockchip@archiver.kernel.org>; Sun,  2 Oct 2022 09:34:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:MIME-Version:
	Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ll0wRkz6E0GqG07SgCddOmKePge/lDzTfDTMx3t2qGI=; b=CXqg5TOlomQ/1IVdwwpKHD0lTB
	CP+MzF3gs27nwdt5oFf34RKPNPI5a/ojByiBUuw/vSuWJou91PObTtwzc8dlkNmRF5OPR3uYsfLdF
	0Vf2gHay2HM5O1MmhcGeyEtOGu2nXdmf9y3yVByMs3UTH8e4CpO9HYS14e6F9EMDclM3pJhL2wTKy
	tywNTLnOLyuQ8hCenQXLW7L8ihqYuP9w2G9KLilfjPMrwMKgGSpyj4J0VH/jnleoCk3QElmpFcpuv
	Pqky7nIr/LVBqNv3V7x6LA4gocTH01xYjRKikwp7AHQVRUtaGDxfy5ZdIbJKGKg3lSwd/IMr7mVHI
	xLUf6aZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oevMS-000X3y-PZ; Sun, 02 Oct 2022 09:34:12 +0000
Received: from wout5-smtp.messagingengine.com ([64.147.123.21])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oevMI-000X16-1w; Sun, 02 Oct 2022 09:34:03 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id 7B3A83200094;
	Sun,  2 Oct 2022 05:34:00 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Sun, 02 Oct 2022 05:34:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:content-transfer-encoding:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:sender:subject:subject:to:to;
	 s=fm2; t=1664703240; x=1664789640; bh=cjGLp8baAy8gDB43lxC6c1sR1
	usQtIeP/SEmMm6Ncko=; b=iGXwYYFIGkITvhamFXGXrzLL+ACVq3L4BxmyppZ6A
	fKUd+jea9gFAjLc0dyzlRqt7gFO+bYv2cNpJob2MxfxT8tkO/UdGgjOK1zE3rZ81
	5iqIT8ieqMeEwXMKxDFXePdo10rSXEAVV4tmuQJBWnK8BQD56FfVlBaKU/KapeW5
	aT7yFCQQpnZYnPbVu0RRfh4y3pV2tegv2tpS81BHC7VYAHVZ3pbXwWVtIM4pHdEV
	wmbDRTcaYAUl+Jso4DLFSVDZdX2P2vW8KeJQQWWw5PdZqwKen9mIm/uppbHFzaIR
	T2NfIcpKzT9tz9Vt7vIdiFdTo38It5FMMq8HGjDGaWuXA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-transfer-encoding:content-type
	:date:date:feedback-id:feedback-id:from:from:in-reply-to
	:in-reply-to:message-id:mime-version:references:reply-to:sender
	:subject:subject:to:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm2; t=1664703240; x=1664789640; bh=c
	jGLp8baAy8gDB43lxC6c1sR1usQtIeP/SEmMm6Ncko=; b=jBOrU6r9lE0SuLIlv
	GPWtPfxu9DfVMSCmEjzqYpcZCFcPRFNL4QECz0K0TmC1ssKLmgK+ABy7oA3rRRft
	VoD5fKER5jktGZw3nt42oPNw6QuVe6Fkiw7uPM+6+xuyZpJp+ilG/GBA42WgPw6x
	sAKVxGeghYwQFpV4Vob74vy4rhrGJl5U5UB0VuAkFgmxAIiZtnvRpt0GTgOmryWb
	iTw0zvi6WTTmzFdxNzOlguzJ3+2dW9v0YC662VbPpEy2NxvJQx03mfsjOZFWAyHM
	njqLG0MgvjOic2KYFARy0jYtwXmcYCJxeEyw2jAIfLIhydZUZHAeDlux+cXoW9DR
	6Hf4A==
X-ME-Sender: <xms:B1s5Y_mr1VNhmwK74hrKPPGObgYIQvYKGxer_Eo_SPTI74ZL_RfWcg>
    <xme:B1s5Yy0L_mnWUMPxZljgN8zu1VVWna349wAi67DkhkCzSPupiNRibne34zxoz18mV
    3IbP8-2Q1Y7eJO1-A>
X-ME-Received: <xmr:B1s5Y1qIEap8thcOkUXZRDo-uWLany0sQYKfkpy-WG_s9xBCFvwFq0ox8D98OuW7xoZkZNP-l2Aa9PjtY7EYzVE6>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrfeehjedgudeiucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepkfffgggfuffvfhfhjggtgfesthekredttdefjeenucfhrhhomhepvfhomhcu
    hfhithiihhgvnhhrhicuoehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhkqe
    enucggtffrrghtthgvrhhnpeejkeeggeehvddugedvgfffhffghfejheeigedtieeuveei
    gfduueevfeehfeeuvdenucffohhmrghinhepsghoohhtlhhinhdrtghomhenucevlhhush
    htvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehtohhmsehtohhmqdhf
    ihhtiihhvghnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:B1s5Y3lW0y0GgnG2O6wiW8CeQMf9BleNaU9G-ia7lz1HbNl2Ckdy3g>
    <xmx:B1s5Y91LfETReAcu7BM85ezRadzldgDWZ-EiPYooCb01ystkNNfavw>
    <xmx:B1s5Y2t3t-s1Nf8C4zSFdEqFA1tKDIhFNziyg3stnGceB1TjbW1g1Q>
    <xmx:CFs5Y-s6lsOTqxfK5G9sIqIJsdd7VG7Y0Zb-V4AKgkoOq0RS-rlrJw>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sun,
 2 Oct 2022 05:33:57 -0400 (EDT)
Message-ID: <54e14c57-e30b-5a39-00ca-1dcc7b352844@tom-fitzhenry.me.uk>
Date: Sun, 2 Oct 2022 20:33:55 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH] arm64: dts: rockchip: add BT/wifi nodes to Pinephone Pro
Content-Language: en-US
To: =?UTF-8?Q?Ond=c5=99ej_Jirman?= <megi@xff.cz>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org
References: <20220906124713.1683587-1-tom@tom-fitzhenry.me.uk>
 <20220906133539.6ghjlzbs2ozgsa7v@core>
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
In-Reply-To: <20220906133539.6ghjlzbs2ozgsa7v@core>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221002_023402_148323_853E2E3D 
X-CRM114-Status: GOOD (  16.85  )
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

SGkgT25kxZllaiwKClRoYW5rcyBmb3IgdGhlIHJldmlldy4KCk9uIDYvOS8yMiAyMzozNSwgT25k
xZllaiBKaXJtYW4gd3JvdGU6Cj4+ICsJLyogUG93ZXIgc2VxdWVuY2UgZm9yIFNESU8gV2lGaSBt
b2R1bGUgKi8KPj4gKwlzZGlvX3B3cnNlcTogc2Rpby1wd3JzZXEgewo+PiArCQljb21wYXRpYmxl
ID0gIm1tYy1wd3JzZXEtc2ltcGxlIjsKPj4gKwkJY2xvY2tzID0gPCZyazgxOCAxPjsKPj4gKwkJ
Y2xvY2stbmFtZXMgPSAiZXh0X2Nsb2NrIjsKPj4gKwkJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKPj4gKwkJcGluY3RybC0wID0gPCZ3aWZpX2VuYWJsZV9oX3Bpbj47Cj4+ICsJCXBvc3QtcG93
ZXItb24tZGVsYXktbXMgPSA8MTAwPjsKPj4gKwkJcG93ZXItb2ZmLWRlbGF5LXVzID0gPDUwMDAw
MD47Cj4gCj4gRG8gd2UgcmVhbGx5IG5lZWQgc3VjaCBsb25nIGRlbGF5cz8gQWxtb3N0IG5vIGJv
YXJkcyBpbiByb2NrY2hpcC8gdXNlIHN1Y2gKPiBkZWxheXMgYXQgYWxsLCBhbmQgaWYgdGhleSBk
byB0aGV5IGRvbid0IHVzdWFsbHkgdXNlIHBvd2VyIG9mZiBkZWxheS4KCkkgaGF2ZSBjaGVja2Vk
IHRoZSBkYXRhc2hlZXQsIGFuZCB1cGRhdGVkIHRoZSBkZWxheXMgYWNjb3JkaW5nbHkgd2l0aCAK
ZXhwbGFuYXRvcnkgY29tbWVudHMuIFRoaXMgaXMgYXBwbGllZCBpbiB2Mi4KCj4+ICAgJnNkbW1j
IHsKPiAKPiBzZWUgYmVsb3cKPiAKPj4gQEAgLTM4MCw2ICs0MTQsMjAgQEAgJnNkbW1jIHsKPj4g
ICAJc3RhdHVzID0gIm9rYXkiOwo+PiAgIH07Cj4+ICAgCj4+ICsmc2RpbzAgewo+IAo+IHNkJ2kn
bzAgY29tZXMgYmVmb3JlICdtJyBpbiB0aGUgYWxwaGFiZXQuCgpEb25lLiA6KQoKPiAKPj4gKwli
dXMtd2lkdGggPSA8ND47Cj4+ICsJY2FwLXNkLWhpZ2hzcGVlZDsKPj4gKwljYXAtc2Rpby1pcnE7
Cj4+ICsJZGlzYWJsZS13cDsKPj4gKwlrZWVwLXBvd2VyLWluLXN1c3BlbmQ7Cj4+ICsJbW1jLXB3
cnNlcSA9IDwmc2Rpb19wd3JzZXE+Owo+PiArCW5vbi1yZW1vdmFibGU7Cj4+ICsJcGluY3RybC1u
YW1lcyA9ICJkZWZhdWx0IjsKPj4gKwlwaW5jdHJsLTAgPSA8JnNkaW8wX2J1czQgJnNkaW8wX2Nt
ZCAmc2RpbzBfY2xrPjsKPj4gKwlzZC11aHMtc2RyMTA0Owo+PiArCXN0YXR1cyA9ICJva2F5IjsK
PiAKPiBJdCBtaWdodCBhbHNvIGJlIGdvb2QgdG8gYWRkIHRoZSB3aWZpIG5vZGUsIGFuZCBob29r
dXAgdGhlIGludGVycnVwdCBsaW5lIGFuZAo+IHBpbmN0cmxzLCBzbyB0aGF0IFdvVyB3b3Jrcywg
d2hpbGUgeW91J3JlIGF0IGl0Lgo+IAo+IFNlZSBlZy4gaHR0cHM6Ly9lbGl4aXIuYm9vdGxpbi5j
b20vbGludXgvdjUuMTkuNy9zb3VyY2UvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMz
OTktcm9jay1waS00Yi1wbHVzLmR0cyNMMzAKPiAKPiBMb29rcyBsaWtlIFdJRklfSE9TVF9XQUtF
X0wgaXMgaG9va2VkIHRvIEdQSU80X0QwL1BDSUVfQ0xLUkVRbkJfdSBhY2NvcmRpbmcKPiB0byB0
aGUgc2NoZW1hdGljLiBMZXQncyBob3BlIEdQSU80X0Qgd2lsbCBjb25zaWRlciAxLjhWIGFzIGhp
Z2gsIGJlY2F1c2UgU29DCj4gR1BJTzRfRCBpcyBpbiAzLjBWIGRvbWFpbiBhbmQgVkRESU8gb2Yg
d2lmaSBjaGlwIGlzIDEuOFYuCgpBcyBkaXNjdXNzZWQgb2ZmLWxpc3QgYnV0IGluY2x1ZGVkIGhl
cmUgZm9yIHBvc3Rlcml0eSwgSSdsbCBsZWF2ZSB0aGlzIApvdXQgb2YgdGhlIERUIGZvciBub3cs
IHVudGlsIHdlIGtub3cgdGhlIEdQSU8gdGhhdCB0aGUgZmlybXdhcmUgaXMgCmV4cGVjdGluZy4K
ClJlZ2FyZHMsClRvbQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
