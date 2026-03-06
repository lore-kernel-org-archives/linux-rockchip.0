Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BFAA5F01826
	for <linux-rockchip@archiver.kernel.org>; Fri,  6 Mar 2026 10:52:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lym4MSRPkdjmEmxFZznmkNbGQcx2igB5QxxMH8A4PKQ=; b=fOHc2zOvF7UPAJ
	37NkCOLJWOqDmhqeStq4o+VkbEYIXmWT26yPOLAM3PUsnouDBfomgKMB60HFwuuChn4qrDc/hzF2+
	kYfm1rkfDx0FxZxEX/i0EKg2SfoswwK5GEuV/Bqubjx47HZi1W4iOBufFOsiAY1E5iqnPq68buGzt
	N6wfsQx207F/0FnMThFNDgsjlYeissHjxmT7tb0BNM8aiN4WIVxpan6kPYIsFLhFAhj233RmMs+iJ
	+vnYdUafT3u7UXTFV7lp7iWD4iTj/6cY9XHU9EIOKX5oCINhSvtL50/kaBW/xdw/UUVrZha6GivVQ
	DDrifAf/I6Y1KMFN+0dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySmx-00000003Vv2-1Izm;
	Fri, 06 Mar 2026 10:52:11 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vySmv-00000003Vth-1g6V
	for linux-rockchip@lists.infradead.org;
	Fri, 06 Mar 2026 10:52:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To;
	bh=z87XzOv4holHp8moQ6B2iNBKmHotGCtKyqh2FtPJgBU=; b=kiW8/+LUHH2XugnqErUsbIIF0o
	A2dFUWHizPpuMlDsRXzQS8ZeMPyP6YCM+piQ872Jrm6T9ujfs5Il7t83KefVt3kkbR4glqedAtDGU
	023Dl7TL1UE5wEuFl4O8H1kmpaUpOT27fwOpQ78quObcDFljYiE7uwufBE3qnG1aGLclXeifqDTHe
	TW8V8gz+g9JYJ54HPOHgyP6QeUbjeHto4rS5MhPNzosWfLc1VBuYwQFLiJX2HTZcCN7aID/9qTFi+
	ByJtJe33wE+Y56Qxdva9+Oni6nvmHlXSZNQE5IwkDalIj39w1wE96eOlXt54SgFp0p6okNAcFGde0
	aZQMrQVg==;
From: Heiko Stuebner <heiko@sntech.de>
To: Stephen Boyd <sboyd@kernel.org>, Shawn Lin <shawn.lin@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org, linux-clk@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH] clk: rockchip: rk3568: Add PCIe pipe clock gates
Date: Fri, 06 Mar 2026 11:52:06 +0100
Message-ID: <3742329.R56niFO833@phil>
In-Reply-To: <1772698011-145625-1-git-send-email-shawn.lin@rock-chips.com>
References: <1772698011-145625-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260306_025209_446318_CE1F2285 
X-CRM114-Status: GOOD (  12.83  )
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

SGkgU2hhd24sCgpBbSBEb25uZXJzdGFnLCA1LiBNw6RyeiAyMDI2LCAwOTowNjo1MSBNaXR0ZWxl
dXJvcMOkaXNjaGUgTm9ybWFsemVpdCBzY2hyaWViIFNoYXduIExpbjoKPiBUaGUgUENJZSBwaXBl
IGNsb2NrcyBhcmUgY3VycmVudGx5IGxlZnQgYXMgb3JwaGFuIGNsb2NrcyBhbmQgcmVtYWluCj4g
ZW5hYmxlZCBpbmRlZmluaXRlbHksIHdoaWNoIGlzIHN1Ym9wdGltYWwuIEFkZCB0aGUgbWlzc2lu
ZyBjbG9jayBnYXRlcwo+IHNvIHRoZSBQQ0llIGRyaXZlciBjYW4gZXhwbGljaXRseSBtYW5hZ2Ug
dGhlbSB3aGVuIG5vdCBpbiB1c2UuCj4gCj4gU2lnbmVkLW9mZi1ieTogU2hhd24gTGluIDxzaGF3
bi5saW5Acm9jay1jaGlwcy5jb20+Cj4gLS0tCj4gSGkgSGVpa28sCj4gCj4gVGhpcyBwYXRjaCBz
aG91bGQgYmUgY29uc2lkZXJlZCBvbmx5IGFmdGVyIERhdmlkJ3MgcGF0Y2hbMV0gaXMgbWVyZ2Vk
LAo+IG90aGVyd2lzZSBpdCBicmVha3MgUENJZSBvbiBSSzM1NjYvUkszNTY4IGR1ZSB0byBjbGtf
ZGlzYWJsZV91bnVzZWQoKS4KClRoaXMgd291bGQgYWxzbyBicmVhayBjb21wYXRpYmxpdHkgd2l0
aCBvbGQgZGV2aWNldHJlZXMuCgpUaGUgZGV2aWNldHJlZSB1c2VkIGJ5IHRoZSBrZXJuZWwgY2Fu
IGFsc28gYmUgZW1iZWRkZWQgZm9yIGV4YW1wbGUKaW4gYW4gYWxyZWFkeSBpbnN0YWxsZWQgdS1i
b290IGFuZCBoYW5kZWQgdG8gdGhlIGtlcm5lbCBmcm9tIHRoZXJlLgpZb3UgY2Fubm90IGV4cGVj
dCBib2FyZCBkZXZpY2V0cmVlcyBhbmQgdGhlIGtlcm5lbCBpbWFnZSB0byBiZSB1cGRhdGVkCmlu
IGxvY2tzdGVwLgoKV2UgYWxzbyBzb3J0IG9mIGd1YXJhbnRlZSB0aGlzIGJhY2t3YXJkcyBjb21w
YXRpYmxpdHkgLSBvbGQgRFRCIHdpdGgKbmV3ZXIga2VybmVsLgoKVGhlIHNvbHV0aW9uIGlzIHRv
IGFkZCBhIENMS19JR05PUkVfVU5VU0VEIGZsYWcgKGJ1dCBub3QgQ0xLX0lTX0NSSVRJQ0FMKQp0
byB0aGUgbmV3bHkgYWRkZWQgZ2F0ZS4KClRoaXMgbGV0cyB0aGUgY2xvY2sgc3RheSBhbmQga2Vl
cHMgdGhlIG9yaWdpbmFsIGJlaGF2aW91cyBvbiBvbGQgRFRCcywKYnV0IGFsc28gYWxsb3dzIHRo
ZSBQQ0llIGRyaXZlciBpbiBuZXdlciBrZXJuZWxzIHRvIHR1cm4gb2ZmIHRoZSBjbG9jawppZiBp
dCB3YW50cyB0by4KClRoYW5rcwpIZWlrbwoKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
