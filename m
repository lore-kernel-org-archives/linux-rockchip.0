Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 814B7D1A447
	for <linux-rockchip@archiver.kernel.org>; Sat, 12 Oct 2024 08:02:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7vozqIUIXx4CgpDkFjs/25627739eyc5fgeTYrXe5d4=; b=ngenMb4UTCEdVD
	YLhCIg7tm3A++ExpS4SyScZjegRSf8o3HQ4vOoRM76Gb4vnjam7FmQJeZDWg1vtL++vfMaCy8fslQ
	rTE92zq8P0L2mbRD7GYCyg3lelgxnlKhRdYjW8cV4VZvNU9TXTOgROhkbE4vg4HJW28HrvtID+qK7
	aU3WrvypKykmiemRHuK13/ucJdbk0iPWh3W7ZafIbk9zOOW8KT5PsppOtlEQ2OWa5fk/YO6fbxYUh
	HsVXJZf1mJ4GKnWSlDhb+ckmOm8qDD+grZjIwVAmZtQhixxlzr9RBoYlKu1FUQLQmRj7VyndqGihF
	Uvs+vEj+0vn0wx+NMH8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1szX4W-00000000nMv-1IUo;
	Sat, 12 Oct 2024 08:01:56 +0000
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1szX37-00000000n8p-0DiH
	for linux-rockchip@lists.infradead.org;
	Sat, 12 Oct 2024 08:00:30 +0000
Received: by mail-pl1-x62c.google.com with SMTP id d9443c01a7336-20c7edf2872so21692885ad.1
        for <linux-rockchip@lists.infradead.org>; Sat, 12 Oct 2024 01:00:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728720028; x=1729324828; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=SwGEkgRRa1cwEpEXYHn8Jfzmui7uZXkgrh+X/zl8+Zg=;
        b=hw6kGqdL/BGkvo2vs14DpR3RMZ/H9nWmZPJifF/WnUf6R9LwctmWPgm8mTfecJHilF
         7bIASQpnzILuWgKoYqnfKyqjvrn38PBuQjgJXVQtFgcXXLjB9mIpn1wXMJfMj460Z7h/
         G3HpQqqszeKCHjmcr09kOaEhtzaXm4SPYFQrsAF4HpySgxgerjMigBlvHjdebMj3rVyH
         QOatSJPUqm6jG2GBTA01xlWjI4pbVtTE68ZOjjh/nKSbg98ngK0+sYRxxdmcPOtXs8yH
         ak0YQTcu37Lrf/+siWjYmuj6QzxY+LEWnijFC6J//sX67gEgg0uD0omgi9RlXUtCddFR
         F+8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728720028; x=1729324828;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SwGEkgRRa1cwEpEXYHn8Jfzmui7uZXkgrh+X/zl8+Zg=;
        b=XVRRtTMXvVFyj3T29AhEDwivSWlqTuW6ASbqzt/rLBTAodAYNd5MoLZ2EFISeva8at
         Va/n322tMPBDWyP+lJUOnvper7S+oRBNx0QecCfsA860YAjQCuTLh7diC4tMYAKGYz+H
         yRnrx0tUEIPEErSqHTCrutQr/XnaXcoX4/sgySoSpSpcCWyz8Sx7NLSFVZFveJSUzxxc
         Y4TQdzAKNDbfUozmK1cpKmWzXjR0ovkWg1U+/G1mujoZaOBqKWD9f3f6GLPaFTOhDT+3
         Isc60VvRpz+Gc+f+KZ0zdXe761bSnDiSBPX/Jr6xjNBcRKbllaZF6361f7n6oSm8/8ZX
         pRug==
X-Forwarded-Encrypted: i=1; AJvYcCUW2r0CpQi2/WYlcn2Eod++7Jdxb+9u+/a6AIVFbVq8zWXmvQyA0g+QSQfqW7xMGBL0xyUUSmxzZUGVKpeEEA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzpIIiia+FeDK2pvXjsoWlasnATP2Mlv/ivJuazIk6TIwvjMgke
	9iBMJLufc5jW+AYZvStLQT3fMfzdE/WmtbQ7m1dWDaEvvNvp1UJU+uu/LLOI3w==
X-Google-Smtp-Source: AGHT+IFcLuA6Pa/yDRB0ro7g9hMgXsIhUc1ZpWkdd3AW+bO3wyX3tthtl51Bioe/OrN9QKN7qtOYwQ==
X-Received: by 2002:a17:903:2b10:b0:20b:db4:d913 with SMTP id d9443c01a7336-20ca037aa44mr78217775ad.11.1728720028121;
        Sat, 12 Oct 2024 01:00:28 -0700 (PDT)
Received: from thinkpad ([220.158.156.122])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-20c8bad9968sm33450665ad.6.2024.10.12.01.00.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 12 Oct 2024 01:00:24 -0700 (PDT)
Date: Sat, 12 Oct 2024 13:30:19 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Anand Moon <linux.amoon@gmail.com>
Cc: Shawn Lin <shawn.lin@rock-chips.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-pci@vger.kernel.org>,
	"open list:PCIE DRIVER FOR ROCKCHIP" <linux-rockchip@lists.infradead.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	open list <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v7 2/3] PCI: rockchip: Simplify reset control handling by
 using reset_control_bulk*() function
Message-ID: <20241012080019.cdgq63rwj6oi4bg7@thinkpad>
References: <20241012050611.1908-1-linux.amoon@gmail.com>
 <20241012050611.1908-3-linux.amoon@gmail.com>
 <20241012061834.ksbtcaw3c7iacnye@thinkpad>
 <CANAwSgTk2ynkuxBarvX--Qs_LTduFuSDCv3k_WNgj=za_81+kQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANAwSgTk2ynkuxBarvX--Qs_LTduFuSDCv3k_WNgj=za_81+kQ@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241012_010029_121374_7CFAB6F3 
X-CRM114-Status: GOOD (  25.84  )
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

T24gU2F0LCBPY3QgMTIsIDIwMjQgYXQgMTI6NTU6MzJQTSArMDUzMCwgQW5hbmQgTW9vbiB3cm90
ZToKPiBIaSBNYW5pdmFubmFuLAo+IAo+IFRoYW5rcyBmb3IgeW91ciByZXZpZXcgY29tbWVudHMu
Cj4gCj4gT24gU2F0LCAxMiBPY3QgMjAyNCBhdCAxMTo0OCwgTWFuaXZhbm5hbiBTYWRoYXNpdmFt
Cj4gPG1hbml2YW5uYW4uc2FkaGFzaXZhbUBsaW5hcm8ub3JnPiB3cm90ZToKPiA+Cj4gPiBPbiBT
YXQsIE9jdCAxMiwgMjAyNCBhdCAxMDozNjowNEFNICswNTMwLCBBbmFuZCBNb29uIHdyb3RlOgo+
ID4gPiBSZWZhY3RvciB0aGUgcmVzZXQgY29udHJvbCBoYW5kbGluZyBpbiB0aGUgUm9ja2NoaXAg
UENJZSBkcml2ZXIsCj4gPiA+IGludHJvZHVjaW5nIGEgbW9yZSByb2J1c3QgYW5kIGVmZmljaWVu
dCBtZXRob2QgZm9yIGFzc2VydCBhbmQKPiA+ID4gZGVhc3NlcnQgcmVzZXQgY29udHJvbGxlciB1
c2luZyByZXNldF9jb250cm9sX2J1bGsqKCkgQVBJLiBVc2luZyB0aGUKPiA+ID4gcmVzZXRfY29u
dHJvbF9idWxrIEFQSXMsIHRoZSByZXNldCBoYW5kbGluZyBmb3IgdGhlIGNvcmUgY2xvY2tzIHJl
c2V0Cj4gPiA+IHVuaXQgYmVjb21lcyBtdWNoIHNpbXBsZXIuCj4gPiA+Cj4gPgo+ID4gU2FtZSBj
b21tZW50cyBhcyBwcmV2aW91cyBwYXRjaC4KPiA+Cj4gSSB3aWxsIGV4cGxhaW4gbW9yZSBhYm91
dCB0aGlzLgo+ID4gPiBTcGlsdCB0aGUgcmVzZXQgY29udHJvbGxlciBpbiB0d28gZ3JvdXBzIGFz
IHByZSB0aGUgUkszMzk5IFRSTS4KPiA+Cj4gPiAqcGVyCj4gPgo+ID4gQWxzbyBwbGVhc2Ugc3Rh
dGUgdGhlIFRSTSBuYW1lIGFuZCBzZWN0aW9uIGZvciByZWZlcmVuY2UuCj4gPgo+IFllcwo+ID4g
PiBBZnRlciBwb3dlciB1cCwgdGhlIHNvZnR3YXJlIGRyaXZlciBzaG91bGQgZGUtYXNzZXJ0IHRo
ZSByZXNldCBvZiBQQ0llIFBIWSwKPiA+ID4gdGhlbiB3YWl0IHRoZSBQTEwgbG9ja2VkIGJ5IHBv
bGxpbmcgdGhlIHN0YXR1cywgaWYgUExMCj4gPiA+IGhhcyBsb2NrZWQsIHRoZW4gY2FuIGRlLWFz
c2VydCB0aGUgcmVzZXQgc2ltdWx0YW5lb3VzbHkKPiA+ID4gZHJpdmVyIG5lZWQgdG8gRGUtYXNz
ZXJ0IHRoZSByZXNldCBwaW5zIHNpbXVsdGlvbmFseS4KPiA+ID4KPiA+ID4gICBQSVBFX1JFU0VU
X04vTUdNVF9TVElDS1lfUkVTRVRfTi9NR01UX1JFU0VUX04vUkVTRVRfTi4KPiA+ID4KPiA+ID4g
LSByZXBsYWNlIGRldm1fcmVzZXRfY29udHJvbF9nZXRfZXhjbHVzaXZlKCkgd2l0aAo+ID4gPiAg
ICAgICBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVsa19nZXRfZXhjbHVzaXZlKCkuCj4gPiA+IC0gcmVw
bGFjZSByZXNldF9jb250cm9sX2Fzc2VydCB3aXRoCj4gPiA+ICAgICAgIHJlc2V0X2NvbnRyb2xf
YnVsa19hc3NlcnQoKS4KPiA+ID4gLSByZXBsYWNlIHJlc2V0X2NvbnRyb2xfZGVhc3NlcnQgd2l0
aAo+ID4gPiAgICAgICByZXNldF9jb250cm9sX2J1bGtfZGVhc3NlcnQoKS4KPiA+ID4KPiA+ID4g
U2lnbmVkLW9mZi1ieTogQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29tPgo+ID4gPiAt
LS0KPiA+ID4gdjc6IHJlcGxhY2UgZGV2bV9yZXNldF9jb250cm9sX2J1bGtfZ2V0X29wdGlvbmFs
X2V4Y2x1c2l2ZSgpCj4gPiA+ICAgICAgICAgd2l0aCBkZXZtX3Jlc2V0X2NvbnRyb2xfYnVsa19n
ZXRfZXhjbHVzaXZlKCkKPiA+ID4gICAgIHVwZGF0ZSB0aGUgZnVuY3Rpb25hbCBjaGFuZ2VzLgo+
ID4gPiBWNjogQWRkIHJlYXNvbiBmb3IgdGhlIHNwbGl0IG9mIHRoZSBSRVNFVCBwaW5zLgo+ID4g
PiB2NTogRml4IHRoZSBEZS1hc3NlcnQgcmVzZXQgY29yZSBhcyBwZXIgdGhlIFRSTQo+ID4gPiAg
ICAgRGUtYXNzZXJ0IHRoZSBQSVBFX1JFU0VUX04vTUdNVF9TVElDS1lfUkVTRVRfTi9NR01UX1JF
U0VUX04vUkVTRVRfTgo+ID4gPiAgICAgc2ltdWx0YW5lb3VzbHkuCj4gPiA+IHY0OiB1c2UgZGV2
X2Vycl9wcm9iZSBpbiBlcnJvciBwYXRoLgo+ID4gPiB2MzogRml4IHR5cG8gaW4gY29tbWl0IG1l
c3NhZ2UsIGRyb3BwZWQgcmVwb3J0ZWQgYnkuCj4gPiA+IHYyOiBGaXggY29tcGlsYXRpb24gZXJy
b3IgcmVwb3J0ZWQgYnkgSW50ZWwgdGVzdCByb2JvdAo+ID4gPiAgICAgZml4ZWQgY2hlY2twYXRj
aCB3YXJuaW5nLgo+ID4gPiAtLS0KPiA+ID4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1y
b2NrY2hpcC5jIHwgMTUxICsrKysrLS0tLS0tLS0tLS0tLS0tLS0tLS0KPiA+ID4gIGRyaXZlcnMv
cGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5oIHwgIDI2ICsrKy0tCj4gPiA+ICAyIGZpbGVz
IGNoYW5nZWQsIDQ5IGluc2VydGlvbnMoKyksIDEyOCBkZWxldGlvbnMoLSkKPiA+ID4KPiA+ID4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS1yb2NrY2hpcC5jIGIvZHJp
dmVycy9wY2kvY29udHJvbGxlci9wY2llLXJvY2tjaGlwLmMKPiA+ID4gaW5kZXggMjc3N2VmMGNi
NTk5Li45YTExOGUyYjhjYmQgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvcGNpL2NvbnRyb2xs
ZXIvcGNpZS1yb2NrY2hpcC5jCj4gPiA+ICsrKyBiL2RyaXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNp
ZS1yb2NrY2hpcC5jCgpbLi4uXQoKPiA+ID4gQEAgLTI1NiwzMSArMTgxLDE1IEBAIGludCByb2Nr
Y2hpcF9wY2llX2luaXRfcG9ydChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4gPiA+
ICAgICAgICAqIFBsZWFzZSBkb24ndCByZW9yZGVyIHRoZSBkZWFzc2VydCBzZXF1ZW5jZSBvZiB0
aGUgZm9sbG93aW5nCj4gPiA+ICAgICAgICAqIGZvdXIgcmVzZXQgcGlucy4KPiA+Cj4gPiBJIGRv
bid0IHRoaW5rIG15IGVhcmxpZXIgY29tbWVudCBvbiB0aGlzIGFkZHJlc3NlZC4gV2h5IGFyZSB5
b3UgY2hhbmdpbmcgdGhlCj4gPiByZXNldCBvcmRlcj8gV2h5IGNhbid0IHlvdSBoYXZlIHRoZSBy
ZXNldHMgaW4gYmVsb3cgKG9sZGVyKSBvcmRlcj8KPiA+Cj4gPiBzdGF0aWMgY29uc3QgY2hhciAq
IGNvbnN0IHJvY2tjaGlwX3BjaV9jb3JlX3JzdHNbXSA9IHsKPiA+ICAgICAgICAgbWdtdC1zdGlj
a3kiLAo+ID4gICAgICAgICAiY29yZSIsCj4gPiAgICAgICAgICJtZ210IiwKPiA+ICAgICAgICAg
InBpcGUiLAo+ID4gfTsKPiAgSSB3aWxsIGFkZCBhIGNvbW1lbnQgb24gdGhpcyBhYm92ZS4KClNv
cnJ5LCBJIGRvbid0IGdldCB5b3VyIHJlc3BvbnNlLiBNeSBzdWdnZXN0aW9uIHdhcyB0byBrZWVw
IHRoZSByZXNldHMgc29ydGVkIGFzCnRoZSBvcmlnaW5hbCBvcmRlciAoYWxzbyBpbmRpY2F0ZWQg
YnkgbXkgYWJvdmUgc25pcHBldCkuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPg
rqngr40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
