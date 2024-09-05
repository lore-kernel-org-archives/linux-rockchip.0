Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C38FBCD5BC7
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Sep 2024 13:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:References:In-Reply-To:
	Message-Id:Cc:To:From:Date:MIME-Version:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=A/UpMvdkbpVPv8ERsEQMXb4D4fRu2PXvZ+XYO5oEJCI=; b=I6zxqTRtkvM9/s/OTV/QeE5NQV
	yJol3JUta8Ai5gKI/ZG8ZwM5ezwWYs8Wzj93CqV7DgsfvlXbKWfq7lQHHKSilio1lMb83iIe84MjO
	6dWv6VgXc8K3CRmjnvbXlnLJoIdcVYp8vXZqVf2cATh4cMA0GhKijEVQjrS6HmY1f+FeipkgZ1I4t
	I1JsasY/mDTcb7ScXtWxvYHxtYyjciURO0whXoJrP6RKDpzcriN68hj2RQrugBfxZUcl+WqyGnyYP
	wgyUk1kUpEmXBw5Wvvnx704lFX/TfbCSww5kbkFvs6L55KtxcNGJiMvf5bXP43Sezgte38pAiaKSL
	Q+k8XPiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smCTw-00000008WaI-2nJU;
	Thu, 05 Sep 2024 13:25:04 +0000
Received: from fhigh7-smtp.messagingengine.com ([103.168.172.158])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1smCSr-00000008WFr-3s6R;
	Thu, 05 Sep 2024 13:23:59 +0000
Received: from phl-compute-04.internal (phl-compute-04.phl.internal [10.202.2.44])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 2CED0114027F;
	Thu,  5 Sep 2024 09:23:56 -0400 (EDT)
Received: from phl-imap-11 ([10.202.2.101])
  by phl-compute-04.internal (MEProxy); Thu, 05 Sep 2024 09:23:56 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arndb.de; h=cc
	:cc:content-transfer-encoding:content-type:content-type:date
	:date:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to; s=fm3; t=1725542636;
	 x=1725629036; bh=fY+Pos6oeB0Ir967LtcUDK7rxN7His5a1kcumbhcDmM=; b=
	YaejBSKOxQsoBWBrQc4uQhRLDxSOG56GyPZUvwW85M4RAET28nPXcQqfKped8QpU
	/Jn8RQdpS4rEQxjNdimFw/gYdacFhbjTfgQD/JE5QnbiOY0r0oZNK6wgG2KxXh1d
	kX/QrIWEFWHZZJGyhrK+DjUmaxI9ntZSUFH8Ut9tSgaS7TfcWMPz6US8pwOWlH4u
	Z0NBmv06jqRrDU0U/+dDQXz0oVgsaqBAzisI2Grclw8hmJWL+xAgN2UUIAipAPEx
	8lLvAFSmhaL/qLVoMS4m2mhsFI5LR9F9GNkPNCVUF+shmWFsyHTzo7N9A10fv7wg
	5jQtw0wMTc8I4Vbk5ChQrg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1725542636; x=
	1725629036; bh=fY+Pos6oeB0Ir967LtcUDK7rxN7His5a1kcumbhcDmM=; b=r
	slMrtSm9OMLj9Qvj5eof9ECORPLAMv/xA9v5HTIQwKJg/ZfITjqQNFvTOQPbD3k9
	dFODs9GSN4rpZFEnaxAfZyMtYatu1/RYI36kJJvJ31paSd1I2lQ0SLQDDCFmv+Eq
	QvKpMVEIoYGC/35M/KnNgHJlL6Qp8jO1BZD1CU1BzSm3S/yBBUwY2G+vRVMkbzd2
	cNz+oh+S7Q76DqlvDkczxWWA51HAs78t3y90DlXW4vS7m/LnkHRQLMjlapWIvA+f
	ZnX6pnkmUBIbOblrHIRHNW/BFC7C4wEFiyqkmt3Q2nwgKwTw26sEzh6Rq+xNYDDR
	5h/uhIae4/ENJozq8Mhnw==
X-ME-Sender: <xms:67DZZoA5pZp2NMCErlSXp12rf6Pn8bemUrwnjhpliE-HiHzw-gkeZg>
    <xme:67DZZqiX-JOcYh-lQyhxWolh8ruMQqU3JXGNhDwhX9bz4ZmMNxGwLSKzqDVOwkV0a
    zqlGxuXHmFlZWm8-us>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeeftddrudehledgieefucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdggtfgfnhhsuhgsshgtrhhisggvpdfu
    rfetoffkrfgpnffqhgenuceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnh
    htshculddquddttddmnecujfgurhepofggfffhvfevkfgjfhfutgfgsehtqhertdertdej
    necuhfhrohhmpedftehrnhguuceuvghrghhmrghnnhdfuceorghrnhgusegrrhhnuggsrd
    guvgeqnecuggftrfgrthhtvghrnhepvdfhvdekueduveffffetgfdvveefvdelhedvvdeg
    jedvfeehtdeggeevheefleejnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpe
    hmrghilhhfrhhomheprghrnhgusegrrhhnuggsrdguvgdpnhgspghrtghpthhtohepiedp
    mhhouggvpehsmhhtphhouhhtpdhrtghpthhtohepuggrmhhivghnsehflhgvthihrdhnvg
    htpdhrtghpthhtohepshhotgeskhgvrhhnvghlrdhorhhgpdhrtghpthhtoheplhhinhhu
    gidqrghrmhdqkhgvrhhnvghlsehlihhsthhsrdhinhhfrhgruggvrggurdhorhhgpdhrtg
    hpthhtoheplhhinhhugidqrhhotghktghhihhpsehlihhsthhsrdhinhhfrhgruggvrggu
    rdhorhhgpdhrtghpthhtohepohhlohhfsehlihigohhmrdhnvghtpdhrtghpthhtohephh
    gvihhkohesshhnthgvtghhrdguvg
X-ME-Proxy: <xmx:67DZZrnaWc_lQ-q4Rtp8gqZU4ZQEn-Q_ttuOBsxORryr8pwGHVvcew>
    <xmx:67DZZuzCM1luWnpE8ekPSCijLjWDJufvZFh_3e6ntTx2NRfU72sr-w>
    <xmx:67DZZtTK_RGDQQWn2TmAqr6Gq_7t2WAWAH8UEV6dTep8oFXwAzl8oA>
    <xmx:67DZZpZwoAHQUpwzur4MGRbyAevKkrUfkD7cNZBvw_E5PLDlRVxHzg>
    <xmx:7LDZZmKAf17-4fslsQCsmyZ_eTda6CcXvtdjFpPsxtTFOKPBAfW8eA5D>
Feedback-ID: i56a14606:Fastmail
Received: by mailuser.phl.internal (Postfix, from userid 501)
	id B9B442220071; Thu,  5 Sep 2024 09:23:55 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
MIME-Version: 1.0
Date: Thu, 05 Sep 2024 13:23:34 +0000
From: "Arnd Bergmann" <arnd@arndb.de>
To: "Damien FLETY" <damien@flety.net>, "Olof Johansson" <olof@lixom.net>,
 "Heiko Stuebner" <heiko@sntech.de>, linux-rockchip@lists.infradead.org
Cc: "soc@kernel.org" <soc@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Message-Id: <52a52558-2f7a-41ca-a0ee-98ef4eca3e6e@app.fastmail.com>
In-Reply-To: <CBBY-R4n8r7s8-gRkQLEWfFmBE-2ncks_UUQnnajujY-KYz4Xug2rwDI_pOZYLBi2d3qy-gP9c4l0i61ptlm39t_wscyvJPVV5CTlsdm-as=@flety.net>
References: <bZF0liAaH-7lJuzf_4iIfAWAgwYauu7IpIJMMpY7BT8mZXiKZFZ797Sa9gONDEt2wIFlLd4l10qSfs44ZAiBJ7_c3yvAFci4kuOdeYy7ZQU=@flety.net>
 <CBBY-R4n8r7s8-gRkQLEWfFmBE-2ncks_UUQnnajujY-KYz4Xug2rwDI_pOZYLBi2d3qy-gP9c4l0i61ptlm39t_wscyvJPVV5CTlsdm-as=@flety.net>
Subject: Re: PATCH: Turing RK1 DTB Fan
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240905_062358_175918_4A603F94 
X-CRM114-Status: GOOD (  16.78  )
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

T24gVGh1LCBBdWcgMSwgMjAyNCwgYXQgMDg6NDEsIERhbWllbiBGTEVUWSB3cm90ZToKPiBTb3Jy
eSBJJ20gbm90IGFjY3VzdG9tZWQgdG8gcGF0Y2ggYW5kIGV2ZW4gbGVzcyBrZXJuZWwgcGF0Y2hl
cy4uLgo+Cj4gQWRkIHN1cHBvcnQgZm9yIFR1cmluZyBSSzEgb2ZmaWNpYWwgZmFuCj4gLS0tCgoK
SGkgRGFtaWVuLAoKSSBmb3VuZCB0aGlzIHBhdGNoIGluIHRoZSBiYWNrbG9nIGFuZCBub3RpY2Vk
IHRoYXQgeW91IHNlbnQgaXQgdG8gdGhlCndyb25nIHBsYWNlLiBQbGVhc2UgYWRkcmVzcyBmdXR1
cmUgdmVyc2lvbnMgdG8gSGVpa28gU3TDvGJuZXIgYW5kIHRoZQpsaW51eC1yb2NrY2hpcCBtYWls
aW5nIGxpc3QgKGFkZGVkIHRvIENjIGhlcmUpLgoKSSBoYXZlIG5vdCBjaGVja2VkIHRoZSBhY3R1
YWwgcGF0Y2ggY29udGVudHMgaW4gZGV0YWlsLCBidXQgcGxlYXNlCmVuc3VyZSB5b3UgZm9sbG93
IHRoZXNlIHN0ZXBzOgoKLSBNYWtlIHN1cmUgdGhhdCB5b3VyIHBhdGNoIGRlc2NyaXB0aW9uIChl
dmVyeXRoaW5nIGFib3ZlIHRoZSBmaXJzdAogIHRocmVlIGRhc2hlcywgLS0tKSBtYWtlcyBzZW5z
ZSBhcyBhIGdpdCBjaGFuZ2Vsb2cgdGV4dC4gU2VlCiAgJ2dpdCBsb2cgYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcCcgZm9yIG90aGVyIGV4YW1wbGVzKQoKLSBBZGQgYSBTaWduZWQtb2ZmLWJ5
IGxpbmUsIGFzIGRvY3VtZW50ZWQgaW4KICBEb2N1bWVudGF0aW9uL3Byb2Nlc3Mvc3VibWl0dGlu
Zy1wYXRjaGVzLnJzdAoKLSBVc2UgJ2dpdCBzZW5kLWVtYWlsJyB0byBzZW5kIHRoZSBwYXRjaCBp
biBhIGZvcm0gdGhhdCBjYW4KICBiZSBhcHBsaWVkIGZyb20gdGhlIG1haWxpbmcgbGlzdC4KCiAg
ICAgIEFybmQKCihmdWxscXVvdGUgYmVsb3csIG5vIGZ1cnRoZXIgY29tbWVudHMpCgo+IGRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10dXJpbmctcmsxLmR0
c2kgCj4gYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10dXJpbmctcmsxLmR0
c2kKPiBpbmRleCBkYmFhOTRjYTY5ZjQuLjFlNGQyZDNjNDY5ZiAxMDA2NDQKPiAtLS0gYS9hcmNo
L2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10dXJpbmctcmsxLmR0c2kKPiArKysgYi9h
cmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC10dXJpbmctcmsxLmR0c2kKPiBAQCAt
NjUsNiArNjUsNDcgQEAgdmNjXzF2MV9ubGRvX3MzOiB2Y2MtMXYxLW5sZG8tczMtcmVndWxhdG9y
IHsKPiAgICAgICAgIH07Cj4gIH07Cj4gCj4gKyZwYWNrYWdlX3RoZXJtYWwgewo+ICsgICAgICAg
cG9sbGluZy1kZWxheSA9IDwxMDAwPjsKPiArCj4gKyAgICAgICB0cmlwcyB7Cj4gKyAgICAgICAg
ICAgICAgIHRyaXBfcGFzc2l2ZTogdHJpcF9wYXNzaXZlIHsKPiArICAgICAgICAgICAgICAgICAg
ICAgICB0ZW1wZXJhdHVyZSA9IDw0MDAwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgaHlz
dGVyZXNpcyA9IDwyMDAwPjsKPiArICAgICAgICAgICAgICAgICAgICAgICB0eXBlID0gInBhc3Np
dmUiOwo+ICsgICAgICAgICAgICAgICB9Owo+ICsgICAgdHJpcF9hY3RpdmU6IHRyaXBfYWN0aXZl
IHsKPiArICAgICAgICAgICAgICAgICAgICAgICB0ZW1wZXJhdHVyZSA9IDw0NTAwMD47Cj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgaHlzdGVyZXNpcyA9IDwyMDAwPjsKPiArICAgICAgICAgICAg
ICAgICAgICAgICB0eXBlID0gImFjdGl2ZSI7Cj4gKyAgICAgICAgICAgICAgIH07Cj4gKyAgICB0
cmlwX2hvdDogdHJpcF9ob3Qgewo+ICsgICAgICAgICAgICAgICAgICAgICAgIHRlbXBlcmF0dXJl
ID0gPDgwMDAwPjsKPiArICAgICAgICAgICAgICAgICAgICAgICBoeXN0ZXJlc2lzID0gPDIwMDA+
Owo+ICsgICAgICAgICAgICAgICAgICAgICAgIHR5cGUgPSAiaG90IjsKPiArICAgICAgICAgICAg
ICAgfTsKPiArICAgICAgIH07Cj4gKwo+ICsgICAgICAgY29vbGluZy1tYXBzIHsKPiArICAgICAg
ICAgICAgICAgbWFwMCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgdHJpcCA9IDwmdHJpcF9w
YXNzaXZlPjsKPiArICAgICAgICAgICAgICAgICAgICAgICBjb29saW5nLWRldmljZSA9IDwmZmFu
IDAgMT47Cj4gKyAgICAgICAgICAgICAgIH07Cj4gKyAgICBtYXAxIHsKPiArICAgICAgdHJpcCA9
IDwmdHJpcF9hY3RpdmU+Owo+ICsgICAgICBjb29saW5nLWRldmljZSA9IDwmZmFuIDEgND47Cj4g
KyAgICB9Owo+ICsgICAgbWFwMiB7Cj4gKyAgICAgIHRyaXAgPSA8JnRyaXBfaG90PjsKPiArICAg
ICAgY29vbGluZy1kZXZpY2UgPSA8JmZhbiA0IDU+Owo+ICsgICAgfTsKPiArICAgIG1hcDMgewo+
ICsgICAgICB0cmlwID0gPCZwYWNrYWdlX2NyaXQ+Owo+ICsgICAgICBjb29saW5nLWRldmljZSA9
IDwmZmFuIDUgNT47Cj4gKyAgICB9Owo+ICsgICAgICAgfTsKPiArfTsKPiArCj4gICZjb21icGh5
Ml9wc3Ugewo+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+Cj4gTGUgamV1ZGkgMSBh
b8O7dCAyMDI0IMOgIDEwOjE2LCBEYW1pZW4gRkxFVFkgPGRhbWllbkBmbGV0eS5uZXQ+IGEgw6lj
cml0IDoKPj4gCj4+IFN1cHBvcnQgdGhlIG9mZmljaWFsIGNvb2xpbmcgZmFuIG9uIFR1cmluZyBS
SzEuCj4+IAo+PiAtLS0gcmszNTg4LXR1cmluZy1yazEuZHRzaSAyMDI0LTA4LTAxIDA4OjA3OjQy
Ljk2NzUwNjQ2OSArMDAwMAo+PiArKysgc3JjL2xpbnV4L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTg4LXR1cmluZy1yazEuZHRzaSAyMDI0LTA4LTAxIDA4OjA4OjU4LjI5Mjc2NTM3
MyArMDAwMAo+PiBAQCAtNjUsNDcgKzY1LDYgQEAKPj4gICB9Owo+PiAgfTsKPj4gIAo+PiAtJnBh
Y2thZ2VfdGhlcm1hbCB7Cj4+IC0gcG9sbGluZy1kZWxheSA9IDwxMDAwPjsKPj4gLQo+PiAtIHRy
aXBzIHsKPj4gLSB0cmlwX3Bhc3NpdmU6IHRyaXBfcGFzc2l2ZSB7Cj4+IC0gdGVtcGVyYXR1cmUg
PSA8NDAwMDA+Owo+PiAtIGh5c3RlcmVzaXMgPSA8MjAwMD47Cj4+IC0gdHlwZSA9ICJwYXNzaXZl
IjsKPj4gLSB9Owo+PiAtICAgIHRyaXBfYWN0aXZlOiB0cmlwX2FjdGl2ZSB7Cj4+IC0gdGVtcGVy
YXR1cmUgPSA8NDUwMDA+Owo+PiAtIGh5c3RlcmVzaXMgPSA8MjAwMD47Cj4+IC0gdHlwZSA9ICJh
Y3RpdmUiOwo+PiAtIH07Cj4+IC0gICAgdHJpcF9ob3Q6IHRyaXBfaG90IHsKPj4gLSB0ZW1wZXJh
dHVyZSA9IDw4MDAwMD47Cj4+IC0gaHlzdGVyZXNpcyA9IDwyMDAwPjsKPj4gLSB0eXBlID0gImhv
dCI7Cj4+IC0gfTsKPj4gLSB9Owo+PiAtCj4+IC0gY29vbGluZy1tYXBzIHsKPj4gLSBtYXAwIHsK
Pj4gLSB0cmlwID0gPCZ0cmlwX3Bhc3NpdmU+Owo+PiAtIGNvb2xpbmctZGV2aWNlID0gPCZmYW4g
MCAxPjsKPj4gLSB9Owo+PiAtICAgIG1hcDEgewo+PiAtICAgICAgdHJpcCA9IDwmdHJpcF9hY3Rp
dmU+Owo+PiAtICAgICAgY29vbGluZy1kZXZpY2UgPSA8JmZhbiAxIDQ+Owo+PiAtICAgIH07Cj4+
IC0gICAgbWFwMiB7Cj4+IC0gICAgICB0cmlwID0gPCZ0cmlwX2hvdD47Cj4+IC0gICAgICBjb29s
aW5nLWRldmljZSA9IDwmZmFuIDQgNT47Cj4+IC0gICAgfTsKPj4gLSAgICBtYXAzIHsKPj4gLSAg
ICAgIHRyaXAgPSA8JnBhY2thZ2VfY3JpdD47Cj4+IC0gICAgICBjb29saW5nLWRldmljZSA9IDwm
ZmFuIDUgNT47Cj4+IC0gICAgfTsKPj4gLSB9Owo+PiAtfTsKPj4gLQo+PiAgJmNvbWJwaHkyX3Bz
dSB7Cj4+ICAgc3RhdHVzID0gIm9rYXkiOwo+PiAgfTsKPj4gCj4+IAo+PiBEYW1pZW4gRkxFVFkK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJv
Y2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
