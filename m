Return-Path: <SRS0=mNPc=GO=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFC66C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 03:28:09 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7AF1A206D6
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Jan 2021 03:28:09 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7AF1A206D6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=kernel.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=/5ielqMUqhQat0875G8opNGc9v/4++rot0I1c66COXU=; b=HmhhlP4JIAwKmdKjmOuMgD7mG
	oyPoAI0DAv6fyW5l1VJmVGKMNLRz2NwnE4JTThs8TBh826EdTBooAsIb7CoVbdUFAsdYQvhmm4kdN
	SR2PqK9oemIHab471wRnW+KsLGHS/b9CdKDS7Geql4BiHE4Y96i7eVjyJOoOM7/2g9Jjhr12voXKD
	F+eNE4Z3noO+F+cxlVQw2FXR1VqYu20i42GrrKsRMk7Ck0SyN2VYCNLwRywcXzaflVXTT/FM2Qxws
	mWt8kiPlCSbTQVUrNC9IRXX+XXeqoWW7TSJLOwmZdsiHdoWX6ERXW8SfCeKTMVisgNkSsx19XPNjM
	CMxtP2cGA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kynsD-0000KD-AM; Mon, 11 Jan 2021 03:28:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kyns7-0000Hs-E9; Mon, 11 Jan 2021 03:28:00 +0000
Received: by mail.kernel.org (Postfix) with ESMTPSA id AE5AA206D6;
 Mon, 11 Jan 2021 03:27:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1610335678;
 bh=+IJTwQXfUOjC47u3kJJ5xfioClx6iqnW8AtMz/ilyYI=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=vC+/XqIJpviNUrUgBE6aZgLlbGuNmDDdRdyzRc44p99jaV1ErK3vfllXWOtzCBDSA
 gkz/SzSSw1zMvtuuuhIkivIpjAoBMmCy5AoehqhOzMpg4lzeikQZ7hY8F/oSuEAdQS
 Tq9R/mdDBaX7eOEhMeBImcaTZOYkzcjspOGbnkigWAWiZyIZZHOfxIHOCJ7+LZmQ4W
 3qO0ZNnelSM+wBh0t5bvQzJxmnYFwdjJqmxPt5S2XLbQcjs/ZhwDBzaIFQ4Ac2CuIF
 fQbMk/nS76bG1xh5E4NVU4QcdwEV0NhPxhb7xnbxmrn6YX+HQiQZbfRmqo+zgYlOBJ
 HvlMq+OrUxF4Q==
Received: by mail-lj1-f173.google.com with SMTP id y22so1970919ljn.9;
 Sun, 10 Jan 2021 19:27:57 -0800 (PST)
X-Gm-Message-State: AOAM532llQsaMUAj4MNNN3DGrb+zfXtaWSe6c1nCRb9Sw3i3SR2XkST+
 fquvDSE74Q38wzjtEsVqpaPT4jAllIFlhib6qrk=
X-Google-Smtp-Source: ABdhPJx+QJLTIR+/b8gx1a/zGX/AFEeyqjUrB+/I8gyRM2KTyu8W5advO2PE43Uj0MDQYlfyc6jU+6Efhz5WjSpZutY=
X-Received: by 2002:a2e:89d7:: with SMTP id c23mr6270072ljk.282.1610335676076; 
 Sun, 10 Jan 2021 19:27:56 -0800 (PST)
MIME-Version: 1.0
References: <20210110035846.9155-1-wens@kernel.org>
 <381648f9-d650-dddf-59e6-ef32d1e1bb43@gmail.com>
 <CAGb2v67=uO4HqRNEbhAJs2-d4mhL8URoijwE4ni9J8cYXrmAtQ@mail.gmail.com>
 <2241380.NG923GbCHz@diego>
In-Reply-To: <2241380.NG923GbCHz@diego>
From: Chen-Yu Tsai <wens@kernel.org>
Date: Mon, 11 Jan 2021 11:27:47 +0800
X-Gmail-Original-Message-ID: <CAGb2v67h3v4DdEY68BmHy263=L1tB0DuJnf_exHrLi57SiRjUA@mail.gmail.com>
Message-ID: <CAGb2v67h3v4DdEY68BmHy263=L1tB0DuJnf_exHrLi57SiRjUA@mail.gmail.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: rk3328: Add Radxa ROCK Pi E
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210110_222759_555240_AA891D1B 
X-CRM114-Status: GOOD (  17.72  )
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
Cc: Rob Herring <robh@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gTW9uLCBKYW4gMTEsIDIwMjEgYXQgNDowNiBBTSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250
ZWNoLmRlPiB3cm90ZToKPgo+IEhpLAo+Cj4gQW0gU29ubnRhZywgMTAuIEphbnVhciAyMDIxLCAx
NjozNzoxNSBDRVQgc2NocmllYiBDaGVuLVl1IFRzYWk6Cj4gPiA+ID4gKyAgICAgdmNjX3NkOiBz
ZG1tYy1yZWd1bGF0b3Igewo+ID4gPiA+ICsgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJyZWd1
bGF0b3ItZml4ZWQiOwo+ID4gPiA+ICsgICAgICAgICAgICAgZ3BpbyA9IDwmZ3BpbzAgUktfUEQ2
IEdQSU9fQUNUSVZFX0xPVz47Cj4gPiA+ID4gKyAgICAgICAgICAgICBwaW5jdHJsLW5hbWVzID0g
ImRlZmF1bHQiOwo+ID4gPiA+ICsgICAgICAgICAgICAgcGluY3RybC0wID0gPCZzZG1tYzBtMV9w
aW4+Owo+ID4gPgo+ID4gPiA+ICsgICAgICAgICAgICAgcmVndWxhdG9yLWJvb3Qtb247Cj4gPiA+
ID4gKyAgICAgICAgICAgICByZWd1bGF0b3ItbmFtZSA9ICJ2Y2Nfc2QiOwo+ID4gPgo+ID4gPiBy
ZWd1bGF0b3ItbmFtZSBhYm92ZSBvdGhlciByZWd1bGF0b3IgcHJvcGVydGllcwo+ID4KPiA+IFRo
YXQgaXMgYWN0dWFsbHkgd2hhdCBJIHdhcyB1c2VkIHRvLCBidXQgc29tZSBvdGhlciByb2NrY2hp
cCBkdHMgZmlsZXMKPiA+IGhhdmUgYWxsIHRoZSBwcm9wZXJ0aWVzIHNvcnRlZCBhbHBoYWJldGlj
YWxseS4gU28gSSBzdHVjayB3aXRoIHdoYXQgSQo+ID4gc2F3Lgo+Cj4gSSB0cnkgdG8ga2VlcCBp
dCBhbHBoYWJldGljYWwgZXhjZXB0IGZvciB0aGUgZXhjZXB0aW9ucyA6LUQgLgo+Cj4gcmVndWxh
dG9yLW5hbWUgaXMgc3VjaCBhbiBleGNlcHRpb24uIFNpbWlsYXIgdG8gY29tcGF0aWJsZXMsIHRo
ZQo+IHJlZ3VsYXRvci1uYW1lIGlzIGFuIGVudHJ5IG5lZWRlZCB0byBzZWUgaWYgeW91J3JlIGF0
IHRoZSByaWdodCBub2RlLAo+IHNvIEkgcmVhbGx5IGxpa2UgaXQgYmVpbmcgdGhlIHRvcG1vc3Qg
cmVndWxhdG9yLWZvbyBwcm9wZXJ0eSAtIGp1c3QgbWFrZXMKPiByZWFkaW5nIGVhc2llci4KPgo+
IChzYW1lIGZvciB0aGUgY29tcGF0aWJsZSBmaXJzdCwgdGhlbiByZWdzLCBpbnRlcnJ1cHRzIHBh
cnRzLCBhcyB3ZWxsCj4gYXMgInN0YXR1cy1sYXN0IikKPgo+IEJ1dCBvZnRlbnRpbWVzLCBJIGp1
c3QgZml4IHRoZSBvcmRlcmluZyB3aGVuIGFwcGx5aW5nIC0gYnV0IHNlZW0gdG8gaGF2ZQo+IG1p
c3NlZCB0aGlzIHNvbWV3aGVyZSBpbiB0aG9zZSAib3RoZXIgUm9ja2NoaXAgZHRzIGZpbGVzIiA7
LSkgLgoKSSB3YXMgc2xpZ2h0bHkgY29uZnVzZWQuIEkgbG9va2VkIGFnYWluIGFuZCB5ZXMgcmVn
dWxhdG9yLW5hbWUgaXMgYWx3YXlzIHRoZQpmaXJzdCByZWd1bGF0b3IgcmVsYXRlZCBwcm9wZXJ0
eS4gV2hhdCdzIG9mZiBpcyB0aGF0IGluIHNvbWUgY2FzZXMgbWluL21heAp2b2x0YWdlIGNvbWVz
IGJlZm9yZSBhbHdheXMtb24vYm9vdC1vbiwgYW5kIGluIG90aGVycyB2aWNlIHZlcnNhLgoKRm9y
IGV4YW1wbGUgaW4gdGhlIFJvY2s2NCBhbmQgUk9DLVJLMzMyOC1DQyBkZXZpY2UgdHJlZXMsIGlu
IHRoZSBmaXhlZApyZWd1bGF0b3JzLCBhbHdheXMtb24vYm9vdC1vbiBjb21lIGJlZm9yZSBtaW4v
bWF4IHZvbHRhZ2UsIHdoaWxlIGluIHRoZQpQTUlDIHRoZSBvdGhlciBvcmRlciBpcyB1c2VkLgoK
CkNoZW5ZdQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
