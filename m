Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5C385C46CD2
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Jan 2024 16:15:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fZDGeGLFbW2SbHR6Pg0oAouIGwbkI4l441MVGZ4GLCw=; b=UCb82Bj4Z8VzKGaVp1e7FDl5sX
	28Yt+xmMpjTERyu480CMwm+3a2UL5N8VrrYcbcbR6YY458UpHBnD+oT1pwWKI8yMUzUJXvRGxa6xt
	SQkMEW9TOHSCyTz0NY/O08+oJGbFQC0B0qJya1pVydBnh+anCUr58COBz8rZgaCpqLhVf2HqqL6r3
	k0DT8Feiyp4/wA4Wu0s4+3TmhI0kFxfk9V6VDpDzXETPJ1HGq4kzl5nvcHwh8txJPgC6PrLPLOKAV
	zvlFN4PUkoYzSPDQz4AOa5vu49cLvtMkkL4HuwGs0UigGOAkVfysVLE8vqmZ/7n6i5aDjX3W3rAW8
	9ESIKmEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNEke-008naO-2y;
	Tue, 09 Jan 2024 16:14:53 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNEka-008nZ1-2p;
	Tue, 09 Jan 2024 16:14:51 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1704816881;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=r9bfKWlLqQsQQRAseh4rBecx5vgdDZwtE/9STShTx68=;
	b=PTokONlkCtK2Opey7wzaUGXQBl1gkiL/El0gDy7rVAM3uIdCi8526WmDnH7BAoqv4sjohM
	E+c6Fjdg3jByXurVIjk4MzbUw94faHXUv8Cuo2qiK0XoaIqReo+lfTBZ8lcAxvTXaK65Ha
	Y1j2RjqupTHn2AfhPWr7xGm3xU9GSPSK3B/BypMZ2kU9tHhZMi9spUsrm3ok6RxYxh86U9
	heitUARfG3q02SMGmnEdfamuIo82pArpgexkNtgwPGKxDAdDpu8/iHAT43SdAhI1cKXXa7
	w0biVPqEuuiIpxJIzuE4u4G7GMpMCjg1AhMRdyKozjCK5vb1Qy5zzptLLTO/IA==
Date: Tue, 09 Jan 2024 17:14:41 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: Quentin Schulz <foss+kernel@0leil.net>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Quentin
 Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: add spi controller aliases on
 rk3399
In-Reply-To: <2305627.1xdlsreqCQ@diego>
References: <20240109-rk3399-spi-aliases-v1-0-2009e44e734a@theobroma-systems.com>
 <20240109-rk3399-spi-aliases-v1-1-2009e44e734a@theobroma-systems.com>
 <685047b0-a907-49c6-919b-e46976d8ef7b@linaro.org> <2305627.1xdlsreqCQ@diego>
Message-ID: <0b82a9081578644545e8e3c32081aad1@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081449_397507_4EEEBF39 
X-CRM114-Status: GOOD (  17.11  )
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

T24gMjAyNC0wMS0wOSAxNjoyMiwgSGVpa28gU3TDvGJuZXIgd3JvdGU6Cj4gQW0gRGllbnN0YWcs
IDkuIEphbnVhciAyMDI0LCAxNjoxNTozMCBDRVQgc2NocmllYiBLcnp5c3p0b2YgS296bG93c2tp
Ogo+PiBPbiAwOS8wMS8yMDI0IDE0OjM1LCBRdWVudGluIFNjaHVseiB3cm90ZToKPj4gPiBGcm9t
OiBRdWVudGluIFNjaHVseiA8cXVlbnRpbi5zY2h1bHpAdGhlb2Jyb21hLXN5c3RlbXMuY29tPgo+
PiA+Cj4+ID4gVGhlcmUgYXJlIDYgU1BJIGNvbnRyb2xsZXJzIG9uIFJLMzM5OSBhbmQgdGhleSBh
cmUgYWxsIG51bWJlcmVkIGluIHRoZQo+PiA+IFRSTSwgc28gbGV0J3MgYWRkIHRoZSBhcHByb3By
aWF0ZSBhbGlhc2VzIHRvIHRoZSBtYWluIERUU0kgc28gdGhhdCBhbnkKPj4gPiBSSzMzOTktYmFz
ZWQgYm9hcmQgZG9lc24ndCBuZWVkIHRvIGRlZmluZSB0aGUgYWxpYXNlcyB0aGVtc2VsdmVzIHRv
Cj4+ID4gYmVuZWZpdCBmcm9tIHN0YWJsZSBTUEkgaW5kaWNlcyBpbiB1c2Vyc3BhY2UuCj4+IAo+
PiBCdXQgdGhhdCBjb250cmFkaWN0cyB0aGUgcG9pbnQgdGhhdCBib2FyZCBzaG91bGQgZGVmaW5l
IGFsaWFzZXMgZm9yCj4+IGV4cG9zYWJsZSBpbnRlcmZhY2VzLiBTb3JyeSwgdGhhdCdzIGEgTkFL
Lgo+IAo+IGRpZG4ndCB3ZSBoYXZlIHRoaXMgc2FtZSBkaXNjdXNzaW9uIHNvbWUgd2Vla3MgYWdv
PyA7LSkgLgo+IAo+IEkuZS4gc3BpMiBvbiBSb2NrY2hpcCBzb2NzIGlzIGNhbGxlZCBzcGkyIGlu
IF9hbGxfIFNvQyBkb2N1bWVudGF0aW9uLAo+IGxpbmVzIGluIF9hbGxfIHNjaGVtYXRpY3MgYXJl
IGFsc28gYWx3YXlzIGNhbGxlZCBzcGkyX2ZvbyAsIHNvIGFzIAo+IGJlZm9yZQo+IEkgcmVhbGx5
IGRvbid0IHNlZSBhbnkgdmFsdWUgaW4gcmVwZWF0aW5nIHRoZSB2ZXJ5IHNhbWUgYWxpYXNlcyBp
bgo+IF9ldmVyeV8gYm9hcmQuCj4gCj4gU2FtZSBmb3IgaTJjLCB1YXJ0IC4KClllcywgYW5kIHRo
ZSBSSzM1NnggU29DIGR0c2kgYWxyZWFkeSBkZWZpbmVzIHRoZSBzcGlYIGFsaWFzZXMgaW4gdGhl
IApzYW1lIHdheSBhcyBRdWVudGluIHByb3Bvc2VkLiAgVGFraW5nIHRoYXQgYXMgYW4gYWRkaXRp
b25hbCBleGFtcGxlLCB0aGUgClJLMzM5OSBkdHNpIGNhbiBkbyB0aGUgc2FtZS4KCj4gSXQgaXMg
b2YgY291cnNlIGRpZmZlcmVudCBmb3Igbm9uLW51bWVyYWJsZSBpbnRlcmZhY2VzIC0gbGlrZSB0
aGUgbW1jWAo+IGFsaWFzZXMgLSB3aGVyZSB0aGUgY29udHJvbGxlciBpcyBuYW1lZCBzZGhjaSwg
c2RtbWMsIHNkaW8gLi4uIGFuZAo+IHNpbWlsYXIgY2FzZXMuIFRoZXNlIGdldCB0byBzdGF5IGlu
IHRoZSBib2FyZCBkdHMgZmlsZXMgb2YgY291cnNlLgo+IAo+IAo+IEhlaWtvCj4gCj4+ID4gQ2M6
IFF1ZW50aW4gU2NodWx6IDxmb3NzK2tlcm5lbEAwbGVpbC5uZXQ+Cj4+IAo+PiBObyBuZWVkIHRv
IENjIHlvdXJzZWxmLi4uCj4+IAo+PiA+IFNpZ25lZC1vZmYtYnk6IFF1ZW50aW4gU2NodWx6IDxx
dWVudGluLnNjaHVsekB0aGVvYnJvbWEtc3lzdGVtcy5jb20+Cj4+ID4gLS0tCj4+IAo+PiBCZXN0
IHJlZ2FyZHMsCj4+IEtyenlzenRvZgo+PiAKPj4gCj4gCj4gCj4gCj4gCj4gCj4gX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KPiBMaW51eC1yb2NrY2hpcCBt
YWlsaW5nIGxpc3QKPiBMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
