Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5293C624A4
	for <linux-rockchip@archiver.kernel.org>; Thu,  3 Sep 2026 10:02:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NQQu1CskeK3Xrb2TliSgs0O1rZ9aKT6F9qZ6DXwwROI=; b=iSR/iP/jOlRhjH
	8m2KfAyKg15t0rur5ZkNzrKHWNGCUA0gAx/MCM8DO3uIG0KYCGlcOpxTHzav6vLZpdHbYHmqpA35Z
	TGMartQELJLD7DMD6F0YkrLvz6PrABBFLYewQam/IiyIuqfmTKItiBQmPFmn5dA7mJxIWjvzZYI6r
	mRyxZ3X4biMuTvx5cf/eNPk0+5U7TWOtB84bHuxcIm/75obpednyBG3ofRTSBbUUleiAg9FX3VLrk
	DjFDYpjV62uLgCICzGXRJiPZZvZhqzT+apH76H8otXeJlI8w7+rc7HBy+7dBMjRuQlfUkeFhCDnUL
	OosqyEpfLYoNDL51QljQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24H3-0000000H1RU-1nuU;
	Thu, 03 Sep 2026 10:02:25 +0000
Received: from mail-m1602365224.xmail.ntesmail.com ([160.236.52.24])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x24Gz-0000000H1Qo-3jDO
	for linux-rockchip@lists.infradead.org;
	Thu, 03 Sep 2026 10:02:24 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4c6907951;
	Thu, 3 Sep 2026 18:02:16 +0800 (GMT+08:00)
Message-ID: <f327888a-8bec-462f-82f9-3418fd07addd@rock-chips.com>
Date: Thu, 3 Sep 2026 18:02:14 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Bjorn Helgaas <bhelgaas@google.com>,
 Manivannan Sadhasivam <mani@kernel.org>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 2/2] PCI: dw-rockchip: Do not recreate the INTx irq domain
 on root port reset
To: Niklas Cassel <cassel@kernel.org>
References: <1788403477-71491-1-git-send-email-shawn.lin@rock-chips.com>
 <1788403477-71491-3-git-send-email-shawn.lin@rock-chips.com>
 <apkx5X83hrHIPOZN@ryzen>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <apkx5X83hrHIPOZN@ryzen>
X-HM-Tid: 0aa066b8199303a4kunm5c7a04dcab72f
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTB8ZVktNTBkfSR5IT0lCGFYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUJCSU
	5LVUpLS1VKQktCWQY+
DKIM-Signature: a=rsa-sha256;
	b=hYg9I2WJtxuPAVRVHUJr+8p05IBgRHF408pzh9+aias912QjW6sJiRIW2sje43ZazBqIr5HrOgKXvXkeoN9/VVMxvpefoOGa/NDM3l27UY7zRChFnXJIzcNjnTRwwGEDp8PVYjeQZ1eNhqnO7xwh84ZEBECgDLfGaJ5Q/wDmIiE=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=typ9XrcJqimvs1Ez86DBSroYw0VFECmYrszjECfOdY4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260903_030222_500522_6D0A64AD 
X-CRM114-Status: GOOD (  23.05  )
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

SGkgTmlrbGFzCgrlnKggMjAyNi8wOS8wMyDmmJ/mnJ/lm5sgMTY6MzcsIE5pa2xhcyBDYXNzZWwg
5YaZ6YGTOgo+IE9uIFRodSwgU2VwIDAzLCAyMDI2IGF0IDEwOjQ0OjM3QU0gKzA4MDAsIFNoYXdu
IExpbiB3cm90ZToKPj4gLnJlc2V0X3Jvb3RfcG9ydCgpIHJlLXJ1bnMgdGhlIGhvc3Qgb3BzIC5p
bml0KCkgY2FsbGJhY2sgdG8gcmVwcm9ncmFtCj4+IHRoZSBSb290IENvbXBsZXggYWZ0ZXIgdGhl
IGNvbnRyb2xsZXIgcmVzZXQuIEhvd2V2ZXIsIC5pbml0KCkgYWxzbwo+PiBjcmVhdGVzIGEgbmV3
IElOVHggaXJxIGRvbWFpbiBvbiBldmVyeSByb290IHBvcnQgcmVzZXQsIHNvIHRoYXQ6Cj4+Cj4+
ICAgIC0gdGhlIHByZXZpb3VzIGlycSBkb21haW4gaXMgbGVha2VkLCBhcyBpdCBpcyBuZXZlciBy
ZW1vdmVkLCBhbmQgdHdvCj4+ICAgICAgaXJxIGRvbWFpbnMgZW5kIHVwIHJlZ2lzdGVyZWQgZm9y
IHRoZSBzYW1lIGZ3bm9kZTsKPj4KPj4gICAgLSB0aGUgSU5UeCB2aXJxcyBvZiB0aGUgZG93bnN0
cmVhbSBQQ0kgZGV2aWNlcyB3ZXJlIGFsbG9jYXRlZCBpbiB0aGUKPj4gICAgICBwcmV2aW91cyBp
cnEgZG9tYWluIGFuZCBhcmUgbmV2ZXIgcmUtbWFwcGVkLCB3aGlsZSB0aGUgY2hhaW5lZAo+PiAg
ICAgIGhhbmRsZXIgbm93IGxvb2tzIHVwIHZpcnFzIGluIHRoZSBuZXcsIGVtcHR5IGRvbWFpbi4g
SGVuY2UsIGFmdGVyIGEKPj4gICAgICBsaW5rIGRvd24gcmVjb3ZlcnksIElOVHggaW50ZXJydXB0
cyBhcmUgc2lsZW50bHkgbG9zdC4KPj4KPj4gU3BsaXQgdGhlIChyZSlwcm9ncmFtbWluZyBvZiB0
aGUgUm9vdCBDb21wbGV4IHJlZ2lzdGVycyBvdXQgb2YgLmluaXQoKQo+PiBpbnRvIHJvY2tjaGlw
X3BjaWVfaG9zdF9od19pbml0KCkgYW5kIGNhbGwgdGhhdCBmcm9tIC5yZXNldF9yb290X3BvcnQo
KQo+PiBpbnN0ZWFkLiBUaGUgSU5UeCBpcnEgZG9tYWluIGFuZCB0aGUgY2hhaW5lZCBoYW5kbGVy
IGFyZSBub3cgb25seSBzZXQgdXAKPj4gb25jZSwgYXQgcHJvYmUgdGltZSwgd2hpY2gga2VlcHMg
dGhlIGFscmVhZHkgbWFwcGVkIHZpcnFzIHZhbGlkIGFjcm9zcwo+PiByb290IHBvcnQgcmVzZXRz
Lgo+Pgo+PiBGaXhlczogYjM3NmIzZmY5Y2IwICgiUENJOiBkdy1yb2NrY2hpcDogSW1wbGVtZW50
IC5yZXNldF9yb290X3BvcnQoKSBhbmQgdXNlIGZvciBsaW5rIGRvd24iKQo+PiBDYzogTmlrbGFz
IENhc3NlbCA8Y2Fzc2VsQGtlcm5lbC5vcmc+Cj4+IFNpZ25lZC1vZmYtYnk6IFNoYXduIExpbiA8
c2hhd24ubGluQHJvY2stY2hpcHMuY29tPgo+Pgo+PiAtLS0KPiAKPiBJZiBJIGNvbXBhcmUgdG8g
cGNpZS1xY29tLmMsIHRoZSBkaWZmZXJlbmNlIGlzIHRoYXQgdGhleSBkbwo+IGUuZy46Cj4gaXJx
ID0gcGxhdGZvcm1fZ2V0X2lycV9ieW5hbWVfb3B0aW9uYWwocGRldiwgImdsb2JhbCIpOwo+IAo+
IGFmdGVyIGNhbGxpbmcgZHdfcGNpZV9ob3N0X2luaXQoKSBpbiBxY29tX3BjaWVfcHJvYmUoKS4K
PiAKPiAKPiBJIGd1ZXNzIHBjaWUtZHctcm9ja2NoaXAuYyBjb3VsZCBkbyB0aGUgc2FtZToKPiBD
YWxsIG9mX2lycV9nZXRfYnluYW1lKCkgYW5kIHJvY2tjaGlwX3BjaWVfaW5pdF9pcnFfZG9tYWlu
KCkgaW4KPiByb2NrY2hpcF9wY2llX2NvbmZpZ3VyZV9yYygpLCBhZnRlciBjYWxsaW5nIGR3X3Bj
aWVfaG9zdF9pbml0KCkuCj4gCj4gVGhhdCB3YXksIHlvdSBkb24ndCBuZWVkIHRvIGludHJvZHVj
ZSBhbm90aGVyIHJvY2tjaGlwX3BjaWVfaG9zdF9od19pbml0KCkuCj4gCj4gcGNpLT5wcC5vcHMt
PmluaXQoKSBpcyBjYWxsZWQgYnkgYm90aCBkd19wY2llX2hvc3RfaW5pdCgpIGFuZAo+IGR3X3Bj
aWVfcmVzdW1lX25vaXJxKCkuIFNvIGNhbGxpbmcgb2ZfaXJxX2dldF9ieW5hbWUoKSBpbiAuaW5p
dCgpCj4gZG9lcyBzZWVtIHNsaWdodGx5IHdyb25nLCBhcyB3ZSB3b3VsZCBnZXQgdGhlIGlycSBv
biBlYWNoIHJlc3VtZS4KPiAKPiBQZXJoYXBzIHBjaWUtZHctcm9ja2NoaXAuYyBkb2VzIG5vdCBo
YXZlIHN1cHBvcnQgZm9yIHJlc3VtZSwgc28gaXQKPiBkb2VzIG5vdCBtYXR0ZXIgcmlnaHQgbm93
LCBidXQgc3RpbGwgc2VlbXMgYSBiaXQgd2VpcmQgdG8gY2FsbAo+IG9mX2lycV9nZXRfYnluYW1l
KCkgaW4gaW5pdCgpLgo+IAo+IEkgZGlkIG5vdCBsb29rIGlmIHJvY2tjaGlwX3BjaWVfaW5pdF9p
cnFfZG9tYWluKCkgc2hvdWxkIGJlIGNhbGxlZAo+IG9uIGVhY2ggcmVzdW1lLCBidXQgSSBzaW5j
ZSB3ZSBkb24ndCB0ZWFyIGRvd24gdGhlIGlycV9kb21haW4gaW4KPiBwY2ktPnBwLm9wcy0+ZGVp
bml0KCksIGluIGZhY3Qgd2UgZG9uJ3QgZXZlbiBoYXZlIGEgLT5kZWluaXQoKSwKPiBzbyBjYWxs
aW5nIHJvY2tjaGlwX3BjaWVfaW5pdF9pcnFfZG9tYWluKCkgaW4gLT5pbml0KCkgZG9lcyBzZWVt
Cj4gd3JvbmcgYXMgd2VsbC4KPiAKPiBTbyBteSB2b3RlIGlzIHRvIG1vdmUgYm90aCB0byByb2Nr
Y2hpcF9wY2llX2NvbmZpZ3VyZV9yYygpLCBhZnRlcgo+IGNhbGxpbmcgZHdfcGNpZV9ob3N0X2lu
aXQoKS4KPiAKClRoYW5rcyBmb3IgdGhlIHJldmlldyEKCkkgYWdyZWUgd2l0aCB5b3VyIHJlYXNv
bmluZy4gV2lsbCBtb3ZlcyB0aGUgb2ZfaXJxX2dldF9ieW5hbWUoKSBsb29rdXAsCnRoZSBJTlR4
IGlycSBkb21haW4gY3JlYXRpb24gYW5kIHRoZSBjaGFpbmVkIGhhbmRsZXIgaW5zdGFsbGF0aW9u
IGludG8Kcm9ja2NoaXBfcGNpZV9jb25maWd1cmVfcmMoKSwgcmlnaHQgYWZ0ZXIgZHdfcGNpZV9o
b3N0X2luaXQoKSwgbWF0Y2hpbmcKdGhlIHFjb20gcGF0dGVybiB5b3UgcG9pbnRlZCBvdXQuIFRo
ZSByb2NrY2hpcF9wY2llX2hvc3RfaHdfaW5pdCgpCmhlbHBlciBmcm9tIHdpbGwgYmUgZ29uZSBp
biB2MiwgYW5kIHRoZSBob3N0IG9wcyAuaW5pdCgpIGNhbGxiYWNrIGlzCmJhY2sgdG8gZG9pbmcg
b25seSBpZGVtcG90ZW50IHJlZ2lzdGVyIHByb2dyYW1taW5nLCB3aGljaAoucmVzZXRfcm9vdF9w
b3J0KCkgY2FuIHNhZmVseSByZS1ydW4uCgpTaW5jZSB0aGVyZSBpcyBzdGlsbCBubyAtPmRlaW5p
dCgpIHRvIHBhaXIgd2l0aCAuaW5pdCgpLCBhbmQgdGhlClNhc2hpa28gcmV2aWV3IGFsc28gZmxh
Z2dlZCB0aGUgbWlzc2luZyBjbGVhbnVwIG9uIHByb2JlIGZhaWx1cmUsIEkKbWFkZSB0aGUgaXJx
IGRvbWFpbiBkZXZtLW1hbmFnZWQgKGRldm1faXJxX2RvbWFpbl9pbnN0YW50aWF0ZSgpKSBhbmQK
dW5pbnN0YWxsIHRoZSBjaGFpbmVkIGhhbmRsZXIgdGhyb3VnaCBhIGRldnJlcyBhY3Rpb24gd2hp
bGUgbW92aW5nIHRoZQpjb2RlLCBzbyBldmVyeXRoaW5nIGlzIHJlbGVhc2VkIGF1dG9tYXRpY2Fs
bHkgaWYgcHJvYmUgZmFpbHMuCgpXaWxsIHNlbmQgb3V0IHYyIGZvciByZXZpZXcuCgo+IAo+IEtp
bmQgcmVnYXJkcywKPiBOaWtsYXMKPiAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
