Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9A698C61D99
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 14:56:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q+8IpTuxHR0RRzSQPqNcLd9jqs4mSo5Qh2rXjNbuUYU=; b=qREDPXTGbv/0tn
	X6+6sOd4kdV0ySk1qpstliUQYFjvZiiq2vzvOrykj92T4uznEmnUP2dBr7vTVWDzIT2bHrJjRhdCY
	JlytWtRd3SfxSb0A7BgRxAPZjwEnXbp8MLpLjjg7ywkrojszZIhR7a7K/iK6Mj9C+ff4VppCMF2Zj
	Yy8G86awRQPwfiZWowrdLoNPiHQlENXIMsPFTJmL14f7jyQosDnM+tD+2Kz+pkwjCSRhpEISeVJrK
	DKj6aRu2Oyr5MY+N3kVB1OkUCkZrdDsrss2XdjH512dH/6GEC71hglaSPUXipYoncB+k1tPRL+uv6
	SFgpKVXBXpGtyV+UIKmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oe6-0029re-1X;
	Wed, 22 Nov 2023 14:56:06 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5oe2-0029q5-0e;
	Wed, 22 Nov 2023 14:56:03 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 7098B61E1E;
	Wed, 22 Nov 2023 14:56:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 202DEC433C8;
	Wed, 22 Nov 2023 14:56:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700664961;
	bh=KtNL8iqiwxX+GpchCheqctmEAkNmwKSHMEBfjYdIYfA=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=jMWFROHsemWBLYudu+R0KFIYjkxN+OYS38HYbkxT6hliS5CGuPtvyqBwurcxMxfnQ
	 /iN3YL36okDmIdjncXf6CWKc4rf8O5RV02aYb9qWyDrKmqvqm/vNIu3HkhuWeT/byG
	 gMFBvzQQ6JD+1VBQrIuZOTTBeZZ/pdLn6QIYXb/xDRVedL3Nk2GeL9oQ/FJUpiPx4c
	 NTAbUbdzD3N8IaaRzLSzjZMsx/fmb+z9cl6/NGCBsjj2C+2oWU0F1q6PRSkc4Xgm+C
	 RTVI4Py6HBGOEj3GlcUX2Dd9p6BnVMRypZVEJ82an8lWtodpAFFeQ5Pw7rxk9TlwFk
	 WARyK/6iZiACw==
Received: by mail-lf1-f42.google.com with SMTP id 2adb3069b0e04-50797cf5b69so9432926e87.2;
        Wed, 22 Nov 2023 06:56:01 -0800 (PST)
X-Gm-Message-State: AOJu0YybLIqXcFMQqqvMT8E2PVIXlu02d8LaEXZEe51faT9YL3obqxVT
	RjrN56dnVtyiaQfgkAYg1g3kucVc4FZAEYp5zg==
X-Google-Smtp-Source: AGHT+IEDtzsjOwck99QtWT4cq2cTvv6FyJkSzHZICZds9G5M/6EfSs1GNZZ86r1YlxgmzIe8zoQcthvqAgxSHpLL35E=
X-Received: by 2002:ac2:5e8d:0:b0:500:b63f:4db3 with SMTP id
 b13-20020ac25e8d000000b00500b63f4db3mr1826037lfq.35.1700664959349; Wed, 22
 Nov 2023 06:55:59 -0800 (PST)
MIME-Version: 1.0
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com> <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
In-Reply-To: <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
From: Rob Herring <robh+dt@kernel.org>
Date: Wed, 22 Nov 2023 07:55:46 -0700
X-Gmail-Original-Message-ID: <CAL_JsqL_caP2Adh5ntrHb24sXOY9x=TxvCSnnSCq--rm3B0FoA@mail.gmail.com>
Message-ID: <CAL_JsqL_caP2Adh5ntrHb24sXOY9x=TxvCSnnSCq--rm3B0FoA@mail.gmail.com>
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-mediatek@lists.infradead.org, Andrew Davis <afd@ti.com>, 
	Arnd Bergmann <arnd@arndb.de>, Bjorn Andersson <andersson@kernel.org>, 
	Geert Uytterhoeven <geert+renesas@glider.be>, Heiko Stuebner <heiko@sntech.de>, 
	Konrad Dybcio <konrad.dybcio@linaro.org>, Michal Simek <michal.simek@amd.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Nishanth Menon <nm@ti.com>, Olof Johansson <olof@lixom.net>, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
	linux-amlogic@lists.infradead.org, linux-arm-msm@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_065602_347161_3E726DC0 
X-CRM114-Status: GOOD (  20.15  )
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

T24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgMTowNeKAr0FNIEtyenlzenRvZiBLb3psb3dza2kKPGty
enlzenRvZi5rb3psb3dza2lAbGluYXJvLm9yZz4gd3JvdGU6Cj4KPiBPbiAyMS8xMS8yMDIzIDE0
OjUwLCBSYWZhxYIgTWnFgmVja2kgd3JvdGU6Cj4gPj4gK09yZGVyIG9mIE5vZGVzCj4gPj4gKy0t
LS0tLS0tLS0tLS0tCj4gPj4gKwo+ID4+ICsxLiBOb2RlcyB3aXRoaW4gYW55IGJ1cywgdGh1cyB1
c2luZyB1bml0IGFkZHJlc3NlcyBmb3IgY2hpbGRyZW4sIHNoYWxsIGJlCj4gPj4gKyAgIG9yZGVy
ZWQgaW5jcmVtZW50YWxseSBieSB1bml0IGFkZHJlc3MuCj4gPj4gKyAgIEFsdGVybmF0aXZlbHkg
Zm9yIHNvbWUgc3ViLWFyY2hpdGVjdHVyZXMsIG5vZGVzIG9mIHRoZSBzYW1lIHR5cGUgY2FuIGJl
Cj4gPj4gKyAgIGdyb3VwZWQgdG9nZXRoZXIgKGUuZy4gYWxsIEkyQyBjb250cm9sbGVycyBvbmUg
YWZ0ZXIgYW5vdGhlciBldmVuIGlmIHRoaXMKPiA+PiArICAgYnJlYWtzIHVuaXQgYWRkcmVzcyBv
cmRlcmluZykuCj4gPj4gKwo+ID4+ICsyLiBOb2RlcyB3aXRob3V0IHVuaXQgYWRkcmVzc2VzIHNo
b3VsZCBiZSBvcmRlcmVkIGFscGhhLW51bWVyaWNhbGx5IGJ5IHRoZSBub2RlCj4gPj4gKyAgIG5h
bWUuICBGb3IgYSBmZXcgdHlwZXMgb2Ygbm9kZXMsIHRoZXkgY2FuIGJlIG9yZGVyZWQgYnkgdGhl
IG1haW4gcHJvcGVydHkKPiA+PiArICAgKGUuZy4gcGluIGNvbmZpZ3VyYXRpb24gc3RhdGVzIG9y
ZGVyZWQgYnkgdmFsdWUgb2YgInBpbnMiIHByb3BlcnR5KS4KPiA+PiArCj4gPj4gKzMuIFdoZW4g
ZXh0ZW5kaW5nIG5vZGVzIGluIHRoZSBib2FyZCBEVFMgdmlhICZsYWJlbCwgdGhlIGVudHJpZXMg
c2hvdWxkIGJlCj4gPj4gKyAgIG9yZGVyZWQgYWxwaGEtbnVtZXJpY2FsbHkuCj4gPgo+ID4gSnVz
dCBhbiBpZGVhLiBXb3VsZCB0aGF0IG1ha2UgKG1vcmUpIHNlbnNlIHRvIG1ha2UgJmxhYmVsLWxp
a2UgZW50cmllcwo+ID4gbWF0Y2ggb3JkZXIgb2Ygbm9kZXMgaW4gaW5jbHVkZWQgLmR0cyhpKT8K
PiA+Cj4gPiBBZHZlbnRhZ2VzOgo+ID4gMS4gV2Uga2VlcCB1bml0IGFkZHJlc3MgaW5jcmVtZW50
YWwgb3JkZXIgdGhhdCBpcyB1bmxpa2VseSB0byBjaGFuZ2UKPiA+Cj4gPiBEaXNhZHZlbnRhZ2Vz
Ogo+ID4gMS4gTW9yZSBkaWZmaWN1bHQgdG8gdmVyaWZ5Cj4KPiBSb2IgYWxzbyBwcm9wb3NlZCB0
aGlzIGFuZCBJIGJlbGlldmUgYWJvdmUgZGlzYWR2YW50YWdlIGhlcmUgaXMgY3J1Y2lhbC4KPiBJ
ZiB5b3UgYWRkIG5ldyBTb0Mgd2l0aCBib2FyZCBEVFMgeW91IGFyZSBmaW5lLiBCdXQgaWYgeW91
IGFkZCBvbmx5IG5ldwo+IGJvYXJkLCB0aGUgb3JkZXIgb2YgZW50cmllcyBsb29rIHJhbmRvbSBp
biB0aGUgZGlmZiBodW5rLiBSZXZpZXdlciBtdXN0Cj4gb3BlbiBTb0MgRFRTSSB0byBiZSBhYmxl
IHRvIHJldmlldyB0aGUgcGF0Y2ggd2l0aCBib2FyZCBEVFMuCj4KPiBJZiByZXZpZXcgaXMgdHJp
Y2t5IGFuZCB3ZSBkbyBub3QgaGF2ZSB0b29sIHRvIHBlcmZvcm0gaXQgYXV0b21hdGljYWxseSwK
PiBJIGFtIHN1cmUgc3VibWlzc2lvbnMgd2lsbCBoYXZlIGRpc29yZGVyZWQgYm9hcmQgRFRTLgoK
SSdtIGNlcnRhaW5seSBpbiBmYXZvciBvZiBvbmx5IChvciBtb3N0bHk/KSBzcGVjaWZ5aW5nIHRo
aW5ncyB3ZSBjYW4KY2hlY2sgd2l0aCB0b29scy4gSSBkb24ndCBuZWVkIG1vcmUgdG8gY2hlY2sg
bWFudWFsbHkuLi4KCkl0IHdvdWxkbid0IGJlIHRvbyBoYXJkIHRvIGdldCBwYXRoIGZyb20gbGFi
ZWxzLiBkdGMgZ2VuZXJhdGVzIHRoYXQKd2l0aCAtQCBhbHJlYWR5LiBTbyBJIGRvbid0IGJ1eSAi
d2UgZG9uJ3QgaGF2ZSBhIHRvb2wiIGlmIGEgdG9vbCB0bwpjaGVjayBzZWVtcyBmZWFzaWJsZS4K
ClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
