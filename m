Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F0191C9830C
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Jan 2026 02:10:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=asfXnoC2WoNJbKlZChbTOTokGBoJ5lrZoy/TsMd1DyU=; b=LzkwcseiFn8Kv0
	99aTnUk+hZ91MDy/PHQeRYurkiV9SJ/XHRHG2SFlLlhF+fP4KxVfazwFhmZJetwjKmrCYziDTocks
	klulM6KGAoj3KD5ifD+65EwU1IAk9+fFotIHFmqX5uyA0nP11xNVVldllI8MWrWuma5trJEwqqPgl
	XsNRk2Kob4hcEt1j7L6LZxOHEpJDXWvlj5Y0TSE9SMSqS33S2vLLZWQTWe9Qt9+nTWt9wU2Y9NjQV
	GocGllJHNg6EZNZC2UBnK+7/py9gEKlzT4G/csl9qLWjrhxTPo9K4lO0qPUrRDac/hjlRqvTdLPDt
	/OdkkfRGB1JIx5fWGOdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgvlg-0000000F7Lg-12t1;
	Sat, 17 Jan 2026 02:10:24 +0000
Received: from mail-m81206.netease.com ([47.88.81.206])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgvlb-0000000F7L1-3qp8;
	Sat, 17 Jan 2026 02:10:22 +0000
Received: from [172.16.12.14] (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 30f8e2691;
	Sat, 17 Jan 2026 10:10:09 +0800 (GMT+08:00)
Message-ID: <9c9d2fa3-46f3-43e6-95d0-6b5ec6b6ea78@rock-chips.com>
Date: Sat, 17 Jan 2026 10:10:09 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Aishwarya TCV <Aishwarya.TCV@arm.com>,
 linux-spi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Heiko Stuebner <heiko@sntech.de>,
 "xuhui.lin@rock-chips.com" <xuhui.lin@rock-chips.com>
Subject: Re: [PATCH] spi: rockchip: Use plain request_irq()
To: Mark Brown <broonie@kernel.org>
References: <20260116-spi-rockchip-threaded-irq-v1-1-c45c3a5a38b1@kernel.org>
 <f8658bd7-7381-4770-935a-6a98ea3f652f@rock-chips.com>
 <a5b6c607-9b8c-4fa6-98c5-6ba848f7f2e2@sirena.org.uk>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <a5b6c607-9b8c-4fa6-98c5-6ba848f7f2e2@sirena.org.uk>
X-HM-Tid: 0a9bc9b7932709cckunm71430622777bb9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQh4fS1ZPSU4ZSBlMHUJPSh9WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSU9PT0
	hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=AEEmPEne5H2CrfSGk3MDyhTd86aNBKC5JSFR7RBvuYjSennkbK3awJVCTgx8pT9ednbNr/KvuS6Vxo5OXdio86J7dws1sFFjvBTooExUQK3bD7bPA5UJUCm/G5gxCse/2SQF6NJakFZsK9pctoB9jlXtFnkxWaeB7Y9Ikgz522M=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=Cm5Wp8stDwRLzC/ClhKyPOEbBhpVhy/nTFwwMOc004U=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_181020_810987_901F64A7 
X-CRM114-Status: GOOD (  15.47  )
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

KyBYdWh1aSBmcm9tIHJvY2tjaGlwIHdobyBtYXkga2VlcCBhbiBleWUgb24gc3BpLXJvY2tjaGlw
IHJlbGF0ZWQgdG9waWMKCuWcqCAyMDI2LzAxLzE2IOaYn+acn+S6lCAyMzozNywgTWFyayBCcm93
biDlhpnpgZM6Cj4gT24gRnJpLCBKYW4gMTYsIDIwMjYgYXQgMTE6MTk6MzlQTSArMDgwMCwgU2hh
d24gTGluIHdyb3RlOgo+PiDlnKggMjAyNi8wMS8xNiDmmJ/mnJ/kupQgMjE6MjMsIE1hcmsgQnJv
d24g5YaZ6YGTOgo+IAo+Pj4gVGhlIFJvY2tjaGlwIGRyaXZlciBoYXMgc2luY2UgaW50ZXJydXB0
IHN1cHBvcnQgd2FzIGFkZGVkIHVzZWQKPj4+IHJlcXVlc3RfdGhyZWFkZWRfaXJxKCkgYnV0IG5v
dCBhY3R1YWxseSBzdXBwbGllZCBhIHRocmVhZGVkIGhhbmRsZXIsCj4+PiBoYW5kbGluZyBldmVy
eXRoaW5nIGluIHRoZSBwcmltYXJ5IGhhbmRsZXIuICBUaGlzIGlzIGVxdWl2YWxlbnQgdG8ganVz
dAo+Pj4gdXNpbmcgYSBwbGFpbiByZXF1ZXN0X2lycSgpLCBhbmQgc2luY2UgYWVmMzBjOGQ1Njlj
IChnZW5pcnE6IFdhcm4gYWJvdXQKPj4+IHVzaW5nIElSUUZfT05FU0hPVCB3aXRob3V0IGEgdGhy
ZWFkZWQgaGFuZGxlcikgdGhlIGN1cnJlbnQgYmVoYXZpb3VyIGhhcwo+Pj4gdHJpZ2dlcmVkIGEg
V0FSTl9PTigpLiAgQ29udmVydCB0byB1c2UgcmVxdWVzdF9pcnEoKS4KPiAKPj4gSXMgaXQgcHJl
ZmVycmVkIHRvIHVzZSB0aHJlYWRlZCB2ZXJzaW9uIGlmIGxhdGVuY3kgaXMgbm90IGEgY3JpdGlj
YWwKPj4gY29uY2VybiA/IEkgZ3Vlc3MgdGhlIG9yaWdpbmFsIGludGVudGlvbiB3YXMgdG8gdXNl
Cj4gCj4+IHJldCA9IGRldm1fcmVxdWVzdF90aHJlYWRlZF9pcnEoJnBkZXYtPmRldiwgcmV0LCBO
VUxMLCByb2NrY2hpcF9zcGlfaXNyLAo+PiBJUlFGX09ORVNIT1QsIGRldl9uYW1lKCZwZGV2LT5k
ZXYpLCBjdGxyKTsgPwo+IAo+IFRCSCBpdCBsb29rZWQgdG8gbWUgbW9yZSBsaWtlIHRoZXJlJ2Qg
YmVlbiBzb21lIGRlZmVycmFsIG9mIG1vcmUgY29tcGxleAo+IHdvcmsgYXQgc29tZSBwb2ludCBi
dXQgdGhhdCBkaWRuJ3QgbWFrZSBpdCBpbnRvIHRoZSBmaW5hbCBjb2RlLiAgSW4KCkFoLCBpbmRl
ZWTvvIxyb2NrY2hpcF9zcGlfaXNyKCkgZGlyZWN0bHkgcGVyZm9ybXMgUi9XIHBpbyBpbiBoYXJk
aXJxCmNvbnRleHQgd2hpY2ggZG9lc24ndCBzZWVtIGFkdmlzYWJsZSwgc28gcHJvYmFibHkgc29t
ZSBiZXR0ZXIKaW1wcm92ZW1lbnQgaXMgbmVlZGVkIGluIHRoZSBmdXJ0dXJlLiBBbnl3YXksIGZp
eCB0aGUgd2FybmluZyByaWdodApub3cgYXMgJHN1YmplY3QgcGF0Y2ggbG9va3Mgc2Vuc2libGU6
CgpSZXZpZXdlZC1ieTogU2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+CgotIFRo
YW5rcy4KCj4gZ2VuZXJhbCBpdCdzIGJldHRlciB0byBoYW5kbGUgdGhpbmdzIGluIGhhcmRpcnEg
Y29udGV4dCBpZiB0aGV5IGFyZQo+IGFwcHJvcHJpYXRlIGZvciB0aGF0LCBhbmQgZm9yIGEgU1BJ
IGNvbnRyb2xsZXIgdGhlIGVuZCByZXF1aXJlbWVudHMgYXJlCj4gY29taW5nIGZyb20gdGhlIGRl
dmljZSBzbyB5b3UgaGF2ZSB0byBhc3N1bWUgdGhleSdyZSBnb2luZyB0byBuZWVkCj4gdGhpbmdz
IHRvIGNvbXBsZXRlIHByb21wdGx5LiAgVGhlcmUncyBvdmVyaGVhZCBmcm9tIHNjaGVkdWxpbmcg
YSB0YXNrIHNvCj4gbm8gcG9pbnQgaW4gaW5jdXJyaW5nIGl0IGlmIGl0IGRvZXNuJ3QgYnV5IHlv
dSBhbnl0aGluZy4KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LXJvY2tjaGlwCg==
