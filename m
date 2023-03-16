Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87E59C6FD19
	for <linux-rockchip@archiver.kernel.org>; Thu, 16 Mar 2023 05:35:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8T3ib40eY5LzG6dXn5AkNjdp7FIjom2+bQgxCYCnDfU=; b=VG/K6KyWj55ve5
	uF7cWOw3uTHlrzt263gLLY/XHHtvjVwW7Nbc3YYBHQAounsX1CRQ9ihSyH4lqxcfAmlb+KkmkQ2WO
	nDIXLaIPprdXjGox4FYBrDXGFFmpzTBSX+jVpC3MatTA2vr+eFL523DSs99uyLd2B8hlhIRflTnke
	pm5giTZcmNQZDwgRE/Vw0lgrODgf8Xep2BmjeX25Izd1hI+3l0vtCbqoLrtdW9yy/LLzc/A7pNAQo
	GD9+6OxkWXK615T9jPat1A1Gtbska6NCdu3gZYTqhxEKctC3U9qTPIs5+aKaB6yBTnMKEyVy5cFkf
	UqMZ+YyjIaO0vi0/cJKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pcgGj-00FHb0-38;
	Thu, 16 Mar 2023 05:35:17 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pcgGg-00FHZx-2d;
	Thu, 16 Mar 2023 05:35:16 +0000
Received: by mail-ed1-x533.google.com with SMTP id w9so3127790edc.3;
        Wed, 15 Mar 2023 22:35:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678944912;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MTn9F6VRaj24/5PlriNhsJPfHboEOWBXCFTCA/ejnmc=;
        b=foflW0AaNkXb+Nls7hLeT8kEUUuYONhJK6/82tE3JTfHODXUMopAvrYh5cldFrl9yd
         W54xUzNlb9WLe4lngeEMWQIw5RMUqUlRBRiDArpKl0KyCy8PVhNeCzJGYkY5tT6jQjTV
         LV3lG0fRbOWAMxUP1a7VkhjEGNC/XqadC8NkK/khq78m4CiVLgLU0KQ0BQItcZPoYxP2
         HVDZKsAyZZqg17gECkF5MfrWBVAZQUiwu2vSBF96dz5AqbO+O9H/BE//AAfibW1jqm1p
         77c7RZAe40erULO1iu1S9qcHOgdSBOpQyBfHk2/md2+benxMKD+UzeCQ3opJSCa8RYa1
         mrVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678944912;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MTn9F6VRaj24/5PlriNhsJPfHboEOWBXCFTCA/ejnmc=;
        b=mPdyqOw1PPc4fJrxI6NG7tYFlfdOBrvB5Y9TqRdZzL6kvuDNsJfGk4a/kqR1XxDLRX
         F0o4RDrvMlkVsbamxHYVIiTxerS7YU1bvpSyXSJzxpfzeMytXTjXOAmXgePjRF0PGeIA
         Z23JDGeyKy2xgL6/Ka07cElgNWtww3abWC7kS49qbyN9RfdNVHW9lL4Lt6GCNQD4yi/X
         BnX1IwQFU2bsFBFRhzIZQ/VHZulMKWKXGrrfaSFvQ+5mstrJWCip6Okn83ND53q9zx81
         YXwESM3HUR7ptVbsqqVpJJsI1DxcT0CnQOQU5LkqalDyyXUv1Wj39fUs9OJZkJ5hAitV
         5EuQ==
X-Gm-Message-State: AO0yUKXHa8w8u7vPBiQh/91rBzaYk4tqnRinjQMOxWVhECxLzcQ6r3Bl
	AB8cfTp0dd+0bS8xVC3vRelt28IxmgXedo1/xYA=
X-Google-Smtp-Source: AK7set8aurmvlKhSXW1haPZN3+fpNjlKMeMKoyYecYeYATlpXhQhWJetpPuWeKc7i2GuHMRz4wiBUGWfNXDCjO6mwtM=
X-Received: by 2002:a50:99d6:0:b0:4fb:f19:883 with SMTP id n22-20020a5099d6000000b004fb0f190883mr2815068edb.1.1678944912065;
 Wed, 15 Mar 2023 22:35:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230315160228.2362-1-cnsztl@gmail.com> <20230315160228.2362-5-cnsztl@gmail.com>
 <CA+E=qVei7T4T0FWhdUFnr5JbCWSgFbGLcmU2OHxx54yvnNR6mw@mail.gmail.com>
In-Reply-To: <CA+E=qVei7T4T0FWhdUFnr5JbCWSgFbGLcmU2OHxx54yvnNR6mw@mail.gmail.com>
From: Tianling Shen <cnsztl@gmail.com>
Date: Thu, 16 Mar 2023 13:34:59 +0800
Message-ID: <CAOP2_TiU815F528jVGvDbcg3kSG+ykepU-ZYz7VWMO84GgcwMg@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: rockchip: fix gmac support for NanoPi R5S
To: Vasily Khoruzhick <anarsoul@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Jagan Teki <jagan@amarulasolutions.com>, Peter Geis <pgwipeout@gmail.com>, 
	Andy Yan <andyshrk@163.com>, Brian Norris <briannorris@chromium.org>, 
	Chris Morgan <macromorgan@hotmail.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Andrew Lunn <andrew@lunn.ch>, 
	Michael Riesch <michael.riesch@wolfvision.net>, Maya Matuszczyk <maccraft123mc@gmail.com>, 
	Andrew Powers-Holmes <aholmes@omnom.net>, Sascha Hauer <s.hauer@pengutronix.de>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230315_223514_877871_3E2CEAD5 
X-CRM114-Status: GOOD (  22.71  )
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

SGkgVmFzaWx5LAoKT24gVGh1LCBNYXIgMTYsIDIwMjMgYXQgODoxNuKAr0FNIFZhc2lseSBLaG9y
dXpoaWNrIDxhbmFyc291bEBnbWFpbC5jb20+IHdyb3RlOgo+Cj4gT24gV2VkLCBNYXIgMTUsIDIw
MjMgYXQgOTowMuKAr0FNIFRpYW5saW5nIFNoZW4gPGNuc3p0bEBnbWFpbC5jb20+IHdyb3RlOgo+
ID4KPiA+IC0gQ2hhbmdlZCBwaHktbW9kZSB0byByZ21paS4KPiA+Cj4gPiAtIEZpeGVkIHB1bGwg
dHlwZSBpbiBwaW5jdHJsIGZvciBnbWFjMC4KPiA+Cj4gPiAtIFJlbW92ZWQgZHVwbGljYXRlIHBy
b3BlcnRpZXMgaW4gbWRpbyBub2RlLgo+ID4gICBUaGVzZSBwcm9wZXJ0aWVzIGFyZSBkZWZpbmVk
IGluIHRoZSBnbWFjMCBub2RlIGFscmVhZHkuCj4gPgo+ID4gU2lnbmVkLW9mZi1ieTogVGlhbmxp
bmcgU2hlbiA8Y25zenRsQGdtYWlsLmNvbT4KPiA+IC0tLQo+ID4gIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY4LW5hbm9waS1yNXMuZHRzIHwgNyArKy0tLS0tCj4gPiAgMSBmaWxl
IGNoYW5nZWQsIDIgaW5zZXJ0aW9ucygrKSwgNSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0t
Z2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtbmFub3BpLXI1cy5kdHMg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1uYW5vcGktcjVzLmR0cwo+ID4g
aW5kZXggZTlhZGY1ZTY2NTI5Li4yYTExMThmMTVjMjkgMTAwNjQ0Cj4gPiAtLS0gYS9hcmNoL2Fy
bTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1uYW5vcGktcjVzLmR0cwo+ID4gKysrIGIvYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtbmFub3BpLXI1cy5kdHMKPiA+IEBAIC01
Nyw3ICs1Nyw3IEBACj4gPiAgICAgICAgIGFzc2lnbmVkLWNsb2NrLXJhdGVzID0gPDA+LCA8MTI1
MDAwMDAwPjsKPiA+ICAgICAgICAgY2xvY2tfaW5fb3V0ID0gIm91dHB1dCI7Cj4gPiAgICAgICAg
IHBoeS1oYW5kbGUgPSA8JnJnbWlpX3BoeTA+Owo+ID4gLSAgICAgICBwaHktbW9kZSA9ICJyZ21p
aS1pZCI7Cj4gPiArICAgICAgIHBoeS1tb2RlID0gInJnbWlpIjsKPiA+ICAgICAgICAgcGluY3Ry
bC1uYW1lcyA9ICJkZWZhdWx0IjsKPiA+ICAgICAgICAgcGluY3RybC0wID0gPCZnbWFjMF9taWlt
Cj4gPiAgICAgICAgICAgICAgICAgICAgICAmZ21hYzBfdHhfYnVzMgo+ID4gQEAgLTc5LDkgKzc5
LDYgQEAKPiA+ICAgICAgICAgICAgICAgICByZWcgPSA8MT47Cj4gPiAgICAgICAgICAgICAgICAg
cGluY3RybC0wID0gPCZldGhfcGh5MF9yZXNldF9waW4+Owo+ID4gICAgICAgICAgICAgICAgIHBp
bmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cj4gPiAtICAgICAgICAgICAgICAgcmVzZXQtYXNzZXJ0
LXVzID0gPDEwMDAwPjsKPiA+IC0gICAgICAgICAgICAgICByZXNldC1kZWFzc2VydC11cyA9IDw1
MDAwMD47Cj4gPiAtICAgICAgICAgICAgICAgcmVzZXQtZ3Bpb3MgPSA8JmdwaW8wIFJLX1BDNCBH
UElPX0FDVElWRV9MT1c+Owo+Cj4gSG1tLCBJIGRvbid0IHNlZSBSS19QQzQgYmVpbmcgdXNlZCBh
bnl3aGVyZSBlbHNlLiBnbWFjMCBoYXMgUktfUEM1IGFzCgpZZXMsIGl0J3MgYSB0eXBvLCBpdCBz
aG91bGQgYmUgUktfUkM1LgoKPiBzbnNwLHJlc2V0LWdwaW8uIFNvIGl0IGVzc2VudGlhbGx5IGRy
b3BzIHJlc2V0IGZvciB0aGUgUEhZLiBJcyBpdAo+IGV4cGVjdGVkPwoKc25zcCxyZXNldC1ncGlv
IGRlZmluZWQgcmVzZXQgYWxyZWFkeSwgc28gd2UgZG9uJ3QgbmVlZCB0byBzZXQgaXQgaGVyZSBh
Z2Fpbi4KCi0tLQoKc25zcCxyZXNldC1ncGlvIGlzIHRoZSBsZWdhY3kgYmluZGluZywgYnV0IEkg
c3RpbGwgaGF2ZSBubyBpZGVhIHdoeQpyZXNldC1ncGlvcyBkb2Vzbid0IHdvcmssCnRoZSBkd21h
YyBkcml2ZXIgd2lsbCBmYWlsIHRvIGxvb2t1cCBwaHk6CgpbICAgMTAuMzk4NTE0XSBya19nbWFj
LWR3bWFjIGZlMmEwMDAwLmV0aGVybmV0IGV0aDA6IG5vIHBoeSBmb3VuZApbICAgMTAuMzk5MDYx
XSBya19nbWFjLWR3bWFjIGZlMmEwMDAwLmV0aGVybmV0IGV0aDA6IF9fc3RtbWFjX29wZW46CkNh
bm5vdCBhdHRhY2ggdG8gUEhZIChlcnJvcjogLTE5KQoKQW55IGlkZWFzIHdvdWxkIGJlIGFwcHJl
Y2lhdGVkLgoKVGhhbmtzLApUaWFubGluZy4KCj4KPiA+ICAgICAgICAgfTsKPiA+ICB9Owo+ID4K
PiA+IEBAIC0xMTUsNyArMTEyLDcgQEAKPiA+ICAmcGluY3RybCB7Cj4gPiAgICAgICAgIGdtYWMw
IHsKPiA+ICAgICAgICAgICAgICAgICBldGhfcGh5MF9yZXNldF9waW46IGV0aC1waHkwLXJlc2V0
LXBpbiB7Cj4gPiAtICAgICAgICAgICAgICAgICAgICAgICByb2NrY2hpcCxwaW5zID0gPDAgUktf
UEM0IFJLX0ZVTkNfR1BJTyAmcGNmZ19wdWxsX2Rvd24+Owo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgcm9ja2NoaXAscGlucyA9IDwwIFJLX1BDNCBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91
cD47Cj4gPiAgICAgICAgICAgICAgICAgfTsKPiA+ICAgICAgICAgfTsKPiA+Cj4gPiAtLQo+ID4g
Mi4xNy4xCj4gPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
