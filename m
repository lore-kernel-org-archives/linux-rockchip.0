Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17611D0E6F5
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Nov 2025 16:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WBcD3iD04hvy/o5x2rUYCMcoDjLhA5C7HwOHftQF2KY=; b=umaxxQDmXCSkLu
	FUA+Ak5WXt2pM7ivbv1qBR+43hCgQQJUEM8tXSUDB/RoYP6HRTb/r2MPvWEWRFFfKs12HWEowaqQY
	PMOjdgVxAOXkT4lXooLbbpg/ozq8oRVe9PxHO/4dldPaRcY7CyJSFm5rvSwhWhe2g8gpENXrsv9xL
	aZ1dZL102e3SaXaZx56DKRUBuaT9ClMpulN05bpfqqkKeORdtwtEfRQZ/wYbRSYcC6orUUgA5DI3F
	YjWqmn80VgdFRfrG9OcnNnqHVamVfPvFHNtvLkb1cAyy5VgboerthVDrE1NhMe9iQcflGkJgSXu3x
	SSxfbxovQ+GEozMhDrwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNvV1-0000000DY0c-3zGq;
	Tue, 25 Nov 2025 16:02:39 +0000
Received: from mail-yw1-x1135.google.com ([2607:f8b0:4864:20::1135])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNvUz-0000000DXzV-3EGn
	for linux-rockchip@lists.infradead.org;
	Tue, 25 Nov 2025 16:02:38 +0000
Received: by mail-yw1-x1135.google.com with SMTP id 00721157ae682-78802ac2296so55466137b3.3
        for <linux-rockchip@lists.infradead.org>; Tue, 25 Nov 2025 08:02:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1764086557; x=1764691357; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pqpl2WN+S9iWcthCxem8RsD0XLSYeeBSXHkUH4PWWig=;
        b=BBJdb4EGTMiyV636PBOERjjNEUomKyitFTw5TaDFyyyzOk40QvQnzKPq7Y9NDh6WcY
         CvMPiayAhnZW1Q7d23mWKNHydK+2sUyH89KMG7fGyu24hITL//KOiC2v4bPzJLDAaY2A
         zlK8lLEnLgkvCCCpniR2dVFngJIT0VRLC6E1GFRY1hVPI+VD+ywOCrmtL7CDA6S2r5Uz
         nh7oynvqBcJudC6zbATuIuDnsXt5CELcunmcls2ZVsLFDPX/70nRhGjTGonzqiOE306g
         +f9notZ2Wna0JVaMAdTDfwJdlwpodtZqPrvF57OFEF17BrHxJiJdbe1ZRjGgAypgShxT
         RSXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764086557; x=1764691357;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Pqpl2WN+S9iWcthCxem8RsD0XLSYeeBSXHkUH4PWWig=;
        b=WjYBujeiReLBJVNHinG64hZZJHYO0xaaoZwziVCuthTGcD06KCusIDNpl1qCaODnRX
         wquFHXcH2W4IZwCdlV/hL6Qtpv4v5XOdLvAxO9rwlBf1RmLfrof7Rus4FxaiVILDxhsV
         kM6gD/HVurxCN7tmgVPmPGpdqvIoBk022En1+HBug/lmneqDhMiqaxlXB8ANX5B6FMxd
         CowaiKqOA6rNZYUl8btM+H/rZ/U0D3Nt+T5SxjSfBNszJb2lOQOhVXc94dwOLmlwxiTS
         TqMTY5v39+eCHzwA17Ad0emvYHCM07UilOnE3v0CljODiR10LsuW6LqMghJELYq4tmKG
         JGHQ==
X-Gm-Message-State: AOJu0Yz1g3/vRYh4rhv3tk7DW2MPA7NLIUmeDaQiHtAwuSQCtqIcJbMH
	rZONhwzUVZ+yObO741SlyHHJbRVcnx9WtLsigMjg2HEb8b+H2IKNLzDpbQtxIX9+x4ki3ew3C3p
	A6iTwgQklmAHzMtMmhRJCTBGNx39YqTtROH+roznb1A==
X-Gm-Gg: ASbGncvOaTM0zUDoLYOf6bJzLjDZlYkZE7lUXeJU/kBYepvjtPKZ2nAgaeV2vtt2dzb
	DHNWcTfR5dkxCJNvxlwHc5SG2aE6THZ+GTW5tnl+fcQwC99B50c1vv61lKMELSOrpc9L2vBiC3B
	iNkNfucFkg7baOx9KFkpg1koOZb+xiR3p1RFOJePn09+MutTsInmWhe8YcaM8qrIg4sQervSZmE
	SEJS9eq/lYnL4yZZ6wfwE+J6yEHXNEJonuhqfD7aYSkrJ/mQA9dsrssSkvsiHQxRavOgXo+YrPZ
	Hn0dr3E=
X-Google-Smtp-Source: AGHT+IGpO5BPMxeylIdMjWariOvCpXVT6NrfqSYCzNaodeR3am93shFU9PHr+I8yfzgj0ZXah/lNbkQ8g6/k76Pzjy8=
X-Received: by 2002:a05:690e:1548:10b0:641:f5bc:68d9 with SMTP id
 956f58d0204a3-64302aee469mr8861206d50.70.1764086556397; Tue, 25 Nov 2025
 08:02:36 -0800 (PST)
MIME-Version: 1.0
References: <1762933460-204066-1-git-send-email-shawn.lin@rock-chips.com>
 <1762933460-204066-2-git-send-email-shawn.lin@rock-chips.com> <7b05327d-fc76-471e-9148-3dfc0cd17623@rock-chips.com>
In-Reply-To: <7b05327d-fc76-471e-9148-3dfc0cd17623@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 25 Nov 2025 17:02:00 +0100
X-Gm-Features: AWmQ_bm9QV4yvW5iHTMzjmKdqVj9ajUyBnx67ONCeq9Q2ozIo2PPx2RYZQeLlJc
Message-ID: <CAPDyKFrx_5cnyFeLRhoia2aHK9Cxo+fp_kKhyQ526xE02_+vSA@mail.gmail.com>
Subject: Re: [PATCH 2/2] mmc: sdhci-of-dwcmshc: reduce CIT for better performance
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-mmc@vger.kernel.org, 
	Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251125_080237_821156_598E6E77 
X-CRM114-Status: GOOD (  18.28  )
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

T24gVHVlLCAyNSBOb3YgMjAyNSBhdCAxNDo1OCwgU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1j
aGlwcy5jb20+IHdyb3RlOgo+Cj4g5ZyoIDIwMjUvMTEvMTIg5pif5pyf5LiJIDE1OjQ0LCBTaGF3
biBMaW4g5YaZ6YGTOgo+ID4gQ1FIQ0lfU1NDMS5DSVQgaW5kaWNhdGVzIHRvIHRoZSBDUUUgdGhl
IHBvbGxpbmcgcGVyaW9kIHRvIHVzZSBmb3IKPiA+IHBlcmlvZGljIFNFTkRfUVVFVUVfU1RBVFVT
IChDTUQxMykgcG9sbGluZy4gU29tZSBlTU1DcyBoYXZlIG9ubHkgb25lCj4gPiBoYXJkd2FyZSBx
dWV1ZSwgYW5kIENNRDEzIGNhbiBvbmx5IHF1ZXJ5IG9uZSBzbG90IGF0IGEgdGltZSBmb3IgZGF0
YQo+ID4gdHJhbnNtaXNzaW9uLCB3aGljaCBjYW5ub3QgYmUgcHJvY2Vzc2VkIGluIHBhcmFsbGVs
LiBNb2RpZnlpbmcgdGhlCj4gPiBDTUQxMyBxdWVyeSBpbnRlcnZhbCBjYW4gaW5jcmVhc2UgdGhl
IHF1ZXJ5IGZyZXF1ZW5jeSBhbmQgaW1wcm92ZQo+ID4gcmFuZG9tIHdyaXRlIHBlcmZvcm1hbmNl
Lgo+ID4KPgo+IFBpbmcuLi4KPgo+IEFkcmFpbiBhY2tlZCB0aGVzZSB0d28gcGF0Y2hlcywgc28g
d2lsbCB0aGVtIGJlIGNhbmRpZGF0ZXMgZm9yIDYuMTkKPiBnaXZlbiB0aGUgbWVyZ2Ugd2luZG93
cyBpcyBjb21pbmcgc29vbj8KCkxvb2tzIGxpa2UgSSBzaW1wbHkgZmFpbGVkIHRvIHNlZSB0aGVt
LiBQb3NzaWJseSBiZWNhdXNlIHRoZXJlIHdhcwpjb3Zlci1sZXR0ZXIsIHdoaWNoIG1ha2VzIGl0
IGhhcmRlciBmb3IgbWUgdG8gZm9sbG93IGFsbCB0aGUgZGlmZmVyZW50CnNlcmllcy4KCkFueXdh
eSwgSSB0cmllZCB0byBhcHBseSB0aGVtLCBidXQgdGhlcmUgYXJlIGNvbmZsaWN0cyB0aGF0IEkg
YW0gbm90CnN1cmUgSSBjYW4gcmVzb2x2ZSBlYXNpbHkgYnkgbXlzZWxmLiBXb3VsZCB5b3UgbWlu
ZCBkb2luZyBhIHJlLWJhc2UKYW5kIHBvc3QgYSBuZXcgdmVyc2lvbiwgdGhlbiBJIGNhbiBhcHBs
eSB0aGVtIGFzYXAuCgpLaW5kIHJlZ2FyZHMKVWZmZQoKPgo+ID4gU2lnbmVkLW9mZi1ieTogU2hh
d24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gPiAtLS0KPiA+Cj4gPiAgIGRyaXZl
cnMvbW1jL2hvc3QvY3FoY2kuaCAgICAgICAgICAgIHwgMSArCj4gPiAgIGRyaXZlcnMvbW1jL2hv
c3Qvc2RoY2ktb2YtZHdjbXNoYy5jIHwgNSArKysrKwo+ID4gICAyIGZpbGVzIGNoYW5nZWQsIDYg
aW5zZXJ0aW9ucygrKQo+ID4KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL21tYy9ob3N0L2NxaGNp
LmggYi9kcml2ZXJzL21tYy9ob3N0L2NxaGNpLmgKPiA+IGluZGV4IGNlMTg5YTEuLjM2Njg4NTYg
MTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL21tYy9ob3N0L2NxaGNpLmgKPiA+ICsrKyBiL2RyaXZl
cnMvbW1jL2hvc3QvY3FoY2kuaAo+ID4gQEAgLTkzLDYgKzkzLDcgQEAKPiA+ICAgLyogc2VuZCBz
dGF0dXMgY29uZmlnIDEgKi8KPiA+ICAgI2RlZmluZSBDUUhDSV9TU0MxICAgICAgICAgICAgICAg
ICAgMHg0MAo+ID4gICAjZGVmaW5lIENRSENJX1NTQzFfQ0JDX01BU0sgICAgICAgICBHRU5NQVNL
KDE5LCAxNikKPiA+ICsjZGVmaW5lIENRSENJX1NTQzFfQ0lUX01BU0sgICAgICAgICAgR0VOTUFT
SygxNSwgMCkKPiA+Cj4gPiAgIC8qIHNlbmQgc3RhdHVzIGNvbmZpZyAyICovCj4gPiAgICNkZWZp
bmUgQ1FIQ0lfU1NDMiAgICAgICAgICAgICAgICAgIDB4NDQKPiA+IGRpZmYgLS1naXQgYS9kcml2
ZXJzL21tYy9ob3N0L3NkaGNpLW9mLWR3Y21zaGMuYyBiL2RyaXZlcnMvbW1jL2hvc3Qvc2RoY2kt
b2YtZHdjbXNoYy5jCj4gPiBpbmRleCBlMjc2YTRlLi5jYWQ1MTY1IDEwMDY0NAo+ID4gLS0tIGEv
ZHJpdmVycy9tbWMvaG9zdC9zZGhjaS1vZi1kd2Ntc2hjLmMKPiA+ICsrKyBiL2RyaXZlcnMvbW1j
L2hvc3Qvc2RoY2ktb2YtZHdjbXNoYy5jCj4gPiBAQCAtNjMxLDYgKzYzMSwxMSBAQCBzdGF0aWMg
dm9pZCByazM1eHhfc2RoY2lfY3FlX3ByZV9lbmFibGUoc3RydWN0IG1tY19ob3N0ICptbWMpCj4g
PiAgICAgICBzdHJ1Y3QgZHdjbXNoY19wcml2ICpkd2NfcHJpdiA9IHNkaGNpX3BsdGZtX3ByaXYo
cGx0Zm1faG9zdCk7Cj4gPiAgICAgICB1MzIgcmVnOwo+ID4KPiA+ICsgICAgIC8qIFNldCBTZW5k
IFN0YXR1cyBDb21tYW5kIElkbGUgVGltZXIgdG8gMTAuNjZ1cyAoMjU2ICogMSAvIDI0KSAqLwo+
ID4gKyAgICAgcmVnID0gc2RoY2lfcmVhZGwoaG9zdCwgZHdjX3ByaXYtPnZlbmRvcl9zcGVjaWZp
Y19hcmVhMiArIENRSENJX1NTQzEpOwo+ID4gKyAgICAgcmVnID0gKHJlZyAmIH5DUUhDSV9TU0Mx
X0NJVF9NQVNLKSB8IDB4MDEwMDsKPiA+ICsgICAgIHNkaGNpX3dyaXRlbChob3N0LCByZWcsIGR3
Y19wcml2LT52ZW5kb3Jfc3BlY2lmaWNfYXJlYTIgKyBDUUhDSV9TU0MxKTsKPiA+ICsKPiA+ICAg
ICAgIHJlZyA9IHNkaGNpX3JlYWRsKGhvc3QsIGR3Y19wcml2LT52ZW5kb3Jfc3BlY2lmaWNfYXJl
YTIgKyBDUUhDSV9DRkcpOwo+ID4gICAgICAgcmVnIHw9IENRSENJX0VOQUJMRTsKPiA+ICAgICAg
IHNkaGNpX3dyaXRlbChob3N0LCByZWcsIGR3Y19wcml2LT52ZW5kb3Jfc3BlY2lmaWNfYXJlYTIg
KyBDUUhDSV9DRkcpOwo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LXJvY2tjaGlwCg==
