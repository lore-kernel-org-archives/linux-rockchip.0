Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 770B1C5AE59
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Jun 2025 07:41:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/qByIU6KkgySyrfn1dfVlMZJFh/t2VJSXXuAx+dMPS0=; b=rOqMEod2iTTroM
	s7DafzYhaiYzziT3sgPwC50Ek1owkqbOqwde2J3GhvCgAmbshdqSPd19gh8y3lIespCaLDxtpGsk9
	XFB2zVG93vTI8fc9HpIVXuSm+lHscxDpnm8ZZW6SPrZAO7yZUC+ZOGtbr8geJDvBTGwl/s+rSCF+S
	Pqles7grq/0ciht5g01OMhF12wosSHGmbgcHlKiHQgNJcFBrVdxNQf/UgUpSBMyPA61KhZz7objAm
	6WLlhCzGlHDKhc1wIttEiC+z8F8sXgao1Muwcap8ee1+Y8t37xsPvXj4BEEzWWtmrt8GnwiKGAO9M
	U9iMIbPBKO/0uozvN9YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5EJ-0000000Ey13-18zX;
	Thu, 05 Jun 2025 07:41:39 +0000
Received: from mail-yb1-xb2b.google.com ([2607:f8b0:4864:20::b2b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN5EF-0000000Ey0M-0Aqa
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Jun 2025 07:41:37 +0000
Received: by mail-yb1-xb2b.google.com with SMTP id 3f1490d57ef6-e73e9e18556so755423276.0
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Jun 2025 00:41:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1749109293; x=1749714093; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DGC12m9VHJaicWgWsYknA1yUSyETrOF70heDVG+923I=;
        b=M9SZW+u31bG85OzuBKQ03hiuk1+MrDdlhbWrDfcKuz+Rdj+w3sxuJwbxSxRMEnWUPd
         9AY6esEIK2W9q/omFyb34s7laCt0Etdr9TcngqzH78HrXBkvaItGwatLRFGNtl/WFDcB
         dXM/0MOITwlkifuXMnzbt7XQJHB3mKGKiG5Ez525I4M2dJy4b6GQDPmA+ksXgWnV1deU
         AmTrXg1Ts/ekZ4hkkNIy1/eg0yt02cXJ/vqK4XLyKv06zUsFTFkDZOPnekDVpGMAzA1q
         JR2Ry/U1jHIqzO2gFO40fr15TZG4Et8ZLrFjfTN7IF2hPZAGsk6gYE/xMLPXxRKlxVp0
         2USg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749109293; x=1749714093;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DGC12m9VHJaicWgWsYknA1yUSyETrOF70heDVG+923I=;
        b=kN8AQ3q6a4RwBmOuWPk7qV8m8SRbRtmS2t1xpNt3vNOJ8L04O3EYxZf7HBgarOhcgI
         NYQsWYqYiYibsxLtjH5JQs5Jv3A3c3CE1BfWwjDW6+fAnGxXYvpaAFgEZ7FHAw+K+XDa
         luUeDM73mLJlpuGnR1T4pXqFPxoMAw1hjrzZZ4iuqAue+uLy7GnwEjrIC9wD46NCupKe
         pKIHiL5b86eOe86WB/BG12Y/fYTB2wqEz/A03UI1hGwQnIk5Zsg/BL5SasRC/bug+WUA
         iiU+at/mki+kqqdWXqCORA2z/NVsVuQC/1tZvcljAwU9S62Kq6RCpU1fJgwq3zUwmHVB
         PrJA==
X-Forwarded-Encrypted: i=1; AJvYcCUsbE7tSl6OpC6Zsop/sBvdDHGoev0xFR1WCJSbvEhHuXI16IoldO8zn1C1Xhnq08cmprG/fLbn/wLtrzlnBg==@lists.infradead.org
X-Gm-Message-State: AOJu0Yx+zLpP70K3T0sIIRVp457iFqsNADO2JbSpstEpHPVmSjWR4zzR
	QfOdBwVrgQ1XVzdtxztrzd3q2oocVmc42iGKVx8cItG+Fo6NUFT4SGhjL3WYork+8IQ=
X-Gm-Gg: ASbGnctm65SS1+bNgW33ic4lia+kZtl2fQiHlaAlUg5adsV1yvS7e7bIRm25lgV3n17
	saeCnnnT/5uFvGIcJ5+DqHvAX+/DlM7B6zSUCyn1t2lQUINcoZ16psN5EBcYp0iPahgw5H1n/s4
	841jEgfTp/U3dZfBqO/rBXHl0jVH7zdKotmZ8j6Wb64kJjZQCvx1GgxkZuJjlmoNApe+EY4lcmL
	i9UrXwl42vlE26i3fRnc1jde422cDIa5WJqZqNN2Fx/WK1tBst1Jq//Nx+b7lsidIifjA1RqpSu
	8pc3PbMykDmiqncQZm27gVTnVQdJzIH4N8VZ9GU6vGfeldZTwn9xHOkP0QCTiHUHV1SyXnkFO5Y
	FGkISUd/S2ApgPyR8+hLwfG9CrqmJAA==
X-Google-Smtp-Source: AGHT+IF9YLdGWUisnnJTaPXHEt5Oljpn80lVxWlOHVaxC+brcGwAFaBwD/IVDLOJ9PSEod7f1F9TPw==
X-Received: by 2002:a05:6902:1026:b0:e7b:95eb:be9b with SMTP id 3f1490d57ef6-e81882370c3mr3450203276.5.1749109293110;
        Thu, 05 Jun 2025 00:41:33 -0700 (PDT)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com. [209.85.219.182])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e81831fecd3sm501664276.36.2025.06.05.00.41.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 Jun 2025 00:41:32 -0700 (PDT)
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e7db5c13088so635979276.1;
        Thu, 05 Jun 2025 00:41:32 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUK1RwjsgNHb+aR9hqZAGBiSOq6bajdHcsEEAophUPCmJdWWc+GDFSBbGEuj6RC8Mqkmj0x98tz1WsFSZGaBT8=@lists.infradead.org, AJvYcCXsNUn9JmsKCXexaiLi69QS8yd7vQT+SYKyTHhS1mLU12O1JliLVMrYb+YGEdvCZFphgTNgaGvEwJAiQZIIGfIY@lists.infradead.org
X-Received: by 2002:a05:6902:1387:b0:e7d:c621:33d1 with SMTP id
 3f1490d57ef6-e81882c7d19mr3544074276.14.1749109291936; Thu, 05 Jun 2025
 00:41:31 -0700 (PDT)
MIME-Version: 1.0
References: <20250604-6-10-rocket-v6-0-237ac75ddb5e@tomeuvizoso.net>
 <20250604-6-10-rocket-v6-6-237ac75ddb5e@tomeuvizoso.net> <CAPj87rPv7Pd5tbXhpRLaUJCGB8JmD4kfF50WRsEiST2gvtg3Bg@mail.gmail.com>
 <cc21a090-801d-4b32-bac2-01cebf896c85@arm.com>
In-Reply-To: <cc21a090-801d-4b32-bac2-01cebf896c85@arm.com>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Thu, 5 Jun 2025 09:41:21 +0200
X-Gmail-Original-Message-ID: <CAAObsKDMhuqYtn=+xR6-n=Uk+5_rU91OqVKyQ5cxhqfTo5svjg@mail.gmail.com>
X-Gm-Features: AX0GCFucQ_FiqAlA0rjsUQpt2JT7jK-lOTeRvMqo5HOGrCT-6j2Gn-ED1Jn3Rvg
Message-ID: <CAAObsKDMhuqYtn=+xR6-n=Uk+5_rU91OqVKyQ5cxhqfTo5svjg@mail.gmail.com>
Subject: Re: [PATCH v6 06/10] accel/rocket: Add IOCTL for BO creation
To: Robin Murphy <robin.murphy@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_004135_176278_40F1A9BD 
X-CRM114-Status: GOOD (  43.97  )
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
Cc: Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, Kever Yang <kever.yang@rock-chips.com>, linux-rockchip@lists.infradead.org, Daniel Stone <daniel@fooishbar.org>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBKdW4gNCwgMjAyNSBhdCA3OjAz4oCvUE0gUm9iaW4gTXVycGh5IDxyb2Jpbi5tdXJw
aHlAYXJtLmNvbT4gd3JvdGU6Cj4KPiBPbiAyMDI1LTA2LTA0IDU6MTggcG0sIERhbmllbCBTdG9u
ZSB3cm90ZToKPiA+IEhpIFRvbWV1LAo+ID4gSSBoYXZlIHNvbWUgYmFkIG5ld3MgLi4uCj4gPgo+
ID4gT24gV2VkLCA0IEp1biAyMDI1IGF0IDA4OjU3LCBUb21ldSBWaXpvc28gPHRvbWV1QHRvbWV1
dml6b3NvLm5ldD4gd3JvdGU6Cj4gPj4gK2ludCByb2NrZXRfaW9jdGxfY3JlYXRlX2JvKHN0cnVj
dCBkcm1fZGV2aWNlICpkZXYsIHZvaWQgKmRhdGEsIHN0cnVjdCBkcm1fZmlsZSAqZmlsZSkKPiA+
PiArewo+ID4+ICsgICAgICAgWy4uLl0KPiA+PiArCj4gPj4gKyAgICAgICAvKiBUaGlzIHdpbGwg
bWFwIHRoZSBwYWdlcyB0byB0aGUgSU9NTVUgbGlua2VkIHRvIGNvcmUgMCAqLwo+ID4+ICsgICAg
ICAgc2d0ID0gZHJtX2dlbV9zaG1lbV9nZXRfcGFnZXNfc2d0KHNobWVtX29iaik7Cj4gPj4gKyAg
ICAgICBpZiAoSVNfRVJSKHNndCkpIHsKPiA+PiArICAgICAgICAgICAgICAgcmV0ID0gUFRSX0VS
UihzZ3QpOwo+ID4+ICsgICAgICAgICAgICAgICBnb3RvIGVycjsKPiA+PiArICAgICAgIH0KPiA+
PiArCj4gPj4gKyAgICAgICAvKiBNYXAgdGhlIHBhZ2VzIHRvIHRoZSBJT01NVXMgbGlua2VkIHRv
IHRoZSBvdGhlciBjb3Jlcywgc28gYWxsIGNvcmVzIGNhbiBhY2Nlc3MgdGhpcyBCTyAqLwo+ID4K
PiA+IFNvLCB1aCwgdGhpcyBpcyBub3QgZ3JlYXQuCj4gPgo+ID4gV2Ugb25seSBoYXZlIGEgc2lu
Z2xlIElPTU1VIGNvbnRleHQgKHdlbGwsIG9uZSBwZXIgY29yZSwgYnV0IG9uZQo+ID4gZWZmZWN0
aXZlIFZNQSkgZm9yIHRoZSB3aG9sZSBkZXZpY2UuIEV2ZXJ5IEJPIHRoYXQgZ2V0cyBjcmVhdGVk
LCBnZXRzCj4gPiBtYXBwZWQgaW50byB0aGUgSU9NTVUgdW50aWwgaXQncyBiZWVuIGRlc3Ryb3ll
ZC4gR2l2ZW4gdGhhdCB0aGVyZSBpcwo+ID4gbm8gY2xpZW50IGlzb2xhdGlvbiBhbmQgbm8gQ1Mg
dmFsaWRhdGlvbiwgdGhhdCBtZWFucyB0aGF0IGV2ZXJ5IGNsaWVudAo+ID4gaGFzIFJXIGFjY2Vz
cyB0byBldmVyeSBCTyBjcmVhdGVkIGJ5IGFueSBvdGhlciBjbGllbnQsIGZvciB0aGUKPiA+IGxp
ZmV0aW1lIG9mIHRoYXQgQk8uCj4gPgo+ID4gSSByZWFsbHkgZG9uJ3QgdGhpbmsgdGhhdCB0aGlz
IGlzIHRyYWN0YWJsZSwgZ2l2ZW4gdGhhdCBhbnlvbmUgd2l0aAo+ID4gYWNjZXNzIHRvIHRoZSBk
ZXZpY2UgY2FuIGV4ZmlsdHJhdGUgYW55dGhpbmcgdGhhdCBhbnlvbmUgZWxzZSBoYXMKPiA+IHBy
b3ZpZGVkIHRvIHRoZSBkZXZpY2UuCj4gPgo+ID4gSSBhbHNvIGRvbid0IHRoaW5rIHRoYXQgQ1Mg
dmFsaWRhdGlvbiBpcyB0cmFjdGFibGUgdGJoLgo+ID4KPiA+IFNvIEkgZ3Vlc3MgdGhhdCBsZWF2
ZXMgdXMgd2l0aCB0aGUgdGhpcmQgb3B0aW9uOiBlbmZvcmNpbmcgY29udGV4dAo+ID4gc2VwYXJh
dGlvbiB3aXRoaW4gdGhlIGtlcm5lbCBkcml2ZXIuCj4gPgo+ID4gVGhlIGxlYXN0IHByZWZlcmFi
bGUgb3B0aW9uIEkgY2FuIHRoaW5rIG9mIGlzIHRoYXQgcmt0IHNldHMgdXAgYW5kCj4gPiB0ZWFy
cyBkb3duIE1NVSBtYXBwaW5ncyBmb3IgZWFjaCBqb2IsIGFjY29yZGluZyB0byB0aGUgQk8gbGlz
dAo+ID4gcHJvdmlkZWQgZm9yIGl0LiBUaGlzIHNlZW1zIGxpa2Ugd2F5IHRvbyBtdWNoIG92ZXJo
ZWFkIC0gZXNwZWNpYWxseQo+ID4gd2l0aCBSSyBJT01NVSBvcHMgaGF2aW5nIGJlZW4gc2xvdyBl
bm91Z2ggd2l0aGluIERSTSB0aGF0IHdlIGV4cGVuZGVkCj4gPiBhIGxvdCBvZiBlZmZvcnQgaW4g
V2VzdG9uIGRvaW5nIGNhY2hpbmcgb2YgRFJNIEJPcyB0byBhdm9pZCBkb2luZyB0aGlzCj4gPiB1
bmxlc3MgY29tcGxldGVseSBuZWNlc3NhcnkuIEl0IGFsc28gc2VlbXMgcmlza3kgd3J0IGFsbG9j
YXRpbmcgbWVtb3J5Cj4gPiBpbiBkcm1fc2NoZWQgcGF0aHMgdG8gZW5zdXJlIGZvcndhcmQgcHJv
Z3Jlc3MuCj4gPgo+ID4gU2xpZ2h0bHkgbW9yZSBwcmVmZXJhYmxlIHRoYW4gdGhpcyB3b3VsZCBi
ZSB0aGF0IHJrdCBrZXB0IGEKPiA+IHBlci1jb250ZXh0IGxpc3Qgb2YgQk9zIGFuZCB0aGVpciBW
QSBtYXBwaW5ncywgYW5kIHdoZW4gc3dpdGNoaW5nCj4gPiBiZXR3ZWVuIGRpZmZlcmVudCBjb250
ZXh0cywgd291bGQgdGVhciBkb3duIGFsbCBNTVUgbWFwcGluZ3MgZnJvbSB0aGUKPiA+IG9sZCBj
b250ZXh0IGFuZCBzZXQgdXAgbWFwcGluZ3MgZnJvbSB0aGUgbmV3LiBCdXQgdGhpcyBoYXMgdGhl
IHNhbWUKPiA+IGlzc3VlcyB3aXRoIGRybV9zY2hlZC4KPiA+Cj4gPiBUaGUgbW9zdCBwcmVmZXJh
YmxlIG9wdGlvbiBmcm9tIHdoZXJlIEkgc2l0IGlzIHRoYXQgd2UgY291bGQgaGF2ZSBhbgo+ID4g
ZXhwbGljaXQgbm90aW9uIG9mIGRyaXZlci1tYW5hZ2VkIElPTU1VIGNvbnRleHRzLCBzdWNoIHRo
YXQgcmt0IGNvdWxkCj4gPiBwcmVwYXJlIHRoZSBJT01NVSBmb3IgZWFjaCBjb250ZXh0LCBhbmQg
dGhlbiBzd2l0Y2hpbmcgY29udGV4dHMgYXQKPiA+IGpvYi1ydW4gdGltZSB3b3VsZCBiZSBhIG1h
dHRlciBvZiBjaGFuZ2luZyB0aGUgcm9vdCBEVEUgcG9pbnRlciBhbmQKPiA+IGlzc3VpbmcgYSBm
bHVzaC4gQnV0IEkgZG9uJ3Qgc2VlIHRoYXQgYW55d2hlcmUgaW4gdGhlIHVzZXItZmFjaW5nCj4g
PiBJT01NVSBBUEksIGFuZCBJJ20gc3VyZSBSb2JpbiAoQ0NlZCkgd2lsbCBiZSBhbG9uZyBzaG9y
dGx5IHRvIGV4cGxhaW4KPiA+IHdoeSBpdCdzIG5vdCBwb3NzaWJsZSAuLi4KPgo+IE9uIHRoZSBj
b250cmFyeSwgaXQncyBjYWxsZWQgaW9tbXVfYXR0YWNoX2dyb3VwKCkgOikKPgo+IEluIGZhY3Qg
dGhpcyBpcyBwcmVjaXNlbHkgdGhlIHVzYWdlIG1vZGVsIEkgd291bGQgc3VnZ2VzdCBmb3IgdGhp
cyBzb3J0Cj4gb2YgdGhpbmcsIGFuZCBJSVJDIEkgaGFkIGEgc2ltaWxhciBjb252ZXJzYXRpb24g
d2l0aCB0aGUgRXRob3MgZHJpdmVyCj4gZm9sa3MgYSBmZXcgeWVhcnMgYmFjay4gUnVubmluZyB5
b3VyIG93biBJT01NVSBkb21haW4gaXMgbm8gYmlnZ2llLCBzZWUKPiBzZXZlcmFsIG90aGVyIERS
TSBkcml2ZXJzIChpbmNsdWRpbmcgcm9ja2NoaXApLiBBcyBsb25nIGFzIHlvdSBoYXZlIGEKPiBz
ZXBhcmF0ZSBzdHJ1Y3QgZGV2aWNlIHBlciBOUFUgY29yZSB0aGVuIGluZGVlZCBpdCBzaG91bGQg
YmUgcGVyZmVjdGx5Cj4gc3RyYWlnaHRmb3J3YXJkIHRvIG1haW50YWluIGRpc3RpbmN0IElPTU1V
IGRvbWFpbnMgcGVyIGpvYiwgYW5kCj4gYXR0YWNoL2RldGFjaCB0aGVtIGFzIHBhcnQgb2Ygc2No
ZWR1bGluZyB0aGUgam9icyBvbiBhbmQgb2ZmIHRoZSBjb3Jlcy4KPiBMb29rcyBsaWtlIHJvY2tj
aGlwLWlvbW11IHN1cHBvcnRzIGNyb3NzLWluc3RhbmNlIGF0dGFjaCwgc28gaWYKPiBuZWNlc3Nh
cnkgeW91IHNob3VsZCBhbHJlYWR5IGJlIE9LIHRvIGhhdmUgbXVsdGlwbGUgY29yZXMgd29ya2lu
ZyBvbiB0aGUKPiBzYW1lIGpvYiBhdCBvbmNlLCB3aXRob3V0IG5lZWRpbmcgZXh0cmEgd29yayBh
dCB0aGUgSU9NTVUgZW5kLgoKT2ssIHNvIGlmIEkgdW5kZXJzdG9vZCBpdCBjb3JyZWN0bHksIHRo
ZSBwbGFuIHdvdWxkIGJlIGZvciBlYWNoIERSTQpjbGllbnQgdG8gaGF2ZSBvbmUgSU9NTVUgZG9t
YWluIHBlciBlYWNoIGNvcmUgKGVhY2ggY29yZSBoYXMgaXRzIG93bgpJT01NVSksIGFuZCBtYXAg
YWxsIGl0cyBidWZmZXJzIGluIGFsbCB0aGVzZSBkb21haW5zLgoKVGhlbiB3aGVuIGEgam9iIGlz
IGFib3V0IHRvIGJlIHNjaGVkdWxlZCBvbiBhIGdpdmVuIGNvcmUsIG1ha2Ugc3VyZQp0aGF0IHRo
ZSBJT01NVSBmb3IgdGhhdCBjb3JlIHVzZXMgdGhlIGRvbWFpbiBmb3IgdGhlIGNsaWVudCB0aGF0
CnN1Ym1pdHRlZCB0aGUgam9iLgoKRGlkIEkgZ2V0IHRoYXQgcmlnaHQ/Cgo+ID4gRWl0aGVyIHdh
eSwgSSB3b25kZXIgaWYgd2UgaGF2ZSBmdWxseSBwZXItY29udGV4dCBtYXBwaW5ncywgdXNlcnNw
YWNlCj4gPiBzaG91bGQgbm90IG1hbmFnZSBJT1ZBcyBpbiB0aGUgVk1fQklORCBzdHlsZSBjb21t
b24gdG8gbmV3ZXIgZHJpdmVycywKPiA+IHJhdGhlciB0aGFuIHJlbHlpbmcgb24gdGhlIGtlcm5l
bCB0byBkbyBWQSBhbGxvY2F0aW9uIGFuZCBpbmZvcm0KPiA+IHVzZXJzcGFjZSBvZiB0aGVtPwo+
Cj4gSW5kZWVkIGlmIHlvdSdyZSB1c2luZyB0aGUgSU9NTVUgQVBJIGRpcmVjdGx5IHRoZW4geW91
IG5lZWQgdG8gZG8geW91cgo+IG93biBhZGRyZXNzIHNwYWNlIG1hbmFnZW1lbnQgZWl0aGVyIHdh
eSwgc28gbWF0Y2hpbmcgYml0cyBvZiBwcm9jZXNzIFZBCj4gc3BhY2UgaXMgcHJldHR5IHNpbXBs
ZSB0byBwdXQgb24gdGhlIHRhYmxlLgoKTXkgaW1wcmVzc2lvbiB3YXMgdGhhdCB0aGUgVk1fQklO
RCBmYWNpbGl0eSBpcyBpbnRlbmRlZCBmb3IgU1ZNIGFzIGluCk9wZW5DTCBhbmQgbWF5YmUgVnVs
a2FuPwoKR3Vlc3MgbXkgcXVlc3Rpb24gaXMsIHdoYXQgd291bGQgc3VjaCBhbiBhY2NlbGVyYXRv
ciBkcml2ZXIgd2luIGJ5CmxldHRpbmcgdXNlcnNwYWNlIG1hbmFnZSB0aGUgYWRkcmVzcyBzcGFj
ZT8KClRoYW5rcywKClRvbWV1CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LXJvY2tjaGlwCg==
