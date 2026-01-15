Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B131D3CC92
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Jan 2026 00:31:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oNIx2+pScxDoAl9Dnp6G6HQqCz/pt+1yWnjHg7OaygQ=; b=B8tvdDnEM7EMLe
	b6NqYGbpuLihPxf5ky86FjiJR/ygIel8njLT+auYghgsuHD0jd/lxeu0N0prKkLtyX1SV8APoEAWg
	sLjaK0VLwWL598vNpbFFF6osAa/uut4MrPtj5bu6z7wB+Y/bom40HQwN8xpS8ZDsar7uVhMayQWl5
	FKh5nImnYhvizfilWWrhn5nfIzeYKSIA+oGUYzD0kIy0kp3DBO6/X6rN+v6zcS1Qoy6gCINh4FqOn
	GocM9QCNpwyV4qvrNiraINXMAaRnbn3ynbIGH01dFirPWpcMD3AMO4UysvabiU8mMJE6JA7iQ9dFq
	c4VewltRDVnmLABu6GXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgBGa-0000000BEaQ-1xXK;
	Thu, 15 Jan 2026 00:31:12 +0000
Received: from mail-m15598.qiye.163.com ([101.71.155.98])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgBGU-0000000BEYG-3f50;
	Thu, 15 Jan 2026 00:31:08 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30b01ff0a;
	Thu, 15 Jan 2026 08:31:01 +0800 (GMT+08:00)
Message-ID: <9c41f3c1-f3e4-4a5c-bbe6-9156a6df69b4@rock-chips.com>
Date: Thu, 15 Jan 2026 08:30:58 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Manivannan Sadhasivam <mani@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-pci@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-phy@lists.infradead.org,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong
 <neil.armstrong@linaro.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: Re: [PATCH 3/5] phy: rockchip-snps-pcie3: Increase sram init timeout
To: Vinod Koul <vkoul@kernel.org>
References: <1766560210-100883-1-git-send-email-shawn.lin@rock-chips.com>
 <1766560210-100883-4-git-send-email-shawn.lin@rock-chips.com>
 <aWeaUG45FWtdgscG@vaman>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aWeaUG45FWtdgscG@vaman>
X-HM-Tid: 0a9bbf1016da09cckunmf3402868502a5f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkgdSFYfHhkaGE0eH0oYHkNWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=O59yGBAtHIuDx0oDSA+AqCLCIkTSJaKGMpEihDPZA1fm0LXj0fVO9FTuowNm5DCTfB2g312PrD01EMWZZpZbeW89SBtPtVrEF0J+xJirxfLTtQ7eUvNg3pEm1M7FzpYtGp+6OtgilKI/oQ3vjB/zSCCZMMY1GMRJ844+BDZt0nU=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=gIslVA5eTsBjIlpxhO6gDQs8srSs4OYlHc81qc0pSiY=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_163107_105721_FA169DE8 
X-CRM114-Status: GOOD (  10.70  )
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
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

CuWcqCAyMDI2LzAxLzE0IOaYn+acn+S4iSAyMToyOSwgVmlub2QgS291bCDlhpnpgZM6Cj4gT24g
MjQtMTItMjUsIDE1OjEwLCBTaGF3biBMaW4gd3JvdGU6Cj4+IFBlciBtYXNzaXZlIHRlc3QsIDUw
MHVzIGlzIG5vdCBlbm91Z2ggZm9yIGFsbCBjaGlwcywgaW5jcmVhc2UgaXQKPj4gdG8gMjAwMDB1
cyBmb3Igd29yc2UgY2FzZSByZWNvbW1lbmRlZC4KPj4KPj4gU2lnbmVkLW9mZi1ieTogU2hhd24g
TGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+Pgo+PiAgIGRyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMgfCAxMCArKysrKysrLS0tCj4+ICAg
MSBmaWxlIGNoYW5nZWQsIDcgaW5zZXJ0aW9ucygrKSwgMyBkZWxldGlvbnMoLSkKPj4KPj4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMg
Yi9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc25wcy1wY2llMy5jCj4+IGluZGV4
IDk5MzNjZGEuLmY1YTVkMGFmIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9w
aHktcm9ja2NoaXAtc25wcy1wY2llMy5jCj4+ICsrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3Bo
eS1yb2NrY2hpcC1zbnBzLXBjaWUzLmMKPj4gQEAgLTE5LDYgKzE5LDkgQEAKPj4gICAjaW5jbHVk
ZSA8bGludXgvcmVnbWFwLmg+Cj4+ICAgI2luY2x1ZGUgPGxpbnV4L3Jlc2V0Lmg+Cj4+ICAgCj4+
ICsvKiBDb21tb24gZGVmaW5pdGlvbiAqLwo+PiArI2RlZmluZSBSS19TUkFNX0lOSVRfVElNRU9V
VF9VUwkJCTIwMDAwCj4+ICsKPj4gICAvKiBSZWdpc3RlciBmb3IgUkszNTY4ICovCj4+ICAgI2Rl
ZmluZSBHUkZfUENJRTMwUEhZX0NPTjEJCQkweDQKPj4gICAjZGVmaW5lIEdSRl9QQ0lFMzBQSFlf
Q09ONgkJCTB4MTgKPj4gQEAgLTI4LDYgKzMxLDcgQEAKPj4gICAjZGVmaW5lIEdSRl9QQ0lFMzBQ
SFlfV1JfRU4JCQkoMHhmIDw8IDE2KQo+PiAgICNkZWZpbmUgU1JBTV9JTklUX0RPTkUocmVnKQkJ
CShyZWcgJiBCSVQoMTQpKQo+PiAgIAo+PiArCj4gCj4gd2h5IHRoaXMgZW1wdHkgbGluZSBoZXJl
Pwo+IAoKT29wcywgd2lsbCBmaXggaXQuCgo+PiAgICNkZWZpbmUgUkszNTY4X0JJRlVSQ0FUSU9O
X0xBTkVfMF8xCQlCSVQoMCkKPj4gICAKPj4gICAvKiBSZWdpc3RlciBmb3IgUkszNTg4ICovCj4+
IEBAIC0xMzQsNyArMTM4LDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wM3BoeV9yazM1NjhfY2Fs
aWJyYXRlKHN0cnVjdCByb2NrY2hpcF9wM3BoeV9wcml2ICpwcml2KQo+PiAgIAlyZXQgPSByZWdt
YXBfcmVhZF9wb2xsX3RpbWVvdXQocHJpdi0+cGh5X2dyZiwKPj4gICAJCQkJICAgICAgIEdSRl9Q
Q0lFMzBQSFlfU1RBVFVTMCwKPj4gICAJCQkJICAgICAgIHJlZywgU1JBTV9JTklUX0RPTkUocmVn
KSwKPj4gLQkJCQkgICAgICAgMCwgNTAwKTsKPj4gKwkJCQkgICAgICAgMCwgUktfU1JBTV9JTklU
X1RJTUVPVVRfVVMpOwo+PiAgIAlpZiAocmV0KQo+PiAgIAkJZGV2X2VycigmcHJpdi0+cGh5LT5k
ZXYsICJsb2NrIGZhaWxlZCAweCV4LCBjaGVjayBpbnB1dCByZWZjbGsgYW5kIHBvd2VyIHN1cHBs
eVxuIiwKPj4gICAJCQlyZWcpOwo+PiBAQCAtMjAzLDExICsyMDcsMTEgQEAgc3RhdGljIGludCBy
b2NrY2hpcF9wM3BoeV9yazM1ODhfY2FsaWJyYXRlKHN0cnVjdCByb2NrY2hpcF9wM3BoeV9wcml2
ICpwcml2KQo+PiAgIAlyZXQgPSByZWdtYXBfcmVhZF9wb2xsX3RpbWVvdXQocHJpdi0+cGh5X2dy
ZiwKPj4gICAJCQkJICAgICAgIFJLMzU4OF9QQ0lFM1BIWV9HUkZfUEhZMF9TVEFUVVMxLAo+PiAg
IAkJCQkgICAgICAgcmVnLCBSSzM1ODhfU1JBTV9JTklUX0RPTkUocmVnKSwKPj4gLQkJCQkgICAg
ICAgMCwgNTAwKTsKPj4gKwkJCQkgICAgICAgMCwgUktfU1JBTV9JTklUX1RJTUVPVVRfVVMpOwo+
PiAgIAlyZXQgfD0gcmVnbWFwX3JlYWRfcG9sbF90aW1lb3V0KHByaXYtPnBoeV9ncmYsCj4+ICAg
CQkJCQlSSzM1ODhfUENJRTNQSFlfR1JGX1BIWTFfU1RBVFVTMSwKPj4gICAJCQkJCXJlZywgUksz
NTg4X1NSQU1fSU5JVF9ET05FKHJlZyksCj4+IC0JCQkJCTAsIDUwMCk7Cj4+ICsJCQkJCTAsIFJL
X1NSQU1fSU5JVF9USU1FT1VUX1VTKTsKPj4gICAJaWYgKHJldCkKPj4gICAJCWRldl9lcnIoJnBy
aXYtPnBoeS0+ZGV2LCAibG9jayBmYWlsZWQgMHgleCwgY2hlY2sgaW5wdXQgcmVmY2xrIGFuZCBw
b3dlciBzdXBwbHlcbiIsCj4+ICAgCQkJcmVnKTsKPj4gLS0gCj4+IDIuNy40Cj4gCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
