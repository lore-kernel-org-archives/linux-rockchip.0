Return-Path: <SRS0=NTKj=DH=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-9.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514E5C4727C
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 20:34:39 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B43B42074B
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Sep 2020 20:34:38 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="zuMjXdka";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="f7Glgz5T"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B43B42074B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=pd9AqFs+ZXwgbInxysQvMWiPM65pE50vYfkOHM16zEM=; b=zuMjXdkah3j70zPYgycrm61SE
	zIrrbAM0BbyctWMYmRJLgxAs/McHjP3bFVeWxw6wImie8Nr3Nu6UlF/JT8HLRz6YHwZzd0echUUVM
	1YBvvE7Z4ele9nin3ny9o6vTQsficjxkjUoFe0ChUSr9d351CoqYwkjnFyr0kKWdGZv7wOG4lbW6S
	9A4bPSsWf6zZEMMx1U6u2tvVHJh6D0hh5907c5O3Tu7Yxdb41boJ15uO2hGL3Ad/hxhwaScH0Ukcf
	gniG9bC9oGQdPA70a/ZOEbGAhKBX7OdGYkmHIN1YGSZYAH7yrZXMdMGAd2UTYctq/WLrOslo9uC2L
	1V89a2YiQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kNio0-0002tB-0n; Wed, 30 Sep 2020 20:34:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNinv-0002rs-JW; Wed, 30 Sep 2020 20:34:24 +0000
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
 [209.85.210.45])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A67120789;
 Wed, 30 Sep 2020 20:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601498062;
 bh=QfKwLKJeboaj9ZoI7BhbZ+bcUjrWN0qiAPiA8FEHF94=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=f7Glgz5TcfN7f4iEiAg9hTjORT0PqxZOT+WoRIIyzU1VivBV00GvNO1JKB2gK8aRN
 Hs8x7vFljnJ9//ngSVSsQRGcdtDtzEQxHczFoyeavNGzeDIP+OWCSvZqxNHlGiHm4g
 EjSNeIJXnLqaqJdcz4pc6WDdiW3bz4RC4o/jdUmg=
Received: by mail-ot1-f45.google.com with SMTP id o8so3181296otl.4;
 Wed, 30 Sep 2020 13:34:22 -0700 (PDT)
X-Gm-Message-State: AOAM5325MNuAgvTWUoOf9oaWlbYIdPBtGpJ8q87uoLHh5VlTbPnfCuL2
 2m74K9pMxN6U8ej65TOUFUig+V+E07izwoNu6g==
X-Google-Smtp-Source: ABdhPJyzwAAPRXXAS2xvoZvN/yxKutEE4lHyxhoMfTZUFh2tvOgKBBCP8Z5+2QRHxiT4htRIoCYE3EgLLi4n0QpHamU=
X-Received: by 2002:a9d:6b0d:: with SMTP id g13mr2700531otp.129.1601498061577; 
 Wed, 30 Sep 2020 13:34:21 -0700 (PDT)
MIME-Version: 1.0
References: <20200819094255.474565-1-maz@kernel.org>
 <20200930162722.GF1516931@oden.dyn.berto.se>
 <977f60f07a4cb5c59f0e5f8a9dfb3993@kernel.org>
 <20200930173744.GG1516931@oden.dyn.berto.se>
In-Reply-To: <20200930173744.GG1516931@oden.dyn.berto.se>
From: Rob Herring <robh@kernel.org>
Date: Wed, 30 Sep 2020 15:34:10 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+xBKbYXWipwmZ=ZidorsMUFDw2NpUyxobx4FCTn+8Hmg@mail.gmail.com>
Message-ID: <CAL_Jsq+xBKbYXWipwmZ=ZidorsMUFDw2NpUyxobx4FCTn+8Hmg@mail.gmail.com>
Subject: Re: [PATCH v2] of: address: Work around missing device_type property
 in pcie nodes
To: =?UTF-8?Q?Niklas_S=C3=B6derlund?= <niklas.soderlund@ragnatech.se>, 
 Bjorn Helgaas <bhelgaas@google.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200930_163423_782175_74835DCE 
X-CRM114-Status: GOOD (  28.93  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>,
 Android Kernel Team <kernel-team@android.com>,
 Samuel Dionne-Riel <samuel@dionne-riel.com>, Marc Zyngier <maz@kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 PCI <linux-pci@vger.kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gV2VkLCBTZXAgMzAsIDIwMjAgYXQgMTI6MzcgUE0gTmlrbGFzIFPDtmRlcmx1bmQKPG5pa2xh
cy5zb2Rlcmx1bmRAcmFnbmF0ZWNoLnNlPiB3cm90ZToKPgo+IEhpIE1hcmMsCj4KPiBPbiAyMDIw
LTA5LTMwIDE4OjIzOjIxICswMTAwLCBNYXJjIFp5bmdpZXIgd3JvdGU6Cj4gPiBIaSBOaWtsYXMs
Cj4gPgo+ID4gWysgU2FtdWVsXQo+ID4KPiA+IE9uIDIwMjAtMDktMzAgMTc6MjcsIE5pa2xhcyBT
w7ZkZXJsdW5kIHdyb3RlOgo+ID4gPiBIaSBNYXJjLAo+ID4gPgo+ID4gPiBJJ20gYWZyYWlkIHRo
aXMgY29tbWl0IGJyZWFrcyBib290aW5nIG15IHJrMzM5OSBkZXZpY2UuCj4gPiA+Cj4gPiA+IEkg
YmlzZWN0ZWQgdGhlIHByb2JsZW0gdG8gdGhpcyBwYXRjaCBtZXJnZWQgYXMgWzFdLiBJJ20gdGVz
dGluZyBvbiBhCj4gPiA+IFNjYXJsZXQgZGV2aWNlIGFuZCBJJ20gdXNpbmcgdGhlIHVubW9kaWZp
ZWQgdXBzdHJlYW0KPiA+ID4gcmszMzk5LWdydS1zY2FybGV0LWlueC5kdGIgZm9yIG15IHRlc3Rz
Lgo+ID4gPgo+ID4gPiBUaGUgcHJvYmxlbSBJJ20gZXhwZXJpZW5jZSBpcyBhIGJsYWNrIHNjcmVl
biBhZnRlciB0aGUgYm9vdGxvYWRlciBhbmQKPiA+ID4gdGhlIGRldmljZSBpcyBub25lIHJlc3Bv
bnNpdmUgb3ZlciB0aGUgbmV0d29yay4gSSBoYXZlIG5vIHNlcmlhbCBjb25zb2xlCj4gPiA+IHRv
IHRoaXMgZGV2aWNlIHNvIEknbSBhZnJhaWQgSSBjYW4ndCB0ZWxsIHlvdSBpZiB0aGVyZSBpcyBh
bnl0aGluZwo+ID4gPiB1c2VmdWwgb24gdG8gYWlkIGRlYnVnZ2luZyB0aGVyZS4KPiA+ID4KPiA+
ID4gSWYgSSB0cnkgdG8gdGVzdCBvbmUgY29tbWl0IGVhcmxpZXIgWzJdIHRoZSBzeXN0ZW0gYm9v
dHMgYXMgZXhwZWN0ZWQgYW5kCj4gPiA+IGV2ZXJ5dGhpbmcgd29ya3MgYXMgaXQgZGlkIGZvciBt
ZSBpbiB2NS44IGFuZCBlYXJsaWVyLiBJIGhhdmUgd29ya2VkCj4gPiA+IGxpdHRsZSB3aXRoIHRo
aXMgZGV2aWNlIGFuZCBoYXZlIG5vIGNsdWUgYWJvdXQgd2hhdCBpcyByZWFsbHkgb24gdGhlIFBD
SQo+ID4gPiBidXNzLiBCdXQgcnVubmluZyBmcm9tIFsyXSBJIGhhdmUgdGhpcyBpbmZvIGFib3V0
IFBDSSBpZiBpdCdzIGhlbHBmdWwsCj4gPiA+IHBsZWFzZSBhc2sgaWYgc29tZXRoaW5ncyBtaXNz
aW5nLgo+ID4KPiA+IFBsZWFzZSBzZWUgdGhlIHRocmVhZCBhdCBbMV0uIFRoZSBwcm9ibGVtIHdh
cyByZXBvcnRlZCBhIGZldyB3ZWVrcyBiYWNrCj4gPiBieSBTYW11ZWwsIGFuZCBJIHdhcyBleHBl
Y3RpbmcgUm9iIGFuZCBMb3JlbnpvIHRvIHB1c2ggYSBmaXggZm9yIHRoaXMuCj4KPiBUaGFua3Mg
Zm9yIHByb3ZpZGluZyBhIHNvbHV0aW9uLgo+Cj4gPgo+ID4gUm9iLCBMb3JlbnpvLCBhbnkgdXBk
YXRlIG9uIHRoaXM/CgpUaGUgZml4IGlzIGluIEJqb3JuJ3MgdHJlZVsxXS4KCkJqb3JuLCBnb2lu
ZyB0byBzZW5kIHRoaXMgdG8gTGludXMgYmVmb3JlIHY1LjkgaXMgb3V0PwoKUm9iCgpbMV0gaHR0
cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvaGVsZ2Fhcy9wY2ku
Z2l0L2xvZy8/aD1mb3ItbGludXMKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
