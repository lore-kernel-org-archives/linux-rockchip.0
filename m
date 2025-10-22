Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9E175CCD1AB
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Oct 2025 10:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M8KVdvA6WMCw06hGiULLPdjyJ/hz7Y3JbDTcRWlmCKE=; b=gTaNmGSAC5f7Vf
	8W+YKCJCQb/bjPwa3FPcq4pqAUu9XFCcGo01C+GagxlJcX+GJzEe8xg8w3IpDwJvv53xdfRnI2JWA
	iXG0jm6t59NwOwiw/0wBXhdnYr3msgwnWSZk1ktCoTHxSu8iBePnqqaVlkhV3ooiyeRjcxlwBxPd4
	RFRek4LFnJ8l89TQECYabV78npJo90rt08IC4fSQfst2Zg6M5cm74gCXVkiX5XGPzBJzS9f0vm/Rc
	qCCHRvj+M/GvOP1UzKk4Af0/CTz++XGgQwDXYHabUgGB1wO+aQiKFPlD3ogdfndeTNPW+HFX8qKLF
	rJ/RXa+ZGbvQOqmhJR1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVr8-00000002R9a-0A6y;
	Wed, 22 Oct 2025 10:14:10 +0000
Received: from mail-m21473.qiye.163.com ([117.135.214.73])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVr4-00000002R4m-167B
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Oct 2025 10:14:08 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 26cc20127;
	Wed, 22 Oct 2025 18:14:00 +0800 (GMT+08:00)
Message-ID: <be96bc56-c84f-4dac-a4a0-5b3d1b43f505@rock-chips.com>
Date: Wed, 22 Oct 2025 18:13:59 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Thierry Reding <thierry.reding@gmail.com>,
 linux-rockchip@lists.infradead.org, Niklas Cassel <cassel@kernel.org>,
 linux-pci@vger.kernel.org
Subject: Re: [PATCH 1/4] PCI: of: Add of_pci_clkreq_present()
To: Manivannan Sadhasivam <mani@kernel.org>
References: <1761032907-154829-1-git-send-email-shawn.lin@rock-chips.com>
 <1761032907-154829-2-git-send-email-shawn.lin@rock-chips.com>
 <eorncfyktfdc33md7ogqccy5z2lsye7ew32wdy4sbegvjo2rdl@qp2zy7u75jqg>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <eorncfyktfdc33md7ogqccy5z2lsye7ew32wdy4sbegvjo2rdl@qp2zy7u75jqg>
X-HM-Tid: 0a9a0b69477609cckunmb34b901f7eb0b1
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUxCGVYeSxpLSR5PQ0kaSBlWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=WK6lqT/gf5Ep4/xz/eLn35/ap0koV2X8sG+UwiWb/fBQH6SNGDpC7RWujOSSLtv6Su4/Sg53kAKl0Fr4QmRH1+H9s2xJaIDjlVFrAP04OjkTZGuKB2kaiE7848BoaQGbf188jMoZuyG/E5vRso7x8vtpLFPDKMlFwunbTMtbjEw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=GmeWE1M63NeoHlFURMlwTAHebQLrzaGk/W6PAN9HlMc=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_031406_895312_7E10008D 
X-CRM114-Status: GOOD (  13.75  )
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

SGkgTWFuaQoK5ZyoIDIwMjUvMTAvMjIg5pif5pyf5LiJIDE4OjAyLCBNYW5pdmFubmFuIFNhZGhh
c2l2YW0g5YaZ6YGTOgo+IE9uIFR1ZSwgT2N0IDIxLCAyMDI1IGF0IDAzOjQ4OjI0UE0gKzA4MDAs
IFNoYXduIExpbiB3cm90ZToKPj4gb2ZfcGNpX2Nsa3JlcV9wcmVzZW50KCkgaXMgdXNlZCBieSBo
b3N0IGRyaXZlcnMgdG8gZGVjaWRlIHdoZXRoZXIgdGhlIGNsa3JlcSMKPj4gaXMgcHJvcGVybHkg
Y29ubmVjdGVkIGFuZCBjb3VsZCBlbmFibGUgTDEuMS9MMS4yIHN1cHBvcnQuCj4+Cj4+IFNpZ25l
ZC1vZmYtYnk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj4g
ICBkcml2ZXJzL3BjaS9vZi5jICB8IDE4ICsrKysrKysrKysrKysrKysrKwo+PiAgIGRyaXZlcnMv
cGNpL3BjaS5oIHwgIDYgKysrKysrCj4+ICAgMiBmaWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25z
KCspCj4+Cj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9vZi5jIGIvZHJpdmVycy9wY2kvb2Yu
Ywo+PiBpbmRleCAzNTc5MjY1ZjExOTguLjUyYzZkMzY1MDgzYiAxMDA2NDQKPj4gLS0tIGEvZHJp
dmVycy9wY2kvb2YuYwo+PiArKysgYi9kcml2ZXJzL3BjaS9vZi5jCj4+IEBAIC0xMDEwLDMgKzEw
MTAsMjEgQEAgaW50IG9mX3BjaV9nZXRfZXF1YWxpemF0aW9uX3ByZXNldHMoc3RydWN0IGRldmlj
ZSAqZGV2LAo+PiAgIAlyZXR1cm4gMDsKPj4gICB9Cj4+ICAgRVhQT1JUX1NZTUJPTF9HUEwob2Zf
cGNpX2dldF9lcXVhbGl6YXRpb25fcHJlc2V0cyk7Cj4+ICsKPj4gKy8qKgo+PiArICogb2ZfcGNp
X2Nsa3JlcV9wcmVzZW50KCkgLSBDaGVjayBpZiB0aGUgInN1cHBvcnRzLWNsa3JlcSIgaXMgcHJl
c2VudAo+IAo+IEkgZG9uJ3Qgc2VlIGEgYmVuZWZpdCBvZiB0aGlzIEFQSSwgdGJoLiBUaGUgQVBJ
IG5hbWUgY3JlYXRlcyBhbiBpbXByZXNzaW9uIHRoYXQKPiB0aGUgQVBJIHdpbGwgY2hlY2sgZm9y
IHRoZSBwcmVzZW5jZSBvZiBDTEtSRVEjIHNpZ25hbCBpbiBEVCwgYnV0IGl0IGNoZWNrcwo+IGZv
ciB0aGUgcHJlc2VuY2Ugb2YgdGhlICdzdXBwb3J0cy1jbGtyZXEnIHByb3BlcnR5LiBFdmVuIHRo
b3VnaCB0aGUgcHJlc2VuY2Ugb2YKPiB0aGUgcHJvcGVydHkgaW1wbGllcyB0aGF0IHRoZSBDTEtS
RVEjIHJvdXRpbmcgaXMgYXZhaWxhYmxlLCBJJ2QgcHJlZmVyIHRvIGNoZWNrCj4gZm9yIHRoZSBw
cm9wZXJ0eSBleHBsaWNpdGx5IGluc3RlYWQgb2YgaGlkaW5nIGl0IGluc2lkZSB0aGlzIEFQSS4K
Ckl0IG1ha2VzIHNlbnNlLgoKV2lsbCB0aGUgbmFtZSBvZl9wY2lfc3VwcG9ydHNfY2xrcmVxX3By
ZXNlbnQoKSBsb29rIGdvb2Q/IE9yIHdlIGp1c3QKZHJvcCBpdCBhbmQgbGV0IGhvc3QgZHJpdmVy
cyB0byBleHBsaWNpdGx5IGNoZWNrIHN1cHBvcnRzLWNsa3JlcSBpbnNpZGUKdGhlaXIgY29kZT8K
Cgo+IAo+IC0gTWFuaQo+IAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
