Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D3A2DC61D96
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Nov 2023 08:09:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date
	:From:In-Reply-To:References:MIME-Version:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mpX9jUiOp7ySptLzfdT9Nx9Rs46hmhnJgdS0R9gZ/Hg=; b=HfwhknSPRunUG5
	DI+PJaQ7uFUDjcn/Eq8Vn+HYTjWsTGIgb0vts6fN/nFDmRUg7rw6xZgGBvQCfns+2DJ1hA5kDHFUR
	e29X71NtC2jCAWClqg739xH5gKktQoXHWNi8unzE42TG+jAOXRxZ9dmuCg8WM4GWZ4oracrVbNQ7N
	htnAcKWbIwMYPyy8BxhT5tUyASNBdrtL3tUj1NMsYlT7otIfbsFP1Ltn3EQLA5n00r5fCNlMV0qqm
	Dze1d8w2bOg1ZKu6Xa/fKanplsC2wSxkWZlOJEwikyL5Aj2bQs6KVKI3vFrWqyieTo4h78HW6I7wO
	ASeot/wYEPiPlcwbkWAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iIQ-0010qf-2G;
	Wed, 22 Nov 2023 08:09:18 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5iIM-0010p4-1N;
	Wed, 22 Nov 2023 08:09:15 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EDB69616BE;
	Wed, 22 Nov 2023 08:09:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9EEE3C433C9;
	Wed, 22 Nov 2023 08:09:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700640552;
	bh=PHQsh6F5XvgFUnaiWxcwLwUn3OBKs5yGFFQ41WrpYbs=;
	h=References:In-Reply-To:Reply-To:From:Date:Subject:To:Cc:From;
	b=nbJ2SK6lwZUEu6ZnwTSH+Oa/pBWa+sX/Htt/x2OReGd8JoH8z85C27DzRYTHJBlVi
	 3wDe3x5yRyGX5qAMhcpfKXHDb9VRNeNThxVKhdlyx1h9TbC6wosV8PHWzu2uTL/7Am
	 ZWlKfb6oi0Cn+Ic/KuwFQalQJhUOwrmMosWHgVwHC2Cz6C0mqCCOKTxXIRm3FodZqc
	 a5DVliVMdZJxlKjgLRaCcUtozoEbeFe5NuT8tHE9n86xS+d7H2vfDsWjbaRg0Z56Vf
	 5KU1r/sIqOWweRJ36Zhtl3j2xC4aB6yAvdaF7pTTjplwjMbpiRtNuVc7wneOEmh45p
	 iqsEGA8VNAjSA==
Received: by mail-pj1-f54.google.com with SMTP id 98e67ed59e1d1-280260db156so5180675a91.2;
        Wed, 22 Nov 2023 00:09:12 -0800 (PST)
X-Gm-Message-State: AOJu0YylkX95xjkLekYFllA7Lru+c/zogQiQpYcEDQ1GVxvGqImMzx73
	znmWRqA9m3vJVhymKMirT1SdDxwvt9ddSdNDj70=
X-Google-Smtp-Source: AGHT+IEr9UvTFqYZYbRvMse6NIITfqbwjuUq1G6lDkVVXaxwMJVX1684jPAX+uFy+o0fSjl0iAD8WjSqBj6oqY9ODoU=
X-Received: by 2002:a17:90b:1d92:b0:27f:ecd9:6d0e with SMTP id
 pf18-20020a17090b1d9200b0027fecd96d0emr1639810pjb.34.1700640552241; Wed, 22
 Nov 2023 00:09:12 -0800 (PST)
MIME-Version: 1.0
References: <20231120084044.23838-1-krzysztof.kozlowski@linaro.org>
 <6b288a2e-d147-4bd3-b1d4-daf56295d939@gmail.com> <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
In-Reply-To: <01f9ce3b-e6e5-4b05-bf7f-0b3a5f74910a@linaro.org>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Wed, 22 Nov 2023 16:09:00 +0800
X-Gmail-Original-Message-ID: <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com>
Message-ID: <CAGb2v64Vf5dDwq=KTrxwc=+w+0KUD2KVPMjmHg68Y_yukES5dQ@mail.gmail.com>
Subject: Re: [PATCH v2] docs: dt-bindings: add DTS Coding Style document
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>, 
	Rob Herring <robh+dt@kernel.org>, 
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
X-CRM114-CacheID: sfid-20231122_000914_573529_5821F954 
X-CRM114-Status: GOOD (  26.66  )
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
Reply-To: wens@kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBOb3YgMjIsIDIwMjMgYXQgNDowNeKAr1BNIEtyenlzenRvZiBLb3psb3dza2kKPGty
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
PiBJIGFtIHN1cmUgc3VibWlzc2lvbnMgd2lsbCBoYXZlIGRpc29yZGVyZWQgYm9hcmQgRFRTLgo+
Cj4gPgo+ID4KPiA+PiArRXhhbXBsZTo6Cj4gPj4gKwo+ID4+ICsgICAgLy8gU29DIERUU0kKPiA+
PiArCj4gPj4gKyAgICAvIHsKPiA+PiArICAgICAgICAgICAgY3B1cyB7Cj4gPj4gKyAgICAgICAg
ICAgICAgICAgICAgLy8gLi4uCj4gPj4gKyAgICAgICAgICAgIH07Cj4gPj4gKwo+ID4+ICsgICAg
ICAgICAgICBwc2NpIHsKPiA+PiArICAgICAgICAgICAgICAgICAgICAvLyAuLi4KPiA+PiArICAg
ICAgICAgICAgfTsKPiA+PiArCj4gPj4gKyAgICAgICAgICAgIHNvY0Agewo+ID4+ICsgICAgICAg
ICAgICAgICAgICAgIGRtYTogZG1hLWNvbnRyb2xsZXJAMTAwMDAgewo+ID4+ICsgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgLy8gLi4uCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgfTsKPiA+
PiArCj4gPj4gKyAgICAgICAgICAgICAgICAgICAgY2xrOiBjbG9jay1jb250cm9sbGVyQDgwMDAw
IHsKPiA+PiArICAgICAgICAgICAgICAgICAgICAgICAgICAgIC8vIC4uLgo+ID4+ICsgICAgICAg
ICAgICAgICAgICAgIH07Cj4gPj4gKyAgICAgICAgICAgIH07Cj4gPj4gKyAgICB9Owo+ID4+ICsK
PiA+PiArICAgIC8vIEJvYXJkIERUUwo+ID4+ICsKPiA+PiArICAgICZjbGsgewo+ID4+ICsgICAg
ICAgICAgICAvLyAuLi4KPiA+PiArICAgIH07Cj4gPj4gKwo+ID4+ICsgICAgJmRtYSB7Cj4gPj4g
KyAgICAgICAgICAgIC8vIC4uLgo+ID4+ICsgICAgfTsKPiA+PiArCj4gPj4gKwo+ID4+ICtPcmRl
ciBvZiBQcm9wZXJ0aWVzIGluIERldmljZSBOb2RlCj4gPj4gKy0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0KPiA+PiArCj4gPj4gK0ZvbGxvd2luZyBvcmRlciBvZiBwcm9wZXJ0aWVz
IGluIGRldmljZSBub2RlcyBpcyBwcmVmZXJyZWQ6Cj4gPj4gKwo+ID4+ICsxLiBjb21wYXRpYmxl
Cj4gPj4gKzIuIHJlZwo+ID4+ICszLiByYW5nZXMKPiA+PiArNC4gU3RhbmRhcmQvY29tbW9uIHBy
b3BlcnRpZXMgKGRlZmluZWQgYnkgY29tbW9uIGJpbmRpbmdzLCBlLmcuIHdpdGhvdXQKPiA+PiAr
ICAgdmVuZG9yLXByZWZpeGVzKQo+ID4+ICs1LiBWZW5kb3Itc3BlY2lmaWMgcHJvcGVydGllcwo+
ID4+ICs2LiBzdGF0dXMgKGlmIGFwcGxpY2FibGUpCj4gPj4gKzcuIENoaWxkIG5vZGVzLCB3aGVy
ZSBlYWNoIG5vZGUgaXMgcHJlY2VkZWQgd2l0aCBhIGJsYW5rIGxpbmUKPiA+PiArCj4gPj4gK1Ro
ZSAic3RhdHVzIiBwcm9wZXJ0eSBpcyBieSBkZWZhdWx0ICJva2F5IiwgdGh1cyBpdCBjYW4gYmUg
b21pdHRlZC4KPiA+Cj4gPiBJIHRoaW5rIGl0IHdvdWxkIHJlYWxseSBoZWxwIHRvIGluY2x1ZGUg
cG9zaXRpb24gb2YgI2FkZHJlc3MtY2VsbHMgYW5kCj4gPiAjc2l6ZS1jZWxscyBoZXJlLiBJbiBz
b21lIGZpbGVzIEkgc2F3IHRoZW0gYWJvdmUgImNvbXBhdGlibGUiIHRoYXQgc2VlbXMKPiA+IHVu
aW50dWl0aXZlLiBTb21lIHByZWZlciBwdXR0aW5nIHRoZW0gYXQgZW5kIHdoaWNoIEkgdGhpbmsg
bWFrZXMgc2Vuc2UKPiA+IGFzIHRoZXkgYWZmZWN0IGNoaWxkcmVuIG5vZGVzLgo+ID4KPiA+IFdo
YXRldmVyIHlvdSBjaG9vc2UgaXQnZCBiZSBqdXN0IG5pY2UgdG8gaGF2ZSB0aGluZ3MgY29uc2lz
dGVudC4KPgo+IFRoaXMgaXMgYSBzdGFuZGFyZC9jb21tb24gcHJvcGVydHksIHRodXMgaXQgZ29l
cyB0byAoNCkgYWJvdmUuCgpJdCdzIHByb2JhYmx5IGEgbWl4LCBidXQgQUZBSUsgYSBsb3Qgb2Yg
dGhlIGRldmljZSB0cmVlcyBpbiB0cmVlIGhhdmUKIyotY2VsbHMgYWZ0ZXIgInN0YXR1cyIuIElu
IHNvbWUgY2FzZXMgdGhleSBhcmUgYWRkZWQgaW4gdGhlIGJvYXJkCi5kdHMgZmlsZXMsIG5vdCB0
aGUgY2hpcC9tb2R1bGUgLmR0c2kgZmlsZXMuCgorMSB0aGF0IGl0IG1ha2VzIHNlbnNlIGF0IHRo
ZSBlbmQgYXMgdGhleSBhZmZlY3QgY2hpbGQgbm9kZXMuCgpDaGVuWXUKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
