Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1708EC369A7
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Apr 2025 18:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbhyeg5wXDhqXlbEq3ESY8CVB+EdoSjdF48Ay+1ObrU=; b=Z/cg1TVdDwcTqy
	YRzbPRsxcF1dhNX9380U+QwSSzoDOz40Xn77vO+GPYdXSuKOWX2PrUfpLgwYkL/dz27TcZ2fAb8M2
	U71cmV6i9C0sc8myYgkLXF/k4oj/iu69oNvrR91D44eEzltqKJ0BfsoQ0DVvQ2bUdQBu6NBoJPuk3
	VPqpId9vkZt7A3RN5l+DTMrB/1mUCHla0TDbbHknQJo6v4AvZAYoxrNJlw1gsdgAHOD1bCa6YN+1i
	vYvSjkESSIOhAyRaCM+5gAMMkUDcIq6Dk2iwEKtjGm54wmOspAFZjC8zyKH2vuxfGs6+nEuSqzSlD
	BDH25EqfpCvamf4ZoZtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1rYO-00000001csV-1psR;
	Mon, 07 Apr 2025 18:50:40 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1pZx-00000001G8m-1ivX;
	Mon, 07 Apr 2025 16:44:10 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id F2E09A478CD;
	Mon,  7 Apr 2025 16:38:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BC6EC4CEE7;
	Mon,  7 Apr 2025 16:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744044248;
	bh=Y/hLJ//pzM4un2bQ2ayC32XDMKmA5ak0QqcGXXfNyzk=;
	h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
	b=UzmZScU/uoH9Tm7HKXop1oqBcJA6LDr4GPS1uR1DSHakslwRy1DtdncBdZ5/WgSPy
	 ItZncV+gWIzdjdOr1Fs2isqKIhqTGKfjj96bllzDPg0YjbwRZ72Km8WlxhZSDKdXIs
	 tyW6tdu7e1NVcAsVtDjOiUkiCct05PAIPW36DOR29uyaZWxJ/CnD/011tAAGLrq+V1
	 fa2zK4EXjyVpViVpLfHRbgzDSqN0ux+kPZZ++2xCk4pZ+hbTbijyZbjGtx8X28CBJw
	 nRWEtHbuGhSE7B4SDonOGz3rjB2azaqo5CdDBSgYKWSaORrINMmWxvEDpoJQYXSG72
	 MzVCQm/tw5+kQ==
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-abec8b750ebso778762766b.0;
        Mon, 07 Apr 2025 09:44:08 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUnE9QXoVpAhPT3KqYHIEFafiTBYGQkP6HaQgqjAWJZ58JkCGCrIOpCWi+nCb33gKXXIBnDxna04cCsLeGpeaw=@lists.infradead.org, AJvYcCUyCQkJbH0Rczn+Je1IV+QkXf0ZKJ2LHHCnMBGyiPEJkB9RikKJ/NBXcAwVlG/D80Z5oaRhn/V4AgrpNq1ooVWR@lists.infradead.org
X-Gm-Message-State: AOJu0Yxr3s4JNOsCvwRr78DqYNt88TJ7yWp/noOGmp+wil9gk+9gcYAa
	JcDZAksZkDRld0dkod8lQqliWe/CthbdalYW+0SnYLftHQRrxf+Bv9SeEkHxDjQYUbfmFz8XYBc
	KTzk2iYi4o2FWLwwvpM1hKmaUBg==
X-Google-Smtp-Source: AGHT+IGLOtOLmhpSq0PLbaQYhuI2hTXNomO3c9M6XDkDTB0xbkcQkN/9c1/rJNryKU1+tfluzQLXvqqsDiAM+1t+d6w=
X-Received: by 2002:a17:907:da7:b0:ac2:3ea:c23c with SMTP id
 a640c23a62f3a-ac7e7116fd7mr754949966b.5.1744044246963; Mon, 07 Apr 2025
 09:44:06 -0700 (PDT)
MIME-Version: 1.0
References: <5552256.Sb9uPGUboI@phil> <CAL_JsqJo+9ycUFHVZ2Darh_RWaRuJGX6KKQGsbeuDWav7vKA2g@mail.gmail.com>
 <8512245.T7Z3S40VBb@diego>
In-Reply-To: <8512245.T7Z3S40VBb@diego>
From: Rob Herring <robh@kernel.org>
Date: Mon, 7 Apr 2025 11:43:54 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJVi5tf8bh6AnZwNwiBe+EG2CHQRGQGLK6SdMzQiiSbWA@mail.gmail.com>
X-Gm-Features: ATxdqUFxaCjS80Qj_U9puWLvAEoD3V9o6VjAwVp2ZHTzEA7_GR-X9ZqxugryY_s
Message-ID: <CAL_JsqJVi5tf8bh6AnZwNwiBe+EG2CHQRGQGLK6SdMzQiiSbWA@mail.gmail.com>
Subject: Re: [GIT PULL] Rockchip dts64 changes for 6.15 #3
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: arm@kernel.org, soc@kernel.org, linux-rockchip@lists.infradead.org, 
	linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_094409_574719_3E890323 
X-CRM114-Status: GOOD (  22.56  )
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

T24gTW9uLCBBcHIgNywgMjAyNSBhdCAxMTo0MOKAr0FNIEhlaWtvIFN0w7xibmVyIDxoZWlrb0Bz
bnRlY2guZGU+IHdyb3RlOgo+Cj4gSGkgUm9iLAo+Cj4gQW0gTW9udGFnLCA3LiBBcHJpbCAyMDI1
LCAxNzo1NjozNyBNaXR0ZWxldXJvcMOkaXNjaGUgU29tbWVyemVpdCBzY2hyaWViIFJvYiBIZXJy
aW5nOgo+ID4gT24gV2VkLCBNYXIgMTksIDIwMjUgYXQgNjo1NuKAr1BNIEhlaWtvIFN0dWVibmVy
IDxoZWlrb0BzbnRlY2guZGU+IHdyb3RlOgo+ID4gPgo+ID4gPiBIaSBzb2MgbWFpbnRhaW5lcnMs
Cj4gPiA+Cj4gPiA+IEkgbWFkZSBhbiBlcnJvciBhbmQgYWNjaWRlbnRpYWxseSBhcHBsaWVkIGEg
cGF0Y2ggdGhhdCB3YXMgbWVhbnQgZm9yCj4gPiA+IHRoZSBtZmQgdHJlZS4gVGhhbmtmdWxseSBT
dGVwaGVuIG5vdGljZWQgdGhhdCB3aGVuIHRoZSBkdXBsaWNhdGUKPiA+ID4gY29tbWl0IGFwcGVh
cmVkIGluIGxpbnV4LW5leHQuCj4gPgo+ID4gQm90aCBjb21taXRzIGFyZSBpbiB2Ni4xNS1yYzEg
bm93IGFuZCB0aGUgcmV2ZXJ0IGlzIG5vdCwgc28gdGhpcwo+ID4gc2hvdWxkIG5vdCBnZXQgYXBw
bGllZC9wdWxsZWQuIE9yIHlvdSB3aWxsIG5lZWQgdG8gcmV2ZXJ0IHRoZSByZXZlcnQuCj4KPiB5
ZXMsIHRoYXQgd2FzIHRoZSBpbnRlbnRpb24uCj4KPiBCYWNrIHdoZW4gSSBzdWJtaXR0ZWQgdGhp
cyBQUiwgSSB0YWxrZWQgd2l0aCBBcm5kIG9uIElSQyB0aGUgbmV4dCBkYXkuCj4KPiBBcyBib3Ro
IGNvbW1pdHMgYXJlIGlkZW50aWNhbCBzYW5zIHNvbWUgU2lnbmVkLW9mZi1ieSBsaW5lcywgaGUg
c3VnZ2VzdGVkCj4gbm90IHRyeWluZyB0byBwdXQgYSByZXZlcnQgaW4sIGJ1dCBpbnN0ZWFkIGxl
dCBnaXQgc29sdmUgaXQgaXRzZWxmLCBiZWNhdXNlCj4KPiBhcm5kIG9uIElSQzoKPiA+IFsuLi5d
LCBidXQgSSB3b3JyeSB0aGF0IHRoaXMgd291bGQgbWFrZSB0aGluZ3Mgd29yc2UgaWYgJ2dpdCBt
ZXJnZScKPiA+IGVuZHMgdXAgZG9pbmcgdGhlIHJldmVydCBvbiB0b3Agb2YgdGhlIG9yaWdpbmFs
IGNvbW1pdCBvbmNlIGl0IGdldHMgdG8KPiA+IHRvcnZhbGRzLiBOb3Qgc3VyZSBpZiB0aGF0J3Mg
c3RpbGwgYSBwcm9ibGVtIGluIGdpdCB0aGVzZSBkYXlzLCBidXQKPiA+IEkndmUgc2VlbiBpdCBo
YXBwZW4gaW4gdGhlIHBhc3QuCj4gPiBpZiB0d28gaWRlbnRpY2FsIHBhdGNoZXMgYXJlIGluIGRp
ZmZlcmVudCBicmFuY2hlcywganVzdCBsZWF2aW5nIHRoZW0KPiA+IHRoZXJlIGlzIHVzdWFsbHkg
ZWFzaWVyCj4KPiBTbyB0aGlzIFBSIHdhcyBhbHJlYWR5IG1hcmtlZCBhcyAic3VwZXJzZWVkZWQi
IGluIHBhdGNod29yayBiYWNrCj4gb24gbWFyY2ggMjB0aC4KPgo+Cj4gTmV2ZXJ0aGVsZXNzLCB0
aGFua3MgZm9yIG1ha2luZyBzdXJlIG5vIGZ1bmt5IHJldmVydCBoYXBwZW5zIG5vdy4KClRoZSBj
b21taXQgaXMgc3RpbGwgaW4gbGludXgtbmV4dCB0aG91Z2guIFRoYXQncyBob3cgSSBoYXBwZW5l
ZCB1cG9uIHRoaXMuCgpSb2IKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
