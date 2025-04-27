Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FADAC369D1
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Apr 2025 14:14:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBB7QQS1lZy4tSB9Ojy+/2iVs78miNYfL2RKqhm2hoU=; b=DkM+UKJ3XzXAV8
	IqCaLKt1mWKy9FrD5s9aubGidkksgy7/KBeK4ghZ9Zy5XJI3H6RK0TOqyp2Z+4FFNV67hpb9O6tYD
	ARgJZkp6EAfsW//yZ63EvD83z10GvzuBu/1sNvecCYqW3cKPuJcQ93NjxLZPOtrGQmTB90dN8MA3K
	N125Un6zN4FtOgs2iaCWFX0Kb7mUZDWuJ09PDDrHN5RLb0QE2DUVjBKh5xdH1qR1hxdUsfRt+rOkA
	BD3fHfsuEEruppradlXT3gqSL4gkxHRKLujS5oC+2cHJcde6bA73Et5TvCRvZLjqVNUrCR/9WWyou
	uL3rj5yHb56IN2QCT1Ng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u92lu-00000003dzu-13Ke;
	Sun, 27 Apr 2025 14:14:18 +0000
Received: from mail-pf1-x430.google.com ([2607:f8b0:4864:20::430])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u92lr-00000003dzA-3Wls
	for linux-rockchip@lists.infradead.org;
	Sun, 27 Apr 2025 14:14:17 +0000
Received: by mail-pf1-x430.google.com with SMTP id d2e1a72fcca58-736c277331eso4649276b3a.1
        for <linux-rockchip@lists.infradead.org>; Sun, 27 Apr 2025 07:14:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1745763255; x=1746368055; darn=lists.infradead.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ACNBxPO8ZTcboVmh3x2UF5/k0ixRgW7g046Uv0nuIS4=;
        b=ecx9dFBdjtovJcsVrHurwLDKllgMjKn/6yaeJj/QZRvJrc2bM7NpKJE7knEUJHMEfq
         QrZi34r/Yg9bcHOkhTvSiuhX+SFK4tQPXkUvD4wesqYJZwg07QOUsBxxcgBSBKtJh60i
         cNxKD84t0REsWOzW+LzmhBSB3cNbGL2Uct8q3iwlzyIqpkapQpEXSBQwd6kMceAgAjtl
         IxL2I1gpem+E8Fdd5vYFLNYXEfZ1K6AEUc0RT8WNKbA0UyXBCSqOScIBHB803a9xSHPH
         utgpp2NTK8Mj0j12CKmpSzLhl4VeEl+OqyF14pfSeSOxSs2/nxSanKnlhE+JWvvkxx3S
         CKbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745763255; x=1746368055;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ACNBxPO8ZTcboVmh3x2UF5/k0ixRgW7g046Uv0nuIS4=;
        b=CDvqOCN3Tf2pXI2Q1qmp5UxZ7u63rTZ8oHsNg+NnpL7exwgCOrGMDm/f/iMHNLVbwy
         Tw6DqqG8EzCqePNIvZgoc4VEW6SMGor5Z221bOALINBpXIzIjCHhFGhpsNpyYS7Tsx2b
         sxlRAh66SHXlQYAX8mT8f6cNpkRfN5QFCTNNKjxJsxkYPN7bobb0l7Z2f2IEM5DcuPL7
         8FsHl9YQA6zS111ivDppwuC9OI3vssc3Aplw9JKU00P5i3yuodr2tXOApkJAm3acyoMc
         lEaknw7yrJ/u5Hc8yGsNA9PcyIBA0jwDszBOKQtmb6HsUKwGmbOFxlnWAti4xJMWqxsI
         Q8rA==
X-Forwarded-Encrypted: i=1; AJvYcCUrcEoD1nIy7LmAzIHlnntu248/cQBgL2iENF+9472oitDkzTmTi+Ci9NiC/S33u18E+bJX+iAMuU9hxJPxSA==@lists.infradead.org
X-Gm-Message-State: AOJu0YyZ+e5m7HtLolflubJ+qipC+96RR1n72aT96Zt9a3aNnZSX4O/M
	FMchlKdQ71qj/a+BXG5u4ymn5U/XTlj2mWOpRtJ97NuTSx3ax/taFWm744+beg==
X-Gm-Gg: ASbGnctMNN7iaYvDdZQERx+r5czRoor8pOWAHh1jSUZR9eqfzPF1LXCQSrjHoEaj8z5
	eUN4fHEuiJ18zc6xG/aSO1fSIxD6k7QPDNnbjDy7nZCXeCC5430XJN/Fm+ORjhpFdG3b/jPDkh/
	fys04+rt3xinwQm+BhOpIO8VOhB/6SJ6mwY8iQ5QKTBMdUrEBZafMLJrWI2z6Ul9g+OvFciCtiM
	QA1VjAGsT3bbLcWb5/++gGMZtv3hK6e3d667aqWiSMuaxeoJfumAzdION19TWsn2UK6Mbknn7Sc
	6MlKZaK/AV/DYFsmtGpKJmUvka56EnhjHDQqtMHoxkOblh3EyTY3
X-Google-Smtp-Source: AGHT+IHjWEH0dSAl/SHWrSYJFzYKk/J+piJ5N7UDrAAAZ6BtOMkHd9X5c8VlDHgDtN0O4ARPSiTzjA==
X-Received: by 2002:a05:6a20:c6ca:b0:1fd:f4df:ab67 with SMTP id adf61e73a8af0-2045b64f481mr12361009637.21.1745763254720;
        Sun, 27 Apr 2025 07:14:14 -0700 (PDT)
Received: from thinkpad ([120.60.143.241])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-73e25912325sm6480321b3a.14.2025.04.27.07.14.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Apr 2025 07:14:14 -0700 (PDT)
Date: Sun, 27 Apr 2025 19:44:08 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Hans Zhang <18255117159@163.com>
Cc: lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com, 
	heiko@sntech.de, robh@kernel.org, jingoohan1@gmail.com, shawn.lin@rock-chips.com, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	Niklas Cassel <cassel@kernel.org>
Subject: Re: [PATCH v4 2/3] PCI: dw-rockchip: Reorganize register and
 bitfield definitions
Message-ID: <mbgc46teac74goifhuj4fegmtaagfoqkhlm4uid23jurbvi2xa@wnhycs77kk6w>
References: <20250427125316.99627-1-18255117159@163.com>
 <20250427125316.99627-3-18255117159@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250427125316.99627-3-18255117159@163.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250427_071415_910278_C4F7827F 
X-CRM114-Status: GOOD (  16.62  )
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

T24gU3VuLCBBcHIgMjcsIDIwMjUgYXQgMDg6NTM6MTVQTSArMDgwMCwgSGFucyBaaGFuZyB3cm90
ZToKPiBSZWdpc3RlciBkZWZpbml0aW9ucyB3ZXJlIHNjYXR0ZXJlZCB3aXRoIGFtYmlndW91cyBu
YW1lcyAoZS5nLiwKPiBQQ0lFX1JETEhfTElOS19VUF9DSEdFRCBpbiBQQ0lFX0NMSUVOVF9JTlRS
X1NUQVRVU19NSVNDKSBhbmQgbGFja2VkCj4gaGllcmFyY2hpY2FsIGdyb3VwaW5nLiBNYWdpYyB2
YWx1ZXMgZm9yIGJpdCBvcGVyYXRpb25zIHJlZHVjZWQgY29kZQo+IGNsYXJpdHkuCj4gCj4gR3Jv
dXAgcmVnaXN0ZXJzIGFuZCB0aGVpciBhc3NvY2lhdGVkIGJpdGZpZWxkcyBsb2dpY2FsbHkuIFRo
aXMgaW1wcm92ZXMKPiBtYWludGFpbmFiaWxpdHkgYW5kIGFsaWducyB0aGUgY29kZSB3aXRoIGhh
cmR3YXJlIGRvY3VtZW50YXRpb24uCj4gCj4gU2lnbmVkLW9mZi1ieTogSGFucyBaaGFuZyA8MTgy
NTUxMTcxNTlAMTYzLmNvbT4KPiBSZXZpZXdlZC1ieTogTmlrbGFzIENhc3NlbCA8Y2Fzc2VsQGtl
cm5lbC5vcmc+Cj4gUmV2aWV3ZWQtYnk6IE1hbml2YW5uYW4gU2FkaGFzaXZhbSA8bWFuaXZhbm5h
bi5zYWRoYXNpdmFtQGxpbmFyby5vcmc+Cj4gLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtZHctcm9ja2NoaXAuYyB8IDQ5ICsrKysrKysrKysrKy0tLS0tLS0KPiAgMSBmaWxl
IGNoYW5nZWQsIDMxIGluc2VydGlvbnMoKyksIDE4IGRlbGV0aW9ucygtKQo+IAo+IGRpZmYgLS1n
aXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMgYi9kcml2
ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBpbmRleCBlN2QzM2Q1
NDVkNWIuLmE3NzhmNGY2MTU5NSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BjaS9jb250cm9sbGVy
L2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiArKysgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBAQCAtMzMsMjQgKzMzLDM3IEBACj4gIAo+ICAjZGVmaW5l
IHRvX3JvY2tjaGlwX3BjaWUoeCkgZGV2X2dldF9kcnZkYXRhKCh4KS0+ZGV2KQo+ICAKPiAtI2Rl
ZmluZSBQQ0lFX0NMSUVOVF9SQ19NT0RFCQlISVdPUkRfVVBEQVRFX0JJVCgweDQwKQo+IC0jZGVm
aW5lIFBDSUVfQ0xJRU5UX0VQX01PREUJCUhJV09SRF9VUERBVEUoMHhmMCwgMHgwKQo+IC0jZGVm
aW5lIFBDSUVfQ0xJRU5UX0VOQUJMRV9MVFNTTQlISVdPUkRfVVBEQVRFX0JJVCgweGMpCj4gLSNk
ZWZpbmUgUENJRV9DTElFTlRfRElTQUJMRV9MVFNTTQlISVdPUkRfVVBEQVRFKDB4MGMsIDB4OCkK
PiAtI2RlZmluZSBQQ0lFX0NMSUVOVF9JTlRSX1NUQVRVU19NSVNDCTB4MTAKPiAtI2RlZmluZSBQ
Q0lFX0NMSUVOVF9JTlRSX01BU0tfTUlTQwkweDI0Cj4gLSNkZWZpbmUgUENJRV9TTUxIX0xJTktV
UAkJQklUKDE2KQo+IC0jZGVmaW5lIFBDSUVfUkRMSF9MSU5LVVAJCUJJVCgxNykKPiAtI2RlZmlu
ZSBQQ0lFX0xJTktVUAkJCShQQ0lFX1NNTEhfTElOS1VQIHwgUENJRV9SRExIX0xJTktVUCkKPiAt
I2RlZmluZSBQQ0lFX1JETEhfTElOS19VUF9DSEdFRAkJQklUKDEpCj4gLSNkZWZpbmUgUENJRV9M
SU5LX1JFUV9SU1RfTk9UX0lOVAlCSVQoMikKPiAtI2RlZmluZSBQQ0lFX0NMSUVOVF9HRU5FUkFM
X0NPTlRST0wJMHgwCj4gKy8qIEdlbmVyYWwgQ29udHJvbCBSZWdpc3RlciAqLwo+ICsjZGVmaW5l
IFBDSUVfQ0xJRU5UX0dFTkVSQUxfQ09OCQkweDAKCklzIHRoaXMgdGhlIGFjdHVhbCBuYW1lIG9m
IHRoZSByZWdpc3RlciBhcyBwZXIgdGhlIGRvY3VtZW50YXRpb24/IEp1c3QgYXNraW5nCmJlY2F1
c2Ugb2YgJ19DT04nIGluc3RlYWQgb2YgJ19DT05UUk9MJy4KCi0gTWFuaQoKPiArI2RlZmluZSAg
UENJRV9DTElFTlRfUkNfTU9ERQkJSElXT1JEX1VQREFURV9CSVQoMHg0MCkKPiArI2RlZmluZSAg
UENJRV9DTElFTlRfRVBfTU9ERQkJSElXT1JEX1VQREFURSgweGYwLCAweDApCj4gKyNkZWZpbmUg
IFBDSUVfQ0xJRU5UX0VOQUJMRV9MVFNTTQlISVdPUkRfVVBEQVRFX0JJVCgweGMpCj4gKyNkZWZp
bmUgIFBDSUVfQ0xJRU5UX0RJU0FCTEVfTFRTU00JSElXT1JEX1VQREFURSgweDBjLCAweDgpCj4g
Kwo+ICsvKiBJbnRlcnJ1cHQgU3RhdHVzIFJlZ2lzdGVyIFJlbGF0ZWQgdG8gTGVnYWN5IEludGVy
cnVwdCAqLwo+ICAjZGVmaW5lIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX0xFR0FDWQkweDgKPiAr
Cj4gKy8qIEludGVycnVwdCBTdGF0dXMgUmVnaXN0ZXIgUmVsYXRlZCB0byBNaXNjZWxsYW5lb3Vz
IE9wZXJhdGlvbiAqLwo+ICsjZGVmaW5lIFBDSUVfQ0xJRU5UX0lOVFJfU1RBVFVTX01JU0MJMHgx
MAo+ICsjZGVmaW5lICBQQ0lFX1JETEhfTElOS19VUF9DSEdFRAlCSVQoMSkKPiArI2RlZmluZSAg
UENJRV9MSU5LX1JFUV9SU1RfTk9UX0lOVAlCSVQoMikKPiArCj4gKy8qIEludGVycnVwdCBNYXNr
IFJlZ2lzdGVyIFJlbGF0ZWQgdG8gTGVnYWN5IEludGVycnVwdCAqLwo+ICAjZGVmaW5lIFBDSUVf
Q0xJRU5UX0lOVFJfTUFTS19MRUdBQ1kJMHgxYwo+ICsKPiArLyogSW50ZXJydXB0IE1hc2sgUmVn
aXN0ZXIgUmVsYXRlZCB0byBNaXNjZWxsYW5lb3VzIE9wZXJhdGlvbiAqLwo+ICsjZGVmaW5lIFBD
SUVfQ0xJRU5UX0lOVFJfTUFTS19NSVNDCTB4MjQKPiArCj4gKy8qIEhvdCBSZXNldCBDb250cm9s
IFJlZ2lzdGVyICovCj4gICNkZWZpbmUgUENJRV9DTElFTlRfSE9UX1JFU0VUX0NUUkwJMHgxODAK
PiArI2RlZmluZSAgUENJRV9MVFNTTV9FTkFCTEVfRU5IQU5DRQlCSVQoNCkKPiArCj4gKy8qIExU
U1NNIFN0YXR1cyBSZWdpc3RlciAqLwo+ICAjZGVmaW5lIFBDSUVfQ0xJRU5UX0xUU1NNX1NUQVRV
UwkweDMwMAo+IC0jZGVmaW5lIFBDSUVfTFRTU01fRU5BQkxFX0VOSEFOQ0UJQklUKDQpCj4gLSNk
ZWZpbmUgUENJRV9MVFNTTV9TVEFUVVNfTUFTSwkJR0VOTUFTSyg1LCAwKQo+ICsjZGVmaW5lICBQ
Q0lFX1NNTEhfTElOS1VQCQlCSVQoMTYpCj4gKyNkZWZpbmUgIFBDSUVfUkRMSF9MSU5LVVAJCUJJ
VCgxNykKPiArI2RlZmluZSAgUENJRV9MSU5LVVAJCQkoUENJRV9TTUxIX0xJTktVUCB8IFBDSUVf
UkRMSF9MSU5LVVApCj4gKyNkZWZpbmUgIFBDSUVfTFRTU01fU1RBVFVTX01BU0sJCUdFTk1BU0so
NSwgMCkKPiAgCj4gIHN0cnVjdCByb2NrY2hpcF9wY2llIHsKPiAgCXN0cnVjdCBkd19wY2llIHBj
aTsKPiBAQCAtMTYxLDEzICsxNzQsMTMgQEAgc3RhdGljIHUzMiByb2NrY2hpcF9wY2llX2dldF9s
dHNzbShzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4gIHN0YXRpYyB2b2lkIHJvY2tj
aGlwX3BjaWVfZW5hYmxlX2x0c3NtKHN0cnVjdCByb2NrY2hpcF9wY2llICpyb2NrY2hpcCkKPiAg
ewo+ICAJcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBiKHJvY2tjaGlwLCBQQ0lFX0NMSUVOVF9FTkFC
TEVfTFRTU00sCj4gLQkJCQkgUENJRV9DTElFTlRfR0VORVJBTF9DT05UUk9MKTsKPiArCQkJCSBQ
Q0lFX0NMSUVOVF9HRU5FUkFMX0NPTik7Cj4gIH0KPiAgCj4gIHN0YXRpYyB2b2lkIHJvY2tjaGlw
X3BjaWVfZGlzYWJsZV9sdHNzbShzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4gIHsK
PiAgCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgUENJRV9DTElFTlRfRElTQUJM
RV9MVFNTTSwKPiAtCQkJCSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NPTlRST0wpOwo+ICsJCQkJIFBD
SUVfQ0xJRU5UX0dFTkVSQUxfQ09OKTsKPiAgfQo+ICAKPiAgc3RhdGljIGludCByb2NrY2hpcF9w
Y2llX2xpbmtfdXAoc3RydWN0IGR3X3BjaWUgKnBjaSkKPiBAQCAtNTE2LDcgKzUyOSw3IEBAIHN0
YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9jb25maWd1cmVfcmMoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldiwKPiAgCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgdmFsLCBQQ0lF
X0NMSUVOVF9IT1RfUkVTRVRfQ1RSTCk7Cj4gIAo+ICAJcm9ja2NoaXBfcGNpZV93cml0ZWxfYXBi
KHJvY2tjaGlwLCBQQ0lFX0NMSUVOVF9SQ19NT0RFLAo+IC0JCQkJIFBDSUVfQ0xJRU5UX0dFTkVS
QUxfQ09OVFJPTCk7Cj4gKwkJCQkgUENJRV9DTElFTlRfR0VORVJBTF9DT04pOwo+ICAKPiAgCXBw
ID0gJnJvY2tjaGlwLT5wY2kucHA7Cj4gIAlwcC0+b3BzID0gJnJvY2tjaGlwX3BjaWVfaG9zdF9v
cHM7Cj4gQEAgLTU2Miw3ICs1NzUsNyBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfY29uZmln
dXJlX2VwKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gIAlyb2NrY2hpcF9wY2llX3dy
aXRlbF9hcGIocm9ja2NoaXAsIHZhbCwgUENJRV9DTElFTlRfSE9UX1JFU0VUX0NUUkwpOwo+ICAK
PiAgCXJvY2tjaGlwX3BjaWVfd3JpdGVsX2FwYihyb2NrY2hpcCwgUENJRV9DTElFTlRfRVBfTU9E
RSwKPiAtCQkJCSBQQ0lFX0NMSUVOVF9HRU5FUkFMX0NPTlRST0wpOwo+ICsJCQkJIFBDSUVfQ0xJ
RU5UX0dFTkVSQUxfQ09OKTsKPiAgCj4gIAlyb2NrY2hpcC0+cGNpLmVwLm9wcyA9ICZyb2NrY2hp
cF9wY2llX2VwX29wczsKPiAgCXJvY2tjaGlwLT5wY2kuZXAucGFnZV9zaXplID0gU1pfNjRLOwo+
IC0tIAo+IDIuMjUuMQo+IAoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTg
rr7grprgrr/grrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
