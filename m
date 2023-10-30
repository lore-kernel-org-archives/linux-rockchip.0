Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BD6B8C4332F
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Oct 2023 17:39:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LDOzQ5DeTz4ikWqImbrp6v2xQLF4ZZqXWBmVWQQz+N0=; b=LyhIde60Xtb9Sf
	55goLGT9KSvz5f/w4eDJ/LTwi5FawoLq7kUz4OuJXYMkxTCKqJJ1KkELYpL6ZSnac/OhP9pKoh0EX
	TtZH2laOa+BP09MNPSme2Rva3yb/S5mf53OtB5Z02MEz4pUFjvqV6j48E30gwwIf4G7/rePyQvIqF
	tJQ+3v+qgHMpnAtcLhm0QgyPn9pcauUdpc/0nG9dypGZFdbxhPV4DozXHplk3b+kw5yJ3XnkOIKz0
	34Rh8dOSDbY87fBKFDkaoGOG255XRx2D5KBnur/76oPiSDhTecMqtPxn81JwevMmwIts05Bq3o6Vr
	HPnRz+gKqlwHvrF2enmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qxWER-003mVz-1r;
	Mon, 30 Oct 2023 17:39:19 +0000
Received: from mail-ot1-f42.google.com ([209.85.210.42])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qxWEO-003mUl-1n;
	Mon, 30 Oct 2023 17:39:18 +0000
Received: by mail-ot1-f42.google.com with SMTP id 46e09a7af769-6ce2c71c61fso2777342a34.1;
        Mon, 30 Oct 2023 10:39:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698687554; x=1699292354;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uL5sPl/w8vDjf8pBGkQ+f7hcgojiJXVMhJqzcYyf7Xo=;
        b=JgCMm4W9uInxq3gJ8et/gTPj9fwE5uRKUxlkNHcbyxCgi6nMvz9Y+tTvGyFu3fUP6M
         Krzo0+wAiDmJM9vsLds+Y2aQllz73VX0/Ca8n1Eo5QYnKjGH0QxrfFjgQqPYC1LzqRcU
         7m0LGT1izOAu8Re1SjP6ZR2h1HCeWLRX7UiGln2QijXNKK5IGApLtdZ8TesGw8ZwrFOJ
         K1bIQk4M13tz3/XlvHS8ERo0gG5vdeZT2MAwk9Rv/9aXNG+u2Kt/3jg1oJwqnNxFPbFk
         DM2+libkeO6b3dhDMAr17dN14rUdxMDDppiKRZz7qhekgJfHwL1EUWRsRRjIig4TfFMR
         wb/A==
X-Gm-Message-State: AOJu0YzR55W+EREU4kVS3SLyf3xdm9K9TmW8Vn1WQmCNr8CvsDzxJLy3
	0gxFq3LiIPgBYLjZNxeLkA==
X-Google-Smtp-Source: AGHT+IGSdyjzY+Dn3bq4Bh7ap3Gr2pddOrv8053BF0SjTVwXZIpxBstB5fwM7hv+revgOdMeLxprvA==
X-Received: by 2002:a05:6830:16:b0:6be:fd51:cb6d with SMTP id c22-20020a056830001600b006befd51cb6dmr8298349otp.31.1698687554377;
        Mon, 30 Oct 2023 10:39:14 -0700 (PDT)
Received: from herring.priv ([2607:fb91:e6c7:c3eb:a6fd:69b4:aba3:6929])
        by smtp.gmail.com with ESMTPSA id d15-20020a4ae82f000000b0057b74352e3asm1829619ood.25.2023.10.30.10.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Oct 2023 10:39:13 -0700 (PDT)
Received: (nullmailer pid 1558666 invoked by uid 1000);
	Mon, 30 Oct 2023 17:39:11 -0000
Date: Mon, 30 Oct 2023 12:39:11 -0500
From: Rob Herring <robh@kernel.org>
To: Niklas Cassel <Niklas.Cassel@wdc.com>
Cc: Niklas Cassel <nks@flawful.org>, Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>, Bjorn Helgaas <bhelgaas@google.com>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>, Damien Le Moal <dlemoal@kernel.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Serge Semin <fancer.lancer@gmail.com>, "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>, "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>, "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH v3 1/6] dt-bindings: PCI: dwc: rockchip: Add mandatory
 atu reg
Message-ID: <20231030173911.GA1483352-robh@kernel.org>
References: <20231027145422.40265-1-nks@flawful.org>
 <20231027145422.40265-2-nks@flawful.org>
 <CAL_JsqJh6aJb7_qsVnVNEABBg2utf0FPN+qYyOfsF2dAfZpd0w@mail.gmail.com>
 <ZTvh51PGCBhSjURY@x1-carbon>
 <CAL_JsqKu9VxUrEbvyV0EFi-HhXstitu1sk0jQpbYqTDKY4N3=A@mail.gmail.com>
 <ZTz6VaFtO28JZw48@x1-carbon>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ZTz6VaFtO28JZw48@x1-carbon>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231030_103916_597928_3E3DC738 
X-CRM114-Status: GOOD (  47.50  )
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

T24gU2F0LCBPY3QgMjgsIDIwMjMgYXQgMTI6MTE6MDJQTSArMDAwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBGcmksIE9jdCAyNywgMjAyMyBhdCAxMjowMzoxNVBNIC0wNTAwLCBSb2IgSGVy
cmluZyB3cm90ZToKPiA+IE9uIEZyaSwgT2N0IDI3LCAyMDIzIGF0IDExOjE14oCvQU0gTmlrbGFz
IENhc3NlbCA8TmlrbGFzLkNhc3NlbEB3ZGMuY29tPiB3cm90ZToKPiA+ID4KPiA+ID4gSGVsbG8g
Um9iLAo+ID4gPgo+ID4gPiBPbiBGcmksIE9jdCAyNywgMjAyMyBhdCAxMDo1ODoyOEFNIC0wNTAw
LCBSb2IgSGVycmluZyB3cm90ZToKPiA+ID4gPiBPbiBGcmksIE9jdCAyNywgMjAyMyBhdCA5OjU2
4oCvQU0gTmlrbGFzIENhc3NlbCA8bmtzQGZsYXdmdWwub3JnPiB3cm90ZToKPiA+ID4gPiA+Cj4g
PiA+ID4gPiBGcm9tOiBOaWtsYXMgQ2Fzc2VsIDxuaWtsYXMuY2Fzc2VsQHdkYy5jb20+Cj4gPiA+
ID4gPgo+ID4gPiA+ID4gRXZlbiB0aG91Z2ggcm9ja2NoaXAtZHctcGNpZS55YW1sIGluaGVyaXRz
IHNucHMsZHctcGNpZS55YW1sCj4gPiA+ID4gPiB1c2luZzoKPiA+ID4gPiA+Cj4gPiA+ID4gPiBh
bGxPZjoKPiA+ID4gPiA+ICAgLSAkcmVmOiAvc2NoZW1hcy9wY2kvc25wcyxkdy1wY2llLnlhbWwj
Cj4gPiA+ID4gPgo+ID4gPiA+ID4gYW5kIHNucHMsZHctcGNpZS55YW1sIGRvZXMgaGF2ZSB0aGUg
YXR1IHJlZyBkZWZpbmVkLCBpbiBvcmRlciB0byBiZQo+ID4gPiA+ID4gYWJsZSB0byB1c2UgdGhp
cyByZWcsIHdoaWxlIHN0aWxsIG1ha2luZyBzdXJlICdtYWtlIENIRUNLX0RUQlM9eScKPiA+ID4g
PiA+IHBhc3MsIHdlIG5lZWQgdG8gYWRkIHRoaXMgcmVnIHRvIHJvY2tjaGlwLWR3LXBjaWUueWFt
bC4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBBbGwgY29tcGF0aWJsZSBzdHJpbmdzIChyb2NrY2hpcCxy
azM1NjgtcGNpZSBhbmQgcm9ja2NoaXAscmszNTg4LXBjaWUpCj4gPiA+ID4gPiBzaG91bGQgaGF2
ZSB0aGlzIHJlZy4KPiA+ID4gPiA+Cj4gPiA+ID4gPiBUaGUgcmVncyBpbiB0aGUgZXhhbXBsZSBh
cmUgdXBkYXRlZCB0byBhY3R1YWxseSBtYXRjaCBwY2llM3gyIG9uIHJrMzU2OC4KPiA+ID4gPgo+
ID4gPiA+IEJyZWFraW5nIGNvbXBhdGliaWxpdHkgb24gdGhlc2UgcGxhdGZvcm1zIGlzIG9rYXkg
YmVjYXVzZSAuLi4/Cj4gPiA+Cj4gPiA+IEkgZG9uJ3QgZm9sbG93LCBjb3VsZCB5b3UgcGxlYXNl
IGVsYWJvcmF0ZT8KPiA+IAo+ID4gQSBEVCB3aGljaCB3YXMgdmFsaWQgd2l0aG91dCAnYXR1JyBy
ZWdpb24gaXMgbm93IG5vdCB2YWxpZCB3aXRoIHRoaXMKPiA+IGNoYW5nZS4gSWYgSSdtIHJlYWRp
bmcgdGhpcyBzY2hlbWEgd2l0aCB0aGUgY2hhbmdlLCB0aGVuIG5vdCBoYXZpbmcKPiA+ICdhdHUn
IGlzIGFuIGVycm9yIGFuZCB0aGUgT1MgY2FuIHRyZWF0IGl0IGFzIGFuIGVycm9yLiBJZiBpdCBk
b2VzLAo+ID4gdGhlbiBpdCB3b3VsZG4ndCB3b3JrIHdpdGggZXhpc3RpbmcgRFRzLiBZb3UgY2Fu
bm90IGFkZCBuZXcgcmVxdWlyZWQKPiA+IHByb3BlcnRpZXMgb3IgcmVxdWlyZWQgZW50cmllcy4K
PiA+IAo+ID4gSWYgeW91IGNhbiBzYXkgbm8gdXNlcnMgb2YgdGhlIGFmZmVjdGVkIHBsYXRmb3Jt
cyBjYXJlIChlLmcuIG9ubHkgeW91Cj4gPiBoYXZlIGEgYm9hcmQpIG9yIHRoZSBiaW5kaW5nIGlz
IG5vdCB5ZXQgaW4gdXNlLCB0aGVuIGl0J3MgZmluZS4gQnV0Cj4gPiB5b3UgaGF2ZSB0byBzdGF0
ZSB0aGF0IGp1c3RpZmljYXRpb24uIEkgc3VzcGVjdCB0aGF0IGlzIG5vdCB0aGUgY2FzZQo+ID4g
aGVyZS4KPiAKPiBGV0lXLCBJIGhhZCAiYXR1IiBhcyBvcHRpb25hbCBpbiB2MiBvZiB0aGlzIHNl
cmllcy4KClJpZ2h0LCB0aGF0IHdhcyAiY29ycmVjdCIuCgo+IFNpbmNlIEkgbWFkZSB0aGUgZWZm
b3J0IGluIHYzIHRvIGFkZCAiYXR1IiB0byBhbGwgdGhlIGV4aXN0aW5nIHVzZXJzIG9mIHRoZQo+
IHJvY2tjaGlwIGJpbmRpbmcsIEkgdGhvdWdodCB0aGF0IG1hcmtpbmcgaXQgcmVxdWlyZWQgaW4g
dGhlIHJvY2tjaGlwIGJpbmRpbmcKPiB3b3VsZCBoZWxwIGVuc3VyZSB0aGF0IGFueSBmdXR1cmUg
cm9ja2NoaXAgcGxhdGZvcm0gZG9lcyBub3QgZm9yZ2V0IHRvIGFkZAo+ICJhdHUiLgoKSXQgd291
bGQgbmljZSB0byB0ZXN0IGJvdGggdGhpcyBraW5kIG9mIHRoaW5nIGFuZCBjb21wYXRpYmlsaXR5
LiBUaGUgCm9ubHkgd2F5IEkga25vdyBvZiB0byBkbyB0aGF0IGlzIHdpdGggJ2RlcHJlY2F0ZWQn
IGtleXdvcmQgd2hpY2ggc3RpbGwgCm5lZWRzIHN1cHBvcnQgaW4gZHRzY2hlbWEgdG8gcmVtb3Zl
IGFsbCB0aGUgZGVwcmVjYXRlZCBzY2hlbWFzICh3aGljaCAKd291bGQgdGhlbiBjYXVzZSB3YXJu
aW5ncykuIFRoYXQncyBub3QgaGFyZCwgSSBqdXN0IGhhdmVuJ3QgZG9uZSBpdCAKeWV0LgoKVG8g
dXNlICdkZXByZWNhdGVkJyBoZXJlLCB5b3UgY291bGQgZG8gc29tZXRoaW5nIGxpa2UgdGhpczoK
Cml0ZW1zOgogIC0gLi4uCiAgLSAuLi4KICAtIC4uLgogIC0gLi4uCmFsbE9mOgogIC0gZGVwcmVj
YXRlZDogdHJ1ZQogICAgbWluSXRlbXM6IDMKCkhvd2V2ZXIsIHRoYXQgd291bGQgYWxzbyBub3Qg
d29yayBiZWNhdXNlIHdlIGltcGxpY2l0bHkgYWRkICdtaW5JdGVtczogCjQnLCBidXQgdGhhdCBj
b3VsZCBiZSBmaXhlZC4KCkZvciAncmVxdWlyZWQnLCB3ZSdkIG5lZWQgYSAnb25lT2YnIHdpdGgg
MiBsaXN0cyBvZiByZXF1aXJlZCBwcm9wZXJ0aWVzIAp3aGljaCBpcyBraW5kIG9mIHVnbHkuCgoK
PiBJIGtub3cgdGhhdCBEVCBoYXMgdG8gYmUgYmFja3dhcmRzIGNvbXBhdGlibGUsIGJ1dCB0aGUg
ZGV2aWNlIGRyaXZlciB3b3Jrcwo+IGZpbmUgd2l0aCBhIERUIHRoYXQgbGFja3MgImF0dSIgKGV2
ZW4gdGhvdWdoIHlvdSB3aWxsIG5vdCBiZSBhYmxlIHRvIGRldGVjdAo+IGFsbCBpQVRVcyksIHNv
IGFuIG9sZCBEVCB3b3VsZCBzdGlsbCB3b3JrLgo+IAo+IEJ1dCB5ZXMsIHJ1bm5pbmcgbWFrZSBD
SEVDS19EVEJTPXkgd2l0aCB0aGUgbmV3IGJpbmRpbmcsIHdvdWxkIG5vdCBwYXNzIGZvcgo+IGFu
IG9sZCBEVC4KPiAKPiBJIGdldCB5b3VyIHBvaW50LCB5b3UgY2FuIG5ldmVyIGFkZCBhIHJlcXVp
cmVkIHByb3BlcnR5IG9yIGVudHJpZXMgdG8gYW4KPiBleGlzdGluZyBjb21wYXRpYmxlICh0aGlz
IGlzIGluIHVzZSkuCgpXZSBtYXkgdGVzdCBmb3IgdGhpcyBhdCBzb21lIHBvaW50LiBJIHdhbnQg
dG8gYmUgYWJsZSB0byB0ZXN0IGZvciBBQkkgCmJyZWFrcyByYXRoZXIgdGhhbiBjYXRjaCB0aGVt
IGluIHJldmlld3MuIFJpZ2h0IG5vdyBJJ20ganVzdCBraWNraW5nIAphcm91bmQgaWRlYXMgaW4g
bXkgaGVhZCBvbiBob3cgdG8gZG8gdGhhdC4uLgoKCj4gSWYgd2UgbG9vayBhdCBzbnBzLGR3LXBj
aWUueWFtbCwgImF0dSIgaXMgb3B0aW9uYWwsIHNvIHRoYXQgY29ycmVsYXRlcyB0bwo+IHRoZSBk
ZXZpY2UgZHJpdmVyIGJlaW5nIGFibGUgdG8gd29yayB3aXRob3V0ICJhdHUiIHNwZWNpZmllZC4K
PiAKPiBTaW5jZSB0aGUgcm9ja2NoaXAgZHJpdmVyIGRvZXNuJ3QgZ2V0ICJhdHUiIGl0c2VsZiwg
YnV0IHJlbGllcyBvbiB0aGUgY29tbW9uCj4gY29kZSB0byBnZXQgaXQsIGl0IHNob3VsZCBvYnZp
b3VzbHkgYmUgb3B0aW9uYWwgYWxzbyBmb3IgdGhlIHJvY2tjaGlwIGJpbmRpbmcuCgpUaGUgd2F5
IHRoaXMgYmluZGluZyB3b3JrcyBpcyBzbnBzLGR3LXBjaWUueWFtbCBkZWZpbmVzIHRoZSBzZXQg
b2YgCmNvbW1vbiBwcm9wZXJ0aWVzLiBUaGUgU29DIHNwZWNpZmljIGJpbmRpbmcgc3RpbGwgaGFz
IHRvIGRlZmluZSB3aGljaCAKb25lcyBpdCB1c2VzLiBJdCdzIHNvbWUgZHVwbGljYXRpb24sIGJ1
dCB0aGVyZSdzIG5vdCByZWFsbHkgYW55IHdheSAKYXJvdW5kIGl0IG9uIHRoZXNlIGxpY2Vuc2Vk
IElQcyB1bmxlc3MgdGhlIGJpbmRpbmdzIGFyZSBjb21wbGV0ZSB1cCAKZnJvbnQuCgo+IEkgZ3Vl
c3MgbXkgcHJvYmxlbSBpcyB0aGF0IEkganVzdCB3YW50IHRvIGluaGVyaXQgdGhlIGVudHJ5IGZy
b20gdGhlIGNvbW1vbgo+IGJpbmRpbmcuLi4KPiAKPiBJcyB0aGVyZSBubyBEVCBrZXl3b3JkIHRv
IGV4dGVuZCBhbiBleGlzdGluZyBiaW5kaW5nLCBzbyB0aGF0IHlvdSBpbmhlcml0IGFsbAo+IHRo
ZSBwcm9wZXJ0aWVzL2VudHJpZXMgZnJvbSB0aGF0IGNvbW1vbiBiaW5kaW5nLCB3aGlsZSBzdGls
bCBhbGxvd2luZyB5b3UgdG8KPiBkZWZpbmUgKG9yIG92ZXJsb2FkKSBhZGRpdGlvbmFsIHByb3Bl
cnRpZXMvZW50cmllcz8KPiAKPiBFdmVuIGlmIHRoZXJlIGlzIG5vIHdheSB0byBpbmhlcml0IGFs
bCBwcm9wZXJ0aWVzL2VudHJpZXMgZnJvbSBhIGNvbW1vbiBiaW5kaW5nLAo+IGl0IHdvdWxkIGJl
IG5pY2UgdG8gYmUgYWJsZSB0byBpbmhlcml0IGEgc3BlY2lmaWMgcHJvcGVydHkvZW50cnkgdXNp
bmcgYQo+ICJpbmhlcml0IiBrZXl3b3JkLCBzdWNoIHRoYXQgeW91IGdldCB0aGUgc2FtZSBkZWZp
bml0aW9uIChvcHRpb25hbC9yZXF1aXJlZCkgYXMKPiB0aGUgcGFyZW50IGJpbmRpbmcuCgpUaGUg
b25seSB3YXkgdG8gaW5oZXJpdCBpcyB2aWEgYSAkcmVmLiBXZSBjYW4gb25seSBhZGQgbW9yZSBj
b25zdHJhaW50cyAKdG8gYSBwYXJlbnQvcmVmZXJlbmNlZCBiaW5kaW5nLgoKWW91IGNvdWxkIGhh
dmUgYSAkcmVmIHRvIAoic25wcyxkdy1wY2llLnlhbWwjL3Byb3BlcnRpZXMvcmVnLW5hbWVzL2l0
ZW1zL29uZU9mLzMiIHRvIGdldCB0aGUgNHRoIApyZWctbmFtZSBpbiB0aGUgbGlzdCBvZiBjb21t
b24gcHJvcGVydGllcy4gSSB3b3VsZG4ndCByZWNvbW1lbmQgZG9pbmcgCnRoYXQgYmVjYXVzZSBJ
IHRoaW5rIGl0IHdpbGwgYmUgZnJhZ2lsZSBhbmQgZGlmZmljdWx0IHRvIG1haW50YWluLgoKUm9i
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
