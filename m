Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 59EA5CCD1BC
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Oct 2025 05:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3pSzMNsY6CEIM6laEwBQCR2zh/gtsA9RBt9lJFoNzA=; b=hS4YitGeWv0cwf
	s6kSVvxp0tnhh1Kt3PfqMVPFB8BopnZkUclcIm4wTwGIpnV2dsCSmD/k4ZiVwQhdBE87bpZNVpZBX
	+xqCkBld1oPYIu/aEzPzCbiTiyh+CwGyrgrB0rKWo4VnQke19Bd9DMdTRH3Fbxu7Fym495RoFsR/d
	PckMnCbgHw4TJPYLPjyTavpT18XGYueZx5V1gfdjVh5K9vWSGTwi9n7zhGFj17Sgy7GmE0qZJyTER
	abv21pA1dr7Bp+aB3HWCMIrXO8bqaAIbmuRaM2sEWIAganm91hRqpTgH9Dqo+B2BGEoxUkQzDbWXi
	D9PW2Lm7WeIvVZuOWPBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBnXa-000000056W6-0OFm;
	Thu, 23 Oct 2025 05:07:10 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBnXZ-000000056Vx-1NGC
	for linux-rockchip@lists.infradead.org;
	Thu, 23 Oct 2025 05:07:09 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 96319601D3;
	Thu, 23 Oct 2025 05:07:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 35909C4CEE7;
	Thu, 23 Oct 2025 05:07:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761196028;
	bh=NzdJQP8m6XvcdrZE8aPNgKoWH6PxaP6bTK6w0q/5mP4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Lb0od8Yxk/0ggE9lUW7Esd3FdxcAZC0BO2c/+oHMWV7q8Fq7ciDtlbpbFA/qFR3qq
	 Q4B0AOOrkzurrA+XacQCTtjCsogEq81cQecxwX1tckOmYBMiAIPXUwSku2YPRk+rs8
	 5kh0Pu/8D2nLTpb4d6GLHcOx5t+ej4Y1M/Oo5FTPO8ZModPEvcGSx+exrOlEndsNjq
	 6A6ZrNVUze9p7w75yLWTwgO0DdApvao11AoNF1ZFzUD93NI/bI4rnZOIt4AfF959/8
	 MQXV+4bHLkrU8DPwzhuSxaHJ6ExI7Vb2HVxErOywJRqBOvn8UXgDlml3OaEda6Mhdv
	 A7P8vRQKzCG4A==
Date: Thu, 23 Oct 2025 10:36:54 +0530
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Bjorn Helgaas <bhelgaas@google.com>, 
	linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH v3 2/2] arm64: dts: rockchip: Add PCIe clkreq stuff for
 RK3588 EVB1
Message-ID: <w6t2ecg6gxflebglqfzf3wxtf436huscepxb5adbox4dah5y34@k7mj6p2tlsla>
References: <1761187883-150120-1-git-send-email-shawn.lin@rock-chips.com>
 <1761187883-150120-2-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1761187883-150120-2-git-send-email-shawn.lin@rock-chips.com>
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

T24gVGh1LCBPY3QgMjMsIDIwMjUgYXQgMTA6NTE6MjNBTSArMDgwMCwgU2hhd24gTGluIHdyb3Rl
Ogo+IEFkZCBzdXBwb3J0cy1jbGtyZXEgYW5kIHBpbm11eCBmb3IgUENJZSBBU1BNIEwxIHN1YnN0
YXRlcy4KPiAKPiBTaWduZWQtb2ZmLWJ5OiBTaGF3biBMaW4gPHNoYXduLmxpbkByb2NrLWNoaXBz
LmNvbT4KCkFja2VkLWJ5OiBNYW5pdmFubmFuIFNhZGhhc2l2YW0gPG1hbmlAa2VybmVsLm9yZz4K
Ci0gTWFuaQoKPiBSZXZpZXdlZC1ieTogSGFucyBaaGFuZyA8aGFucy56aGFuZ0BjaXh0ZWNoLmNv
bT4KPiAtLS0KPiAKPiBDaGFuZ2VzIGluIHYzOgo+IC0gYWRkIEhhbnMnIHRhZwo+IAo+IENoYW5n
ZXMgaW4gdjI6IE5vbmUKPiAKPiAgYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
ZXZiMS12MTAuZHRzIHwgNyArKysrKy0tCj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMo
KyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTg4LWV2YjEtdjEwLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2No
aXAvcmszNTg4LWV2YjEtdjEwLmR0cwo+IGluZGV4IGZmMWJhNWUuLmM5ZDI4NGMgMTAwNjQ0Cj4g
LS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMS12MTAuZHRzCj4g
KysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtZXZiMS12MTAuZHRzCj4g
QEAgLTUyMiw2ICs1MjIsNyBAQAo+ICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAgCXBp
bmN0cmwtMCA9IDwmcGNpZTJfMF9yc3Q+LCA8JnBjaWUyXzBfd2FrZT4sIDwmcGNpZTJfMF9jbGty
ZXE+LCA8JndpZmlfaG9zdF93YWtlX2lycT47Cj4gIAlyZXNldC1ncGlvcyA9IDwmZ3BpbzQgUktf
UEE1IEdQSU9fQUNUSVZFX0hJR0g+Owo+ICsJc3VwcG9ydHMtY2xrcmVxOwo+ICAJdnBjaWUzdjMt
c3VwcGx5ID0gPCZ2Y2MzdjNfd2xhbj47Cj4gIAlzdGF0dXMgPSAib2theSI7Cj4gIAo+IEBAIC01
NDUsNyArNTQ2LDggQEAKPiAgJnBjaWUyeDFsMSB7Cj4gIAlyZXNldC1ncGlvcyA9IDwmZ3BpbzQg
UktfUEEyIEdQSU9fQUNUSVZFX0hJR0g+Owo+ICAJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsK
PiAtCXBpbmN0cmwtMCA9IDwmcGNpZTJfMV9yc3Q+LCA8JnJ0bDgxMTFfaXNvbGF0ZT47Cj4gKwlw
aW5jdHJsLTAgPSA8JnBjaWUyXzFfcnN0PiwgPCZydGw4MTExX2lzb2xhdGU+LCA8JnBjaWUzMHgx
bTFfMV9jbGtyZXFuPjsKPiArCXN1cHBvcnRzLWNsa3JlcTsKPiAgCXN0YXR1cyA9ICJva2F5IjsK
PiAgfTsKPiAgCj4gQEAgLTU1NSw3ICs1NTcsOCBAQAo+ICAKPiAgJnBjaWUzeDQgewo+ICAJcGlu
Y3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKPiAtCXBpbmN0cmwtMCA9IDwmcGNpZTNfcmVzZXQ+Owo+
ICsJcGluY3RybC0wID0gPCZwY2llM19yZXNldD4sIDwmcGNpZTMweDRtMV9jbGtyZXFuPjsKPiAr
CXN1cHBvcnRzLWNsa3JlcTsKPiAgCXJlc2V0LWdwaW9zID0gPCZncGlvNCBSS19QQjYgR1BJT19B
Q1RJVkVfSElHSD47Cj4gIAl2cGNpZTN2My1zdXBwbHkgPSA8JnZjYzN2M19wY2llMzA+Owo+ICAJ
c3RhdHVzID0gIm9rYXkiOwo+IC0tIAo+IDIuNy40Cj4gCgotLSAK4K6u4K6j4K6/4K614K6j4K+N
4K6j4K6p4K+NIOCumuCupOCuvuCumuCuv+CuteCuruCvjQoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
