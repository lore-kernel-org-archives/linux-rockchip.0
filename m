Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DF669C98328
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Sep 2026 07:55:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QZiVHcTY0+jFrSbVJk5HFK7a4FOBS1DFvB2Itx1FanA=; b=jAlJq6/aYJC4DQ
	ce/zTnjlvzaCq3ZQZce+n0skkFu+lWArDvvRfwUxSKVczd2e/VwP9oz94rymJymuh8sAA7hRuz4yS
	UpuZGwRMTcVyUHqTslIt//WIET/KLW1KZ6Zmu/LbUVmtUgBR+MFbKHt8WOFMUPqGR7mtrr8kcfxeb
	jyQRV695hvBfDLa0HjZvY/f+w6148R3hUckuFZDjYFtky7/DfHDtE9dwUsowUlFcM+5jseSzY1E2Z
	GHo/o9NP81wI+/ewn8w76t5X1XAD7x0RkmuMnxqntlYZFtdcdhMGHC77OmSl6A0w7kbdJTimHtZqa
	fKXhBPXD6diXAS0mOT7g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANFe-0000000F8J4-1oAX;
	Sat, 26 Sep 2026 07:55:18 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xANFd-0000000F8IT-0aDh;
	Sat, 26 Sep 2026 07:55:17 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 2BDFD6020C;
	Sat, 26 Sep 2026 07:55:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BC9281F000FF;
	Sat, 26 Sep 2026 07:55:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1790409314;
	bh=GwqnBwRVIsXRmAyRc8E8Ijh+jmQBFm2/IFbbIbxTCKY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=nw8RAwckFc8w9qeay/H8ZADcvi7dKiR7OsXOjQ8dlqrRmM1IEqKzdBOH+G0hDFe6P
	 r6Yq7+iL+LhiKfY8+dG97aAKl1KMOzgKEPDkpQmX95p7b5Of91/szL+0sHeFG0YOzR
	 sVZKq9PpqAs5VAYdp8tGFWCR+aXDIw7xKpPfSgSBiUTJcT4jZtvjG8U+jpNeZqBWes
	 xlwso6VnNctjdRTTsHvDHPBOHXbFJ42+zHpJqBPly4Cg+K6lhEbotkpcofO4+irj/o
	 PAWdia6ZZVgalw01zhEuBqmoDBN8e+HsKGf1OXBdRqqZd/ifMiDJPHq7nL4KZOzkeb
	 YNhboKlk4US5A==
Date: Sat, 26 Sep 2026 09:54:56 +0200
From: Manivannan Sadhasivam <mani@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Vinod Koul <vkoul@kernel.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Heiko Stuebner <heiko@sntech.de>, 
	Zhang Yubing <yubing.zhang@rock-chips.com>, Frank Wang <frank.wang@rock-chips.com>, 
	linux-phy@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, kernel@collabora.com, 
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v15 1/6] phy: rockchip: usbdp: Add phy reset notification
 support
Message-ID: <zbqy5gqtmprapsqpodoohyxs6gml6swkie6fy7fxszfvtfgz6c@eae55gdmknaw>
References: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-0-9ad90a456953@collabora.com>
 <20260915-b4-rockchip-usbdp-cleanup-part3-v15-1-9ad90a456953@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260915-b4-rockchip-usbdp-cleanup-part3-v15-1-9ad90a456953@collabora.com>
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

T24gVHVlLCBTZXAgMTUsIDIwMjYgYXQgMDU6MzI6NDhQTSArMDIwMCwgU2ViYXN0aWFuIFJlaWNo
ZWwgd3JvdGU6Cj4gVG8gcmVzb2x2ZSBpc3N1ZXMgd2l0aCBydW5uaW5nIGludG8gcGVybWFuZW50
ICJjbW4gYW5hIGxjcGxsIGxvY2sKPiB0aW1lb3V0IiBlcnJvcnMgYWZ0ZXIgYSBmZXcgZGV2aWNl
IHJlcGx1Z3MsIGFkZCBzdXBwb3J0IGZvciByZXNldAo+IG5vdGlmaWNhdGlvbnMsIHdoaWNoIHdp
bGwgYmUgaGFuZGxlZCBieSB0aGUgRFdDMyBkcml2ZXIgdG8gZ3JhY2VmdWxseQo+IGhhbmRsZSB0
aGUgUEhZIGJlaW5nIGRpc2FibGVkLiBUaGlzIGF2b2lkcyBjb3JydXB0aW5nIHRoZSBjb250cm9s
bGVyJ3MKPiBpbnRlcm5hbCBzdGF0ZSBhbmQgdGhlIFBJUEUgaW50ZXJmYWNlIGJldHdlZW4gdGhl
IFVTQjMgY29udHJvbGxlciBhbmQKPiB0aGUgUEhZLCB0aHVzIGZpeGluZyB0aGUgaXNzdWUuCj4g
Cj4gVGVzdGVkLWJ5OiBJZ29yIFBhdW5vdmljIDxyb3lhbG5ldDAyNkBnbWFpbC5jb20+ICMgT3Jh
bmdlIFBpIDUgUGx1cwo+IFNpZ25lZC1vZmYtYnk6IFNlYmFzdGlhbiBSZWljaGVsIDxzZWJhc3Rp
YW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IC0tLQo+ICBkcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtdXNiZHAuYyB8IDE5ICsrKysrKysrKysrKysrKysrLS0KPiAgMSBmaWxlIGNo
YW5nZWQsIDE3IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25zKC0pCj4gCj4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5jIGIvZHJpdmVycy9waHkv
cm9ja2NoaXAvcGh5LXJvY2tjaGlwLXVzYmRwLmMKPiBpbmRleCBlNzQ4YWNkZDJkMzEuLjBmMzk5
ODJjNzBiMSAxMDA2NDQKPiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
dXNiZHAuYwo+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC11c2JkcC5j
Cj4gQEAgLTEwMDQsMjQgKzEwMDQsMzkgQEAgc3RhdGljIGludCBya191ZHBoeV9wb3dlcl9vbihz
dHJ1Y3QgcmtfdWRwaHkgKnVkcGh5LCB1OCBtb2RlKQo+ICAJfQo+ICAKPiAgCWlmICh1ZHBoeS0+
c3RhdHVzID09IFVEUEhZX01PREVfTk9ORSkgewo+ICsJCXBoeV9ub3RpZnlfcmVzZXQodWRwaHkt
PnBoeV91MywgUEhZX05PVElGWV9QUkVfUkVTRVQpOwo+ICsKPiArCQlya191ZHBoeV91M19wb3J0
X2Rpc2FibGUodWRwaHksIHRydWUpOwoKVGhpcyBjaGFuZ2UgaXMgbm90IGRlc2NyaWJlZCBpbiB0
aGUgY29tbWl0IG1lc3NhZ2UuCgotIE1hbmkKCi0tIArgrq7grqPgrr/grrXgrqPgr43grqPgrqng
r40g4K6a4K6k4K6+4K6a4K6/4K614K6u4K+NCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9j
a2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWls
bWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
