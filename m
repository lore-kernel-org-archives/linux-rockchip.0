Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6858CC6FD1C
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Mar 2023 14:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PIla202bQuCdxychZHatCLLWgmJg1aYWrKMlKv9Ssv8=; b=QmuAvRN9hqx12e
	5gwmCKB+G/ZlX2PrQbkzjyyX/7Vlo9mY1aL4keoMbhwsgo6gMbzIwyTD22N1uei6jTVLxOlhnXliU
	dFsRlK5mWVfuAwRgDq1USQLo16k1e9SnK+T7FwnadX0mzExagZ+N3RzLDL49Y0x4yU8bshQzYAb50
	3jjRzfYm3fK/mp3zHGgpYwXhRWXmi4VF8gWzplAyctmp/LfvFwC+eKY7ghffCSERF0/ToeTOpKIZG
	VDsfPA2sLCs5s2ak0vlPSuhAW6FNM6dOideIoukTBWJjg9hs1GbANyW2c8z9C5yDr4O2L9TF0RkEK
	2twuR2ck4ZMgDMEa599Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc62B-00AWZL-0W;
	Tue, 14 Mar 2023 14:53:51 +0000
Received: from mail-oo1-xc2c.google.com ([2607:f8b0:4864:20::c2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc627-00AWYY-1e;
	Tue, 14 Mar 2023 14:53:49 +0000
Received: by mail-oo1-xc2c.google.com with SMTP id o19-20020a056820041300b005259de79accso2349332oou.9;
        Tue, 14 Mar 2023 07:53:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678805626;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W4xB8YFLKwjGCy/SgLdu52hAdc8I/Bw00GcLZgZWTsU=;
        b=e3tkB3wmBpYkJNnmxSWP5pw47gHfyMTpSf/OGbrp4iaYBllcNr3vj+it6hnwaOZR+O
         nGR0NB+GH8IbCR5qUPsi2fU5ipan9a9OcZqskHwGE7ql37fFvP/LEtf/oR3PYDoSaX1Y
         4kS0xwC5FvLJSRmGQjqqB1PReF3l3c5JgGsR+KH9dC1rfUcg3pXn75ZBXKtUUzXT00fn
         FaAHo+WF5yDbhg/l6jyqdNmoTXsiQDcDK42P0POY9VH7jMYnG+BHDaUTzPwgSNxWtnYO
         X9lXswWNMW0V46q+OthKbbm7PjqQJ5ukntmyX2SmXoHEkE+xEC7glv3BfdhYgcQuh/vY
         lMIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678805626;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W4xB8YFLKwjGCy/SgLdu52hAdc8I/Bw00GcLZgZWTsU=;
        b=DLF5JHuRTeVKz2GXG+GA4vOfLE2mGemYfaiFayPTH3HffH92atU0fXw7a94J5u75Yx
         98vmLD5Pvwc9QTJJp1TPieCWAfWtqMe+OcteBJp0EXtC0i0IP9Xs+kJSOSEAqeWTX5Us
         /I/0iZ0E0hdR3z154DRextH0vx/Jdhfy+Ys8ktGj1tkrqLyhyUCn/8kzwHDORac0bt5L
         +SNWTkPlUtPNgX2TneyqSI+tmMIMwTyLqUVaOldUGWE9OOj/XgdU4WZMFyQonSBkJReS
         U+IiUU89KK9i4m36dSNK4lk/MZOvaq3/H7thbPeFEcOtfTe/+lKFBZI6bv1Og81poW66
         DbPg==
X-Gm-Message-State: AO0yUKX/g/socQdRIlNrd3j6dMR95FJ0OxNjyGfhJG0gIrx1//D6Mgp5
	cW2fJxdtpXam3Q9eGehSVf57LDAiYVKQ/vuk+fE=
X-Google-Smtp-Source: AK7set+Vbh8WigjwKyxtopSnp2Zi/JlEdRaNuOA7bBY6hnDUKltx7BMj0s8lTr2SsXRyzTQtBY9t4KEQVZs0Im/YJ8Q=
X-Received: by 2002:a4a:ca0c:0:b0:525:45d5:9de9 with SMTP id
 w12-20020a4aca0c000000b0052545d59de9mr14137931ooq.0.1678805626127; Tue, 14
 Mar 2023 07:53:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230214140858.1133292-1-rick.wertenbroek@gmail.com>
 <ecd09f27-b799-4741-2c5a-a2de99776c51@opensource.wdc.com> <CAAEEuhrk4cSC312UiAL3UwoDZ=urrdDcBThcNHd1dqnAuJTzAw@mail.gmail.com>
 <3c4ed614-f088-928f-2807-deaa5e4b668a@opensource.wdc.com>
In-Reply-To: <3c4ed614-f088-928f-2807-deaa5e4b668a@opensource.wdc.com>
From: Rick Wertenbroek <rick.wertenbroek@gmail.com>
Date: Tue, 14 Mar 2023 15:53:09 +0100
Message-ID: <CAAEEuhqk0scWd3wFbVb9fSgHxPBKotpEPNi+YPG4GD9vLO94mw@mail.gmail.com>
Subject: Re: [PATCH v2 0/9] PCI: rockchip: Fix RK3399 PCIe endpoint controller driver
To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: alberto.dassatti@heig-vd.ch, xxm@rock-chips.com, 
	rick.wertenbroek@heig-vd.ch, Rob Herring <robh+dt@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Shawn Lin <shawn.lin@rock-chips.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Bjorn Helgaas <bhelgaas@google.com>, Jani Nikula <jani.nikula@intel.com>, 
	Rodrigo Vivi <rodrigo.vivi@intel.com>, Mikko Kovanen <mikko.kovanen@aavamobile.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_075347_555696_D025F907 
X-CRM114-Status: GOOD (  45.44  )
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

T24gVHVlLCBNYXIgMTQsIDIwMjMgYXQgOToxMOKAr0FNIERhbWllbiBMZSBNb2FsCjxkYW1pZW4u
bGVtb2FsQG9wZW5zb3VyY2Uud2RjLmNvbT4gd3JvdGU6Cj4KPiBPbiAzLzE0LzIzIDE2OjU3LCBS
aWNrIFdlcnRlbmJyb2VrIHdyb3RlOgo+ID4gT24gVHVlLCBNYXIgMTQsIDIwMjMgYXQgMTowMuKA
r0FNIERhbWllbiBMZSBNb2FsCj4gPiA8ZGFtaWVuLmxlbW9hbEBvcGVuc291cmNlLndkYy5jb20+
IHdyb3RlOgo+ID4+Cj4gPj4gT24gMi8xNC8yMyAyMzowOCwgUmljayBXZXJ0ZW5icm9layB3cm90
ZToKPiA+Pj4gVGhpcyBpcyBhIHNlcmllcyBvZiBwYXRjaGVzIHRoYXQgZml4ZXMgdGhlIFBDSWUg
ZW5kcG9pbnQgY29udHJvbGxlciBkcml2ZXIKPiA+Pj4gZm9yIHRoZSBSb2NrY2hpcCBSSzMzOTkg
U29DLiBUaGUgZHJpdmVyIHdhcyBpbnRyb2R1Y2VkIGluCj4gPj4+IGNmNTkwYjA3ODM5MSAoIlBD
STogcm9ja2NoaXA6IEFkZCBFUCBkcml2ZXIgZm9yIFJvY2tjaGlwIFBDSWUgY29udHJvbGxlciIp
Cj4gPj4+IFRoZSBvcmlnaW5hbCBkcml2ZXIgaGFkIGlzc3VlcyBhbmQgd291bGQgbm90IGFsbG93
IGZvciB0aGUgUkszMzk5IHRvCj4gPj4+IG9wZXJhdGUgaW4gUENJZSBlbmRwb2ludCBtb2RlIGNv
cnJlY3RseS4gVGhpcyBwYXRjaCBzZXJpZXMgZml4ZXMgdGhhdCBzbwo+ID4+PiB0aGF0IHRoZSBQ
Q0llIGNvcmUgY29udHJvbGxlciBvZiB0aGUgUkszMzk5IFNvQyBjYW4gbm93IGFjdCBhcyBhIFBD
SWUKPiA+Pj4gZW5kcG9pbnQuIFRoaXMgaXMgdjIgb2YgdGhlIHBhdGNoIHNlcmllcyBhbmQgYWRk
cmVzc2VzIHRoZSBjb25jZXJucyB0aGF0Cj4gPj4+IHdlcmUgcmFpc2VkIGR1cmluZyB0aGUgcmV2
aWV3IG9mIHRoZSBmaXJzdCB2ZXJzaW9uLgo+ID4+Cj4gPj4gUmljaywKPiA+Pgo+ID4+IEFyZSB5
b3UgZ29pbmcgdG8gc2VuZCBhIHJlYmFzZWQgVjMgc29vbiA/IEkgaGF2ZSBhIGNvdXBsZSBvZiBh
ZGRpdGlvbmFsCj4gPj4gcGF0Y2hlcyB0byBhZGQgb24gdG9wIG9mIHlvdXIgc2VyaWVzLi4uCj4g
Pj4KPiA+Cj4gPiBJJ2xsIHRyeSB0byBzZW5kIGEgVjMgdGhpcyB3ZWVrLiBUaGUgY2hhbmdlcyB0
byBWMiB3aWxsIGJlIHRoZSBpc3N1ZXMKPiA+IHJhaXNlZCBhbmQgZGlzY3Vzc2VkIG9uIHRoZSBW
MiBoZXJlIGluIHRoZSBtYWlsaW5nIGxpc3Qgd2l0aCB0aGUgYWRkaXRpb25hbAo+ID4gY29kZSBm
b3IgcmVtb3ZpbmcgdGhlIHVuc3VwcG9ydGVkIE1TSS1YIGNhcGFiaWxpdHkgbGlzdCAod2FzIGRp
c2N1c3NlZAo+ID4gaW4gdGhlIG1haWxpbmcgbGlzdCBhcyB3ZWxsKS4KPgo+IFRoYW5rcy4KPgo+
IEFkZGl0aW9uYWwgcGF0Y2ggbmVlZGVkIHRvIGF2b2lkIHByb2JsZW1zIHdpdGggdGhpcyBjb250
cm9sbGVyIGlzIHRoYXQKPiB3ZSBuZWVkIHRvIHNldCAiLmFsaWduID0gMjU2IiBpbiB0aGUgZmVh
dHVyZXMuIE90aGVyd2lzZSwgdGhpbmdzIGRvIG5vdAo+IHdvcmsgd2VsbC4gVGhpcyBpcyBiZWNh
dXNlIHRoZSBBVFUgZHJvcHMgdGhlIGxvdyA4LWJpdHMgb2YgdGhlIFBDSQo+IGFkZHJlc3Nlcy4g
SXQgaXMgYSBvbmUgbGluZXIgcGF0Y2gsIHNvIGZlZWwgZnJlZSB0byBhZGQgaXQgdG8geW91ciBz
ZXJpZXMuCj4KPiBJIGFsc28gbm90aWNlZCByYW5kb20gaXNzdWVzIHdpY2ggc2VlbSB0byBiZSBk
dWUgdG8gbGluay11cCB0aW1pbmcuLi4gV2UKPiBwcm9iYWJseSB3aWxsIG5lZWQgdG8gaW1wbGVt
ZW50IGEgcG9sbCB0aHJlYWQgdG8gZGV0ZWN0IGFuZCBub3RpZnkgd2l0aAo+IHRoZSBsaW5rdXAg
Y2FsbGJhY2sgd2hlbiB3ZSBhY3R1YWxseSBoYXZlIHRoZSBsaW5rIGVzdGFibGlzaGVkIHdpdGgg
dGhlCj4gaG9zdCAoc2VlIHRoZSBkdy1lcCBjb250cm9sbGVyIHdoaWNoIGRvZXMgc29tZXRoaW5n
IHNpbWlsYXIpLgo+CgpIZWxsbyBEYW1pZW4sCkkgYWxzbyBub3RpY2VkIHJhbmRvbSBpc3N1ZXMg
SSBzdXNwZWN0IHRvIGJlIHJlbGF0ZWQgdG8gbGluayBzdGF0dXMgb3IgcG93ZXIKc3RhdGUsIGlu
IG15IGNhc2UgaXQgc29tZXRpbWVzIGhhcHBlbnMgdGhhdCB0aGUgQkFScyAoMC02KSBpbiB0aGUg
Y29uZmlnCnNwYWNlIGdldCByZXNldCB0byAwLiBUaGlzIGlzIG5vdCBkdWUgdG8gdGhlIGRyaXZl
ciBiZWNhdXNlIHRoZSBkcml2ZXIgbmV2ZXIKZXZlciBhY2Nlc3NlcyB0aGVzZSByZWdpc3RlcnMg
KEAweGZkODAnMDAxMCB0byAweGZkODAnMDAyNCBUUk0KMTcuNi40LjEuNS0xNy42LjQuMS4xMCku
CkkgZG9uJ3QgdGhpbmsgdGhlIGhvc3QgcmV3cml0ZXMgdGhlbSBiZWNhdXNlIGxzcGNpIHNob3dz
IHRoZSBCQVJzIGFzCiJbdmlydHVhbF0iIHdoaWNoIG1lYW5zIHRoZXkgaGF2ZSBiZWVuIGFzc2ln
bmVkIGJ5IGhvc3QgYnV0IGhhdmUgMAp2YWx1ZSBpbiB0aGUgZW5kcG9pbnQgZGV2aWNlICh3aGVu
IGxzcGNpIHJlcmVhZHMgdGhlIFBDSSBjb25maWcgaGVhZGVyKS4KU2VlIGh0dHBzOi8vZ2l0aHVi
LmNvbS9wY2l1dGlscy9wY2l1dGlscy9ibG9iL21hc3Rlci9sc3BjaS5jI0w0MjIKClNvIEkgc3Vz
cGVjdCB0aGUgY29udHJvbGxlciBkZXRlY3RzIHNvbWV0aGluZyByZWxhdGVkIHRvIGxpbmsgc3Rh
dHVzIG9yCnBvd2VyIHN0YXRlIGFuZCBpbnRlcm5hbGx5IChpbiBoYXJkd2FyZSkgcmVzZXRzIHRo
b3NlIHJlZ2lzdGVycy4gSXQncyBub3QKdGhlIGtlcm5lbCBjb2RlLCBpdCBuZXZlciBhY2Nlc3Nl
cyB0aGVzZSByZWdzLiBUaGUgcHJvYmxlbSBvY2N1cnMKdmVyeSByYW5kb21seSwgc29tZXRpbWVz
IGluIGEgZmV3IHNlY29uZHMsIHNvbWV0aW1lcyBJIGNhbm5vdCBzZWUKaXQgZm9yIGEgd2hvbGUg
ZGF5LgoKSXMgdGhpcyBzaW1pbGFyIHRvIHdoYXQgeW91IGFyZSBleHBlcmllbmNpbmcgPwpEbyB5
b3UgaGF2ZSBhbnkgaWRlYSBhcyB0byB3aGF0IGNvdWxkIG1ha2UgdGhlc2UgcmVnaXN0ZXJzIHRv
IGJlIHJlc2V0CihJIGNvdWxkIG5vdCBmaW5kIGFueXRoaW5nIGluIHRoZSBUUk0sIGFsc28gbm90
aGluZyBpbiB0aGUgZHJpdmVyIHNlZW1zIHRvCmNhdXNlIGl0KS4KCj4KPiBGcm9tOiBEYW1pZW4g
TGUgTW9hbCA8ZGFtaWVuLmxlbW9hbEBvcGVuc291cmNlLndkYy5jb20+Cj4gRGF0ZTogVGh1LCA5
IE1hciAyMDIzIDE2OjM3OjI0ICswOTAwCj4gU3ViamVjdDogW1BBVENIXSBQQ0k6IHJvY2tjaGlw
OiBTZXQgYWRkcmVzcyBhbGlnbm1lbnQgZm9yIGVuZHBvaW50IG1vZGUKPgo+IFRoZSBhZGRyZXNz
IHRyYW5zbGF0aW9uIHVuaXQgb2YgdGhlIHJvY2tjaGlwIEVQIGNvbnRyb2xsZXIgZG9lcyBub3Qg
dXNlCj4gdGhlIGxvd2VyIDggYml0cyBvZiBhIFBDSWUtc3BhY2UgYWRkcmVzcyB0byBtYXAgbG9j
YWwgbWVtb3J5LiBUaHVzIHdlCj4gbXVzdCBzZXQgdGhlIGFsaWduIGZlYXR1cmUgZmllbGQgdG8g
MjU2IHRvIGxldCB0aGUgdXNlciBrbm93IGFib3V0IHRoaXMKPiBjb25zdHJhaW50Lgo+Cj4gU2ln
bmVkLW9mZi1ieTogRGFtaWVuIExlIE1vYWwgPGRhbWllbi5sZW1vYWxAb3BlbnNvdXJjZS53ZGMu
Y29tPgo+IC0tLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYyB8
IDEgKwo+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKPgo+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAtZXAuYwo+IGIvZHJpdmVycy9wY2kv
Y29udHJvbGxlci9wY2llLXJvY2tjaGlwLWVwLmMKPiBpbmRleCAxMmRiOWE5ZDkyYWYuLmM2YTIz
ZGI4NDk2NyAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2No
aXAtZXAuYwo+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC1lcC5j
Cj4gQEAgLTQ3MSw2ICs0NzEsNyBAQCBzdGF0aWMgY29uc3Qgc3RydWN0IHBjaV9lcGNfZmVhdHVy
ZXMKPiByb2NrY2hpcF9wY2llX2VwY19mZWF0dXJlcyA9IHsKPiAgICAgICAgIC5saW5rdXBfbm90
aWZpZXIgPSBmYWxzZSwKPiAgICAgICAgIC5tc2lfY2FwYWJsZSA9IHRydWUsCj4gICAgICAgICAu
bXNpeF9jYXBhYmxlID0gZmFsc2UsCj4gKyAgICAgICAuYWxpZ24gPSAyNTYsCj4gIH07Cj4KPiAg
c3RhdGljIGNvbnN0IHN0cnVjdCBwY2lfZXBjX2ZlYXR1cmVzKgo+IC0tCj4gMi4zOS4yCj4KPgo+
IC0tCj4gRGFtaWVuIExlIE1vYWwKPiBXZXN0ZXJuIERpZ2l0YWwgUmVzZWFyY2gKPgoKRG8geW91
IHdhbnQgbWUgdG8gaW5jbHVkZSB0aGlzIHBhdGNoIGluIHRoZSBWMyBzZXJpZXMgb3Igd2lsbCB5
b3UKc3VibWl0IGFub3RoZXIgcGF0Y2ggc2VyaWVzIGZvciB0aGUgY2hhbmdlcyB5b3UgYXBwbGll
ZCBvbiB0aGUgUkszMzk5IFBDSWUKZW5kcG9pbnQgY29udHJvbGxlciA/IEkgZG9uJ3Qga25vdyBp
ZiB5b3UgcHJlZmVyIHRvIGJ1aWxkIHRoZSBWMwp0b2dldGhlciBvciBpZiB5b3UKcHJlZmVyIHRv
IHN1Ym1pdCBhbm90aGVyIHBhdGNoIHNlcmllcyBvbiB0b3Agb2YgbWluZS4gTGV0IG1lIGtub3cu
CgpCZXN0IHJlZ2FyZHMuClJpY2sKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
