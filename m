Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78DD71125839
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Mar 2026 14:19:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0V6YX9WThzawArklQT6tiX8Dp4P3Do1JCrmResL6Kuk=; b=jqcoyrc0ggWu+c
	VJSEs1kWOBI0kJN5LlCCpScG5LXRto+6q7IhXu1L+bbyXmC6esx26SNAxsljhYKnR51vou7d+zile
	wzGcb3VGAbLzLyKTgPjAV8UMbgr9jBoCdDcJrT/qtEjXdZYeVWvIByupIgqrAGP0YjWEQWzfDtIhr
	MjViTDeFU8j/zUswdXnuJX3Bm+g/VX+auczPYF6NPlO8LHfBptj1ZxMSm5EqnOhr1vwaTNNEGmHnk
	JZTciIiTpLNUR2xSDX27B0EkwlWoeX0Md2f+4jdGXc7EiaiCJOVzH+PT7gmT636qiX2BMC9NGG5HT
	orcqhOMp/0fZ6ta8t7+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KPX-0000000Bh7D-01bx;
	Wed, 11 Mar 2026 14:19:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0KPV-0000000Bh6z-1ILj;
	Wed, 11 Mar 2026 14:19:41 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 37CA36012A;
	Wed, 11 Mar 2026 14:19:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54B07C19424;
	Wed, 11 Mar 2026 14:19:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773238778;
	bh=4rspw70lAXPaOuNzAVTpF3DEdU6++Hs8qNZtz9nP5TU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=N7wEdddLJiDMDeFh9fRzF+0AA/jXYO0kBBjbzURmzLnta3Acyr9OALzeu3zxpMSGz
	 ZrjGvpciOTY4AuauFhvmS3Wy3ddEbuZETYuOSCzwcRrzzlbKYSdame0ojFrSrdvEBJ
	 vVrnwnGdPwejHqQtOF00rp1scWaAMrnV3hg8RYSkNXHwB6li0T02sarbLcTMsTlC6Y
	 IjWWtjC1KHZZmC7w1VB9Lg2H0+V6dAXzPndwp63I3ERDG8PIVGK/5eQnXaVXcglpvC
	 /MayvYHwZ7hYB9D7x0mFv4UhX1G4EdDHcCODregjf3maJAIZNh4R4ysMR3ky/ZNwNb
	 4gJZ0556zKdUw==
Date: Wed, 11 Mar 2026 19:49:23 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Niklas Cassel <cassel@kernel.org>
Cc: manivannan.sadhasivam@oss.qualcomm.com, 
	Bjorn Helgaas <bhelgaas@google.com>, Mahesh J Salgaonkar <mahesh@linux.ibm.com>, 
	Oliver O'Halloran <oohall@gmail.com>, Will Deacon <will@kernel.org>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>, 
	Rob Herring <robh@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
	Philipp Zabel <p.zabel@pengutronix.de>, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org, 
	linux-arm-msm@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	Wilfred Mallawa <wilfred.mallawa@wdc.com>, Krishna Chaitanya Chundru <krishna.chundru@oss.qualcomm.com>, 
	Lukas Wunner <lukas@wunner.de>
Subject: Re: [PATCH v6 0/4] PCI: Add support for resetting the Root Ports in
 a platform specific way
Message-ID: <hof7aknmmkeug6et7cj3zrwpj3cu77bofqllm25numelratbg6@pfiep2xaqlbd>
References: <20250715-pci-port-reset-v6-0-6f9cce94e7bb@oss.qualcomm.com>
 <aHoh1XfhR8EB_5yY@ryzen>
 <aHokdhpJUhSZ5FSp@ryzen>
 <tujurux64if24z7w7h6wjxhrnh4owkgiv33u2fftp7zr5ucv2m@2ijo5ok5jhfk>
 <aJ743hJw-T9y3waX@ryzen>
 <lakgphb7ym3cybwmpdqyipzi4tlkwbfijzhd4r6hvhho3pc7iu@6ludgw6wqkjh>
 <aLmcO8ukT-CDZMuT@ryzen>
 <mevtdhght66tds7yhmr5a6xg5a75fb667b6lyvguoxqexmc74p@mroqidhzptxk>
 <abFLGRn9TYrsycRs@fedora>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <abFLGRn9TYrsycRs@fedora>
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

T24gV2VkLCBNYXIgMTEsIDIwMjYgYXQgMTE6NTk6MzdBTSArMDEwMCwgTmlrbGFzIENhc3NlbCB3
cm90ZToKPiBPbiBUdWUsIE1hciAxMCwgMjAyNiBhdCAwNzowNzozOVBNICswNTMwLCBNYW5pdmFu
bmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiA+IAo+ID4gPiBJIHRlc3RlZCB5b3VyIHBhdGNoIHNl
cmllcyArIHlvdXIgc3VnZ2VzdGVkIGNoYW5nZSBhYm92ZSwgYW5kIGFmdGVyIGE6Cj4gPiA+IAo+
ID4gPiAjIyBPbiBFUCBzaWRlOgo+ID4gPiAjIGVjaG8gMCA+IC9zeXMva2VybmVsL2NvbmZpZy9w
Y2lfZXAvY29udHJvbGxlcnMvYTQwMDAwMDAwLnBjaWUtZXAvc3RhcnQgJiYgXAo+ID4gPiAgIHNs
ZWVwIDAuMSAmJiBlY2hvIDEgPiAvc3lzL2tlcm5lbC9jb25maWcvcGNpX2VwL2NvbnRyb2xsZXJz
L2E0MDAwMDAwMC5wY2llLWVwL3N0YXJ0Cj4gPiA+IAo+ID4gPiBJbnN0ZWFkIG9mOgo+ID4gPiAK
PiA+ID4gIyBGQUlMRUQ6IDEgLyAxNiB0ZXN0cyBwYXNzZWQuCj4gPiA+IAo+ID4gPiBJIG5vdyBn
ZXQ6Cj4gPiA+ICMgRkFJTEVEOiA3IC8gMTYgdGVzdHMgcGFzc2VkLgo+ID4gPiAKPiA+ID4gVGVz
dCBjYXNlcyAxLTcgbm93IHBhc3NlcyAodGhlIHRlc3QgY2FzZXMgcmVsYXRlZCB0byBCQVJzKSwK
PiA+ID4gYWxsIG90aGVyIHRlc3QgY2FzZXMgc3RpbGwgZmFpbDoKPiAKPiAoc25pcCkKPiAKPiA+
IEkgZ3Vlc3Mgd2hhdCBpcyBnb2luZyB3cm9uZyBoZXJlIGlzIHRoYXQgeW91IG1pZ2h0IGJlIHJl
Ym9vdGluZyB0aGUgZGV2aWNlCj4gPiAqYWZ0ZXIqIHJlc3RvcmluZyB0aGUgY29uZmlnIHNwYWNl
IGluICdzbG90X3Jlc2V0KCknIGNhbGxiYWNrLiBTbyBhbGwgdGhlCj4gPiBwcmV2aW91cyBjb25m
aWcgc3BhY2UgY29udGVudHMgd291bGQgYmUgbG9zdCBhbmQgdGhlIGRldmljZSB3b3VsZCd2ZSBz
dGFydGVkCj4gPiBhZnJlc2guCj4gCj4gSSdtIGNvbmZ1c2VkLgo+IAo+ICMgZWNobyAwID4gL3N5
cy9rZXJuZWwvY29uZmlnL3BjaV9lcC9jb250cm9sbGVycy9hNDAwMDAwMDAucGNpZS1lcC9zdGFy
dCAmJiBcCj4gICBzbGVlcCAwLjEgJiYgZWNobyAxID4gL3N5cy9rZXJuZWwvY29uZmlnL3BjaV9l
cC9jb250cm9sbGVycy9hNDAwMDAwMDAucGNpZS1lcC9zdGFydAo+IAo+IFdpbGwgbm90IHJlYm9v
dCB0aGUgZGV2aWNlLgo+IAo+IAo+ID4gCj4gPiBJIGRvbid0IHRoaW5rIHdlIGNhbiByZXN0b3Jl
IHRoZSBjb25maWcgc3BhY2UgYWZ0ZXIgcmVib290aW5nIHRoZSBFUCBkZXZpY2UsCj4gPiBiZWNh
dXNlIGhvc3QgaGFzIG5vIGlkZWEgYWJvdXQgaXQuIEl0IGNhbiBvbmx5IHJlc3RvcmUgdGhlIGNv
bnRlbnQgYWZ0ZXIKPiA+IHJlY292ZXJpbmcgdGhlIGRldmljZSB0aHJvdWdoIHBsYXRmb3JtIHNw
ZWNpZmljIG1lYW5zLgo+IAo+IEFtIEkgbWlzc2luZyBzb21ldGhpbmcsIG9yIHdoeSBhcmUgd2Ug
dGFsa2luZyBhYm91dCByZWJvb3RpbmcgdGhlIGRldmljZT8KPiAKClNvcnJ5LCBJIGp1c3Qgd2Vu
dCB3aXRoIHJlYm9vdCBzY2VuYXJpbyBzaW5jZSBJIHJlbWVtYmVyIHlvdSByZWZlcnJpbmcgdG8g
aXQgaW4KdGhlIHRocmVhZC4gQnV0IEkgbXVzdCBhZG1pdCB0aGF0IEkgZGlkbid0IHJlYWQgeW91
ciByZXBybyBzdGVwcyB3aGVyZSB5b3UganVzdAp3cml0ZSB0byB0aGUgJ3N0YXJ0JyBwYXJhbWV0
ZXIuCgpCdXQgSSBkaWQgdGVzdCB3aXRoIHRvZ2dsaW5nIHRoZSBMVFNTTSBhbG9uZSBvbiB0aGUg
RVAgYW5kIHdhcyBhYmxlIHRvIGV4ZWN1dGUKdGhlIHRlc3Qgc3VjY2Vzc2Z1bGx5IG9uIHRoZSBo
b3N0LiBTbyBJJ20gbm90IGVudGlyZWx5IHN1cmUgd2hhdCBpcyBnb2luZyB3cm9uZwpvbiB5b3Vy
cy4KCkkgbmVlZCB0byBsb29rIGludG8gaXQgbW9yZSBpbiBkZXRhaWwsIGJ1dCBJIGRvIG5vdCB3
YW50IHRvIGJsb2NrIHRoZSBzZXJpZXMKZnJvbSBnZXR0aW5nIG1lcmdlZCBkdWUgdG8gdGhpcy4K
Ci0gTWFuaQoKLS0gCuCuruCuo+Cuv+CuteCuo+CvjeCuo+CuqeCvjSDgrprgrqTgrr7grprgrr/g
rrXgrq7gr40KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAK
