Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07A89ECAAA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 29 Aug 2022 04:29:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Cc:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJtjvI96u8Zpf9FJl2cghNTVk8OXMx4ZsrcGnutuiCc=; b=QXBLccdyZG30mY
	sQexdCPs/V6rFxvk1I/zSmgd5ewfsnveuynlmWoDTv94w4VC2TF2jg++guv7w5r0GVkTZDXKL6idp
	hPc9Jk9VWT6qEf1fbQQIe8T6WmzDq8UDPllzXgu6FOkwbTlitehZGqrdVwOdynXt6V0z6mR2CZgZZ
	30u6Q2tn5hUg3qIwuHVu9FHiC3qZbaUXKNu6yZSOzUTwFRrrNquwd9wxDV9rMSCcpKaYGha7/QpkA
	oT1G1uDMU120XaPpR4pOywhgW/5Iy/e/XLe9xe4HrhqDNREIof/cqE7vSv51bZddj8+zHWoOkBed/
	eYROOCcfD0nlIiROLujg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSWOL-004UPT-EK; Mon, 29 Aug 2022 04:28:53 +0000
Received: from wout2-smtp.messagingengine.com ([64.147.123.25])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSWO3-004UAv-RD; Mon, 29 Aug 2022 04:28:39 +0000
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
	by mailout.west.internal (Postfix) with ESMTP id F12233200684;
	Mon, 29 Aug 2022 00:28:26 -0400 (EDT)
Received: from imap46 ([10.202.2.96])
  by compute2.internal (MEProxy); Mon, 29 Aug 2022 00:28:28 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	tom-fitzhenry.me.uk; h=cc:cc:content-transfer-encoding
	:content-type:date:date:from:from:in-reply-to:in-reply-to
	:message-id:mime-version:references:reply-to:sender:subject
	:subject:to:to; s=fm1; t=1661747306; x=1661833706; bh=7f5gUMyENX
	zYFC/ZQNB5KKhl9DF71UmgTG9JV/GtQd8=; b=hmn02Qf0uEQelPuAsQJ5ZnUE4Q
	xQmoqWN2UacAqvaRq12ZKbf5tlFwbZsKQCDAjYNhRqbmDV1c55UrdL7L698rfVJ/
	yuXr5daTrDDI70KTiCs9qp9ZKgZxDAuzrwV8OShx7oVI35ylE2LajJzVPR9Ck4lW
	rvTwTmMXfCJ68ZbYLUsiGBsH5m+OJWsEXmGT6WaBkGNXB13DgvLNiTnS+9baPsmz
	m8wXdoUdKd85+15e7I8sWQNiJiqQ7Wm1+ytVVmZ6GbQJXyanIlafUmc8Mo/X1mGF
	Z4H/7mkfLS7f0Xt1FylqVCymZI5fsUYjoS+fmMBMORNQWeBzH0tMj/NAniMg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:date:date:feedback-id:feedback-id:from:from
	:in-reply-to:in-reply-to:message-id:mime-version:references
	:reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1661747306; x=
	1661833706; bh=7f5gUMyENXzYFC/ZQNB5KKhl9DF71UmgTG9JV/GtQd8=; b=L
	bu4AgXDZz8O9nzp65MSNkKZIRJP8N+hz1Yx9ZEn/iY/itxZoW99UNMieTrYViYL2
	9q6QJEsRzEAdtI9/K4ZgYBdOKqIwg2AMZ6azxM109K6PAn7u00Fl9tgGl6AoUuip
	JfXMi+S+CvZOLpOsoXxsrk1/OE1IMkskrXe/t7fREV/ajw7VgZZzkXtqTI47QCnN
	6P7JtRFIe9rrAbiu7KqseKbNQ2jDD1ARxpuwFL6baAvN0U8wnyGvyjA8HhRN0+at
	fIJePQ94Ra7xmjjkHTYcyUuL1+PHd5P9OzfbU0/SEllyhj+glUYzdyWyFJGFytCd
	jO+r0t7oziA8F625NFONA==
X-ME-Sender: <xms:aEAMY8QrbOmutEU30XGSFse7XEDO0i1EP3LpCn45AJKtlPY7qQO-Yw>
    <xme:aEAMY5zWBiu3rdljYwD_K5-XpWX3iP6ZaSj06CR_nywrqD1If9_WT9HY_3bwYCVjk
    jI5BQtUFCZ-NfGmQQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrvdektddgkeehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvfevufgtgfesthhqredtreerjeenucfhrhhomhepfdfv
    ohhmucfhihhtiihhvghnrhihfdcuoehtohhmsehtohhmqdhfihhtiihhvghnrhihrdhmvg
    druhhkqeenucggtffrrghtthgvrhhnpeegfffffeduteeutdeikeelvefgheeigfelgfei
    teejvefgjeekieekudehueevkeenucffohhmrghinhepmhgvghhouhhsrdgtohhmnecuve
    hluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrhhomhepthhomhesthho
    mhdqfhhithiihhgvnhhrhidrmhgvrdhukh
X-ME-Proxy: <xmx:aUAMY53g6Y1zsNxUGlwyiU7nbIpviAYJ0Avac5Yvd5aSN8x2pAAuXw>
    <xmx:aUAMYwAdAQhqPMuN-BNnbia_ooXCTQ2ASvzexdxHuFt92OLgBnBCuQ>
    <xmx:aUAMY1gdy2Bkb0sQh9PZHa1c6ht-vE6rNBjGNjoW0ai1cPDxUGoNnA>
    <xmx:akAMY15NcvR_okLgwZSwTB0mv6GQU4FW2p85w5_0G-jaySqCTC5GIg>
Feedback-ID: iefc945ae:Fastmail
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id EA7332A20079; Mon, 29 Aug 2022 00:28:24 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.7.0-alpha0-841-g7899e99a45-fm-20220811.002-g7899e99a
Mime-Version: 1.0
Message-Id: <7782b803-b331-4b19-84f5-86d1f06b0259@www.fastmail.com>
In-Reply-To: <20220822083339.o6bqlyirrm5hvjbc@core>
References: <20220822012449.21005-1-tom@tom-fitzhenry.me.uk>
 <20220822012449.21005-2-tom@tom-fitzhenry.me.uk>
 <20220822083339.o6bqlyirrm5hvjbc@core>
Date: Mon, 29 Aug 2022 04:28:03 +0000
From: "Tom Fitzhenry" <tom@tom-fitzhenry.me.uk>
To: =?UTF-8?Q?Ond=C5=99ej_Jirman?= <megi@xff.cz>
Cc: "Rob Herring" <robh+dt@kernel.org>,
 "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
 "Heiko Stuebner" <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, phone-devel@vger.kernel.org,
 "Martijn Braam" <martijn@brixit.nl>,
 =?UTF-8?Q?Kamil_Trzci=C5=84ski?= <ayufan@ayufan.eu>,
 "Caleb Connolly" <kc@postmarketos.org>,
 =?UTF-8?Q?N=C3=ADcolas_F_=2E_R_=2E_A_=2E_Prado?= <n@nfraprado.net>
Subject: Re: [PATCH v4 1/1] arm64: dts: rockchip: Add initial support for Pine64
 PinePhone Pro
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220828_212835_963543_A0E0F38E 
X-CRM114-Status: GOOD (  17.47  )
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

VGhhbmtzIGZvciB0aGUgcmV2aWV3IE1lZ2kuCgpPbiBNb24sIDIyIEF1ZyAyMDIyLCBhdCA4OjMz
IEFNLCBPbmTFmWVqIEppcm1hbiB3cm90ZToKPj4gKwkJCXZkZF9jZW50ZXI6IERDRENfUkVHMiB7
Cj4+ICsJCQkJcmVndWxhdG9yLW5hbWUgPSAidmRkX2NlbnRlciI7Cj4+ICsJCQkJcmVndWxhdG9y
LWFsd2F5cy1vbjsKPj4gKwkJCQlyZWd1bGF0b3ItYm9vdC1vbjsKPj4gKwkJCQlyZWd1bGF0b3It
bWluLW1pY3Jvdm9sdCA9IDw4MDAwMDA+Owo+PiArCQkJCXJlZ3VsYXRvci1tYXgtbWljcm92b2x0
ID0gPDEzNTAwMDA+Owo+Cj4gTG9va3MgbGlrZSBhIHdyb25nIHRvcCB2b2x0YWdlLiBodHRwczov
L21lZ291cy5jb20vZGwvdG1wL2FkM2RjYzYyYmQwMGY0MWYucG5nCgpJIHdpbGwgZml4IHRoaXMg
aW4gdjUuCgo+PiArCQkJdmNjYTN2MF9jb2RlYzogTERPX1JFRzEgewo+PiArCQkJCXJlZ3VsYXRv
ci1uYW1lID0gInZjY2EzdjBfY29kZWMiOwo+PiArCQkJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+
ICsJCQkJcmVndWxhdG9yLWJvb3Qtb247Cj4KPiBUaGlzIHNob3VsZCBub3QgYmUgYWx3YXlzIG9u
LCBidXQgb25seSBlbmFibGVkIGJ5IHRoZSBjb2RlYyB3aGVuIG5lZWRlZC4KPiBZb3UgZG9uJ3Qg
aGF2ZSBjb2RlYyBkZXNjcmliZWQgaW4gdGhpcyBEVC4KCkkgd2lsbCBmaXggdGhpcyBpbiB2NS4K
Cj4+ICsJCQl2Y2MzdjBfdG91Y2g6IExET19SRUcyIHsKPj4gKwkJCQlyZWd1bGF0b3ItbmFtZSA9
ICJ2Y2MzdjBfdG91Y2giOwo+PiArCQkJCXJlZ3VsYXRvci1hbHdheXMtb247Cj4+ICsJCQkJcmVn
dWxhdG9yLWJvb3Qtb247Cj4KPiBUaGlzIHNob3VsZCBub3QgYmUgYWx3YXlzIG9uLiBJdCBzaG91
bGQgYmUgZW5hYmxlZCBieSB0b3VjaCBjb250cm9sbGVyLAo+IHdoZW4gbmVlZGVkLiBZb3UgZG9u
J3QgaGF2ZSB0b3VjaCBjb250cm9sbGVyIGRlc2NyaWJlZCBpbiB0aGlzIERULgoKSSB3aWxsIGZp
eCB0aGlzIGluIHY1LgoKPj4gKwkJCXZjY2ExdjhfY29kZWM6IExET19SRUczIHsKPj4gKwkJCQly
ZWd1bGF0b3ItbmFtZSA9ICJ2Y2NhMXY4X2NvZGVjIjsKPj4gKwkJCQlyZWd1bGF0b3ItYWx3YXlz
LW9uOwo+PiArCQkJCXJlZ3VsYXRvci1ib290LW9uOwo+Cj4gVGhpcyBzaG91bGQgbm90IGJlIGFs
d2F5cyBvbiwgYnV0IG9ubHkgZW5hYmxlZCBieSB0aGUgY29kZWMgd2hlbiBuZWVkZWQsCj4gSSBz
dXBwb3NlLiBBbHNvIG1vZGVtIGNvZGVjIGlzIHN1cHBsaWVkIGJ5IHZjYzF2OF9jb2RlYyB3aGlj
aCBtYXkgbmVlZAo+IGEgZ3BpbyBjb25maWd1cmVkIGFzIHB1bGwtZG93biBvciBkcml2ZSBsb3cg
dG8gYmUgcHJvcGVybHkgZGlzYWJsZWQsCj4gYW5kIGl0IGlzIG5vdCBkZWZpbmVkIGluIHRoaXMg
RFQuIFBsZWFzZSBtYWtlIHN1cmUgdGhhdCByZWd1bGF0b3IncyBpbnB1dAo+IGRvZXNuJ3QgZmxv
YXQgYW5kIGlzIGRpc2FibGVkIGJ5IGRlZmF1bHQuCgpJIHdpbGwgZml4IHRoaXMgaW4gdjUsIGlu
Y2x1ZGluZyBhZGRpbmcgYSByZWd1bGF0b3IgZm9yIHZjYzF2OF9jb2RlYy4KCj4+ICsmZ3B1X29w
cF90YWJsZSB7Cj4+ICsJb3BwMDAgewo+PiArCQlvcHAtaHogPSAvYml0cy8gNjQgPDIwMDAwMDAw
MD47Cj4+ICsJCW9wcC1taWNyb3ZvbHQgPSA8ODI1MDAwIDgyNTAwMCA5NzUwMDA+Owo+PiArCX07
Cj4+ICsJb3BwMDEgewo+PiArCQlvcHAtaHogPSAvYml0cy8gNjQgPDI5NzAwMDAwMD47Cj4+ICsJ
CW9wcC1taWNyb3ZvbHQgPSA8ODI1MDAwIDgyNTAwMCA5NzUwMDA+Owo+PiArCX07Cj4+ICsJb3Bw
MDIgewo+PiArCQlvcHAtaHogPSAvYml0cy8gNjQgPDQwMDAwMDAwMD47Cj4+ICsJCW9wcC1taWNy
b3ZvbHQgPSA8ODI1MDAwIDgyNTAwMCA5NzUwMDA+Owo+PiArCX07Cj4+ICsJb3BwMDMgewo+PiAr
CQlvcHAtaHogPSAvYml0cy8gNjQgPDUwMDAwMDAwMD47Cj4+ICsJCW9wcC1taWNyb3ZvbHQgPSA8
ODc1MDAwIDg3NTAwMCA5NzUwMDA+Owo+PiArCX07Cj4+ICsJb3BwMDQgewo+PiArCQlvcHAtaHog
PSAvYml0cy8gNjQgPDYwMDAwMDAwMD47Cj4+ICsJCW9wcC1taWNyb3ZvbHQgPSA8OTI1MDAwIDky
NTAwMCA5NzUwMDA+Owo+PiArCX07Cj4KPiBeXl4gV2h5IHJlcGxpY2F0ZSBhbGwgdGhlc2UgT1BQ
cywgd2hlbiB0aGV5IGhhdmUgaWRlbnRpY2FsIHByZWZlcnJlZCB2b2x0YWdlCj4gaW4gcmszMzk5
LW9wcC5kdHNpPyBBbHNvIEdQVSBpcyBub3QgYmVpbmcgZW5hYmxlZCBpbiB0aGUgRFQuCj4KPiBZ
b3UgZG9uJ3QgbmVlZCBkaXNwbGF5IG91dHB1dCBzdXBwb3J0IHRvIGVuYWJsZSB0aGUgZ3B1IHJp
Z2h0IGF3YXkuCgpNeSBiYWQsIEkgaGFkIGZvcmdvdHRlbiB0aGF0IEknZCBvcmlnaW5hbGx5IGRl
Y2lkZWQgdG8gbGVhdmUgdGhpcyBvdXQgb2YgdGhlIGZpcnN0IHBhdGNoIHNlcmllcy4gSSB3aWxs
IGFkZHJlc3MgdGhpcyBpbiB0aGUgcGF0Y2ggc2VyaWVzIHdoZW4gSSBlbmFibGUgdGhlIEdQVS4K
Cj4+ICsJb3BwMDUgewo+PiArCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwo+PiArCX07Cj4+ICt9Owo+
PiArCj4+ICsKPgo+IF4gZXh0cmEgc3BhY2UKCkkgd2lsbCBmaXggdGhpcyBpbiB2NS4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlw
IG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
