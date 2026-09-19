Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B9C4CC982D7
	for <linux-rockchip@archiver.kernel.org>; Sat, 19 Sep 2026 00:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:Cc:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=w6bi6dGMVm4LbIUsS/u5rZ9pKabUPJoFMNioyAYkCTs=; b=a0YHwMXdoSobIR
	S2+xRdtY4UQF4vZWua1Uqu8pZqANiH1O6H59cJ2EsyPx6abX0N+PVzdagL8BiFla0ihEpt7vlyJC9
	dy+kibyMBTKXuXLzaKmvo5/eV7Hhjvr+m/LivJQ0qMSk51wUt62fvy0z6kAJHZEONOkXDd4bXyobo
	9M7tn4x7lX3nx9nXKhQGDp7efU/l+EJnKMuplEUY/RaZg17xpBYxi+VoLX3+xLuc5nWGtt+82FlAv
	nY4S+9EpRcbjw+NKsP0XMXnnCsfZZw8nQVUlRHfIfcoKUpyEogKxe1huC06+FowEVZyBtQWT6QhMt
	kztZnkPeiW7vLHfQPQfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ihn-0000000FjcQ-1Iyg;
	Sat, 19 Sep 2026 00:13:23 +0000
Received: from mail-m83142.xmail.ntesmail.com ([156.224.83.142])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x7ihj-0000000Fjc0-3INj
	for linux-rockchip@lists.infradead.org;
	Sat, 19 Sep 2026 00:13:22 +0000
Received: from [172.16.12.48] (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 4e57682ed;
	Sat, 19 Sep 2026 08:13:12 +0800 (GMT+08:00)
Message-ID: <27e3944f-81c6-48e4-8033-e30ae70f8e26@rock-chips.com>
Date: Sat, 19 Sep 2026 08:13:08 +0800
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Cc: shawn.lin@rock-chips.com, Ulf Hansson <ulfh@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 2/4] pmdomain: rockchip: fix clock leak on domain probe
 failure
To: Sebastian Reichel <sebastian.reichel@collabora.com>
References: <1789733258-10133-1-git-send-email-shawn.lin@rock-chips.com>
 <1789733258-10133-3-git-send-email-shawn.lin@rock-chips.com>
 <aq1yU47vQT5OnxLo@venus>
From: Shawn Lin <shawn.lin@rock-chips.com>
In-Reply-To: <aq1yU47vQT5OnxLo@venus>
X-HM-Tid: 0aa0b7028bb103a4kunma3f32aa81a68a3
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVlDT0pPVkpOHhlNTx9JHk0dTlYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSU
	9PT0hVSktLVUpCS0tZBg++
DKIM-Signature: a=rsa-sha256;
	b=dTc6fopJKXCuy8hHdVrdLPGJ7r3GVFBCWDlvW0U0wX632KlVKNTvB8kaFA4Lpaa55dW5YX/q8DdcFtrbp/Eg7FKsheUlTn8IC5kwPXITQvssYW3WTOaBqXoTMQy9qwX2V1v4D/226vd3qrHmS684qog1vYY91swGVKAnBiytR4g=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=1pcrBPUiN1+2nlY2bqlloJAqwKSPEzkpGfZe5dtPHH4=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260918_171320_422522_3328FD40 
X-CRM114-Status: GOOD (  17.37  )
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

SGkgU2ViYXN0aWFuCgrlnKggMjAyNi8wOS8xOSDmmJ/mnJ/lha0gMToyMSwgU2ViYXN0aWFuIFJl
aWNoZWwg5YaZ6YGTOgo+IEhpLAo+IAo+IE9uIEZyaSwgU2VwIDE4LCAyMDI2IGF0IDA4OjA3OjM2
UE0gKzA4MDAsIFNoYXduIExpbiB3cm90ZToKPj4gV2hlbiBvZl9jbGtfZ2V0KCkgZmFpbGVkIGlu
IHRoZSBtaWRkbGUgb2YgdGhlIGxvb3AsIHRoZSByZWZlcmVuY2VzIG9mCj4+IHRoZSBjbG9ja3Mg
YWNxdWlyZWQgc28gZmFyIHdlcmUgbGVha2VkIGluc3RlYWQgb2YgYmVpbmcgcmVsZWFzZWQgYnkK
Pj4gdGhlIGVycm9yIHBhdGguCj4+Cj4+IEZpeGVzOiBkOTA5MDcyZDA1MjEgKCJzb2M6IHJvY2tj
aGlwOiBwb3dlci1kb21haW46IHVzZSBjbGtfYnVsayBBUElzIikKPj4gU2lnbmVkLW9mZi1ieTog
U2hhd24gTGluIDxzaGF3bi5saW5Acm9jay1jaGlwcy5jb20+Cj4+IC0tLQo+IAo+IFJpZ2h0LCBi
dXQgdGhpcyBzaG91bGQgc3dpdGNoCj4gCj4gcGQtPmNsa3MgPSBkZXZtX2tjYWxsb2MoLi4uKTsK
PiAKPiB0bwo+IAo+IHBkLT5jbGtzID0gZGV2bV9remFsbG9jKC4uLik7Cj4gCj4gYXQgdGhlIHNh
bWUgdGltZSB0byBlbnN1cmUgdGhhdCBjbGtfYnVsa19wdXQoKSBkb2VzIG5vdCBydW4gb3Zlcgo+
IG5vbi1pbml0aWFsaXplZCBkYXRhLiBPdGhlcndpc2UKCkdvb2QgY2F0Y2gsIHdpbGwgaW1wcm92
ZSBpdCBpbiB2Mi4KClRoYW5rcy4KCj4gCj4gUmV2aWV3ZWQtYnk6IFNlYmFzdGlhbiBSZWljaGVs
IDxzZWJhc3RpYW4ucmVpY2hlbEBjb2xsYWJvcmEuY29tPgo+IAo+IEdyZWV0aW5ncywKPiAKPiAt
LSBTZWJhc3RpYW4KPiAKPj4KPj4gICBkcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL3BtLWRvbWFp
bnMuYyB8IDIgKy0KPj4gICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRp
b24oLSkKPj4KPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9t
YWlucy5jIGIvZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9wbS1kb21haW5zLmMKPj4gaW5kZXgg
MDY4ZGQ0YjMuLmI2YjA5OWIgMTAwNjQ0Cj4+IC0tLSBhL2RyaXZlcnMvcG1kb21haW4vcm9ja2No
aXAvcG0tZG9tYWlucy5jCj4+ICsrKyBiL2RyaXZlcnMvcG1kb21haW4vcm9ja2NoaXAvcG0tZG9t
YWlucy5jCj4+IEBAIC04NDIsNyArODQyLDcgQEAgc3RhdGljIGludCByb2NrY2hpcF9wbV9hZGRf
b25lX2RvbWFpbihzdHJ1Y3Qgcm9ja2NoaXBfcG11ICpwbXUsCj4+ICAgCQkJZGV2X2VycihwbXUt
PmRldiwKPj4gICAJCQkJIiVwT0ZuOiBmYWlsZWQgdG8gZ2V0IGNsayBhdCBpbmRleCAlZDogJWRc
biIsCj4+ICAgCQkJCW5vZGUsIGksIGVycm9yKTsKPj4gLQkJCXJldHVybiBlcnJvcjsKPj4gKwkJ
CWdvdG8gZXJyX3B1dF9jbG9ja3M7Cj4+ICAgCQl9Cj4+ICAgCX0KPj4gICAKPj4gLS0gCj4+IDIu
Ny40Cj4+Cj4+CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
