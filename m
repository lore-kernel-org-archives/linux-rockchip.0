Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64B4BC3DA49
	for <linux-rockchip@archiver.kernel.org>; Tue, 16 Jul 2024 16:37:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z4pJ/Dj/NfOlJOfUP6yYBof9wHiCT9Y3IAPKT6CNIDo=; b=KeCJLXC098BUa5
	UcCBUGkQW5O2MgftPkUr5OqrZqiATL5NF6M0zgQe86OGh7AspXbrzjuoSuMyejgzf4O8bmpQviuM2
	V9+Sx905xZ0t0z0qXgjwLXuio6rgnmBwlH+F3BQ7PdF9kqlKwNHaSyeZP2U9AlXvfbxp/TiPcp1Aa
	wX42IRpvEv0CP6G5QXoIMGLRIHVsu7zHgMbbJ0a3M4XYdZzBNNUS+c/qTsh3ENotzSDKP7uAMTGZj
	U5FK9N4Pd9SXeNn3jcHdof/DkUSaIIa4qShm3u34xXveRbLac5HUJBcVyKaVUI1db/Ob2XP3Ooix6
	P1A4vV3Nq/qKXv4YUJzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTlAg-0000000B3qC-2TaA;
	Tue, 16 Jul 2024 16:36:58 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTlAL-0000000B3lp-3hIS;
	Tue, 16 Jul 2024 16:36:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1721147796;
	bh=N6DkqU9kVd50qY6QOEjJkCKPk7AYB/47AQ27J+e1OYA=;
	h=Subject:From:To:Cc:Date:In-Reply-To:References:From;
	b=fx/6aA5zuQvaIkk6mkq8PLvb+pTVYcUuGC6mz0mWGB/BkOYANrycEf0eoQzQ1KfyY
	 zOuUAh3oW1zSdZqlAopHpuMT2m+UZ2V31N8oWRGPi5OiIbYdTg/ftvkiSJ1iOr2n+w
	 wJbeW233xmEalvqTJXKCy9Vxf+wRuPQF/FyBnqkrA351v07E1AY/WINt06/QiFs0cV
	 HJvJckQOBSNdRjgO7+hOi8z+DcdSB1dmyP5uRcZInGeWuXoUpQrIZYxQKvKeNMatKQ
	 LBiiui38EaoD6ZOUVtuzNicrjCITv4QUtG6ONesVIuP7x49EQcFdv4ntr1/VT9qZk5
	 3L8lpyL3cIAzg==
Received: from [100.77.12.232] (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: obbardc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id C502037821D8;
	Tue, 16 Jul 2024 16:36:35 +0000 (UTC)
Message-ID: <9f336131235de9f39a02b6bccb4d3d9a8f296bf3.camel@collabora.com>
Subject: Re: [PATCH 1/2] dt-bindings: arm: rockchip: add Firefly CORE PX30
 JD4
From: Christopher Obbard <chris.obbard@collabora.com>
To: Conor Dooley <conor@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
  Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org,  linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org,  linux-kernel@vger.kernel.org, Kever
 Yang <kever.yang@rock-chips.com>
Date: Tue, 16 Jul 2024 17:36:35 +0100
In-Reply-To: <20240716-wrinkly-carving-686b84bc0933@spud>
References: <20240716-rockchip-px30-firefly-v1-0-60cdad3023a3@collabora.com>
	 <20240716-rockchip-px30-firefly-v1-1-60cdad3023a3@collabora.com>
	 <20240716-wrinkly-carving-686b84bc0933@spud>
User-Agent: Evolution 3.52.3-1 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_093638_240507_DEFD8231 
X-CRM114-Status: GOOD (  14.64  )
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

T24gVHVlLCAyMDI0LTA3LTE2IGF0IDE3OjI2ICswMTAwLCBDb25vciBEb29sZXkgd3JvdGU6Cj4g
T24gVHVlLCBKdWwgMTYsIDIwMjQgYXQgMDQ6NTE6MDRQTSArMDEwMCwgQ2hyaXN0b3BoZXIgT2Ji
YXJkIHdyb3RlOgo+ID4gVGhlIEZpcmVmbHkgQ09SRSBQWDMwIEpENCBib2FyZCBpcyBhIFNPTSBh
bmQgbW90aGVyYm9hcmQgYnVuZGxlIGZyb20KPiA+IEZpcmVmbHkuIEFkZCBkZXZpY2V0cmVlIGJp
bmRpbmcgZG9jdW1lbnRhdGlvbiBmb3IgaXQuCj4gPiAKPiA+IFNpZ25lZC1vZmYtYnk6IENocmlz
dG9waGVyIE9iYmFyZCA8Y2hyaXMub2JiYXJkQGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+IMKg
RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIHwgNSAr
KysrKwo+ID4gwqAxIGZpbGUgY2hhbmdlZCwgNSBpbnNlcnRpb25zKCspCj4gPiAKPiA+IGRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlh
bWwKPiA+IGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55
YW1sCj4gPiBpbmRleCBlMDRjMjEzYTBkZWU0Li4xOWUwNmUxMjUzZTE1IDEwMDY0NAo+ID4gLS0t
IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hpcC55YW1sCj4g
PiArKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlh
bWwKPiA+IEBAIC0xNDgsNiArMTQ4LDExIEBAIHByb3BlcnRpZXM6Cj4gPiDCoMKgwqDCoMKgwqDC
oMKgwqDCoCAtIGNvbnN0OiBlbmdpY2FtLHB4MzAtY29yZQo+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqAgLSBjb25zdDogcm9ja2NoaXAscHgzMAo+ID4gwqAKPiA+ICvCoMKgwqDCoMKgIC0gZGVzY3Jp
cHRpb246IEZpcmVmbHkgQ29yZSBQWDMwIEpENAo+ID4gK8KgwqDCoMKgwqDCoMKgIGl0ZW1zOgo+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoCAtIGNvbnN0OiBmaXJlZmx5LGNvcmUtcHgzMC1qZDQKPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqAgLSBjb25zdDogcm9ja2NoaXAscHgzMAo+IAo+IE5vdCBoYXZp
bmcgaW5kaXZpZHVhbCBjb21wYXRpYmxlcyBmb3IgdGhlIGNhcnJpZXIgYW5kIHNvbSBzZWVtcyBv
ZGQgdG8sCj4gZ2l2ZW4gdGhlcmUncyBubyByZXF1aXJlbWVudCB0byB1c2UgdGhlIHNvbSB3aXRo
IHRoaXMgcGFydGljdWxhcgo+IGNhcnJpZXIuCgpUaGFua3MsIEkgd2lsbCBmaXggdGhhdCB1cCBp
biBWMi4KCj4gCj4gPiArCj4gPiDCoMKgwqDCoMKgwqAgLSBkZXNjcmlwdGlvbjogRmlyZWZseSBG
aXJlZmx5LVJLMzI4OAo+ID4gwqDCoMKgwqDCoMKgwqDCoCBpdGVtczoKPiA+IMKgwqDCoMKgwqDC
oMKgwqDCoMKgIC0gZW51bToKPiA+IAo+ID4gLS0gCj4gPiAyLjQ1LjIKPiA+IAoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
