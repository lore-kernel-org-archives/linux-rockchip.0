Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01322F01830
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 12:06:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Cc:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=owz9Xq8ZdFVLFtPAcbHhcZZgaMdMarVNSNirptXMPG0=; b=HvslV0HLfszSK4fRh5E5yFge/4
	nuQGhB477yq7t4epsukf57YuA+T3l76XzvW+yZ4rMpXtTPyUo1HE4piLOyoZ0v1d2Diw336qcOJn0
	3lcmoWYsPKej555mCws41TjWh5YMWKqTmzSYEpxzV+M7darhvkhRgPE1dgibWUyIyE161IN0gKNFX
	tRqFQ+s5BlywNJ4ktg+GwO/+h2xQE+k0z00moHru/BdSApMuDOAYyZ/OB/rUGqbJ+6p7ezeWa0Zsb
	1JlxXsOJnVveLG2zD8TOzqy5pJXfNvcisRCXYeYNtNpklU6SGkAc4Z3c9OgXVErmFXLSsTbQPjnGj
	Yl0H4dNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyTwL-00000003bFn-0P6K;
	Fri, 06 Mar 2026 12:05:57 +0000
Received: from mail-m1973180.qiye.163.com ([220.197.31.80])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vyTwG-00000003bEM-2ijD
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 12:05:56 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 36060f672;
	Fri, 6 Mar 2026 20:05:45 +0800 (GMT+08:00)
Cc: shawn.lin@rock-chips.com, linux-rockchip@lists.infradead.org,
 linux-clk@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH] clk: rockchip: rk3568: Add PCIe pipe clock gates
To: Heiko Stuebner <heiko@sntech.de>
References: <1772698011-145625-1-git-send-email-shawn.lin@rock-chips.com>
 <3742329.R56niFO833@phil>
From: Shawn Lin <shawn.lin@rock-chips.com>
Message-ID: <65431f69-811c-61af-9c33-3dee6992ac71@rock-chips.com>
Date: Fri, 6 Mar 2026 20:05:43 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <3742329.R56niFO833@phil>
X-HM-Tid: 0a9cc30a1c1209cckunmc3da3282143748f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGhkZTFYaGUtKH0tKGh5PQ05WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=c6qwPOrYRMiNOZvNiazi5AcVcMXIfa3avBYrMky8wlVDGAQUrjiBaIU+XhaJCgrZ6GT57No0Vxq6HqmZOLl4MKhSoxRKI3HOwKNqDEr3YHWxLn/l+exT8zORhHfJkE1EaPEIHYVF0TqS8mXRR7IvpBfIWWbPfNHMgiT4Qhvuh5A=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=18SAF6l9IUr8WQgBnZ4/fTJP3r6H7Na38YobGr1twPA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_040553_987177_BB73E6D8 
X-CRM114-Status: GOOD (  17.59  )
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

SGkgSGVpa28sCgrlnKggMjAyNi8wMy8wNiDmmJ/mnJ/kupQgMTg6NTIsIEhlaWtvIFN0dWVibmVy
IOWGmemBkzoKPiBIaSBTaGF3biwKPiAKPiBBbSBEb25uZXJzdGFnLCA1LiBNw6RyeiAyMDI2LCAw
OTowNjo1MSBNaXR0ZWxldXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoK
Pj4gVGhlIFBDSWUgcGlwZSBjbG9ja3MgYXJlIGN1cnJlbnRseSBsZWZ0IGFzIG9ycGhhbiBjbG9j
a3MgYW5kIHJlbWFpbgo+PiBlbmFibGVkIGluZGVmaW5pdGVseSwgd2hpY2ggaXMgc3Vib3B0aW1h
bC4gQWRkIHRoZSBtaXNzaW5nIGNsb2NrIGdhdGVzCj4+IHNvIHRoZSBQQ0llIGRyaXZlciBjYW4g
ZXhwbGljaXRseSBtYW5hZ2UgdGhlbSB3aGVuIG5vdCBpbiB1c2UuCj4+Cj4+IFNpZ25lZC1vZmYt
Ynk6IFNoYXduIExpbiA8c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+PiAtLS0KPj4gSGkgSGVp
a28sCj4+Cj4+IFRoaXMgcGF0Y2ggc2hvdWxkIGJlIGNvbnNpZGVyZWQgb25seSBhZnRlciBEYXZp
ZCdzIHBhdGNoWzFdIGlzIG1lcmdlZCwKPj4gb3RoZXJ3aXNlIGl0IGJyZWFrcyBQQ0llIG9uIFJL
MzU2Ni9SSzM1NjggZHVlIHRvIGNsa19kaXNhYmxlX3VudXNlZCgpLgo+IAo+IFRoaXMgd291bGQg
YWxzbyBicmVhayBjb21wYXRpYmxpdHkgd2l0aCBvbGQgZGV2aWNldHJlZXMuCj4gCj4gVGhlIGRl
dmljZXRyZWUgdXNlZCBieSB0aGUga2VybmVsIGNhbiBhbHNvIGJlIGVtYmVkZGVkIGZvciBleGFt
cGxlCj4gaW4gYW4gYWxyZWFkeSBpbnN0YWxsZWQgdS1ib290IGFuZCBoYW5kZWQgdG8gdGhlIGtl
cm5lbCBmcm9tIHRoZXJlLgo+IFlvdSBjYW5ub3QgZXhwZWN0IGJvYXJkIGRldmljZXRyZWVzIGFu
ZCB0aGUga2VybmVsIGltYWdlIHRvIGJlIHVwZGF0ZWQKPiBpbiBsb2Nrc3RlcC4KCkluZGVlZC4K
Cj4gCj4gV2UgYWxzbyBzb3J0IG9mIGd1YXJhbnRlZSB0aGlzIGJhY2t3YXJkcyBjb21wYXRpYmxp
dHkgLSBvbGQgRFRCIHdpdGgKPiBuZXdlciBrZXJuZWwuCj4gCj4gVGhlIHNvbHV0aW9uIGlzIHRv
IGFkZCBhIENMS19JR05PUkVfVU5VU0VEIGZsYWcgKGJ1dCBub3QgQ0xLX0lTX0NSSVRJQ0FMKQo+
IHRvIHRoZSBuZXdseSBhZGRlZCBnYXRlLgo+IAoKVGhhbmtzLCB3aWxsIGltcHJvdmUgaXQuCgo+
IFRoaXMgbGV0cyB0aGUgY2xvY2sgc3RheSBhbmQga2VlcHMgdGhlIG9yaWdpbmFsIGJlaGF2aW91
cyBvbiBvbGQgRFRCcywKPiBidXQgYWxzbyBhbGxvd3MgdGhlIFBDSWUgZHJpdmVyIGluIG5ld2Vy
IGtlcm5lbHMgdG8gdHVybiBvZmYgdGhlIGNsb2NrCj4gaWYgaXQgd2FudHMgdG8uCj4gCj4gVGhh
bmtzCj4gSGVpa28KPiAKPiAKPiAKPiAKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
