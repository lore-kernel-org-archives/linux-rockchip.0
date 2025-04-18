Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B57ECC369C2
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Apr 2025 00:28:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HApBB287E3mFVrTVtSWqov18Ov3h2jUrHrZx4TYyXZs=; b=FSV3UwYkwyTHUH
	y7wsz4p+9VAdxZ9NwV8hnidc0+m8Kaz/wBnycsqLhbP7u8CluquTpXk0OC6RpTwAtXteOL7aqZ8XZ
	XUuO8GIchnzDV7vXTrJeh9HPeX0Vhr1fdJfr1It2z/Ouru9K+PNVYGUGOZ9jZqa2mwsxzazxFdxer
	a6/nTXkKsAgfcBBjYLDRp52j7lvE4M5TEzOGP4WXGlIoWeKkvJWIN9FNhlmqqao+sMxqpIpw1ZvwK
	7AnrsRP3PyLnXtNHr0Yq70jH78FEmwYSMbNLf3MTvwbRV/F5dtwkzO0yL2ougPkQqi8Gw/+RlixVJ
	tZTdfxo0QzHLqEQmEdOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5ZaU-0000000EgBr-2UXx;
	Fri, 18 Apr 2025 00:28:10 +0000
Received: from mail-m4920.qiye.163.com ([45.254.49.20])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5ZaO-0000000EgAy-3Mzs
	for linux-rockchip@lists.infradead.org;
	Fri, 18 Apr 2025 00:28:08 +0000
Received: from [172.16.12.129] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 12470582a;
	Fri, 18 Apr 2025 08:28:01 +0800 (GMT+08:00)
Message-ID: <6490464f-c47a-9a63-e0a1-251d52781c9d@rock-chips.com>
Date: Fri, 18 Apr 2025 08:27:24 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Cc: shawn.lin@rock-chips.com, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
 linux-pci@vger.kernel.org, linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2] PCI: dw-rockchip: Add system PM support
To: Niklas Cassel <cassel@kernel.org>
References: <1744352048-178994-1-git-send-email-shawn.lin@rock-chips.com>
 <Z_5aib0WGKfIANj_@ryzen> <aADdI7ByEImYy3Pq@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aADdI7ByEImYy3Pq@ryzen>
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGR0ZHlZMTh4ZT05JS0lPQkhWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
X-HM-Tid: 0a96464b971d09cckunm12470582a
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PCI6CDo5DTJWQxUBMwECSDxO
	PikaCwpVSlVKTE9PQkhNS0NJSk9OVTMWGhIXVQgTGgwVVRcSFTsJFBgQVhgTEgsIVRgUFkVZV1kS
	C1lBWU5DVUlJVUxVSkpPWVdZCAFZQUpCSE43Bg++
DKIM-Signature: a=rsa-sha256;
	b=A37u9bG/VQcfB92CcXbjvVDg9qcerAsemNk2u76dK1k/Cc/rhyPel3uz/UP/x69T25x14uR1XQAPzbxxg/sTq2g2b6jpaDk4l2DMxBZu/wZQYH3Be+CVAuJS3NlAtNBi6+BeyIcBC6asK9YHKnC3hNSCRNgZqHboZ/6th+MA5pU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=Jt8fEUVQruj1fDLANC6RjIVA6yS/VPpH2zThqfqOuxA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_172805_288399_1D41F6FD 
X-CRM114-Status: GOOD (  12.04  )
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

SGkgTmlrbGFzCgrlnKggMjAyNS8wNC8xNyDmmJ/mnJ/lm5sgMTg6NTEsIE5pa2xhcyBDYXNzZWwg
5YaZ6YGTOgo+IE9uIFR1ZSwgQXByIDE1LCAyMDI1IGF0IDAzOjA5OjI5UE0gKzAyMDAsIE5pa2xh
cyBDYXNzZWwgd3JvdGU6Cj4+IE9uIEZyaSwgQXByIDExLCAyMDI1IGF0IDAyOjE0OjA4UE0gKzA4
MDAsIFNoYXduIExpbiB3cm90ZToKPiAKPiAoc25pcCkKPiAKPj4+ICsKPj4+ICsJcm9ja2NoaXBf
cGNpZV9sdHNzbV9lbmFibGVfY29udHJvbF9tb2RlKHJvY2tjaGlwLCBQQ0lFX0NMSUVOVF9SQ19N
T0RFKTsKPj4KPj4gSGVyZSB5b3UgYXJlIHNldHRpbmcgUENJRV9DTElFTlRfUkNfTU9ERSB1bmNv
bmRpdGlvbmFsbHkuCj4+Cj4+IEkgcmVhbGx5IGRvbid0IHRoaW5rIHRoYXQgeW91IGhhdmUgdGVz
dGVkIHRoZXNlIGNhbGxiYWNrcyB3aXRoIEVQIG1vZGUuCj4+Cj4+IElmIHdlIGxvb2sgYXQgcGNp
ZS1xY29tLmMgYW5kIHBjaWUtcWNvbS1lcC5jLCBkZXZfcG1fb3BzIGlzIGRlZmluZWQgaW4KPj4g
cGNpZS1xY29tLmMsIGJ1dCBub3QgaW4gcGNpZS1xY29tLWVwLmMuCj4+Cj4+IFBlcmhhcHMgaXQg
aXMgc3RhcnRpbmcgdG8gYmUgdGltZSB0byBoYXZlIHR3byBzZXBhcmF0ZSBkcml2ZXJzIGFsc28g
Zm9yCj4+IHJvY2tjaGlwPwo+IAo+IEhtbS4uIGxvb2tpbmcgYXQgcGNpZS10ZWdyYTE5NC5jLCB0
aGV5IGRvIHN0aWxsIGhhdmUgYm90aCBSQyBhbmQgRVAgaW4gdGhlCj4gc2FtZSBmaWxlLCBidXQg
dGhleSBzaW1wbHkgcmV0dXJuIC1FTk9UU1VQUCBpbiB0aGUgRVAgY2FzZToKPiBodHRwczovL2dp
dGh1Yi5jb20vdG9ydmFsZHMvbGludXgvYmxvYi92Ni4xNS1yYzIvZHJpdmVycy9wY2kvY29udHJv
bGxlci9kd2MvcGNpZS10ZWdyYTE5NC5jI0wyMzgxLUwyMzg0Cj4gCj4gUGVyaGFwcyB5b3UgY291
bGQgZG8gc29tZXRoaW5nIHNpbWlsYXI/CgpJJ2xsIGxvb2sgaW50byBpdC4gVGhhbmtzIGZvciBw
cm92aWRpbmcgdGhpcyB1c2VmdWwgaGludC4KCj4gCj4gCj4gS2luZCByZWdhcmRzLAo+IE5pa2xh
cwo+IAo+IAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1y
b2NrY2hpcAo=
