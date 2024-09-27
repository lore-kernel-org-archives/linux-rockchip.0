Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 05E3FCEBF9E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Sep 2024 12:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSubwPJEDhbGF9rKpDEXq0039tN81PoZ6GgLBWmTgdM=; b=piZFFbdC67cSUi
	J10NJlV7OR9szZc8V6gTOF/gwIt7okRFPlHVeUj6ii2Kp8SgAevv1odb1w/lsO0wNavo5a78DAXl1
	kUZocIumibZFF9todH2/ZGrfCLqxwGUvL2KrAEagze75297bAXDddnEesQehDbIq2vmAvLArwYJXd
	dxtgbWLWFLAtgaDCeEiAjTKkmszHfN89CtGPPup08MNEKyj9oJq3y2MYMEJc6n+TImVFKa2BoGZTS
	cOAb/NJPl5Mt9ROGDmirVEqGE4h97DetBR1jVKl1JRdKSRJ5/WrOZ8OsjGa5NWm8oDXt3fljG7A17
	VUNZVh/Cb2C7BGNFs1jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su9kD-0000000B1SM-2M1s;
	Fri, 27 Sep 2024 12:06:45 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su9iz-0000000B1Ih-3ZLR;
	Fri, 27 Sep 2024 12:05:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1BC3A5C5D1F;
	Fri, 27 Sep 2024 12:05:25 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B7EFC4CEC4;
	Fri, 27 Sep 2024 12:05:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727438728;
	bh=TE0LKX2c8E2TfT9Hkddc6qnG6wPmZG77HUmFBLIjakI=;
	h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
	b=kOHEfXpB9+ydIEuC+pfZodkQQ8eyy4bD6HLDQewhrZ1cGBkrjVoMuF2QlsvbSpmgU
	 x188wYvJMfJlIc0TS3IpcjbB5yhVUJG6d9GYuohuAzUewGFenBsdIj9XMfv7urLtnW
	 RoFZrUE8i3iPKE0i6/0gCryi3iHXuVHtbfZNy6LLy+C37UiuDLAcY61vGIhCJkrove
	 wI2KJpE5v8TyFvVDZ9MPenfMBUqjcFB1bIwFWotXTyr+TK+zuJeq+qd5we04BNNWiI
	 gth/iJcUxfbLFJMX//xNB3T3ms3oah33OmsbXjiJBwjtPWeZUAnJ51AoZds+kQODYj
	 H5YrKft7fmp9A==
Message-ID: <417fa0ae-fe9c-4407-acbe-09173a0a2a47@kernel.org>
Date: Fri, 27 Sep 2024 14:05:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] dt-bindings: phy: rockchip,inno-usb2phy: add
 rk3576
To: Frank Wang <frawang.cn@gmail.com>, vkoul@kernel.org, kishon@kernel.org,
 robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, william.wu@rock-chips.com,
 tim.chen@rock-chips.com, frank.wang@rock-chips.com
References: <20240926103223.29538-1-frawang.cn@gmail.com>
 <ed829240-d4f7-471f-84f6-3509f87f11a1@kernel.org>
 <7944f4dd-96f0-40df-8c91-523409e3cb20@gmail.com>
 <4b98196a-c898-4d08-9101-31feb4e59b5c@kernel.org>
 <a06af01a-656b-4ef6-84a6-bc1c35d5bafa@gmail.com>
 <2815219e-3a20-4a5b-8573-d8a4ad2df1c9@kernel.org>
 <f5e547ac-cb5b-492d-8cfd-d77d3e9bbf9d@gmail.com>
From: Krzysztof Kozlowski <krzk@kernel.org>
Content-Language: en-US
Autocrypt: addr=krzk@kernel.org; keydata=
 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 fv0=
In-Reply-To: <f5e547ac-cb5b-492d-8cfd-d77d3e9bbf9d@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_050530_003276_63E0B03B 
X-CRM114-Status: GOOD (  12.14  )
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

T24gMjcvMDkvMjAyNCAxMjo1OSwgRnJhbmsgV2FuZyB3cm90ZToKPiBIaSBLcnp5c3p0b2YsCj4g
Cj4gT24gMjAyNC85LzI3IDE3OjUyLCBLcnp5c3p0b2YgS296bG93c2tpIHdyb3RlOgo+PiBPbiAy
Ny8wOS8yMDI0IDA5OjU5LCBGcmFuayBXYW5nIHdyb3RlOgo+Pj4+PiAtwqAgY2xvY2tzOgo+Pj4+
PiAtwqDCoMKgIG1heEl0ZW1zOiAxCj4+Pj4+ICvCoCBjbG9ja3M6IHRydWUKPj4+Pj4KPj4+Pj4g
LcKgIGNsb2NrLW5hbWVzOgo+Pj4+PiAtwqDCoMKgIGNvbnN0OiBwaHljbGsKPj4+Pj4gK8KgIGNs
b2NrLW5hbWVzOiB0cnVlCj4+Pj4gRm9yIHRoZSB0aGlyZCB0aW1lLCByZWFkIHRoZSBjb2RlIEkg
Z2F2ZSB5b3UuIERvIHlvdSBzZWUgc29tZXRoaW5nIGxpa2UKPj4+PiB0aGlzIHRoZXJlPyBXaHkg
ZG9pbmcgYWxsIHRoZSB0aW1lIHNvbWV0aGluZyBkaWZmZXJlbnQgdGhhbiBleGlzdGluZyBjb2Rl
Pwo+Pj4gUmVmZXIgdG8gdGhlIGxpbmsgeW91IHNlbnQgbWUgdGhhdCBJIG11c3QgYWRkIG1pbkl0
ZW1zIHByb3BlcnR5IGZvcgo+Pj4gY2xvY2tzLCBqdXN0IGxpa2UgdGhlIGJlbG93IGNvZGVzOgo+
Pj4KPj4+IEBAIC0zNSw3ICszNSw4IEBAIHByb3BlcnRpZXM6Cj4+PiAgIMKgwqDCoMKgIGNvbnN0
OiAwCj4+Pgo+Pj4gICDCoMKgIGNsb2NrczoKPj4+IC3CoMKgwqAgbWF4SXRlbXM6IDEKPj4+ICvC
oMKgwqAgbWluSXRlbXM6IDEKPj4+ICvCoMKgwqAgbWF4SXRlbXM6IDMKPj4gWWVzLCBmb3IgYWxs
IHZhcmlhYmxlIHByb3BlcnRpZXMsIHNvIGFsc28gbmFtZXMuCj4+Cj4+PiBUaGF0IGNhbiBwYXNz
IGR0X2JpbmRpbmcgYW5kIGR0YiBjaGVja2luZywgaG93ZXZlciwgImNsb2NrcyIgaXMgdGhlCj4+
PiBvcHRpb25hbCBwcm9wZXJ0eSBmb3Igc29tZSBvbGQgUm9ja2NoaXAgUEhZcyzCoCBJIGFtIG5v
dCBzdXJlIGlzIGl0IHJpZ2h0Cj4+PiB0byBmb3JjZSBzZXTCoCBtaW5JdGVtcyBhcyAxIC4KPj4+
IElmIGp1c3Qga2VlcCBtYXhJdGVtcywgdGhlIGR0X2JpbmRpbmcgY2hlY2tpbmcgaXMgZmFpbHVy
ZS4KPj4gUGxlYXNlIHNwZWNpZnkgdGhlIHF1ZXN0aW9uIHlvdSB3YW50IHRvIGFzay4KPj4KPiAK
PiBQbGVhc2UgaWdub3JlIG15IGxhc3QgZ2FyYmxlZCBlbWFpbCBhcyBtYWlsYm94IGNsaWVudCBp
c3N1ZS4KPiAKPiBRMTogVGhlICJjbG9ja3MiIGlzIGFuIG9wdGlvbmFsIHByb3BlcnR5IGZvciBz
b21lIG9sZCBSb2NrY2hpcCBQSFlzLCBzbyAKPiBzZXQgIm1pbkl0ZW1zOiAxIiBsaWtlcyB0aGUg
YmVsb3csIGlzIHRoaXMgYSBzdWl0YWJsZSBzZXR0aW5nPwo+IAo+ICDCoMKgwqAgY2xvY2tzOgo+
IC3CoMKgwqAgbWF4SXRlbXM6IDEKPiArwqDCoMKgIG1pbkl0ZW1zOiAxCj4gK8KgwqDCoCBtYXhJ
dGVtczogMwo+IAo+IFEyOiBEbyB5b3Ugd2FudCBtZSB0byBhbWVuZCB0aGUgY29kZSB0byBsaWtl
IHRoaXM/Cj4gCj4gIMKgwqAgY2xvY2tzOgo+ICDCoMKgwqAgbWluSXRlbXM6IDEKPiAgwqDCoMKg
IG1heEl0ZW1zOiAzCj4gCj4gIMKgwqAgY2xvY2stbmFtZXM6Cj4gIMKgwqDCoCBtaW5JdGVtczog
MQo+ICDCoMKgwqAgbWF4SXRlbXM6IDMKCkxpc3Qgc2hvdWxkIGJlIGhlcmUgd2l0aCBtaW5JdGVt
cy4gVGhlbiB5b3Ugb25seSBkZWZpbmUgdGhlIGNvbnN0cmFpbnRzCmluIGlmOnRoZW46CgpCZXN0
IHJlZ2FyZHMsCktyenlzenRvZgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
