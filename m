Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3504C3DA6E
	for <linux-rockchip@archiver.kernel.org>; Wed,  3 Jan 2024 13:40:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltKrDmi1++2WUozV85M/eWVrbGBUwVz9uPa9hmv1nd0=; b=Md8mH9bu3qmZJ+
	T0tOI4FsEXt+crhEy0X3oQuZ8803yQomyuejwyqh4qdOcIeJLFALrUgl+MvTA7qT4U3fh0srAY9gE
	ijB3dsqnpGSrukTEAwDiKVXQ+1j8jo3fUoSFki5noMu1Wy4yZRunPyBP4sl59Tc67NciOaDz8wnZY
	yUBUyFPzIjm+XirV79AhEF6oTWDoRYK1zHvGNrGTulfna9xKqR1FrmEK4dJJdISIUOlfpgC3YUzgE
	Ajeg/9ZoN6DGWvX8aqPdPpZMeKJ+DlsB57yp//V5+N6Ot0zq8znvZi19zuMLYYgDn5W9v2hjYDui2
	9Jvw4KG3cg3mAhxpYZlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1U9-00Azyy-18;
	Wed, 03 Jan 2024 13:40:41 +0000
Received: from [2a01:4f8:1c1c:934f::1] (helo=mecka.net)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL1U4-00Azvi-0q;
	Wed, 03 Jan 2024 13:40:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1704289233; bh=vv+J84aXLGq+PleY0UyhFYxaeGAaLPX+RfeAkhXQ200=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=cpu0Ye8IMdGiDBxzyzZoReAEfROyEgoo9iUD2E/KCtoinzklkZ2EY2k8LlfjMkdO1
	 khHcsTIaAOby6KzxVGlv35+5nM2QAdsEuaCXw6pDtBQNgblFEAnaRq29gNpf3heJzn
	 Tbi4yLOOHPKyAJ5M++PCe/6zsgafjtf5Kg+uc4XOOKIMn/xdit+j56ptkieFCrLKfH
	 twHm50FJdGRXndg5wYG7lRhubiwrcMHcIPrBcotnVbl6ufke16NNEE8v0SMhNsVT0i
	 SSJuX8QV2UYgDdg+KFGXAAcon4Vfo7MZAtb95DKNqmcC6jJXnCc9nHjV/81MHLV/DG
	 soQrY8N8pO/JQ==
Received: from mecka.net (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 6BF8E379D1E;
	Wed,  3 Jan 2024 14:40:32 +0100 (CET)
Date: Wed, 3 Jan 2024 14:40:31 +0100
From: Manuel Traut <manut@mecka.net>
To: Jonas Karlman <jonas@kwiboo.se>
Cc: =?utf-8?Q?Ond=C5=99ej?= Jirman <megi@xff.cz>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jessica Zhang <quic_jesszhan@quicinc.com>,
	Sam Ravnborg <sam@ravnborg.org>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	Diederik de Haas <didi.debian@cknow.org>,
	Segfault <awarnecke002@hotmail.com>,
	Arnaud Ferraris <aferraris@debian.org>,
	Danct12 <danct12@riseup.net>, dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v3 4/4] arm64: dts: rockchip: Add devicetree for Pine64
 PineTab2
Message-ID: <ZZVjzwgANJMdHnuo@mecka.net>
References: <20240102-pinetab2-v3-0-cb1aa69f8c30@mecka.net>
 <20240102-pinetab2-v3-4-cb1aa69f8c30@mecka.net>
 <775vjfucu2g2s6zzeutj7f7tapx3q2geccpxvv4ppcms4hxbq7@cbrdmlu2ryzp>
 <903e9d0c-a00c-4214-9f0e-dd676b13b428@kwiboo.se>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <903e9d0c-a00c-4214-9f0e-dd676b13b428@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_054036_455653_66EE225D 
X-CRM114-Status: GOOD (  20.31  )
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

SGkgSm9uYXMgYW5kIE9uZMWZZWosCgo+ID4+ICsmc2ZjIHsKPiA+PiArCXBpbmN0cmwtbmFtZXMg
PSAiZGVmYXVsdCI7Cj4gPj4gKwlwaW5jdHJsLTAgPSA8JmZzcGlfZHVhbF9pb19waW5zPjsKPiA+
PiArCXN0YXR1cyA9ICJva2F5IjsKPiA+PiArCSNhZGRyZXNzLWNlbGxzID0gPDE+Owo+ID4+ICsJ
I3NpemUtY2VsbHMgPSA8MD47Cj4gPj4gKwo+ID4+ICsJZmxhc2hAMCB7Cj4gPj4gKwkJY29tcGF0
aWJsZSA9ICJqZWRlYyxzcGktbm9yIjsKPiA+PiArCQlyZWcgPSA8MD47Cj4gPj4gKwkJc3BpLW1h
eC1mcmVxdWVuY3kgPSA8MjQwMDAwMDA+Owo+ID4gCj4gPiBUaGF0J3MgYSBiaXQgb24gdGhlIGxv
dyBzaWRlLiBUaGUgZmxhc2ggY2hpcCBzaG91bGQgd29yayBmb3IgYWxsIGNvbW1hbmRzIHVwIHRv
Cj4gPiA4ME1IeiBodHRwczovL21lZ291cy5jb20vZGwvdG1wL2I0MjhhZDliODVhYzQ2MzMucG5n
IGFuZCBTR00zMTU3WUM2IHN3aXRjaAo+ID4gZm9yIHRoZSBGU1BJLUNMSyBzaG91bGQgaGF2ZSBo
aWdoIGVub3VnaCBiYW5kd2lkdGgsIHRvby4KPiAKPiBJIGFncmVlIHRoYXQgdGhpcyBpcyBhIGxp
dHRsZSBiaXQgb24gdGhlIGxvdyBzaWRlLCBpdCB3YXMgYSBzYWZlIHJhdGUKPiB0aGF0IEkgdXNl
ZCBmb3IgVS1Cb290LiBVLUJvb3QgcmVxdWlyZWQgYW4gZXhhY3QgcmF0ZSBvZiB0aGUgc3VwcG9y
dGVkCj4gc2ZjIGNsayByYXRlczogMjQsIDUwLCA3NSwgMTAwLCAxMjUgb3IgMTUwIE1Iei4KPiAK
PiBQbGVhc2UgYWxzbyBub3RlIHRoYXQgdGhlIFNQSSBOT1IgZmxhc2ggY2hpcCB1c2VkIGluIFBp
bmVUYWIyIGlzIG5vdCBhCj4gR2lnYURldmljZSBHRDI1TFExMjhFLCBpdCBzaG91bGQgYmUgYSBT
aWxpY29uS2Fpc2VyIFNLMjVMUDEyOCwgc2FtZSBhcwo+IGZvdW5kIGluIHRoZSBQaW5lNjQgUGlu
ZVBob25lIFByby4KClRoZSBzY2hlbWF0aWNzIGZvciB2Mi4wIHJlZmVyZW5jZSBhIEdEMjVMUTEy
OEVXSUdSLiBJIG5ldmVyIGNoZWNrZWQgdGhlIGplZGVjCmlkLiBIb3cgZGlkIHlvdSByZXRyaWV2
ZSB0aGlzIGluZm9ybWF0aW9uLCBvciBpcyBpdCBtYXliZSBhIGRpZmZlcmVuY2UgaW4gdjAuMQph
bmQgMi4wPwoKPiA+PiArCQlzcGktcngtYnVzLXdpZHRoID0gPDI+Owo+ID4gCj4gPiBHRDI1TFEx
MjhFIHN1cHBvcnRzIHF1YWQgSS9PLiBNYXliZSB0cnkgNCBpZiBpdCB3aWxsIHdvcmsuCj4gCj4g
VGhlIHNjaGVtYXRpYyBvbmx5IHNob3dzIGZzcGkgRDAgYW5kIEQxIGNvbm5lY3RlZCwgYW5kIHVz
ZSB0aGUgRDIgbGluZQo+IGZvciBlTU1DX1JTVG4sIHNvIHNwaS1yeC1idXMtd2lkdGggPSA8Mj4g
c2hvdWxkIGJlIGNvcnJlY3QuCgphY2sKClNpbmNlIGl0IGlzIG9ubHkgbmVlZGVkIGZvciBib290
bG9hZGVyIHVwZGF0ZXMgYW5kIGVudmlyb25tZW50IGl0cyBtYXliZSBiZXR0ZXIKdG8gc3RheSBv
biB0aGUgc2FmZSBzaWRlPwoKQnV0IEkgY2FuIHRlc3QgZmFzdGVyIGZyZXF1ZW5jeSBpZiB5b3Ug
d2FudCBtZSB0byBkby4uCgpSZWdhcmRzCk1hbnVlbAoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4
LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
