Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 00C32C369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 07:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNa3dhKyu2jNMNVQRdaiW1cSZ6a/zOlUugBwgdXYwfc=; b=eIaBqbB+co3czv
	FQHvEn09+BpelnBhQZKKAIwxgQnYzhnZzaGn66ky3dgiX5mXmfHRfVXwBbE89APZDL496jDz038zc
	hJR0HYXS6zhBb9dlNcXlmk5MBLw/+CaZUHvmMqfQ4MqIDDIJkg2Rb/GizHea1yq6z88iF9WizwEo7
	L5RSoH9mDK68q5/BxbAV2+g89e2xf//WAnqmOV5no+hhd+iPtv1EbkQN3Izlgm2eNPf1BX5yd+/KQ
	HXQ50hoFh+/XgtPtF5tsdk+DkPboYfP/m/sh6S5s3AL//xcMKdJM6+EA/MhOqIcL/VenXunskZXBF
	mYpN7ZIY4VzjWBRyPhig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5Jbb-0000000C4wK-0EPQ;
	Thu, 17 Apr 2025 07:24:15 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JZi-0000000C4QE-3NSN;
	Thu, 17 Apr 2025 07:22:20 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 1B0845C038E;
	Thu, 17 Apr 2025 07:20:01 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F4F0C4CEE4;
	Thu, 17 Apr 2025 07:22:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744874537;
	bh=njd0Ctie5/NJ/u0nIFo0b6CFaL7VXTbcT9S6B/AcLZ8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NpvjqSLwnO5P4oov6RnrAJXFvg5T2B5X5w7SVvL3sYujMH5bf0IpFDTcWNfIXY8sH
	 ISYUjs240LTbyzWxSlvk3SclXPnsjL3106pN+tJLAWjKmn3VHFF7Dkv7sLwEFGnaQL
	 jbPsZicrvOsj6AzaMl8u9RifyRNNSY+vQLaAqOVjKE6IaSyVRqwQKv1FBYREQLvizv
	 6Qlexqzlh8L17ECPL6ZfzNikEUw2Vq+xekJevwisVsuJUZ75bXsBYkN4RMqBao9HPu
	 XjXV4gJprVmX3DLafD6kKfmLB3oyRheCLo9FBevmpnsY5IZ2zaxzsMPIxv3HYCxZNi
	 xjti22U8Axj/Q==
Date: Thu, 17 Apr 2025 09:22:12 +0200
From: Niklas Cassel <cassel@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Hans Zhang <18255117159@163.com>, lpieralisi@kernel.org, kw@linux.com,
	bhelgaas@google.com, heiko@sntech.de,
	manivannan.sadhasivam@linaro.org, robh@kernel.org,
	jingoohan1@gmail.com, thomas.richard@bootlin.com,
	linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] PCI: dw-rockchip: Configure max payload size on host init
Message-ID: <aACsJPkSDOHbRAJM@ryzen>
References: <20250416151926.140202-1-18255117159@163.com>
 <aACoEpueUHBLjgbb@ryzen>
 <85643fe4-c7df-4d64-e852-60b66892470a@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <85643fe4-c7df-4d64-e852-60b66892470a@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_002218_932667_942D9BED 
X-CRM114-Status: GOOD (  20.77  )
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

T24gVGh1LCBBcHIgMTcsIDIwMjUgYXQgMDM6MDg6MzRQTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IOWcqCAyMDI1LzA0LzE3IOaYn+acn+WbmyAxNTowNCwgTmlrbGFzIENhc3NlbCDlhpnpgZM6
Cj4gPiBIZWxsbyBIYW5zLAo+ID4gCj4gPiBPbiBXZWQsIEFwciAxNiwgMjAyNSBhdCAxMToxOToy
NlBNICswODAwLCBIYW5zIFpoYW5nIHdyb3RlOgo+ID4gPiBUaGUgUkszNTg4J3MgUENJZSBjb250
cm9sbGVyIGRlZmF1bHRzIHRvIGEgMTI4LWJ5dGUgbWF4IHBheWxvYWQgc2l6ZSwKPiA+ID4gYnV0
IGl0cyBoYXJkd2FyZSBjYXBhYmlsaXR5IGFjdHVhbGx5IHN1cHBvcnRzIDI1NiBieXRlcy4gVGhp
cyByZXN1bHRzCj4gPiA+IGluIHN1Ym9wdGltYWwgcGVyZm9ybWFuY2Ugd2l0aCBkZXZpY2VzIHRo
YXQgc3VwcG9ydCBsYXJnZXIgcGF5bG9hZHMuCj4gPiAKPiA+IFBhdGNoIGxvb2tzIGdvb2QgdG8g
bWUsIGJ1dCBwbGVhc2UgYWx3YXlzIHJlZmVyZW5jZSB0aGUgVFJNIHdoZW4geW91IGNhbi4KPiA+
IAo+ID4gQmVmb3JlIHRoaXMgcGF0Y2g6Cj4gPiAJCURldkNhcDogTWF4UGF5bG9hZCAyNTYgYnl0
ZXMKPiA+IAkJRGV2Q3RsOiBNYXhQYXlsb2FkIDEyOCBieXRlcwo+ID4gCj4gPiAKPiA+IEFzIHBl
ciByazM1ODggVFJNLCBzZWN0aW9uICIxMS40LjMuOCBEU1BfUENJRV9DQVAgRGV0YWlsIFJlZ2lz
dGVycyBEZXNjcmlwdGlvbiIKPiA+IAo+ID4gRGV2Q2FwIGlzIHBlciB0aGUgcmVnaXN0ZXIgZGVz
Y3JpcHRpb24gb2YgRFNQX1BDSUVfQ0FQX0RFVklDRV9DQVBBQklMSVRJRVNfUkVHLAo+ID4gZmll
bGQgUENJRV9DQVBfTUFYX1BBWUxPQURfU0laRS4KPiA+IFdoaWNoIGNsYWltcyB0aGF0IHRoZSB2
YWx1ZSBhZnRlciByZXNldCBpcyAweDEgKDI1NkIpLgo+ID4gCj4gPiBEZXZDdGwgaXMgcGVyIHRo
ZSByZWdpc3RlciBkZXNjcmlwdGlvbiBvZgo+ID4gRFNQX1BDSUVfQ0FQX0RFVklDRV9DT05UUk9M
X0RFVklDRV9TVEFUVVMsIGZpZWxkIFBDSUVfQ0FQX01BWF9QQVlMT0FEX1NJWkVfQ1MuCj4gPiBX
aGljaCBjbGFpbXMgdGhhdCB0aGUgcmVzZXQgdmFsdWUgaXMgMHgwICgxMjhCKS4KPiA+IAo+ID4g
Qm90aCBvZiB0aGVzZSBtYXRjaCB0aGUgdmFsdWVzIGFib3ZlLgo+ID4gCj4gPiBBcyBwZXIgdGhl
IGRlc2NyaXB0aW9uIG9mIFBDSUVfQ0FQX01BWF9QQVlMT0FEX1NJWkVfQ1M6Cj4gPiAiUGVybWlz
c2libGUgdmFsdWVzIHRoYXQKPiA+IGNhbiBiZSBwcm9ncmFtbWVkIGFyZSBpbmRpY2F0ZWQgYnkg
dGhlIE1heF9QYXlsb2FkX1NpemUKPiA+IFN1cHBvcnRlZCBmaWVsZCAoUENJRV9DQVBfTUFYX1BB
WUxPQURfU0laRSkgaW4gdGhlIERldmljZQo+ID4gQ2FwYWJpbGl0aWVzIChERVZJQ0VfQ0FQQUJJ
TElUSUVTX1JFRykgcmVnaXN0ZXIgKGZvciBtb3JlCj4gPiBkZXRhaWxzLCBzZWUgc2VjdGlvbiA3
LjUuMy4zIG9mIFBDSSBFeHByZXNzIEJhc2UgU3BlY2lmaWNhdGlvbikuIgo+ID4gCj4gPiBTbyB5
b3VyIHBhdGNoIGxvb2tzIGdvb2QuCj4gPiAKPiA+IEkgZ3Vlc3MgSSdtIG1vc3RseSBzdXJwcmlz
ZWQgdGhhdCB0aGUgZS5nLiBwY2lfY29uZmlndXJlX21wcygpIGRvZXMgbm90Cj4gPiBhbHJlYWR5
IHNldCBEZXZDdGwgdG8gdGhlIG1heChEZXZDYXAuTVBTIG9mIHRoZSBob3N0LCBEZXZDYXAuTVBT
IG9mIHRoZQo+ID4gZW5kcG9pbnQpLgo+ID4gCj4gPiBBcHBhcmVudGx5IHBjaV9jb25maWd1cmVf
bXBzKCkgb25seSBkZWNyZWFzZXMgTVBTIGZyb20gdGhlIHJlc2V0IHZhbHVlcz8KPiA+IEl0IG5l
dmVyIGluY3JlYXNlcyBpdD8KPiA+IAo+IAo+IEFjdHVhbGx5IGl0IGRvZXM6Cj4gCj4gaHR0cHM6
Ly9naXRodWIuY29tL3RvcnZhbGRzL2xpbnV4L2Jsb2IvbWFzdGVyL0RvY3VtZW50YXRpb24vYWRt
aW4tZ3VpZGUva2VybmVsLXBhcmFtZXRlcnMudHh0I0w0NzU3CgpJZiB0aGF0IGlzIHRoZSBjYXNl
LCB0aGVuIGV4cGxhaW4gdGhlIGJlZm9yZS9hZnRlciB3aXRoIEhhbnMgbHNwY2kgb3V0cHV0IGhl
cmU6Cmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS9iYjQwMzg1Yy02ODM5LTQ4NGMt
OTBiMi1kNmM3ZWNiOTViYTlAMTYzLmNvbS8KCkhpcyBwYXRjaCBjaGFuZ2VzIHRoZSBkZWZhdWx0
IHZhbHVlIG9mIERldkN0bC5NUFMgKGZyb20gMTI4QiB0byAyNTZCKSwgYnV0IGlmCnBjaV9jb25m
aWd1cmVfbXBzKCkgY2FuIGJ1bXAgRGV2Q3RsLk1QUyB0byBhIGhpZ2hlciB2YWx1ZSwgaGlzIHBh
dGNoIHNob3VsZCBub3QKYmUgbmVlZGVkLCBzaW5jZSB0aGUgRVAgKGFuIE5WTWUgU1NEIGluIGhp
cyBjYXNlKSBoYXMgRGV2Q2FwLk1QUyA1MTJCLCBhbmQgdGhlClJDIGl0c2VsZiBoYXMgRGV2Q2Fw
Lk1QUyAyNTZCLgoKU2VlbXMgbGlrZSB3ZSBhcmUgbWlzc2luZyBzb21ldGhpbmcgaGVyZS4KCgpL
aW5kIHJlZ2FyZHMsCk5pa2xhcwoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
