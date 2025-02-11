Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79FC1C0219E
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Feb 2025 15:11:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/+tJwCOwPpXeEmbtHCKlnMDCNb5kTkXIF71LQ5tTVk0=; b=F332Hfkaktb4brgL2OjfU/edc6
	IU2DWj5zdQ6g4/qJ44/QVhFYtPavSxEMxsgyd2Aa+AwLD9oRebOXLAx1HfotWJkeyUY+awB6TLdzM
	Je2NNuYClg/7Vl/bA6iiESdOC+Ee1E5IW/qvwX+LsE+a9STWPVN6fKD72nVnfrzm0rMAsQdDNKzuZ
	DZDTDeC0dWvkUdv4PWu5Rp8iz3dNuX3e0JWAvMiNEbdp+r7pVvjR6QNlIh2m9GlSmWeY44yuRcWDb
	iIkRlk+O5/IusXT8YzuqeDNG05hfdlzgT1fwAzGGNf3ftPbUCHbjSOmlZyXfpK93wAjg4sgg1Ti3U
	2t0YTHqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thruc-00000004F5T-0aw0;
	Tue, 11 Feb 2025 15:10:58 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thqk3-000000041fd-1mdv;
	Tue, 11 Feb 2025 13:56:01 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1739282154;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=mifodZnx+GAT8j3y7LTSrIDDb3fyeuMJi7Lz1TWQoWg=;
	b=NM7NzNok5uOfeVIliUUYXIjdfRtVgvDGaH9gru/W/Z2DSizT9jGyeohS7f/+9/x41Hh+UO
	AasxnZ7X27daRD2cLPsFWyH4C5MfdLr8955ZuZ32LOOHz+IybYOnKka8tHUOM4TSGUSqox
	U2Ypmvd8oWnSgL1tSLduD7ltV9sqTxa4xPID6osBCAwssPuMKt9QuFvJjtvRDkZj5rxb5J
	XTTqUZjNlZylDn+t9EcfUVemavXzxOS1BWBM/NTKgJpYSZIFuUvaAkQn4Ydxw9BzRv2Tlj
	tVlJ0mhoiALwBGSmZXcVVfsWwXNaDVsaImIoxOLJwBqjxCnFqlapMEjkR+mZ+g==
Date: Tue, 11 Feb 2025 14:55:53 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: Jagan Teki <jagan@edgeble.ai>, Quentin Schulz <foss+kernel@0leil.net>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Niklas
 Cassel <cassel@kernel.org>, Michael Riesch <michael.riesch@wolfvision.net>,
 Jonas Karlman <jonas@kwiboo.se>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski
 <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v5 2/4] arm64: dts: rockchip: add overlay test for Edgeble
 NCM6A
In-Reply-To: <06f1f9f4-8a79-4505-98b8-992accf1fb87@cherry.de>
References: <20250207-pre-ict-jaguar-v5-0-a70819ea0692@cherry.de>
 <20250207-pre-ict-jaguar-v5-2-a70819ea0692@cherry.de>
 <CA+VMnFyom=2BmJ_nt-At6hTQP0v+Auaw-DkCVbT9mjndMmLKtQ@mail.gmail.com>
 <8d830c2c-6268-4c70-ae8a-47183b8cbace@cherry.de>
 <74502f5556584ee7378c63d4971f2a66@manjaro.org>
 <06f1f9f4-8a79-4505-98b8-992accf1fb87@cherry.de>
Message-ID: <a9a023233f9a096cc215203bb6ef41d7@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250211_055559_773400_10DE6892 
X-CRM114-Status: GOOD (  13.46  )
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

SGVsbG8gUXVlbnRpbiwKCk9uIDIwMjUtMDItMTEgMTM6NTksIFF1ZW50aW4gU2NodWx6IHdyb3Rl
Ogo+IE9uIDIvMTAvMjUgNzoyOSBQTSwgRHJhZ2FuIFNpbWljIHdyb3RlOgo+PiBPbiAyMDI1LTAy
LTEwIDE4OjU3LCBRdWVudGluIFNjaHVseiB3cm90ZToKPj4+IE9uIDIvMTAvMjUgMzoxMSBQTSwg
SmFnYW4gVGVraSB3cm90ZToKPj4+PiBPbiBGcmksIDcgRmViIDIwMjUgYXQgMjA6NTAsIFF1ZW50
aW4gU2NodWx6IDxmb3NzK2tlcm5lbEAwbGVpbC5uZXQ+IAo+Pj4+IHdyb3RlOgo+Pj4+PiAKPj4+
Pj4gRnJvbTogUXVlbnRpbiBTY2h1bHogPHF1ZW50aW4uc2NodWx6QGNoZXJyeS5kZT4KPj4+Pj4g
Cj4+Pj4+IFRoZSBFZGdlYmxlIE5DTTZBIGNhbiBoYXZlIFdpRmkgbW9kdWxlcyBjb25uZWN0ZWQg
YW5kIHRoaXMgaXMgCj4+Pj4+IGhhbmRsZWQKPj4+Pj4gdmlhIGFuIG92ZXJsYXkgKGNvbW1pdCA5
NTFkNmFhYTM3ZmUgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIAo+Pj4+PiBFZGdlYmxlCj4+
Pj4+IE5DTTZBIFdpRmk2IE92ZXJsYXkiKSkuCj4+Pj4+IAo+Pj4+PiBJbiBvcmRlciB0byBtYWtl
IHN1cmUgdGhlIG92ZXJsYXkgaXMgc3RpbGwgdmFsaWQgaW4gdGhlIGZ1dHVyZSwgCj4+Pj4+IGxl
dCdzCj4+Pj4+IGFkZCBhIHZhbGlkYXRpb24gdGVzdCBieSBhcHBseWluZyB0aGUgb3ZlcmxheSBv
biB0b3Agb2YgdGhlIG1haW4gCj4+Pj4+IGJhc2UKPj4+Pj4gYXQgYnVpbGQgdGltZS4KPj4+Pj4g
Cj4+Pj4+IFJldmlld2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93
c2tpQGxpbmFyby5vcmc+Cj4+Pj4+IFNpZ25lZC1vZmYtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVu
dGluLnNjaHVsekBjaGVycnkuZGU+Cj4+Pj4+IC0tLQo+Pj4+PiDCoCBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL01ha2VmaWxlIHwgNCArKysrCj4+Pj4+IMKgIDEgZmlsZSBjaGFuZ2VkLCA0
IGluc2VydGlvbnMoKykKPj4+Pj4gCj4+Pj4+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL01ha2VmaWxlIGIvYXJjaC9hcm02NC8gCj4+Pj4+IGJvb3QvZHRzL3JvY2tj
aGlwL01ha2VmaWxlCj4+Pj4+IGluZGV4IAo+Pj4+PiA1MzRlNzBhNjQ5ZWVhZGE3ZjliNmYxMjU5
NmI4M2Y1YzQ3YjE4NGI0Li4wMmY5OGFiZTFkZjEwZjQ0ZjJhYzI3ZWE1ZjZjNmU2YzYzMzQ3MjRl
IAo+Pj4+PiAxMDA2NDQKPj4+Pj4gLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9N
YWtlZmlsZQo+Pj4+PiArKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL01ha2VmaWxl
Cj4+Pj4+IEBAIC0xOTIsMyArMTkyLDcgQEAgZHRiLSQoQ09ORklHX0FSQ0hfUk9DS0NISVApICs9
IHJrMzU2OC0gCj4+Pj4+IHdvbGZ2aXNpb24tcGY1LXZ6LTItdWhkLmR0Ygo+Pj4+PiDCoCByazM1
Njgtd29sZnZpc2lvbi1wZjUtdnotMi11aGQtZHRicyA6PSByazM1Njgtd29sZnZpc2lvbi1wZjUu
ZHRiIAo+Pj4+PiBcCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgcmszNTY4LXdvbGZ2aXNpb24tcGY1
LWRpc3BsYXktdnouZHRibyBcCj4+Pj4+IMKgwqDCoMKgwqDCoMKgwqAgcmszNTY4LXdvbGZ2aXNp
b24tcGY1LWlvLWV4cGFuZGVyLmR0Ym8KPj4+Pj4gKwo+Pj4+PiArZHRiLSQoQ09ORklHX0FSQ0hf
Uk9DS0NISVApICs9IHJrMzU4OC1lZGdlYmxlLW5ldTZhLXdpZmkuZHRiCj4+Pj4+ICtyazM1ODgt
ZWRnZWJsZS1uZXU2YS13aWZpLWR0YnMgOj0gcmszNTg4LWVkZ2VibGUtbmV1NmEtaW8uZHRiIFwK
Pj4+Pj4gK8KgwqDCoMKgwqDCoCByazM1ODgtZWRnZWJsZS1uZXU2YS13aWZpLmR0Ym8KPj4+PiAK
Pj4+PiBQbGVhc2UgYWRkIG5ldTZiLWlvIGFzIHdlbGwsIHdpZmkgZHRibyBpcyBzaW1pbGFyIGZv
ciBpdCBhcyB3ZWxsLgo+Pj4gCj4+PiBTaW1pbGFyIG9yIGlkZW50aWNhbCA6KT8KPj4+IAo+Pj4g
U2hvdWxkIHRoZSBvdmVybGF5IGJlIHJlbmFtZWQgaWYgaXQgYXBwbGllcyB0byBuZXU2YiBBTkQg
bmV1NmEgCj4+PiBpbnN0ZWFkCj4+PiBvZiBpbXBseWluZyBpdCdzIG9ubHkgZm9yIG5ldTZhIGJh
c2VkIG9uIHRoZSBuYW1lIG9mIHRoZSBvdmVybGF5Pwo+PiAKPj4gSSdtIGFmcmFpZCBpdCdzIGEg
Yml0IHRvbyBsYXRlIGZvciByZW5hbWluZyB0aGUgLmR0c28gZmlsZS4gOi8KPiAKPiBIb3cgaXMg
aXQgdG9vIGxhdGU/IElzIHRoZXJlIHNvbWUgcnVsZSBzb21ld2hlcmUgYWJvdXQgcmVuYW1pbmcg
SSAKPiBtaXNzZWQ/CgpUaGUgd2F5IEkgc2VlIGl0LCBuYW1lcyBvZiB0aGUgLmR0cyBhbmQgLmR0
c28gZmlsZXMgYmVjb21lIHBhcnQgb2YKdGhlICJleHRlbmRlZCBBQkkiLCBzbyB0byBzcGVhaywg
b25jZSB0aGV5J3ZlIGJlZW4gYWNjZXB0ZWQgdXBzdHJlYW0KZm9yIGEgd2hpbGUsIGJlY2F1c2Ug
cmVuYW1pbmcgdGhlbSBtYXkgYnJlYWsgYm9vdCBjb25maWd1cmF0aW9ucy4KCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxp
bmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5p
bmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
