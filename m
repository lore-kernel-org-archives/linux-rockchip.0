Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4D6E8C3ABB0
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 May 2025 13:21:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wj82NyMYlCGPQ1ZLQU3rykV9axcNP3+R0z1XY1wX8as=; b=wcOEgl7EvmfVb0
	LUzQLKnQcJ8j1JLfDhGy3TfP0/emI760h7ZK5yxsMaKZ8zlBQPjX05MyWvIAMP/fdeR/bSAGy9z0Y
	dtPJrhR/mm8y4OgCW/zhk8CB2oKIdvalVbrZRPZCosW+hQMkJo2JFGpIOZP8JBnYrqPzRFX+MXp3z
	cNOxgFYNoJSbmpYlGtaZKu6/VfVMHlL7wb6tWn9WDsokDmqkrA0H3OKE6xQtpW3BQJI1e1L05ZQ+u
	u+ytbtkzqPgb9MNFFdKBoqW0szfLlznRX9GoEgE7FDFsU3r0wj31O2kjZAntmJdWJzen96W473Y4g
	wC/JtfZWU2qku5fbOxEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBvkd-00000007Rv4-1sHR;
	Mon, 05 May 2025 13:20:55 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv65-00000007Mbb-1vHX;
	Mon, 05 May 2025 12:39:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Transfer-Encoding:Content-Disposition:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:From:
	Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Content-Disposition:
	In-Reply-To:References; bh=RwOtQh7ufR/hgfV1LX9/r3rjIFbD4mmiETvvgQjMe4c=; b=Yv
	crgvGlIVixwh/LrlvMhrAYsLr/rdCOz4ng2/BJue0oPhnhDWRQH+VrnLCIAoTcqlgcyJCsto/uv3K
	hfPFb+i6WplLWzzI+Hfi7y1tIk/xALtYFtckt4QrUDrIJl4+ftI498t6kj+kBEVzD4iN5lYTSKwdY
	sTalGZhALN54M9c=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1uBv5v-00BauR-71; Mon, 05 May 2025 14:38:51 +0200
Date: Mon, 5 May 2025 14:38:51 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: John Clark <inindev@gmail.com>
Cc: Jonas Karlman <jonas@kwiboo.se>, heiko@sntech.de, robh@kernel.org,
	conor+dt@kernel.org, detlev.casanova@collabora.com,
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org, krzk+dt@kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 3/3] arm64: dts: rockchip: Add Luckfox Omni3576 Board
 support
Message-ID: <bf734f63-d849-433b-abcb-37af8fd704e9@lunn.ch>
References: <20250502205533.51744-1-inindev@gmail.com>
 <20250504102447.153551-1-inindev@gmail.com>
 <20250504102447.153551-4-inindev@gmail.com>
 <bb171ae2-c495-49a3-a7eb-a4b865e54199@kwiboo.se>
 <87892840-bdbf-43d4-bd93-cb98f5e1c672@lunn.ch>
 <b603e92f-8c1a-4aea-8bab-82a1f035c7fa@gmail.com>
 <b50c68bd-9b15-412a-ac00-1df25601edd9@lunn.ch>
 <46cbdabd-b0ed-4c9b-9f01-4d2d8eceac24@gmail.com>
 <13407dae-4c73-48a9-846e-92f08449bc4d@lunn.ch>
 <1a403393-e317-4a1b-a151-fa668c6278f9@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1a403393-e317-4a1b-a151-fa668c6278f9@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_053901_513184_191C873E 
X-CRM114-Status: GOOD (  17.31  )
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

PiBIaSBBbmRyZXcsCj4gVGhhbmsgeW91IGZvciB5b3VyIHZhbHVhYmxlIGZlZWRiYWNrIGFuZCBm
b3IgcG9pbnRpbmcgbWUgdG93YXJkCj4gaW52ZXN0aWdhdGluZyB0aGUgUEhZIGNvbmZpZ3VyYXRp
b24gZnVydGhlci4gQWZ0ZXIgZGlnZ2luZyBkZWVwZXIgaW50byB0aGUKPiBNQUUwNjIxQS1RM0Mg
UEhZIChQSFkgSUQgMHg3Yjc0NDQxMiksIEkgbm93IHVuZGVyc3RhbmQgd2h5IGl0IHBlcmZvcm1z
Cj4gcmVsaWFibHk6IHRoZSBnZW5lcmljIFBIWSBkcml2ZXIgcmVsaWVzIG9uIHRoZSBHTUFDIHRv
IHNldCBSR01JSSBkZWxheXMKPiAodHhfZGVsYXk9MHgyMCwgcnhfZGVsYXk9MHgxMCksIGVuYWJs
aW5nIGEgc3RhYmxlIDFHYnBzIGxpbmsgZm9yIGdtYWMwIGluCj4gcmdtaWktcnhpZCBtb2RlLCB3
aGlsZSByZ21paS1pZCBmYWlsZWQgaW4gbXkgdGVzdHMgZHVlIHRvIHRoZSBkcml2ZXLigJlzIGxh
Y2sKPiBvZiBpbnRlcm5hbCBkZWxheSBjb25maWd1cmF0aW9uLiBHaXZlbiB0aGUgY3JpdGljYWwg
cm9sZSBvZiBuZXR3b3JraW5nIGZvcgo+IGRldmVsb3BtZW50LCBJ4oCZZCBsaWtlIHRvIHJldGFp
biB0aGUgR01BQyBub2RlcyBpbiB2MyB1c2luZyB0aGlzIHNldHVwLCBidXQKPiBJ4oCZZCBncmVh
dGx5IGFwcHJlY2lhdGUgeW91ciBhcHByb3ZhbCBvbiB3aGV0aGVyIHRoZSBnZW5lcmljIFBIWSBk
cml2ZXIgaXMKPiBzdWl0YWJsZSBpbiByZ21paS1yeGlkIG1vZGUgZm9yIG5vdy4KCkRldmljZSBU
cmVlIGRlc2NyaWJlcyB0aGUgaGFyZHdhcmUuIFRoZSBoYXJkd2FyZSBkb2VzIG5vdCBhcHBlYXIg
dG8KaGF2ZSB0aGUgMm5zIGRlbGF5IGFkZGVkIGJ5IGV4dHJhIGxvbmcgY2xvY2sgbGluZXMsIHNv
IHlvdXIgRFQKZGVzY3JpcHRpb24gb2YgdGhlIGhhcmR3YXJlIHVzaW5nICdyZ21paS1yeGlkJyBp
cyB3cm9uZy4KCklmIHdlIHdoZXJlIHRvIGFjY2VwdCB0aGlzIGJyb2tlbiBkZXNjcmlwdGlvbiBu
b3csIGl0IHJlYWxseSB3aWxsCmJyZWFrIHdoZW4gdGhlIE1BRTA2MjFBIGRyaXZlciBpcyBtZXJn
ZWQgYW5kIGl0IGNvcnJlY3RseSBzZXRzIHRoZQpSR01JSSBkZWxheXMuCgpTbyBzb3JyeSwgbm8g
d2UgY2Fubm90IGFjY2VwdCBpdC4KCkZvciB5b3Ugb3duIGRldmVsb3BtZW50IHdvcmssIHlvdSBj
YW4gbWVyZ2UgdGhlIGRyaXZlciBpIHBvaW50ZWQgdG8KaW50byB5b3VyIHRyZWUuIEl0IG5lZWRz
IHdvcmssIGJ1dCBpdCBpcyBub3QgdGVycmlibGUuIFNvIGl0IHNob3VsZAp3b3JrIGZvciB5b3Uu
Cgo+IEnigJltIGVhZ2VyIHRvIGV4cGxvcmUgYSBNYXhpby1zcGVjaWZpYwo+IGRyaXZlciBmb3Ig
bWFpbmxpbmUgY29tcGF0aWJpbGl0eSBhbmQgd291bGQgYmUgZ3JhdGVmdWwgZm9yIGFueSBndWlk
YW5jZSBvbgo+IGV4aXN0aW5nIHVwc3RyZWFtaW5nIGVmZm9ydHMgZm9yIHRoaXMgUEhZLgoKVGhp
cyBpcyB0aGUgZmlyc3QgdGltZSBpJ3ZlIGhlYXJkIG9mIHRoaXMgZGV2aWNlLCBzbyBpIGhhdmUg
bm8gaWRlYSBpZgphbnlib2R5IGVsc2UgaXMgd29ya2luZyBvbiBpdC4gSSB3b3VsZCBzdWdnZXN0
IHlvdSByZWFjaCBvdXQgdG8gdGhlCmF1dGhvciBvZiB0aGF0IHBhdGNoLgoKCUFuZHJldwoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
