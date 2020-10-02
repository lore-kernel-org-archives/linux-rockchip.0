Return-Path: <SRS0=AZtF=DJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E876C35257
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 15:19:48 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 028DC206CD
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Oct 2020 15:19:45 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="V5nF7B/h";
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYwhyOfv"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 028DC206CD
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cXILpSuQ6jP8oE/4h6Jh8ybM0jF5C6Yb4fFVuox0mAs=; b=V5nF7B/hVk9CidubvVM5DTFfz
	K0l2IRl/kAyOu+aKNM/iWnmc40fS5tKmCIAEZWqqKBT0pLthpPLWC6Gzko6nYkIebTpYSjmhSrxgc
	zwutO4AG2eMGD/5mKgP/e3+mpARGZ8k2cllQNur/FeUUfGdRomxpNy7e53Wi9EDiPqj8kilvhMFUl
	eHVi75eAh/m7YQwH6UBIhq5pYVdr4TzFN1Vtt0ymQh7uLccz9eO/YmwisWTNrsPqx/VapNxP5Cb8c
	38MbcJsCOpWaodIWQtS5ph1UGnGwPLx4NXNUfIT01Bq4AfUMKxwl8P5+zR7yxoXQ006KSq6KfhhnR
	ndmqbXe7Q==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kOMqS-0001cs-2n; Fri, 02 Oct 2020 15:19:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOMqL-0001bh-LW; Fri, 02 Oct 2020 15:19:34 +0000
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
 [209.85.210.42])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 32BAA2085B;
 Fri,  2 Oct 2020 15:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1601651972;
 bh=E2ngZAd35qBennRnW6fv5FkHLqEzVHge407a/V5mMVk=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=sYwhyOfvQyTOcoetWhJii+kiSV1ZISC+rsriTr09WTGxArcd++sl+0dmd/5SlXtF0
 Uxjf6rViIsUeQC1TlqzCYrKR13XBoJzvVqIfqrR5ps5z7PjYnBBaxDeWsYAQmHSLK7
 VueduubVCJWfm9DXYHymhIQCfg0OeFrobxn6vFvM=
Received: by mail-ot1-f42.google.com with SMTP id g96so1669282otb.12;
 Fri, 02 Oct 2020 08:19:32 -0700 (PDT)
X-Gm-Message-State: AOAM5316dohRWGMs8+MxMTupatGlJArKTwKwRBAlXUNsHyuZhtB4bYUx
 BncMb1OCF5UiZc3U+fAVFQ8yxnxodU7HwULK+w==
X-Google-Smtp-Source: ABdhPJwhOTVyhWpPHWrhiSMfF989zYSN5QbgjiBlVYyQ7zgHV41356AfwRXbnda+pRI2reqHy7bYG0TEDPf7y9uc3/U=
X-Received: by 2002:a9d:7998:: with SMTP id h24mr2143035otm.192.1601651971437; 
 Fri, 02 Oct 2020 08:19:31 -0700 (PDT)
MIME-Version: 1.0
References: <20201001220244.1271878-1-kw@linux.com>
In-Reply-To: <20201001220244.1271878-1-kw@linux.com>
From: Rob Herring <robh@kernel.org>
Date: Fri, 2 Oct 2020 10:19:20 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJn3uhHgnWeStyADCntJFbG4WpgFW1MAcYR9W3m4o2P=g@mail.gmail.com>
Message-ID: <CAL_JsqJn3uhHgnWeStyADCntJFbG4WpgFW1MAcYR9W3m4o2P=g@mail.gmail.com>
Subject: Re: [PATCH v3] PCI: Unify ECAM constants in native PCI Express drivers
To: =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201002_111933_851743_2F57AA37 
X-CRM114-Status: GOOD (  22.94  )
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, PCI <linux-pci@vger.kernel.org>,
 Shawn Lin <shawn.lin@rock-chips.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Michal Simek <michal.simek@xilinx.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Zhou Wang <wangzhou1@hisilicon.com>, Robert Richter <rrichter@marvell.com>,
 Jonathan Chocron <jonnyc@amazon.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Toan Le <toan@os.amperecomputing.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gVGh1LCBPY3QgMSwgMjAyMCBhdCA1OjAyIFBNIEtyenlzenRvZiBXaWxjennFhHNraSA8a3dA
bGludXguY29tPiB3cm90ZToKPgo+IFVuaWZ5IEVDQU0tcmVsYXRlZCBjb25zdGFudHMgaW50byBh
IHNpbmdsZSBzZXQgb2Ygc3RhbmRhcmQgY29uc3RhbnRzCj4gZGVmaW5pbmcgbWVtb3J5IGFkZHJl
c3Mgc2hpZnQgdmFsdWVzIGZvciB0aGUgYnl0ZS1sZXZlbCBhZGRyZXNzIHRoYXQgY2FuCj4gYmUg
dXNlZCB3aGVuIGFjY2Vzc2luZyB0aGUgUENJIEV4cHJlc3MgQ29uZmlndXJhdGlvbiBTcGFjZSwg
YW5kIHRoZW4KPiBtb3ZlIG5hdGl2ZSBQQ0kgRXhwcmVzcyBjb250cm9sbGVyIGRyaXZlcnMgdG8g
dXNlIG5ld2x5IGludHJvZHVjZWQKPiBkZWZpbml0aW9ucyByZXRpcmluZyBhbnkgZHJpdmVyLXNw
ZWNpZmljIG9uZXMuCj4KPiBUaGUgRUNBTSAoIkVuaGFuY2VkIENvbmZpZ3VyYXRpb24gQWNjZXNz
IE1lY2hhbmlzbSIpIGlzIGRlZmluZWQgYnkgdGhlCj4gUENJIEV4cHJlc3Mgc3BlY2lmaWNhdGlv
biAoc2VlIFBDSSBFeHByZXNzIEJhc2UgU3BlY2lmaWNhdGlvbiwgUmV2aXNpb24KPiA1LjAsIFZl
cnNpb24gMS4wLCBTZWN0aW9uIDcuMi4yLCBwLiA2NzYpLCB0aHVzIG1vc3QgaGFyZHdhcmUgc2hv
dWxkCj4gaW1wbGVtZW50IGl0IHRoZSBzYW1lIHdheS4gIE1vc3Qgb2YgdGhlIG5hdGl2ZSBQQ0kg
RXhwcmVzcyBjb250cm9sbGVyCj4gZHJpdmVycyBkZWZpbmUgdGhlaXIgRUNBTS1yZWxhdGVkIGNv
bnN0YW50cywgbWFueSBvZiB0aGVzZSBjb3VsZCBiZQo+IHNoYXJlZCwgb3IgdXNlIG9wZW4tY29k
ZWQgdmFsdWVzIHdoZW4gc2V0dGluZyB0aGUgLmJ1c19zaGlmdCBmaWVsZCBvZgo+IHRoZSBzdHJ1
Y3QgcGNpX2VjYW1fb3BzLgo+Cj4gQWxsIG9mIHRoZSBuZXdseSBhZGRlZCBjb25zdGFudHMgc2hv
dWxkIHJlbW92ZSBhbWJpZ3VpdHkgYW5kIHJlZHVjZSB0aGUKPiBudW1iZXIgb2Ygb3Blbi1jb2Rl
ZCB2YWx1ZXMsIGFuZCBhbHNvIGNvcnJlbGF0ZSBtb3JlIHN0cm9uZ2x5IHdpdGggdGhlCj4gZGVz
Y3JpcHRpb25zIGluIHRoZSBhZm9yZW1lbnRpb25lZCBzcGVjaWZpY2F0aW9uIChzZWUgVGFibGUg
Ny0xCj4gIkVuaGFuY2VkIENvbmZpZ3VyYXRpb24gQWRkcmVzcyBNYXBwaW5nIiwgcC4gNjc3KS4K
Pgo+IFRoZXJlIGlzIG5vIGNoYW5nZSB0byBmdW5jdGlvbmFsaXR5Lgo+Cj4gU3VnZ2VzdGVkLWJ5
OiBCam9ybiBIZWxnYWFzIDxiaGVsZ2Fhc0Bnb29nbGUuY29tPgo+IFNpZ25lZC1vZmYtYnk6IEty
enlzenRvZiBXaWxjennFhHNraSA8a3dAbGludXguY29tPgo+IC0tLQo+IENoYW5nZXMgaW4gdjM6
Cj4gICBVcGRhdGVkIGNvbW1pdCBtZXNzYWdlIHdvcmRpbmcuCj4gICBVcGRhdGVkIHJlZ2FyZGlu
ZyBjdXN0b20gRUNBTSBidXMgc2hpZnQgdmFsdWVzIGFuZCBjb25jZXJuaW5nIFBDSSBiYXNlCj4g
ICBjb25maWd1cmF0aW9uIHNwYWNlIGFjY2VzcyBmb3IgVHlwZSAxIGFjY2Vzcy4KPiAgIFJlZmFj
dG9yZWQgcm9ja2NoaXBfcGNpZV9yZF9vdGhlcl9jb25mKCkgYW5kIHJvY2tjaGlwX3BjaWVfd3Jf
b3RoZXJfY29uZigpCj4gICBhbmQgcmVtb3ZlZCB0aGUgImJ1c2RldiIgdmFyaWFibGUuCj4gICBS
ZW1vdmVkIHN1cnBsdXMgInJlbGJ1cyIgdmFyaWFibGUgZnJvbSBud2xfcGNpZV9tYXBfYnVzKCkg
YW5kCj4gICB4aWxpbnhfcGNpZV9tYXBfYnVzKCkuCj4gICBSZW5hbWVkIHRoZSBQQ0lFX0VDQU1f
QUREUigpIG1hY3JvIHRvIFBDSUVfRUNBTV9PRkZTRVQoKS4KPgo+IENoYW5nZXMgaW4gdjI6Cj4g
ICBVc2UgUENJRV9FQ0FNX0FERFIgbWFjcm8gd2hlbiBjb21wdXRpbmcgRUNBTSBhZGRyZXNzIG9m
ZnNldCwgYnV0IGRyb3AKPiAgIFBDSV9TTE9UIGFuZCBQQ0lfRlVOQyBtYWNyb3MgZnJvbSB0aGUg
UENJRV9FQ0FNX0FERFIgbWFjcm8gaW4gZmF2b3VyCj4gICBvZiB1c2luZyBhIHNpbmdsZSB2YWx1
ZSBmb3IgdGhlIGRldmljZS9mdW5jdGlvbi4KPgo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3
Yy9wY2llLWFsLmMgICAgICAgIHwgIDggKystLS0tCj4gIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIv
ZHdjL3BjaWUtaGlzaS5jICAgICAgfCAgNCArLS0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9w
Y2ktaG9zdC1nZW5lcmljLmMgICB8ICA0ICstLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVyL3Bj
aS10aHVuZGVyLWVjYW0uYyAgIHwgIDIgKy0KPiAgZHJpdmVycy9wY2kvY29udHJvbGxlci9wY2kt
dGh1bmRlci1wZW0uYyAgICB8IDEzICsrKysrKystLQo+ICBkcml2ZXJzL3BjaS9jb250cm9sbGVy
L3BjaS14Z2VuZS5jICAgICAgICAgIHwgMTMgKysrKysrKy0tCj4gIGRyaXZlcnMvcGNpL2NvbnRy
b2xsZXIvcGNpZS1yb2NrY2hpcC1ob3N0LmMgfCAyNyArKysrKysrKystLS0tLS0tLQo+ICBkcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUtcm9ja2NoaXAuaCAgICAgIHwgIDggKy0tLS0tCj4gIGRy
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS10YW5nby5jICAgICAgICAgfCAgMiArLQo+ICBkcml2
ZXJzL3BjaS9jb250cm9sbGVyL3BjaWUteGlsaW54LW53bC5jICAgIHwgIDkgKystLS0tCj4gIGRy
aXZlcnMvcGNpL2NvbnRyb2xsZXIvcGNpZS14aWxpbnguYyAgICAgICAgfCAxMSArKy0tLS0tCj4g
IGRyaXZlcnMvcGNpL2VjYW0uYyAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgNCArLS0KPiAg
aW5jbHVkZS9saW51eC9wY2ktZWNhbS5oICAgICAgICAgICAgICAgICAgICB8IDMyICsrKysrKysr
KysrKysrKysrKysrKwoKV2hhdCBhYm91dCB2bWQgd2hpY2ggSSBtZW50aW9uZWQ/IEkgYWxzbyBm
b3VuZCBpcHJvYyBhbmQgYnJjbXN0YiBhcmUKRUNBTSAod2VsbCwgc2FtZSBzaGlmdHMsIGJ1dCBp
bmRpcmVjdCBhZGRyZXNzaW5nKS4KClsuLi5dCgo+ICsvKgo+ICsgKiBFbmhhbmNlZCBDb25maWd1
cmF0aW9uIEFjY2VzcyBNZWNoYW5pc20gKEVDQU0pCj4gKyAqCj4gKyAqIE4uQi4gVGhpcyBpcyBh
IG5vbi1zdGFuZGFyZCBwbGF0Zm9ybS1zcGVjaWZpYyBFQ0FNIGJ1cyBzaGlmdCB2YWx1ZS4gIEZv
cgo+ICsgKiBzdGFuZGFyZCB2YWx1ZXMgZGVmaW5lZCBpbiB0aGUgUENJIEV4cHJlc3MgQmFzZSBT
cGVjaWZpY2F0aW9uIHNlZQo+ICsgKiBpbmNsdWRlL2xpbnV4L3BjaS1lY2FtLmguCj4gKyAqLwo+
ICsjZGVmaW5lIFhHRU5FX1BDSUVfRUNBTV9CVVNfU0hJRlQgICAgICAxNgoKSXNuJ3QgdGhpcyBq
dXN0IENBTT8gVGhvdWdoIHBlcmhhcHMgQ0FNIG9uIFBDSWUgaXMgbm90IHN0YW5kYXJkLi4uCgpG
b3IgQ0FNLCB0aGVyZSdzIGFsc28gdGVncmEsIGZ0cGNpMTAwLCBtdmVidSwgYW5kIHZlcnNhdGls
ZS4gSSB0aGluawpJJ2QgZHJvcCBDQU0gZnJvbSB0aGlzIHBhdGNoIGFuZCBkbyBhbGwgb2YgdGhv
c2UgaW4gYSBzZXBhcmF0ZSBwYXRjaC4KClJvYgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
