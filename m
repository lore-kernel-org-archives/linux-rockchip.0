Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8810DCCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 18:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=WelSq61ZdEp5nErMRkBkP53KVqM/pRDp30jUxZ7Mof8=; b=kmwzr5PB1X02pv
	pBYL4L8/CEy385vDjbibzmkO68812gVod1pAGleK88ER5tKBZzpYLM5GL6swwbIQBHVk7TLkVl2JM
	K04uLmLyhHC5MklkzaHC37Jb/lCYrkZQzrWU+bQ6Wo7MlxQkKpAtAHvo00QPjNm0LBn7uKc3LQXzL
	PK/38fwqdTkTZpSwAZxNgfNllYIodbOy6kXqgQ2eiz4cCp2llmyurH6tQcgU7shFD70u5cvbJp5U1
	D5Y/9v2HiNz2QfzATQy6Lr/MsuPp5M/4dcbjT8NehkTqC5+8PnwJXxDu4d3TaJPR12CY3mE3aodiU
	mgCVHrwGD2oDlq2aQHYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBdME-00000003xKm-3Hx8;
	Wed, 22 Oct 2025 18:14:46 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBdMC-00000003xKF-3uqs
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 18:14:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 0A59B63D72;
	Wed, 22 Oct 2025 18:14:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 83394C4CEE7;
	Wed, 22 Oct 2025 18:14:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761156883;
	bh=26/KYMiJ1t7xGbWwSC1tDrt57nh16G4z027IIlphW+8=;
	h=Date:From:To:Cc:Subject:In-Reply-To:From;
	b=dZt9WTaaqniF+LKvJC2y899pn0HG6mFKQvvYwhJYn2WLwLMpO2dxcJjA8CTrGcgLy
	 gRkOa2zWjSklXzxkpCvcM/j7cHtHWeE4bJZ35FBqm7s2n9WCUW27PJCpCmQbvUsJtY
	 GosxWg/kB7THNHF8xBTijqb9wXDjN+Lh2QtC46kFiV2IFk28d309eJYR1W3CYvFrEB
	 K7Hmlsmz2Lhnd+LEbk87MapoXCdZlwOEvchsOTV49hPcvymMOgiY+It3lvUgSFy6MF
	 1tXlRMW7zJzik9BZCklQmUuvgJkd7Cl/T8+ucxeogluV6RsQrN3as5EjlAHBrGSE/3
	 h0/Wut8ZOmijw==
Date: Wed, 22 Oct 2025 13:14:42 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Heiko Stuebner <heiko@sntech.de>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Thierry Reding <thierry.reding@gmail.com>,
	linux-rockchip@lists.infradead.org,
	Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/4] PCI: of: Add of_pci_clkreq_present()
Message-ID: <20251022181442.GA1262389@bhelgaas>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <oiqs7vjw3hxbrp3tnlgut5zh3547tgowsixip5cgagyuh3uv4e@n7wielcx6hmc>
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

T24gV2VkLCBPY3QgMjIsIDIwMjUgYXQgMTE6MDU6NTBQTSArMDUzMCwgTWFuaXZhbm5hbiBTYWRo
YXNpdmFtIHdyb3RlOgo+IE9uIFdlZCwgT2N0IDIyLCAyMDI1IGF0IDExOjIyOjI5QU0gLTA1MDAs
IEJqb3JuIEhlbGdhYXMgd3JvdGU6Cj4gPiBPbiBXZWQsIE9jdCAyMiwgMjAyNSBhdCAwMzo1OTox
M1BNICswNTMwLCBNYW5pdmFubmFuIFNhZGhhc2l2YW0gd3JvdGU6Cj4gPiA+IE9uIFdlZCwgT2N0
IDIyLCAyMDI1IGF0IDA2OjEzOjU5UE0gKzA4MDAsIFNoYXduIExpbiB3cm90ZToKPiA+ID4gPiDl
nKggMjAyNS8xMC8yMiDmmJ/mnJ/kuIkgMTg6MDIsIE1hbml2YW5uYW4gU2FkaGFzaXZhbSDlhpnp
gZM6Cj4gPiA+ID4gPiBPbiBUdWUsIE9jdCAyMSwgMjAyNSBhdCAwMzo0ODoyNFBNICswODAwLCBT
aGF3biBMaW4gd3JvdGU6Cj4gPiA+ID4gPiA+IG9mX3BjaV9jbGtyZXFfcHJlc2VudCgpIGlzIHVz
ZWQgYnkgaG9zdCBkcml2ZXJzIHRvIGRlY2lkZSB3aGV0aGVyIHRoZSBjbGtyZXEjCj4gPiA+ID4g
PiA+IGlzIHByb3Blcmx5IGNvbm5lY3RlZCBhbmQgY291bGQgZW5hYmxlIEwxLjEvTDEuMiBzdXBw
b3J0Lgo+ID4gPiA+ID4gPiAKPiA+ID4gPiA+ID4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxz
aGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gPiA+ID4gPiA+IC0tLQo+ID4gPiA+ID4gPiAgIGRy
aXZlcnMvcGNpL29mLmMgIHwgMTggKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gPiA+ICAgZHJp
dmVycy9wY2kvcGNpLmggfCAgNiArKysrKysKPiA+ID4gPiA+ID4gICAyIGZpbGVzIGNoYW5nZWQs
IDI0IGluc2VydGlvbnMoKykKPiA+ID4gPiA+ID4gCj4gPiA+ID4gPiA+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL3BjaS9vZi5jIGIvZHJpdmVycy9wY2kvb2YuYwo+ID4gPiA+ID4gPiBpbmRleCAzNTc5
MjY1ZjExOTguLjUyYzZkMzY1MDgzYiAxMDA2NDQKPiA+ID4gPiA+ID4gLS0tIGEvZHJpdmVycy9w
Y2kvb2YuYwo+ID4gPiA+ID4gPiArKysgYi9kcml2ZXJzL3BjaS9vZi5jCj4gPiA+ID4gPiA+IEBA
IC0xMDEwLDMgKzEwMTAsMjEgQEAgaW50IG9mX3BjaV9nZXRfZXF1YWxpemF0aW9uX3ByZXNldHMo
c3RydWN0IGRldmljZSAqZGV2LAo+ID4gPiA+ID4gPiAgIAlyZXR1cm4gMDsKPiA+ID4gPiA+ID4g
ICB9Cj4gPiA+ID4gPiA+ICAgRVhQT1JUX1NZTUJPTF9HUEwob2ZfcGNpX2dldF9lcXVhbGl6YXRp
b25fcHJlc2V0cyk7Cj4gPiA+ID4gPiA+ICsKPiA+ID4gPiA+ID4gKy8qKgo+ID4gPiA+ID4gPiAr
ICogb2ZfcGNpX2Nsa3JlcV9wcmVzZW50KCkgLSBDaGVjayBpZiB0aGUgInN1cHBvcnRzLWNsa3Jl
cSIgaXMgcHJlc2VudAo+ID4gPiA+ID4gCj4gPiA+ID4gPiBJIGRvbid0IHNlZSBhIGJlbmVmaXQg
b2YgdGhpcyBBUEksIHRiaC4gVGhlIEFQSSBuYW1lIGNyZWF0ZXMgYW4KPiA+ID4gPiA+IGltcHJl
c3Npb24gdGhhdCB0aGUgQVBJIHdpbGwgY2hlY2sgZm9yIHRoZSBwcmVzZW5jZSBvZiBDTEtSRVEj
Cj4gPiA+ID4gPiBzaWduYWwgaW4gRFQsIGJ1dCBpdCBjaGVja3MgZm9yIHRoZSBwcmVzZW5jZSBv
ZiB0aGUKPiA+ID4gPiA+ICdzdXBwb3J0cy1jbGtyZXEnIHByb3BlcnR5LiBFdmVuIHRob3VnaCB0
aGUgcHJlc2VuY2Ugb2YgdGhlCj4gPiA+ID4gPiBwcm9wZXJ0eSBpbXBsaWVzIHRoYXQgdGhlIENM
S1JFUSMgcm91dGluZyBpcyBhdmFpbGFibGUsIEknZAo+ID4gPiA+ID4gcHJlZmVyIHRvIGNoZWNr
IGZvciB0aGUgcHJvcGVydHkgZXhwbGljaXRseSBpbnN0ZWFkIG9mIGhpZGluZyBpdAo+ID4gPiA+
ID4gaW5zaWRlIHRoaXMgQVBJLgo+ID4gPiA+IAo+ID4gPiA+IEl0IG1ha2VzIHNlbnNlLgo+ID4g
PiA+IAo+ID4gPiA+IFdpbGwgdGhlIG5hbWUgb2ZfcGNpX3N1cHBvcnRzX2Nsa3JlcV9wcmVzZW50
KCkgbG9vayBnb29kPyBPciB3ZQo+ID4gPiA+IGp1c3QgZHJvcCBpdCBhbmQgbGV0IGhvc3QgZHJp
dmVycyB0byBleHBsaWNpdGx5IGNoZWNrCj4gPiA+ID4gc3VwcG9ydHMtY2xrcmVxIGluc2lkZSB0
aGVpciBjb2RlPwo+ID4gPiAKPiA+ID4gSSdkIHByZWZlciB0byBkcm9wIHRoZSBBUEkuCj4gPiAK
PiA+IEFuIEFQSSBtaWdodCBoZWxwIHdpdGggY29uc2lzdGVuY3kgYWNyb3NzIERUIGJpbmRpbmdz
LiAgV2UgZG9uJ3Qgd2FudAo+ID4gZHJpdmVycyB0byBwaWNrIHRoZWlyIG93biBuYW1lcyBmb3Ig
J3N1cHBvcnRzLWNsa3JlcScuCj4gCj4gSSBkb24ndCBrbm93IHdoYXQgeW91IG1lYW4gYnkgJ2Ry
aXZlcnMgdG8gcGljayB0aGVpciBvd24gbmFtZXMnLgo+IFdpdGggb3Igd2l0aG91dCB0aGlzIEFQ
SSwgdGhlIGRyaXZlcnMgaGF2ZSB0byB1c2UgYSBsb2NhbCB2YXJpYWJsZToKCkkganVzdCBtZWFu
dCBkaWZmZXJlbnQgbmFtZXMgZm9yIHRoZSAnc3VwcG9ydHMtY2xrcmVxJyBEVCBwcm9wZXJ0eS4K
QnV0IHRoZSBzY2hlbWEgSSBtZW50aW9uZWQgc2hvdWxkIGJlIGVub3VnaCBmb3IgdGhhdC4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
