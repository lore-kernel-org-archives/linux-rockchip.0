Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 86836C369CB
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Apr 2025 01:03:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s0t4SF/uP+NyXVCtuB9Ztg1N0SVrE3TAql1jpvqG3jI=; b=Bzj3zzADQ8oPTZ
	JV21F4lQhrQR88IBIKez05erk6rp3mGAbbpLQiyUjh1drdkqmiuTQIKRQet5DlD/PtLkbpiFkJiA1
	gzfPX9ioG324vZvHg65STNsltnzPWm0xVFIPRic/JwfYFl1aFtDioAysgi6rg8mS2TxO3h9bcb60E
	c9tOKX8GX4Tkf9kPAWdl/CQYevSIKdIVHdvq4TXhRwkcKL7P/xBVik6N3nISeRMG9kERmF45lYJoB
	HJOE6jvsz8Mgo60rBaglbHQDs5KkK6FmQdAu5d5IxvTAB9TeMX37fCwzWnKysfTyMlEmk05sEeREy
	J80dXjEehD/rDFxD5KSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7OVl-00000008vs2-2ctN;
	Wed, 23 Apr 2025 01:02:49 +0000
Received: from mail-m32100.qiye.163.com ([220.197.32.100])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u7OTl-00000008vYH-1XQW;
	Wed, 23 Apr 2025 01:00:47 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 12c84bfa6;
	Wed, 23 Apr 2025 09:00:33 +0800 (GMT+08:00)
Message-ID: <4c00fce8-f148-c222-e0c1-e932f04bead0@rock-chips.com>
Date: Wed, 23 Apr 2025 09:00:32 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Cc: shawn.lin@rock-chips.com, Dragan Simic <dsimic@manjaro.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Rob Herring <robh@kernel.org>, Niklas Cassel <cassel@kernel.org>,
 linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 stable@vger.kernel.org
Subject: Re: [PATCH] PCI: dw-rockchip: Fix function call sequence in
 rockchip_pcie_phy_deinit
To: Diederik de Haas <didi.debian@cknow.org>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Heiko Stuebner <heiko@sntech.de>
References: <20250417142138.1377451-1-didi.debian@cknow.org>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <20250417142138.1377451-1-didi.debian@cknow.org>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhhMSVYdH0NJTU9LT0hJQ0NWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a9660292c4d09cckunm12c84bfa6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6MxA6MQw4NjJDS0g4KRBOPgkr
	DzoKCQ1VSlVKTE9OSExLS0hPTExOVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUlITUg3Bg++
DKIM-Signature: a=rsa-sha256;
	b=h9tOvoj3hPT5WazN6NPH16KOTyYFb7W7Mubm3RWn2bfWOK9GADUVp15NwbrISzsiN+Ip3ufHh/zwQ9bg/lWixhRSBE8+fi4aPKJ9olJJKjTihi2IQ/+CTPJ5ZK5i1glMnRlWWDqGR5hDO9PVZPupk4VWVLnyNDff0BAlxu0rAIc=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=2QkUHWrrRsbgwVuGJvlBbxO6cfRY8uSV95tNc6tCSZw=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_180045_862387_1DF11689 
X-CRM114-Status: GOOD (  13.45  )
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

5ZyoIDIwMjUvMDQvMTcg5pif5pyf5ZubIDIyOjIxLCBEaWVkZXJpayBkZSBIYWFzIOWGmemBkzoK
PiBUaGUgZG9jdW1lbnRhdGlvbiBmb3IgdGhlIHBoeV9wb3dlcl9vZmYoKSBmdW5jdGlvbiBleHBs
aWNpdGx5IHNheXMKPiAKPiAgICBNdXN0IGJlIGNhbGxlZCBiZWZvcmUgcGh5X2V4aXQoKS4KPiAK
PiBTbyBsZXQncyBmb2xsb3cgdGhhdCBpbnN0cnVjdGlvbi4KClRoYW5rcyBmb3IgdGhpcyBmaXhp
bmcuCgpBY2tlZC1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cgo+IAo+
IEZpeGVzOiAwZTg5OGViOGRmNGUgKCJQQ0k6IHJvY2tjaGlwLWR3YzogQWRkIFJvY2tjaGlwIFJL
MzU2WCBob3N0IGNvbnRyb2xsZXIgZHJpdmVyIikKPiBDYzogc3RhYmxlQHZnZXIua2VybmVsLm9y
ZwkjIHY1LjE1Kwo+IFNpZ25lZC1vZmYtYnk6IERpZWRlcmlrIGRlIEhhYXMgPGRpZGkuZGViaWFu
QGNrbm93Lm9yZz4KPiAtLS0KPiAgIGRyaXZlcnMvcGNpL2NvbnRyb2xsZXIvZHdjL3BjaWUtZHct
cm9ja2NoaXAuYyB8IDIgKy0KPiAgIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBk
ZWxldGlvbigtKQo+IAo+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9w
Y2llLWR3LXJvY2tjaGlwLmMgYi9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJv
Y2tjaGlwLmMKPiBpbmRleCBjNjI0YjdlYmQxMTguLjRmOTI2Mzk2NTBlMyAxMDA2NDQKPiAtLS0g
YS9kcml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiArKysgYi9k
cml2ZXJzL3BjaS9jb250cm9sbGVyL2R3Yy9wY2llLWR3LXJvY2tjaGlwLmMKPiBAQCAtNDEwLDgg
KzQxMCw4IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcGNpZV9waHlfaW5pdChzdHJ1Y3Qgcm9ja2No
aXBfcGNpZSAqcm9ja2NoaXApCj4gICAKPiAgIHN0YXRpYyB2b2lkIHJvY2tjaGlwX3BjaWVfcGh5
X2RlaW5pdChzdHJ1Y3Qgcm9ja2NoaXBfcGNpZSAqcm9ja2NoaXApCj4gICB7Cj4gLQlwaHlfZXhp
dChyb2NrY2hpcC0+cGh5KTsKPiAgIAlwaHlfcG93ZXJfb2ZmKHJvY2tjaGlwLT5waHkpOwo+ICsJ
cGh5X2V4aXQocm9ja2NoaXAtPnBoeSk7Cj4gICB9Cj4gICAKPiAgIHN0YXRpYyBjb25zdCBzdHJ1
Y3QgZHdfcGNpZV9vcHMgZHdfcGNpZV9vcHMgPSB7CgpfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgt
cm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
