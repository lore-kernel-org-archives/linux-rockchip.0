Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DF1ECCF9E0
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Oct 2025 00:44:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Av5GFNQH1NoXm/czg1e7a7tnN95Rbm3Vlnz8eyUD1kY=; b=HzSgxkuq3TuL/i
	6sDpfWlGn6Q+7Lz3ARs+4ey8fwb5i+o0hxYkQJ8uZnC1N6v05fDvv0bq37qlj2NfVclpZSwhXB9ol
	X7Z49bKnirgDJHO+qF2YMZFnJQeuZLwNk+Dqf+gz6rWUmyjMTuOQZs3pL1Cwqt8uOJwKtWWY1h/Fu
	1iSVROTKmpgV4kG1NQ8t9j6p4l6nlij9aZEmyHokC2ArTWVnT3ul8KWT+5TANFPcxZzcWncrZY/EE
	hl+RWZF43ykIJiPe6yjQ7Ym3WE1PHOSsbGBznwaCtBLgHponpoB595yDi4uRLkZ1wmMl1GJZl+A5F
	5BeSZ1hdZ0wrnomaS22A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDXpM-0000000F14h-2hl8;
	Tue, 28 Oct 2025 00:44:44 +0000
Received: from mail-m49246.qiye.163.com ([45.254.49.246])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDXpJ-0000000F149-3O5H;
	Tue, 28 Oct 2025 00:44:43 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 2764cdbd9;
	Tue, 28 Oct 2025 08:44:37 +0800 (GMT+08:00)
Message-ID: <cfaa4824-a59a-4106-b2c1-befce2af0324@rock-chips.com>
Date: Tue, 28 Oct 2025 08:44:34 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com
Subject: Re: [PATCH v1 2/2] PCI: dw-rockchip: Add runtime PM support to
 Rockchip PCIe driver
To: Anand Moon <linux.amoon@gmail.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>, Rob Herring <robh@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>,
 Niklas Cassel <cassel@kernel.org>, Hans Zhang <18255117159@163.com>,
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
 "open list:PCI NATIVE HOST BRIDGE AND ENDPOINT DRIVERS"
 <linux-pci@vger.kernel.org>,
 "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 open list <linux-kernel@vger.kernel.org>
References: <20251027145602.199154-1-linux.amoon@gmail.com>
 <20251027145602.199154-3-linux.amoon@gmail.com>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20251027145602.199154-3-linux.amoon@gmail.com>
X-HM-Tid: 0a9a2846258d09cckunmfb2044f69bef6
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxpJSVYfTE5DGRgZGk9MTEtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=aKPeZjdrPMbSfHYI71aE7ibLXgYuDZdEaanjrVCXkI88WLjfdtNNEkHyLOVQX4iP4ccGH9O87aczzz9yJgpt0qIvPf9vUNeBnOk5yYERMivQXertqgmAhYLcerqfPVC3t9fVqBs/V6CtNquFh6vxTcC1yCd6Obb6gD2aRfvr3FA=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=A+HDiRgC5t4Ys8kCexpdAvL//Urk5g0DuwaI2Z/zH6k=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_174442_060279_6BC2E46A 
X-CRM114-Status: GOOD (  18.76  )
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

5ZyoIDIwMjUvMTAvMjcg5pif5pyf5LiAIDIyOjU1LCBBbmFuZCBNb29uIOWGmemBkzoKPiBBZGQg
cnVudGltZSBwb3dlciBtYW5hZ2VtZW50IHN1cHBvcnQgdG8gdGhlIFJvY2tjaGlwIERlc2lnbldh
cmUgUENJZQo+IGNvbnRyb2xsZXIgZHJpdmVyIGJ5IGVuYWJsaW5nIGRldm1fcG1fcnVudGltZSgp
IGluIHRoZSBwcm9iZSBmdW5jdGlvbi4KPiBUaGVzZSBjaGFuZ2VzIGFsbG93IHRoZSBQQ0llIGNv
bnRyb2xsZXIgdG8gc3VzcGVuZCBhbmQgcmVzdW1lIGR5bmFtaWNhbGx5LAo+IGltcHJvdmluZyBw
b3dlciBlZmZpY2llbmN5IG9uIHN1cHBvcnRlZCBwbGF0Zm9ybXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogQW5hbmQgTW9vbiA8bGludXguYW1vb25AZ21haWwuY29tPgo+IC0tLQo+ICAgZHJpdmVycy9w
Y2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIHwgMjEgKysrKysrKysrKysrKysr
KysrKwo+ICAgMSBmaWxlIGNoYW5nZWQsIDIxIGluc2VydGlvbnMoKykKPiAKPiBkaWZmIC0tZ2l0
IGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jIGIvZHJpdmVy
cy9wY2kvY29udHJvbGxlci9kd2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gaW5kZXggYjg3OGFlOGUy
YjNlLi41MDI2NTk4ZDA5ZjggMTAwNjQ0Cj4gLS0tIGEvZHJpdmVycy9wY2kvY29udHJvbGxlci9k
d2MvcGNpZS1kdy1yb2NrY2hpcC5jCj4gKysrIGIvZHJpdmVycy9wY2kvY29udHJvbGxlci9kd2Mv
cGNpZS1kdy1yb2NrY2hpcC5jCj4gQEAgLTIwLDYgKzIwLDcgQEAKPiAgICNpbmNsdWRlIDxsaW51
eC9vZl9pcnEuaD4KPiAgICNpbmNsdWRlIDxsaW51eC9waHkvcGh5Lmg+Cj4gICAjaW5jbHVkZSA8
bGludXgvcGxhdGZvcm1fZGV2aWNlLmg+Cj4gKyNpbmNsdWRlIDxsaW51eC9wbV9ydW50aW1lLmg+
Cj4gICAjaW5jbHVkZSA8bGludXgvcmVnbWFwLmg+Cj4gICAjaW5jbHVkZSA8bGludXgvcmVzZXQu
aD4KPiAgIAo+IEBAIC02OTAsNiArNjkxLDIwIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9w
cm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ICAgCWlmIChyZXQpCj4gICAJCWdv
dG8gZGVpbml0X3BoeTsKPiAgIAo+ICsJcmV0ID0gcG1fcnVudGltZV9zZXRfc3VzcGVuZGVkKGRl
dik7Cj4gKwlpZiAocmV0KQo+ICsJCWdvdG8gZGlzYWJsZV9wbV9ydW50aW1lOwo+ICsKPiArCXJl
dCA9IGRldm1fcG1fcnVudGltZV9lbmFibGUoZGV2KTsKPiArCWlmIChyZXQpIHsKPiArCQlyZXQg
PSBkZXZfZXJyX3Byb2JlKGRldiwgcmV0LCAiRmFpbGVkIHRvIGVuYWJsZSBydW50aW1lIFBNXG4i
KTsKPiArCQlnb3RvIGRlaW5pdF9jbGs7Cj4gKwl9Cj4gKwo+ICsJcmV0ID0gcG1fcnVudGltZV9y
ZXN1bWVfYW5kX2dldChkZXYpOwo+ICsJaWYgKHJldCkKPiArCQlnb3RvIGRpc2FibGVfcG1fcnVu
dGltZTsKPiArCj4gICAJc3dpdGNoIChkYXRhLT5tb2RlKSB7Cj4gICAJY2FzZSBEV19QQ0lFX1JD
X1RZUEU6Cj4gICAJCXJldCA9IHJvY2tjaGlwX3BjaWVfY29uZmlndXJlX3JjKHBkZXYsIHJvY2tj
aGlwKTsKPiBAQCAtNzA5LDcgKzcyNCwxMCBAQCBzdGF0aWMgaW50IHJvY2tjaGlwX3BjaWVfcHJv
YmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKPiAgIAo+ICAgCXJldHVybiAwOwo+ICAg
Cj4gK2Rpc2FibGVfcG1fcnVudGltZToKCldlIG5lZWQgdG8gY2FsbCByZXNldF9jb250cm9sX2Fz
c2VydChyb2NrY2hpcC0+cnN0KSBiZWZvcmUgcmVsZWFzaW5nIHRoZQp0aGUgcG0gcmVmY291bnQu
IFRoZSBwcm9ibGVtIHdlIGZhY2VkIG9uIHZlbmRvciBrZXJuZWwgaXMgdGhlcmUgbWlnaHQgYmUg
CnN0aWxsIG9uLWdvaW5nIHRyYW5zYWN0aW9uIGZyb20gSVAgdG8gdGhlIEFYSSB3aGljaCBibG9j
a3MgZ2VucGQgdG8gYmUKcG93ZXJlZCBkb3duLgoKPiArCXBtX3J1bnRpbWVfZGlzYWJsZShkZXYp
Owo+ICAgZGVpbml0X2NsazoKPiArCXBtX3J1bnRpbWVfbm9fY2FsbGJhY2tzKGRldik7Cj4gICAJ
Y2xrX2J1bGtfZGlzYWJsZV91bnByZXBhcmUocm9ja2NoaXAtPmNsa19jbnQsIHJvY2tjaGlwLT5j
bGtzKTsKPiAgIGRlaW5pdF9waHk6Cj4gICAJcm9ja2NoaXBfcGNpZV9waHlfZGVpbml0KHJvY2tj
aGlwKTsKPiBAQCAtNzI1LDYgKzc0Myw5IEBAIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfcmVt
b3ZlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCj4gICAJLyogUGVyZm9ybSBvdGhlciBj
bGVhbnVwcyBhcyBuZWNlc3NhcnkgKi8KPiAgIAljbGtfYnVsa19kaXNhYmxlX3VucHJlcGFyZShy
b2NrY2hpcC0+Y2xrX2NudCwgcm9ja2NoaXAtPmNsa3MpOwo+ICAgCXJvY2tjaGlwX3BjaWVfcGh5
X2RlaW5pdChyb2NrY2hpcCk7Cj4gKwlwbV9ydW50aW1lX3B1dF9zeW5jKGRldik7Cj4gKwlwbV9y
dW50aW1lX2Rpc2FibGUoZGV2KTsKPiArCXBtX3J1bnRpbWVfbm9fY2FsbGJhY2tzKGRldik7Cj4g
ICB9Cj4gICAKPiAgIHN0YXRpYyBjb25zdCBzdHJ1Y3Qgcm9ja2NoaXBfcGNpZV9vZl9kYXRhIHJv
Y2tjaGlwX3BjaWVfcmNfb2ZfZGF0YV9yazM1NjggPSB7CgoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0Ckxp
bnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
