Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C3F8C4167B
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Dec 2022 13:20:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:Subject:From:References:Cc:To:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v45W3f13ZKdtxvsheSeIHWuCn+2qR2sABc2fNLzXFa0=; b=k9wMMkkJjOQZ/s
	hckqZi2Pb08Hu8E+PtYnQ0fz6/Y2ANmgPGlVd+v0ty1MxKPgtd1cwW9ukTaPFDc0laoCa3Xz/JN5e
	zc4viShJ5NHrMtB4GkO4lyNrk5MOPMMOhXmvCG2ec6eV8hp6dYmYG7hnHACq4a8G2gbGO/Ynic778
	6dAmyMROq0j/+RKbZX+aUE40m6XLxPH5h1OUFW5sQcK1Gz7m3i+m7/RYZTkKUifQD0gK7gKLlxDcB
	eFATVoy+JYnMSBnqEvAPUsYRvBEhv5MtX/RNf4PB9/RgiAjra3RHeX4WRMjRXyI1ZOaRMI1qzYK1O
	0GJ+2I/HyS1wCPZqsQdQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAWM0-0058aU-LQ; Wed, 28 Dec 2022 13:20:20 +0000
Received: from wout4-smtp.messagingengine.com ([64.147.123.20])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pAWLp-0058Tx-8D; Wed, 28 Dec 2022 13:20:10 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.west.internal (Postfix) with ESMTP id BE22E320093C;
	Wed, 28 Dec 2022 08:20:00 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute5.internal (MEProxy); Wed, 28 Dec 2022 08:20:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm2; t=1672233600; x=1672320000; bh=NnxyuSjPe4
	7CKfUwte6w8c6VBQb/k7DbuSDxv2BLmng=; b=WfyjGyqG12yhYjnnlt5yX0bY/s
	c1uKXrryw2mU/oh5Fta4torBmnvK6GXs+ixYQgL4gehIHdm9+XRIBu9osoGiQBh8
	NeOdLruTyqdEMCeb24P06V9X8UDvPJLMD2AaZKvu1ZEY7E/WOVuj3fale9ntQmU1
	EFx9halZUjzdDE1yM+fe2GvuTfbUCq6J6Rs3xtAhg1lU6fRanJ4eLVxyt54smY7V
	srWk/yLwkm2gjFasXJMcXbHIqGAf4S1e8yRED5PDf2sp8/2J2EqaGaaT5v48PbVZ
	1lnhgkDZ+3xXZdvFPKqDAMM3ZpcrNvd7X8v5wPVkF3fsR9PoYi7e8cxBIbRw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; t=1672233600; x=
	1672320000; bh=NnxyuSjPe47CKfUwte6w8c6VBQb/k7DbuSDxv2BLmng=; b=t
	78bjezcCqMhL/qEsXN52xffaVFBfszMEfSa6xYQ5qvMnN7yLY6C1CG4+bAz3Jj5p
	t6aA2pP6NBzvLJ44oNUwW5NTeXTOmZO6cUqBAd3GptVTdN06CYe/tCtO1tA9sBcf
	djPOjWvjaMj3xx0KdtR5q6WsQfWmrSt80i4+jcA2iWKeU+EoYVMCU6yQuHAasod4
	x9xhoi48jCod2aUzPDWyWpIPAnYag4UQ/7ud5cUe485LHJ4cNax+wDch8ga//idF
	fOLOyWkcUyPsXuioeM2sNvZc9ZFu6mQTn7szkWhm69Q7/563pe6rLYRjGq4EANZ5
	Crr17XPGzwnKFyI/yurbQ==
X-ME-Sender: <xms:f0KsY4-OCSSwjsN2AxNQN5xWdex9kw4YVm79doe5x4daF3525u-ElQ>
    <xme:f0KsYwtJ8KN9cFNO08g3cgCi0zo6kqXw14L1O3k-QsaP8w9lfq9BIVdCaCAOyvSdq
    aNjvqrC_26ZHiH_hg>
X-ME-Received: <xmr:f0KsY-BTc4Z4uRrH-i8QAtF6P9rRSU2VBdNxBDhmncDeM2JCgWFdooSx5xSXls9CWbyLIt1U0KBoXPihbSfzKn4l>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvhedriedvgdehudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefkffggfgfvvehfhffujggtgfesthekredttdefjeenucfhrhhomhepvfhomhcu
    hfhithiihhgvnhhrhicuoehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhkqe
    enucggtffrrghtthgvrhhnpeeiueelgedvudfhkeeufeeiuefhteeftdffhfefudehjeet
    hedtfeeikeevieffgeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrih
    hlfhhrohhmpehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvgdruhhk
X-ME-Proxy: <xmx:f0KsY4di2bMNhJ7Jj3CMM5B-mA0K4lMHMv38ArJTepf789lv8uSa6w>
    <xmx:f0KsY9MBzATAzVxlLCG_NGVeLZgzgBMY6pY7FNodevssuBN3BKlXmQ>
    <xmx:f0KsYyn16n3v4StfC8hzQQ3csWM_XNST5ty3qJEjrQ_V3nDmPlwFlA>
    <xmx:gEKsY_3s_-bJy5Sl3TehTCToUXiFNdCiYP6xr4uUMNDJVqt61kZK4Q>
Feedback-ID: iefc945ae:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 28 Dec 2022 08:19:55 -0500 (EST)
Message-ID: <b7204e9a-cb23-c2ed-88de-0d6271bba98a@tom-fitzhenry.me.uk>
Date: Thu, 29 Dec 2022 00:19:52 +1100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Content-Language: en-US
To: Javier Martinez Canillas <javierm@redhat.com>,
 linux-kernel@vger.kernel.org
Cc: Peter Robinson <pbrobinson@gmail.com>, Martijn Braam <martijn@brixit.nl>,
 Maya Matuszczyk <maccraft123mc@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 Neal Gompa <ngompa13@gmail.com>, =?UTF-8?Q?Kamil_Trzci=c5=84ski?=
 <ayufan@ayufan.eu>, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 Robert Mader <robert.mader@posteo.de>,
 Onuralp Sezer <thunderbirdtr@fedoraproject.org>, Ondrej Jirman
 <megi@xff.cz>, dri-devel@lists.freedesktop.org,
 Heiko Stuebner <heiko@sntech.de>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
References: <20221227110335.2923359-1-javierm@redhat.com>
 <20221227110335.2923359-5-javierm@redhat.com>
From: Tom Fitzhenry <tom@tom-fitzhenry.me.uk>
Subject: Re: [PATCH v3 4/4] arm64: dts: rk3399-pinephone-pro: Add internal
 display support
In-Reply-To: <20221227110335.2923359-5-javierm@redhat.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221228_052009_358385_B6220100 
X-CRM114-Status: UNSURE (   9.46  )
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

T24gMjcvMTIvMjIgMjI6MDMsIEphdmllciBNYXJ0aW5leiBDYW5pbGxhcyB3cm90ZToKPiBGcm9t
OiBPbmRyZWogSmlybWFuIDxtZWdpQHhmZi5jej4KPiAKPiBUaGUgcGhvbmUncyBkaXNwbGF5IGlz
IHVzaW5nIEhhbm5zdGFyIExDRCBwYW5lbCwgYW5kIEdvb2RpeCBiYXNlZAo+IHRvdWNoc2NyZWVu
LiBTdXBwb3J0IGl0Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IE9uZHJlaiBKaXJtYW4gPG1lZ2lAeGZm
LmN6Pgo+IENvLWRldmVsb3BlZC1ieTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+
Cj4gU2lnbmVkLW9mZi1ieTogTWFydGlqbiBCcmFhbSA8bWFydGlqbkBicml4aXQubmw+Cj4gQ28t
ZGV2ZWxvcGVkLWJ5OiBLYW1pbCBUcnpjacWEc2tpIDxheXVmYW5AYXl1ZmFuLmV1Pgo+IFNpZ25l
ZC1vZmYtYnk6IEthbWlsIFRyemNpxYRza2kgPGF5dWZhbkBheXVmYW4uZXU+Cj4gU2lnbmVkLW9m
Zi1ieTogSmF2aWVyIE1hcnRpbmV6IENhbmlsbGFzIDxqYXZpZXJtQHJlZGhhdC5jb20+CgpUZXN0
ZWQtYnk6IFRvbSBGaXR6aGVucnkgPHRvbUB0b20tZml0emhlbnJ5Lm1lLnVrPgoKRGlzcGxheSBh
bmQgdG91Y2hzY3JlZW4gd29ya3Mgb24gbXkgUGluZXBob25lIFBybywgdGhhbmtzIGZvciB0aGUg
Cm1haW5saW5pbmchCgo+IEBAIC0zNjcsNiArNDc0LDEwIEBAIHZjYzF2OF9jb2RlY19lbjogdmNj
MXY4LWNvZGVjLWVuIHsKPiAgIAl9Owo+ICAgfTsKPiAgIAo+ICsmcHdtMCB7Cj4gKwlzdGF0dXMg
PSAib2theSI7Cj4gK307CgpQbGVhc2UgbW92ZSAmcHdtMCBiZWZvcmUgJnNkaW8wLCB0byBrZWVw
IHRoaXMgfmFscGhhYmV0aWNhbC4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
