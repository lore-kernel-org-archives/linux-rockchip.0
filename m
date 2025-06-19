Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EF10C7115C
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Jun 2025 15:48:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K7eimzhXLwx/qIhZ5Srb3otoJsWfdS17K/7zDnjlD2o=; b=ap9WvfdXNalpBn
	N47ghA0Zs+Yzsje8T2qElff8Ib0y26y2r0vKY1PIUz69144sU8s7rlCxO+ZqS48xi9qHEedbiQDOp
	NILdTQvm+ln/vVZiS9h9aagS6MJ5OijCTll+RgB5VE+2Bi1D+9zajqAh5I0h5x++8pJPxbEESs2H5
	M0+mukEBioFFgWLHH+LqHZWOV2S+H01ofW3cuP3JVvkjUwYHDtLB/YtVvRsCvare4P0MssXXaLuAE
	SGFPhg7qUxxOLAIKC6gBD5e2AsKWGypWRWjmsRAM3pSs4n7GLyxpCtroeRygwUwTtsKXtK+GUyw5/
	PNSgyCr2FLSF8NppZdvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSHUx-0000000DWoM-3JMU;
	Thu, 19 Jun 2025 15:48:19 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uSEeB-0000000D5gF-0XRq;
	Thu, 19 Jun 2025 12:45:39 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 4E8736115D;
	Thu, 19 Jun 2025 12:45:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7822AC4CEEA;
	Thu, 19 Jun 2025 12:45:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750337138;
	bh=KNqb7eHKDRfrbzB+nYR6iggc29bY0RRO9LiF69GOYI8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=iwYq1A2fmSqsQaRBsaydPOG21gcTZCtQd7cYOYCEGO+WYBLtTuJT/9uNfzsZ+9Vps
	 uRYjx7+K7cWyyYCYOX7eUU4RfG2XNfDlCo6xWjQ7PYuRl/PzOJXe6nvvBDtX/uim+B
	 S++kc8EQVH9INpuVvcdjMfHmT4svUZZczCZtatRH2PfF9UihMu6fU14qbAlXLb1Mpv
	 +dGKfzMHYSWmGMR49wGjHkrOzbB14t3DjHD8EsCMEcJlsBD4d23TFosFIDV/Tlv4pf
	 VUf6hio6bIfjEW3X23Gwmg3ePGgwhy3m5ko6QI5XDep/RFn6Qpjf0pzXz0kY1PaAl4
	 8Snes676Vd6wg==
Date: Thu, 19 Jun 2025 18:15:20 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Hans Zhang <18255117159@163.com>
Cc: Niklas Cassel <cassel@kernel.org>, lpieralisi@kernel.org, kw@linux.com, 
	bhelgaas@google.com, heiko@sntech.de, manivannan.sadhasivam@linaro.org, 
	yue.wang@amlogic.com, pali@kernel.org, neil.armstrong@linaro.org, robh@kernel.org, 
	jingoohan1@gmail.com, khilman@baylibre.com, jbrunet@baylibre.com, 
	martin.blumenstingl@googlemail.com, linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org, 
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v4 1/2] PCI: Configure root port MPS during host probing
Message-ID: <rjgmkdk33h64plssiw2euna3wo4ejw4t3gisqkt3ibco62vjin@w2yu6wnzwled>
References: <20250510155607.390687-1-18255117159@163.com>
 <20250510155607.390687-2-18255117159@163.com>
 <co2q55j4mk2ux7af4sj6snnfomditwizg5jevg6oilo3luby5z@6beqtbn3l432>
 <aEwRAZgLJUECbGz6@ryzen>
 <1e3ba7e1-dad3-4728-85d2-276945119ab0@163.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1e3ba7e1-dad3-4728-85d2-276945119ab0@163.com>
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

T24gRnJpLCBKdW4gMTMsIDIwMjUgYXQgMTE6MzE6MDFQTSArMDgwMCwgSGFucyBaaGFuZyB3cm90
ZToKPiAKPiAKPiBPbiAyMDI1LzYvMTMgMTk6NTIsIE5pa2xhcyBDYXNzZWwgd3JvdGU6Cj4gPiBP
biBGcmksIEp1biAxMywgMjAyNSBhdCAxMjowODozMVBNICswNTMwLCBNYW5pdmFubmFuIFNhZGhh
c2l2YW0gd3JvdGU6Cj4gPiA+IE9uIFNhdCwgTWF5IDEwLCAyMDI1IGF0IDExOjU2OjA2UE0gKzA4
MDAsIEhhbnMgWmhhbmcgd3JvdGU6Cj4gPiA+ID4gQ3VycmVudCBQQ0llIGluaXRpYWxpemF0aW9u
IGxvZ2ljIG1heSBsZWF2ZSByb290IHBvcnRzIG9wZXJhdGluZyB3aXRoCj4gPiA+ID4gbm9uLW9w
dGltYWwgTWF4aW11bSBQYXlsb2FkIFNpemUgKE1QUykgc2V0dGluZ3MuIFdoaWxlIGRvd25zdHJl
YW0gZGV2aWNlCj4gPiA+ID4gY29uZmlndXJhdGlvbiBpcyBoYW5kbGVkIGR1cmluZyBidXMgZW51
bWVyYXRpb24sIHJvb3QgcG9ydCBNUFMgdmFsdWVzCj4gPiA+ID4gaW5oZXJpdGVkIGZyb20gZmly
bXdhcmUgb3IgaGFyZHdhcmUgZGVmYXVsdHMgbWlnaHQgbm90IHV0aWxpemUgdGhlIGZ1bGwKPiA+
ID4gPiBjYXBhYmlsaXRpZXMgc3VwcG9ydGVkIGJ5IHRoZSBjb250cm9sbGVyIGhhcmR3YXJlLiBU
aGlzIGNhbiByZXN1bHQgaXMKPiA+ID4gPiB1Ym9wdGltYWwgZGF0YSB0cmFuc2ZlciBlZmZpY2ll
bmN5IGFjcm9zcyB0aGUgUENJZSBoaWVyYXJjaHkuCj4gPiA+ID4gCj4gPiA+ID4gRHVyaW5nIGhv
c3QgY29udHJvbGxlciBwcm9iaW5nIHBoYXNlLCB3aGVuIFBDSWUgYnVzIHR1bmluZyBpcyBlbmFi
bGVkLAo+ID4gPiA+IHRoZSBpbXBsZW1lbnRhdGlvbiBub3cgY29uZmlndXJlcyByb290IHBvcnQg
TVBTIHNldHRpbmdzIHRvIHRoZWlyCj4gPiA+ID4gaGFyZHdhcmUtc3VwcG9ydGVkIG1heGltdW0g
dmFsdWVzLiBCeSBpdGVyYXRpbmcgdGhyb3VnaCBicmlkZ2UgZGV2aWNlcwo+ID4gPiA+IHVuZGVy
IHRoZSByb290IGJ1cyBhbmQgaWRlbnRpZnlpbmcgUENJZSByb290IHBvcnRzLCBlYWNoIHBvcnQn
cyBNUFMgaXMKPiA+ID4gPiBzZXQgdG8gMTI4IDw8IHBjaWVfbXBzcyB0byBtYXRjaCB0aGUgZGV2
aWNlJ3MgbWF4aW11bSBzdXBwb3J0ZWQgcGF5bG9hZAo+ID4gPiA+IHNpemUuCj4gPiA+IAo+ID4g
PiBJIGRvbid0IHRoaW5rIHRoZSBhYm92ZSBzdGF0ZW1lbnQgaXMgYWNjdXJhdGUuIFRoaXMgcGF0
Y2ggaXMgbm90IGl0ZXJhdGluZwo+ID4gPiB0aHJvdWdoIHRoZSBicmlkZ2VzIGFuZCB5b3UgY2Fu
bm90IGlkZW50aWZ5IHJvb3QgcG9ydHMgdXNpbmcgdGhhdC4gV2hhdCB0aGlzCj4gPiA+IHBhdGNo
IGRvZXMgaXMsIGl0IGNoZWNrcyB3aGV0aGVyIHRoZSBkZXZpY2UgaXMgcm9vdCBwb3J0IG9yIG5v
dCBhbmQgaWYgaXQgaXMsCj4gPiA+IHRoZW4gaXQgc2V0cyB0aGUgTVBTIHRvIE1QU1MgKGh3IG1h
eGltdW0pIGlmIFBDSUVfQlVTX1RVTkVfT0ZGIGlzIG5vdCBzZXQuCj4gPiAKPiA+IENvcnJlY3Qu
Cj4gPiBMYXRlciwgd2hlbiB0aGUgYnVzIGlzIHdhbGtlZCwgaWYgYW55IGRvd25zdHJlYW0gZGV2
aWNlIGRvZXMgbm90IHN1cHBvcnQKPiA+IHRoZSBNUFMgdmFsdWUgY3VycmVudGx5IGNvbmZpZ3Vy
ZWQgaW4gdGhlIHJvb3QgcG9ydCwgcGNpX2NvbmZpZ3VyZV9tcHMoKQo+ID4gd2lsbCByZWR1Y2Ug
dGhlIE1QUyBpbiB0aGUgcm9vdCBwb3J0IHRvIHRoZSBtYXggc3VwcG9ydGVkIGJ5IHRoZSBkb3du
c3RyZWFtCj4gPiBkZXZpY2UuCj4gPiAKPiA+IFNvIGV2ZW4gd2Ugc3RhcnQgb2ZmIGJ5IHNldHRp
bmcgTVBTIGluIHRoZSByb290IHBvcnQgdG8gdGhlIG1heCBzdXBwb3J0ZWQKPiA+IGJ5IHRoZSBy
b290IHBvcnQsIGl0IG1pZ2h0IGdldCByZWR1Y2VkIGxhdGVyIG9uLgo+ID4gCj4gPiAKPiAKPiBE
ZWFyIE1hbmkgYW5kIE5pa2xhcywKPiAKPiBJcyBpdCBva2F5IHRvIG1vZGlmeSB0aGUgY29tbWl0
IG1lc3NhZ2UgYXMgZm9sbG93cz8gVGhlIGxhc3QgcGFyYWdyYXBoCj4gcmVtYWlucyB1bmNoYW5n
ZWQuCj4gCj4gCj4gCj4gQ3VycmVudCBQQ0llIGluaXRpYWxpemF0aW9uIGxvZ2ljIG1heSBsZWF2
ZSByb290IHBvcnRzIG9wZXJhdGluZyB3aXRoCj4gbm9uLW9wdGltYWwgTWF4aW11bSBQYXlsb2Fk
IFNpemUgKE1QUykgc2V0dGluZ3MuIFdoaWxlIGRvd25zdHJlYW0gZGV2aWNlCj4gY29uZmlndXJh
dGlvbiBpcyBoYW5kbGVkIGR1cmluZyBidXMgZW51bWVyYXRpb24sIHJvb3QgcG9ydCBNUFMgdmFs
dWVzCj4gaW5oZXJpdGVkIGZyb20gZmlybXdhcmUgb3IgaGFyZHdhcmUgZGVmYXVsdHMgbWlnaHQg
bm90IHV0aWxpemUgdGhlIGZ1bGwKPiBjYXBhYmlsaXRpZXMgc3VwcG9ydGVkIGJ5IHRoZSBjb250
cm9sbGVyIGhhcmR3YXJlLiBUaGlzIGNhbiByZXN1bHQgaW4KPiBzdWJvcHRpbWFsIGRhdGEgdHJh
bnNmZXIgZWZmaWNpZW5jeSBhY3Jvc3MgdGhlIFBDSWUgaGllcmFyY2h5Lgo+IAo+IER1cmluZyBo
b3N0IGNvbnRyb2xsZXIgcHJvYmluZyBwaGFzZSwgd2hlbiBQQ0llIGJ1cyB0dW5pbmcgaXMgZW5h
YmxlZCwKPiB0aGUgaW1wbGVtZW50YXRpb24gbm93IGNvbmZpZ3VyZXMgcm9vdCBwb3J0IE1QUyBz
ZXR0aW5ncyB0byB0aGVpcgo+IGhhcmR3YXJlLXN1cHBvcnRlZCBtYXhpbXVtIHZhbHVlcy4gU3Bl
Y2lmaWNhbGx5LCB3aGVuIGNvbmZpZ3VyaW5nIHRoZSBNUFMKPiBmb3IgYSBQQ0llIGRldmljZSwg
aWYgdGhlIGRldmljZSBpcyBhIHJvb3QgcG9ydCBhbmQgdGhlIGJ1cyB0dW5pbmcgaXMgbm90Cj4g
ZGlzYWJsZWQgKFBDSUVfQlVTX1RVTkVfT0ZGKSwgdGhlIE1QUyBpcyBzZXQgdG8gMTI4IDw8IGRl
di0+cGNpZV9tcHNzIHRvCj4gbWF0Y2ggdGhlIGRldmljZSdzIG1heGltdW0gc3VwcG9ydGVkIHBh
eWxvYWQgc2l6ZS4gVGhlIE1heCBSZWFkIFJlcXVlc3QKCnMvZGV2aWNlL1Jvb3QgUG9ydAoKPiBT
aXplIChNUlJTKSBpcyBzdWJzZXF1ZW50bHkgYWRqdXN0ZWQgdGhyb3VnaCBleGlzdGluZyBjb21w
YW5pb24gbG9naWMgdG8KPiBtYWludGFpbiBjb21wYXRpYmlsaXR5IHdpdGggUENJZSBzcGVjaWZp
Y2F0aW9ucy4KPiAKPiBOb3RlIHRoYXQgdGhpcyBpbml0aWFsIHNldHRpbmcgb2YgdGhlIHJvb3Qg
cG9ydCBNUFMgdG8gdGhlIG1heGltdW0gbWlnaHQKPiBiZSByZWR1Y2VkIGxhdGVyIGR1cmluZyB0
aGUgZW51bWVyYXRpb24gb2YgZG93bnN0cmVhbSBkZXZpY2VzIGlmIGFueSBvZgo+IHRob3NlIGRl
dmljZXMgZG8gbm90IHN1cHBvcnQgdGhlIG1heGltdW0gTVBTIG9mIHRoZSByb290IHBvcnQuCj4g
CgpSZXN0IExHVE0hCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqngr40g4K6a
4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
