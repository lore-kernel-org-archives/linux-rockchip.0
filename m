Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 858F6CCF2D5
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Oct 2026 00:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQbufVBzmX7jA815lBlhNyjJTYKmm135sSnFLWTcj2k=; b=MvRTTqnIt1wawI
	kSu9NhhKqUbbCeiir+dUr7UrKDuBNZCSCyfpyIy4YAQXOBTSyv7poQuQjCZIkd1JN50Q+Ht4+2Jgc
	FlcP4MyeM1VWlarLdI9mP6xLjPgD4Z7ltzWgWWTNWagKUlGO2wu7vqBVLIkSd3coVi55ITYblDmkJ
	SDZelko4SuDTHNwdg6bNiXQ4PJ6BXOyUYmmJW0DzK1baCjoghNkUgt01zwTyBpwQBwCMCmi+7Xg7D
	U10n+cpC8FyGDUc2iiBRdhreF99V0vvbJSMHRNUeOtWQEegMSpqId83F+AID6P1M/Cvki+N1r2QmB
	HHuwvm561Dh9jM5qR49g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIbBu-00000006Kel-01ZV;
	Mon, 19 Oct 2026 00:25:26 +0000
Received: from mail-m103131191185.xmail.ntesmail.com ([103.131.191.185])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIbBn-00000006KeO-39pN
	for linux-rockchip@lists.infradead.org;
	Mon, 19 Oct 2026 00:25:24 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 517613f42;
	Mon, 19 Oct 2026 08:25:13 +0800 (GMT+08:00)
Message-ID: <d6becae5-df39-422b-8d2c-f15efb4ef4a5@rock-chips.com>
Date: Mon, 19 Oct 2026 08:25:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Bjorn Helgaas <bhelgaas@google.com>,
 linux-rockchip@lists.infradead.org, linux-pci@vger.kernel.org,
 Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH] PCI: dw-rockchip: Enable INTx affinity support
To: Thomas Gleixner <tglx@kernel.org>
References: <1790664898-207928-1-git-send-email-shawn.lin@rock-chips.com>
 <atRLsp1qUA_sGS-0@debian> <87y0bubws7.ffs@fw13>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <87y0bubws7.ffs@fw13>
X-HM-Tid: 0aa1518c524103a4kunm24f5ed8a5ff813
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDTxlPVh9LHUsYSU5MHx8aQlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=TD9n+NTh0EX+TpPG74TbMH6mKTeQLOCgnsFyB63BJkXrvDa+A7RnAHBg15/jS8FdsfitzXlgRk0TY93MtG+j/j/imUrzWs7+stzxiupdg5fIAZynzQI8qEsp4VmEOlBvNtw8DqGaG3Y0X/8Z2WtQ9oRck5/pJ4tp1+bVuG/ipUk=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=7M+DcHmAl0Qr6G2WXxfJbEG7iMvZDkTSZZ2o71deWKo=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261018_172520_433618_0F108C45 
X-CRM114-Status: GOOD (  14.51  )
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

SGkgVGhvbWFzCgrlnKggMjAyNi8xMC8xOSDmmJ/mnJ/kuIAgNDowNCwgVGhvbWFzIEdsZWl4bmVy
IOWGmemBkzoKPiBPbiBTdW4sIE9jdCAxOCAyMDI2IGF0IDEwOjA1LCBNYW5pdmFubmFuIFNhZGhh
c2l2YW0gd3JvdGU6Cj4+IE9uIFR1ZSwgU2VwIDI5LCAyMDI2IGF0IDAyOjU0OjU4UE0gKzA4MDAs
IFNoYXduIExpbiB3cm90ZToKPj4+IExldmVyYWdlIHRoZSBpbnRlcnJ1cHQgcmVkaXJlY3Rpb24g
aW5mcmFzdHJ1Y3R1cmUgdG8gZW5hYmxlIENQVQo+Pj4gYWZmaW5pdHkgc3VwcG9ydCBmb3IgdGhl
IGxlZ2FjeSBJTlR4IGludGVycnVwdHMuIFRoZSBJTlR4IHZpcnFzIGFyZQo+Pj4gZGVtdWx0aXBs
ZXhlZCBieSB0aGUgY2hhaW5lZCBoYW5kbGVyIG9mIHRoZSAibGVnYWN5IiBpbnRlcnJ1cHQsIHdo
b3NlCj4+PiBhZmZpbml0eSBjYW5ub3QgYmUgY2hhbmdlZCwgc28gYWZmaW5pdHkgY29udHJvbCBm
b3IgdGhlIElOVHggdmlycXMgaXMKPj4+IGFjaGlldmVkIGJ5IHJlZGlyZWN0aW5nIHRoZSBoYW5k
bGVyIHRvIHJ1biBpbiBJUlEgd29yayBjb250ZXh0IG9uIHRoZQo+Pj4gdGFyZ2V0IENQVS4KPj4+
Cj4+PiBNYXNrIHRoZSBJTlR4IHNvdXJjZSBpbiAuaXJxX3ByZV9yZWRpcmVjdCgpIGJlZm9yZSB0
aGUgaGFuZGxlciBpcwo+Pj4gcmVkaXJlY3RlZDogdGhlIGxlZ2FjeSBpbnRlcnJ1cHQgaXMgbGV2
ZWwgdHJpZ2dlcmVkLCBzbyBhbiB1bm1hc2tlZAo+Pj4gbGluZSB3b3VsZCBrZWVwIHJlLWZpcmlu
ZyB0aGUgY2hhaW5lZCBpbnRlcnJ1cHQgdW50aWwgdGhlIHJlZGlyZWN0ZWQKPj4+IGhhbmRsZXIg
cnVucy4KPj4+Cj4+PiBTYW1lIGFwcHJvYWNoIGFzIHRoZSBEZXNpZ25XYXJlIGNvcmUsIGNvbW1p
dCBlYWYyOTBjNDA0ZjdjMzlmMiAoIlBDSToKPj4+IGR3YzogRW5hYmxlIE1TSSBhZmZpbml0eSBz
dXBwb3J0IikuCj4+Pgo+Pj4gVGVzdCB3YXMgZG9uZSBvbiBSSzM1ODggRVZCMSBib2FyZCB3aXRo
IGFuIE5WTWUgd2l0aCBwY2k9bm9tc2kKPj4+IHBhcmFtZXRlci4gVGhlIC9wcm9jL2ludGVycnVw
dHMgY29sdW1ucyBhcmUgdHJpbW1lZCBmb3IgYnJldml0eS4KPj4+Cj4+PiAgICAjIGNhdCAvcHJv
Yy9pbnRlcnJ1cHRzIHwgZ3JlcCBJTlR4Cj4+PiAgICA1MTogIDEzNyAwIDAgMCAwIDAgMCAwIElO
VHggMCBFZGdlIFBDSWUgUE1FLCBudm1lMHEwLCBudm1lMHExCj4+PiAgICAjIGVjaG8gMTAgPiAv
cHJvYy9pcnEvNTEvc21wX2FmZmluaXR5Cj4+PiAgICAjIGRkIGlmPS9kZXYvbnZtZTBuMXAxIG9m
PS9kZXYvbnVsbCBicz0xTSBjb3VudD0yMDAKPj4+ICAgIDIwMCswIHJlY29yZHMgaW4KPj4+ICAg
IDIwMCswIHJlY29yZHMgb3V0Cj4+PiAgICAyMDk3MTUyMDAgYnl0ZXMgKDIxMCBNQiwgMjAwIE1p
QikgY29waWVkLCAwLjE4MjAyMSBzLCAxLjIgR0Ivcwo+Pj4gICAgIyBjYXQgL3Byb2MvaW50ZXJy
dXB0cyB8IGdyZXAgSU5UeAo+Pj4gICAgNTE6ICAxMzcgMCAwIDAgOTQ2IDAgMCAwIElOVHggMCBF
ZGdlIFBDSWUgUE1FLCBudm1lMHEwLCBudm1lMHExCj4+Pgo+Pj4gU2lnbmVkLW9mZi1ieTogU2hh
d24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+Cj4+IEknZCBsaWtlIHRvIGdldCBh
biBBY2sgZnJvbSBUaG9tYXMgZm9yIHRoaXMgcGF0Y2ggc2luY2UgSSdtIG5vdCBhbiBpcnFjaGlw
Cj4+IGV4cGVydCB0byBkZWNpcGhlciB3aGV0aGVyIHRoaXMgcGF0Y2ggaXMgdmFsaWQgb3Igbm90
Lgo+IAo+IEknbSBoYXBweSB0byBsb29rIGF0IGl0LCBidXQgSSBjYW4ndCBiZSBib3RoZXJlZCB0
byBmaXNoIGl0IG91dCBmcm9tIGEKPiBtYWlsIGFyY2hpdmUuIENhbiB5b3UgcGxlYXNlIGJvdW5j
ZSBtZSB0aGUgb3JpZ2luYWwgc3VibWlzc2lvbj8KClN1cmUsIHlvdSBjYW4gY2hlY2sgaXQgZnJv
bToKCmh0dHBzOi8vbG9yZS5rZXJuZWwub3JnL2xpbnV4LXBjaS84N3kwYnVid3M3LmZmc0BmdzEz
L1QvI21mMGQ1M2EwZTI3Y2IxNDJlYzBhMmIwOTQxOGVhMmE3ZjA0ZGJiMzIxCgo+IAo+IAoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tj
aGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
