Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 50ECDC05027
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Jan 2023 15:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eslM4KYEGHSn3BTUBSYWQk+AxCHql1npQE2QRVHkXyo=; b=YGxHDtU0Y+oTVU
	Pxsu/77QpUg1mUXMF86k3DLlm4gyB6kuEnP0wS6go5KP9Rcw9fUralMxtZ7DpGYM2eSOPxKCM66m/
	LJN5K8BcOAcsmxng+NJxO/I1WWTKIQlJP/Idc8BrnUfAXoUVb4edVG+TP+Wt6RStAkwMbYgjRfI9e
	2eIJ5qoGzhH/vPIWBrotSgz5K4lh7DIzOTVXNVc1I0WCUora3cYsU9s/1uJLuT11W+26L5ApsdHZT
	aUveCx3dQ7LxEgk3zTqEKMn2NS8vFack1+TlxGNJdhPW1D6OpjbMY0m+i1r0kVT2tV394HKCavVWz
	2nz5Lf4gBWPawZ2TJL5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL47W-00BUkQ-SP; Thu, 26 Jan 2023 15:24:59 +0000
Received: from mail-oa1-x2e.google.com ([2001:4860:4864:20::2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pL47B-00BUbx-FH; Thu, 26 Jan 2023 15:24:39 +0000
Received: by mail-oa1-x2e.google.com with SMTP id 586e51a60fabf-15f64f2791dso2747207fac.7;
        Thu, 26 Jan 2023 07:24:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ag06Hb9qIk6ptR42BWFbeZ8DVLKjhY0QP30dT9rCnf4=;
        b=cyjF7viABigh+M4VRRLEDTZqNRkAo8TG5GENzKKvOJivxXG3OFSyboWyDYIw1On5Rs
         bSu8FUdAzd2l96kLWaZgrdgPDbFGfszBDoG/1jhKyWVqtVjdwf3Cydt6fqlKQfAXT1DH
         HmHPpPKk38guaELzr4/dRmO5rHHpuYl3rROoo+T+Mb/dNJHP6tk45svYziP1IVLYbjeG
         gTjMw9ZGM6Lz1TcopZPqF2lcrMIQb+/TgRhmGnSqiQ6jtwWnOul0EuwtY5D/xnlIEuvP
         dUuTBvK3lRpirXty55CGl3zOu9Rr+TZJrBk+9QdFXeoWzXPr9MvtdH2TPlPAb5NhNqRd
         660w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ag06Hb9qIk6ptR42BWFbeZ8DVLKjhY0QP30dT9rCnf4=;
        b=KHadP6m+1HxTbvM8ccWcVbBK3qnAyFaeUsEI9OxxY7AfRjnflRxUcbUsJSeCV+b00R
         fBa2qtyzsfrpMxtshrnUt/FWig/DZPi5T0iqBD5biuevkljSZSVaBJ9Z3HmlLjgreRwW
         CucRAnp8OsNechzjiUWFMM7d5j8OHcYt1RjS4iDK9/I5l8iESLh34l1zsD3BTMek4pMG
         jIfumptwk5PzdwkhR1in1jMpGzVKrI4HWI3jPRSzIr3ZEjdWsvi/hzK/kYNPlYCeWUYj
         gEKX3diaU0F/gWujsM7pPP9DJCQOC9qjuslv3gFNLchJ6qxA7xIq96cxvScBGhrpWDJp
         GY5A==
X-Gm-Message-State: AFqh2kpcqEWQgtk93fgV52uCcOOCXXp9m+5ofImaFgLtlYmTZHUD7z3e
	qJN4OPMwxeHHDZKsc9vF1HWz3g4UeDbStSqsysM=
X-Google-Smtp-Source: AMrXdXvcV4CLcI1gQfSKDu7AQMnOiuJgSHIzx3ort5jv5k0l30wji9hXaAQ67eTJ6qlWKa39m8pJ7cRETaJ4R+DKjgU=
X-Received: by 2002:a05:6870:9728:b0:148:5512:23c0 with SMTP id
 n40-20020a056870972800b00148551223c0mr3457750oaq.265.1674746674128; Thu, 26
 Jan 2023 07:24:34 -0800 (PST)
MIME-Version: 1.0
References: <20230126135049.708524-1-rick.wertenbroek@gmail.com> <20230126145200.GA1270846@bhelgaas>
In-Reply-To: <20230126145200.GA1270846@bhelgaas>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Thu, 26 Jan 2023 16:23:57 +0100
Message-ID: <CAAEEuhq9X0ppqTMp7fnZapbubf9k8xhH=u3gPva3hEpAdawK3w@mail.gmail.com>
Subject: Re: [PATCH 0/8] PCI: rockchip: Fix PCIe endpoint controller driver
To: Bjorn Helgaas <helgaas@kernel.org>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, wenrui.li@rock-chips.com, 
	rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Rodrigo Vivi <rodrigo.vivi@intel.com>, 
	Mikko Kovanen <mikko.kovanen@aavamobile.com>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_072437_570004_72838539 
X-CRM114-Status: GOOD (  40.76  )
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

SGVsbG8sIEJqb3JuClRoYW5rIHlvdSBmb3IgeW91ciBwcm9tcHQgcmVwbHkgYW5kIGhlbHBmdWwg
Y29tbWVudHMuCgpMZSBqZXUuIDI2IGphbnYuIDIwMjMgw6AgMTU6NTIsIEJqb3JuIEhlbGdhYXMg
PGhlbGdhYXNAa2VybmVsLm9yZz4gYSDDqWNyaXQgOgo+Cj4gSGkgUmljaywKPgo+IFRoYW5rcyB2
ZXJ5IG11Y2ggZm9yIHlvdXIgd29yay4KPgo+IE9uIFRodSwgSmFuIDI2LCAyMDIzIGF0IDAyOjUw
OjQwUE0gKzAxMDAsIFJpY2sgV2VydGVuYnJvZWsgd3JvdGU6Cj4gPiBUaGlzIGlzIGEgc2VyaWVz
IG9mIHBhdGNoZXMgdGhhdCBmaXhlcyB0aGUgUENJZSBlbmRwb2ludCBjb250cm9sbGVyIGRyaXZl
cgo+ID4gZm9yIHRoZSBSb2NrY2hpcCBSSzMzOTkgU29DLiBJdCBpcyBiYXNlZCBvbiBMaW51eCBr
ZXJuZWwgNi4wLjE5Cj4gPgo+ID4gVGhlIG9yaWdpbmFsIGRyaXZlciBpbiBtYWlubGluZSBoYWQg
aXNzdWVzIGFuZCB3b3VsZCBub3QgYWxsb3cgZm9yIHRoZQo+ID4gUkszMzk5IHRvIG9wZXJhdGUg
aW4gUENJZSBlbmRwb2ludCBtb2RlLiBUaGlzIHBhdGNoIHNlcmllcyBmaXhlcyB0aGF0IHNvCj4g
PiB0aGF0IHRoZSBQQ0llIGNvcmUgY29udHJvbGxlciBvZiB0aGUgUkszMzk5IFNvQyBjYW4gbm93
IGFjdCBhcyBhIFBDSWUKPiA+IGVuZHBvaW50Lgo+Cj4gU28gd2UgbWVyZ2VkIGNmNTkwYjA3ODM5
MSAoIlBDSTogcm9ja2NoaXA6IEFkZCBFUCBkcml2ZXIgZm9yIFJvY2tjaGlwCj4gUENJZSBjb250
cm9sbGVyIikgd2hlbiBpdCBhY3R1YWxseSBkaWRuJ3Qgd29yaz8gIE91Y2guICBUaGFua3MgZm9y
Cj4gZml4aW5nIGl0IGFuZCB0ZXN0aW5nIGl0LgoKSXQgc2VlbXMgaXQgd2Fzbid0IGZ1bGx5IHRl
c3RlZCwgdGhlIGNvZGUgY29tcGlsZXMgYW5kIGtlcm5lbCBtb2R1bGUgbG9hZHMsCmJ1dCBmdXJ0
aGVyIGZ1bmN0aW9uYWxpdHkgZGlkbid0IHNlZW0gdG8gaGF2ZSBiZWVuIHRlc3RlZAooZS5nLiwg
bHNwY2ksIGFuZCB3aXRoIHRoZSBwY2l0ZXN0IHRvb2wgYW5kIHBjaV9lbmRwb2l0X3Rlc3RfZHJp
dmVyKS4KCj4KPiBGb3IgdGhlIG5leHQgaXRlcmF0aW9uLCBjYW4geW91IHBsZWFzZSB1cGRhdGUg
dGhlc2Ugc3ViamVjdCBsaW5lcyBhbmQKPiBjb21taXQgbG9ncyB0bzoKClRoYW5rIHlvdSwgSSB3
aWxsIHByZXBhcmUgdGhlIGNoYW5nZXMgYW5kIGFkZCB0aGVtIHRvIHRoZSBuZXh0IGl0ZXJhdGlv
bgp3aXRoIGNoYW5nZXMgZnJvbSBvdGhlciBjb21tZW50cyB0aGF0IG1heSBhcmlzZS4KCj4KPiAg
IC0gVXNlIGltcGVyYXRpdmUgbW9vZCwgaS5lLiwgcmVhZCBsaWtlIGEgY29tbWFuZCwgaW5zdGVh
ZCBvZiBhIHBhc3QKPiAgICAgdGVuc2UgZGVzY3JpcHRpb24gb2Ygd2hhdCB3YXMgZG9uZS4gIEZv
ciBleGFtcGxlLCBzYXkgIlJlbW92ZQo+ICAgICB3cml0ZXMgdG8gdW51c2VkIHJlZ2lzdGVycyIg
aW5zdGVhZCBvZiAiUmVtb3ZlZCB3cml0ZXMgLi4uIgo+Cj4gICAtIEJlIG1vcmUgc3BlY2lmaWMg
d2hlbiBwb3NzaWJsZS4gICJGaXgiIGNvbnZleXMgbm8gaW5mb3JtYXRpb24KPiAgICAgYWJvdXQg
dGhlIGFjdHVhbCBjb2RlIGNoYW5nZS4gIEZvciBleGFtcGxlLCAiRml4ZWQgZW5kcG9pbnQKPiAg
ICAgY29udHJvbGxlciBDb25maWd1cmF0aW9uIFJlcXVlc3QgUmV0cnkgU3RhdHVzIiBnaXZlcyBh
IGdlbmVyYWwKPiAgICAgaWRlYSwgYnV0IGl0IHdvdWxkIGJlIG1vcmUgdXNlZnVsIGlmIGl0IHNh
aWQgc29tZXRoaW5nIGFib3V0Cj4gICAgIGNsZWFyaW5nIGNvbmZpZyBtb2RlIGFmdGVyIHByb2Jl
Lgo+Cj4gICAtIFNheSB3aGF0IHRoZSBwYXRjaCBkb2VzIGluIHRoZSBjb21taXQgbG9nLiAgVGhl
IGN1cnJlbnQgb25lcyBvZnRlbgo+ICAgICBkZXNjcmliZSBhICpwcm9ibGVtKiwgYnV0IGRvIG5v
dCBleHBsaWNpdGx5IHNheSB3aGF0IHRoZSBwYXRjaAo+ICAgICBkb2VzLiAgVGhlIGNvbW1pdCBs
b2cgc2hvdWxkIGJlIGNvbXBsZXRlIGluIGl0c2VsZiBldmVuIHdpdGhvdXQKPiAgICAgdGhlIHN1
YmplY3QgbGluZSwgc28gaXQgdXN1YWxseSBjb250YWlucyBhIHNsaWdodGx5IGV4cGFuZGVkCj4g
ICAgIHZlcnNpb24gb2YgdGhlIHN1YmplY3QgbGluZS4KPgo+ICAgLSBTcGxpdCBwYXRjaGVzIHRo
YXQgZG8gbW9yZSB0aGFuIG9uZSBsb2dpY2FsIHRoaW5nLiAgVGhlIGNvbW1pdCBsb2cKPiAgICAg
Zm9yICJGaXhlZCBNU0kgZ2VuZXJhdGlvbiAuLi4iIHRhbGtzIGFib3V0IGEgdTE2L3UzMiBzaGlm
dCBpc3N1ZSwKPiAgICAgYnV0IHRoZSBwYXRjaCBhbHNvIGFkZHMgYW4gdW5yZWxhdGVkIGNoZWNr
IGZvciBtdWx0aS1mdW5jdGlvbgo+ICAgICBkZXZpY2VzLgoKSSB3aWxsLiBJIHRyaWVkIHRvIHNw
bGl0IGV2ZXJ5dGhpbmcgaW50byB0aGUgZnVuY3Rpb24gaXQgd2FzIHJlbGF0ZWQgdG8sIGJ1dCBJ
Cm5vdyB1bmRlcnN0YW5kIEkgc2hvdWxkIHNwbGl0IGV2ZW4gbW9yZSBzbyB0aGF0IHRoZSBjb21t
aXQgbWVzc2FnZQphbmQgY2hhbmdlcyBhcmUgbW9yZSB0aWdodGx5IGxpbmtlZC4KCj4KPiAgIC0g
SWYgYSBwYXRjaCBpcyBhIGZpeCBmb3IgYW4gZXhpc3RpbmcgaXNzdWUgYW5kIG1heSBuZWVkIHRv
IGJlCj4gICAgIGJhY2twb3J0ZWQsIGlkZW50aWZ5IHRoZSBjb21taXQgdGhhdCBpbnRyb2R1Y2Vk
IHRoZSBpc3N1ZSBhbmQgYWRkCj4gICAgICJGaXhlczogIiBsaW5lcy4gIFRoaXMgaGVscHMgZGlz
dHJvcyBmaWd1cmUgb3V0IHdoZXRoZXIgYW5kIGhvdwo+ICAgICBmYXIgdG8gYmFja3BvcnQgcGF0
Y2hlcy4KCkRvZXMgdGhpcyBtZWFuIEkgc2hvdWxkIHJlZmVyIHRvIHRoZSBjb21taXQgY2Y1OTBi
MDc4MzkxCigiUENJOiByb2NrY2hpcDogQWRkIEVQIGRyaXZlciBmb3IgUm9ja2NoaXAgUENJZSBj
b250cm9sbGVyIikgPwpCZWNhdXNlIGl0IHdhc24ndCB3b3JraW5nIGluIHRoZSBmaXJzdCBwbGFj
ZSA/Cgo+Cj4gICAtIFJlZmVyIHRvIHRoZSBkZXZpY2UgY29uc2lzdGVudGx5LiAgSSBzZWU6Cj4g
ICAgICAgUkszMzk5IFBDSSBFUCBjb3JlCj4gICAgICAgUkszMzk5IFNvQyBQQ0llIEVQIGNvcmUK
PiAgICAgICBSSzMzOTkgUENJZSBlbmRwb2ludCBjb3JlCj4gICAgIEkgdm90ZSBmb3IgIlJLMzM5
OSBQQ0llIEVuZHBvaW50IGNvcmUiLgoKSSBhZ3JlZS4KCj4KPiBOb3RlcyBhYm91dCBpbXBlcmF0
aXZlIG1vb2Q6Cj4gICBodHRwczovL2NocmlzLmJlYW1zLmlvL3Bvc3RzL2dpdC1jb21taXQvCj4g
ICBodHRwczovL2dpdC5rZXJuZWwub3JnL3B1Yi9zY20vbGludXgva2VybmVsL2dpdC90b3J2YWxk
cy9saW51eC5naXQvdHJlZS9Eb2N1bWVudGF0aW9uL3Byb2Nlc3Mvc3VibWl0dGluZy1wYXRjaGVz
LnJzdD9pZD12Ni4wI245NAoKVGhhbmsgeW91IGZvciBhbGwgdGhlIHBvaW50ZXJzLCBJJ2xsIHRh
a2UgdGhlbSBpbnRvIGFjY291bnQgZm9yIHRoZQpuZXh0IGl0ZXJhdGlvbi4gVGhpcyBpcyB0aGUg
Zmlyc3QgdGltZSBJIGFjdHVhbGx5IHN1Ym1pdHRlZCBhIHNlcmllcyBvZgpwYXRjaGVzIHRvIHRo
ZSBMS01MIHNvIGl0J3MgYWxsIHJlbGF0aXZlbHkgbmV3IHRvIG1lLgoKX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBs
aXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
