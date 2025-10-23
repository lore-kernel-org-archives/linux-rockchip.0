Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 496CACCD193
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 05:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Od+n4L79M2A0feexjVwAtYWLWOCUoZesHJVQEMzO60U=; b=s8rDJVg+QaRcTf
	ItcjD/kAPJYt6GXboqeq8w4l6AMVL4cOHErwdCUxuSGtkfOHRqZbTLXEWPtKDln1rhFzkwTbLA80b
	Hnus7f85iD4zxXykML7bKC5/fZuVIyt6DqpLFzkmLEXQ8itYgynRvv9RPwPcW0aX/T5eFKgqV8SLJ
	WUNVbtyJ61D/Lt6ccNFTWoc3SA4Mb0OZxXjluQAOSxIW3Wgzfbpr62n6HAlqfl305AvdVr8iaQo53
	9p55aK15dNj0Nji+MSo0YJnv08n/Ez+6W6ak7zAlaaRzU4tmshr0cyex3uKr9KPY3oOqWcgDbeqGw
	fTLJ/ZUl8HxjxUILw0dQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBnUm-000000056Bm-0nke;
	Thu, 23 Oct 2025 05:04:16 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBnUk-000000056BO-2Wwk
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 05:04:14 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 066A762172;
	Thu, 23 Oct 2025 05:04:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1E82EC4CEE7;
	Thu, 23 Oct 2025 05:04:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761195853;
	bh=t3OAdB3SgIr/YlxzjXfZjt6KdaLAA44NHXh9J0+xHyU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=A1+u62lRZcYfPfgflaKYZZo9MzED0KC+AEO0GtQVbguxDNI06HLRwhdBQJk4HMjOB
	 KpPGskFPFguPeEPK9PiWHlkZ7FlZV/JTTm4e5AkEEcGs+ZMCn0ImZh9M6YsnDUe4In
	 FD4Z7Y8su9E3EGrXSfAtLdYzymjUQA7wkQnP7ClTdEjBf75IIwdPQh34E86AVaWGwz
	 JUPDqMHtoBz9rtkTtT5/8oArppFlU+EKu2PlGi5a8i8FwEYiAe+CW7rxPWZW4F32B4
	 WJP/NxmFF66txLwN486vqbtLr0HtLxDc6aTdwVsNQzLCTTPWNHGOzv5P3/U3fIjUxh
	 Ip5CM1ktKDUfg==
Date: Thu, 23 Oct 2025 10:33:59 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Bjorn Helgaas <helgaas@kernel.org>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>, Christian Zigotzky <chzigotzky@xenosoft.de>, 
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org
Subject: Re: [RESEND] Re: [PATCH] PCI/ASPM: Enable only L0s and L1 for
 devicetree platforms
Message-ID: <2liqc4r7t4vhdok6u6g32g2su4irnb5o467byub3a2omfl3kqd@m2rpf5edhqhf>
References: <20251022191313.GA1265088@bhelgaas>
 <340D76D438E6105B+58e7f834-75f7-40c5-a46a-677cb279a02d@radxa.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <340D76D438E6105B+58e7f834-75f7-40c5-a46a-677cb279a02d@radxa.com>
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

T24gVGh1LCBPY3QgMjMsIDIwMjUgYXQgMDE6MjU6MTdQTSArMDkwMCwgRlVLQVVNSSBOYW9raSB3
cm90ZToKPiAjIEZpeGVzIHRoZSBNTCBhZGRyZXNzIGZvciBsaW51eC1yb2NrY2hpcAo+ICMgUGxl
YXNlIHJlc2VuZCB0aGUgb3JpZ2luYWwgcGF0Y2ggdG8gbGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwo+IAo+IEhpIEJqb3JuLAo+IAo+IE9uIDEwLzIzLzI1IDA0OjEzLCBCam9ybiBI
ZWxnYWFzIHdyb3RlOgo+ID4gQ2hyaXN0aWFuLCBOYW9raSwgYW55IGNoYW5jZSB5b3UgY291bGQg
dGVzdCB0aGlzIHBhdGNoIG9uIHRvcCBvZgo+ID4gdjYuMTgtcmMxIHRvIHNlZSB3aGV0aGVyIGl0
IHJlc29sdmVzIHRoZSBwcm9ibGVtIHlvdSByZXBvcnRlZD8KPiA+IAo+ID4gSSdkIGxpa2UgdG8g
dmVyaWZ5IHRoYXQgaXQgd29ya3MgYmVmb3JlIG1lcmdpbmcgaXQuCj4gCj4gSSdsbCBiZSB0ZXN0
aW5nIG5vdy4gTWF5IEkgdGVzdCBvbiB2Ni4xOC1yYzIgd2l0aG91dCB0aGUgZm9sbG93aW5nIHBh
dGNoPwo+IAo+ICAiUENJOiBkdy1yb2NrY2hpcDogUHJldmVudCBhZHZlcnRpc2luZyBMMSBTdWJz
dGF0ZXMgc3VwcG9ydCIKPiAKClllcywgeW91IHNob3VsZCByZXZlcnQgdGhlIGFib3ZlIG1lbnRp
b25lZCBjb21taXQgaWYgeW91IGhhdmUgYXBwbGllZCBpdC4gSXQKd2lsbCByZW1vdmUgdGhlIEwx
c3MgQ0FQIGFsdG9nZXRoZXIgbWFraW5nICp0aGlzKiBwYXRjaCBpcnJlbGV2YW50LgoKLSBNYW5p
CgotLSAK4K6u4K6j4K6/4K614K6j4K+N4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCv
jQoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
