Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EACFC982CD
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 15:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nm2u2jxX5PIIA8d5m0k9qEcVUVBUe8o7BUddO8VkQZc=; b=JD3ecVu7+00bH1
	zjr6PxjpPTXhi5NzhdoaQzW27y/hbdm24KHSCQB4gjZfFvQQh7Fgm//cyD12N6an2PVU6K4Rw4aKu
	27hP4BgtI/UdD0ojCwG334thdtk2TSTon+p84f71EL8NWzbOjIB99tFDvdypiYTKQxILLIGSl7rkC
	quSrt3kFjhk4ydeRNYP3e4pvfGydcDFqx/TONGX5IGXZ0abS9z905KDeBq4xVk3xu7MOpmVRmXgh2
	WXCzTb8EzQN3hzA66a5YjvKNIyWm4QizkHy5+HuZUmXBGO6SEvPeQ9cv7nf5hjAn75KKxpiQj4feK
	jFr5IPh00A17nD8BFoag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rLx-00000009Xsz-3hLv;
	Wed, 16 Sep 2026 15:15:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rLq-00000009Xgi-2bGj;
	Wed, 16 Sep 2026 15:15:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Qxk4hZKrvnvA0PquoaWC/xjCQiHNru1wowbzmQvX2Mc=; b=GRF52u+x8/DRhBnhjewZAdEiOl
	vcw6/LNPmGgWoZX5JTaRQBaihw+faiOQNOmmvPfj6XeVUmCO7m22UWWXr/gXt90XPJIKqBf2yqupm
	TAroCiB2SP1Rv1JG55w1MHxKYUkdlOWN7faw0PWCmG+DFINAzFqOKJSKMeaZFxbZoZeJs9phL0WOZ
	u3+VSX7ZRN9v1mGn3oPrtSbZTUNHYDDXBbIEOEjNKmdzC6zgz2+RtdepWpLLDFKl4U/br4NXFDGMG
	v5xtMJ1b+0UUJcZTm+MXwt8oYH34e++uFoPZPLgVIiyuknkaMikqvPjxZ0HQ9V8qdVl7xfJJ6dhUL
	QUrYIN3g==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6rLg-000000081m0-1Mfv;
	Wed, 16 Sep 2026 15:15:07 +0000
X-PTX-Original-Recipient: ezequiel@vanguardiasur.com.ar
X-PTX-Original-Recipient: jacob-chen@iotwrt.com
X-PTX-Original-Recipient: mchehab@kernel.org
X-PTX-Original-Recipient: detlev.casanova@collabora.com
X-PTX-Original-Recipient: heiko@sntech.de
X-PTX-Original-Recipient: linux-kernel@vger.kernel.org
X-PTX-Original-Recipient: linux-media@vger.kernel.org
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-PTX-Original-Recipient: lgs201920130244@gmail.com
X-PTX-Original-Recipient: p.zabel@pengutronix.de
X-PTX-Original-Recipient: kernel@pengutronix.de
X-PTX-Original-Recipient: s.pueschel@pengutronix.de
X-PTX-Original-Recipient: m.tretter@pengutronix.de
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BCA07205A04;
	Wed, 16 Sep 2026 17:14:58 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1x6rGn-001Fsx-0N;
	Wed, 16 Sep 2026 17:09:57 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 16 Sep 2026 17:09:56 +0200
Subject: [PATCH v2 15/17] media: rockchip: rga: bind all cores to the
 master
MIME-Version: 1.0
Message-Id: <20260916-spu-rga3multicore-v2-15-23aa2cb74e61@pengutronix.de>
References: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
In-Reply-To: <20260916-spu-rga3multicore-v2-0-23aa2cb74e61@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 Guangshuo Li <lgs201920130244@gmail.com>, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260916_161505_359194_3F2745BF 
X-CRM114-Status: GOOD (  23.14  )
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

QmluZCBhbGwgY29yZSBjb21wb25lbnRzIHRvIHRoZSBtYXN0ZXIgY29tcG9uZW50LiBQcmV2aW91
c2x5IG9ubHkgdGhlCmZpcnN0IGNvcmUgaGFzIGJlZW4gYWRkZWQgdG8gdGhlIG1hc3RlciBkZXZp
Y2UgdG8gYXZvaWQgY3JlYXRpbmcKbXVsdGlwbGUgdmlkZW8gZGV2aWNlcy4gQXMgdGhlIHZpZGVv
IGRldmljZSBjcmVhdGlvbiBoYXMgYmVlbiBtb3ZlZCB0bwp0aGUgbWFzdGVyIGNvbXBvbmVudCwg
aXQgYWxsb3dzIHVzIHRvIGJpbmQgYWxsIGNvcmVzIHdpdGhvdXQgY3JlYXRpbmcKYWRkaXRpb25h
bCB2aWRlbyBkZXZpY2VzLgoKV2UgZXhwZWN0IHRoYXQgYWxsIGNvcmVzIHRvIHJlcG9ydCB0aGUg
c2FtZSB2ZXJzaW9uIG51bWJlciwgYXMgd2Ugb25seQphZGQgY29yZXMgd2l0aCB0aGUgc2FtZSBj
b21wYXRpYmxlIHZhbHVlLiBUaGlzIGlzIGltcG9ydGFudCwgYXMgIHdlCnNldHVwIHRoZSBjb21t
YW5kIGJ1ZmZlciBiZWZvcmUgYWN0dWFsbHkgc2NoZWR1bGluZyB0aGUgd29yayB0byBhCnNwZWNp
ZmljIGNvcmUuIFRoZXJlZm9yZSBhZGp1c3RpbmcgY29tbWFuZCBidWZmZXJzIGRlcGVuZGluZyBv
biB0aGUKdmVyc2lvbiByZWdpc3RlciBvbmx5IHdvcmtzIHdoZW4gYWxsIGNvcmVzIGhhdmUgdGhl
IHNhbWUgdmFsdWUuCgpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBl
bmd1dHJvbml4LmRlPgoKLS0tCnYyOgotIEZhaWwgKGluc3RlYWQgb2Ygd2Fybikgb24gYSBtdWx0
aS1jb3JlIHZlcnNpb24gbWlzbWF0Y2gKLSBBbHNvIGRlY3JlYXNlIHRoZSBudW1fY29yZXMgd2hl
biB1bmJpbmRpbmcgYSBjb3JlCiAgKGh0dHBzOi8vc2FzaGlrby5kZXYvIy9wYXRjaHNldC8yMDI2
MDYwNi1zcHUtcmdhM211bHRpY29yZS12MS0wLTNlYzJiMTU2NzVmNyU0MHBlbmd1dHJvbml4LmRl
P3BhcnQ9MTMpCi0gbW92ZSByZ2EtPmNvcmVzIGF0IHRoZSBlbmQgb2YgY29yZV9iaW5kIGhlcmUK
ICAocHJldmlvdXNseSBkb25lIHdoaWxlIG1vdmluZyBjb2RlIHRvIHJnYV9jb3JlX3Byb2JlKQot
LS0KIGRyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIHwgMzYgKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hp
cC9yZ2EvcmdhLmggfCAgMSArCiAyIGZpbGVzIGNoYW5nZWQsIDI2IGluc2VydGlvbnMoKyksIDEx
IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMK
aW5kZXggMzlmY2I1NjIzMDk1Yi4uNTM0OGZjYzAzYzUyNSAxMDA2NDQKLS0tIGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysrIGIvZHJpdmVycy9tZWRpYS9wbGF0
Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTc0NiwyMyArNzQ2LDMzIEBAIHN0YXRpYyBpbnQg
cmdhX2NvcmVfYmluZChzdHJ1Y3QgZGV2aWNlICpkZXYsIHN0cnVjdCBkZXZpY2UgKm1hc3Rlciwg
dm9pZCAqZGF0YSkKIHsKIAlzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpyZ2EgPSBkYXRhOwogCXN0cnVj
dCByZ2FfY29yZSAqY29yZSA9IGRldl9nZXRfZHJ2ZGF0YShkZXYpOworCXN0cnVjdCByb2NrY2hp
cF9yZ2FfdmVyc2lvbiB2ZXJzaW9uOwogCWludCByZXQgPSAwOwogCiAJY29yZS0+cmdhID0gcmdh
OwogCi0JcmdhLT5jb3Jlc1swXSA9IGNvcmU7Ci0KIAlyZXQgPSBwbV9ydW50aW1lX3Jlc3VtZV9h
bmRfZ2V0KGNvcmUtPmRldik7CiAJaWYgKHJldCA8IDApCiAJCXJldHVybiByZXQ7CiAKLQlyZ2Et
PnZlcnNpb24gPSByZ2EtPmh3LT5nZXRfdmVyc2lvbihjb3JlKTsKKwl2ZXJzaW9uID0gcmdhLT5o
dy0+Z2V0X3ZlcnNpb24oY29yZSk7CiAKIAl2NGwyX2luZm8oJnJnYS0+djRsMl9kZXYsICJIVyBW
ZXJzaW9uOiAweCUwMnguJTAyeFxuIiwKIAkJICByZ2EtPnZlcnNpb24ubWFqb3IsIHJnYS0+dmVy
c2lvbi5taW5vcik7CiAKKwlpZiAocmdhLT5udW1fY29yZXMpIHsKKwkJLyogd2UgYXJlIG5vdCB0
aGUgZmlyc3QgY29yZSwgZXhwZWN0IHRoYXQgd2UgaGF2ZSB0aGUgc2FtZSB2ZXJzaW9uICovCisJ
CWlmIChyZ2EtPnZlcnNpb24ubWFqb3IgIT0gdmVyc2lvbi5tYWpvciB8fCByZ2EtPnZlcnNpb24u
bWlub3IgIT0gdmVyc2lvbi5taW5vcikgeworCQkJdjRsMl9lcnIoJnJnYS0+djRsMl9kZXYsICJE
ZXRlY3RlZCBtdWx0aS1jb3JlIHNldHVwIHdpdGggZGlmZmVyZW50IGNvcmUgdmVyc2lvbnMhXG4i
KTsKKwkJCXJldHVybiAtRU5PREVWOworCQl9CisJfSBlbHNlCisJCXJnYS0+dmVyc2lvbiA9IHZl
cnNpb247CisKIAlwbV9ydW50aW1lX3B1dChjb3JlLT5kZXYpOwogCisJcmdhLT5jb3Jlc1tyZ2Et
Pm51bV9jb3JlcysrXSA9IGNvcmU7CisKIAlyZXR1cm4gMDsKIH0KIApAQCAtNzcwLDYgKzc4MCwx
OCBAQCBzdGF0aWMgdm9pZCByZ2FfY29yZV91bmJpbmQoc3RydWN0IGRldmljZSAqZGV2LCBzdHJ1
Y3QgZGV2aWNlICptYXN0ZXIsCiAJCQkgICAgdm9pZCAqZGF0YSkKIHsKIAlzdHJ1Y3QgcmdhX2Nv
cmUgKmNvcmUgPSBkZXZfZ2V0X2RydmRhdGEoZGV2KTsKKwlzdHJ1Y3Qgcm9ja2NoaXBfcmdhICpy
Z2EgPSBjb3JlLT5yZ2E7CisJdTggaTsKKworCS8qIFJlbW92ZSBvdXIgY29yZSBmcm9tIHRoZSBs
aXN0ICovCisJZm9yIChpID0gMDsgaSA8IHJnYS0+bnVtX2NvcmVzOyBpKyspIHsKKwkJaWYgKHJn
YS0+Y29yZXNbaV0gIT0gY29yZSkKKwkJCWNvbnRpbnVlOworCisJCXJnYS0+Y29yZXNbaV0gPSBy
Z2EtPmNvcmVzW3JnYS0+bnVtX2NvcmVzIC0gMV07CisJCXJnYS0+bnVtX2NvcmVzLS07CisJCWJy
ZWFrOworCX0KIAogCWNvcmUtPnJnYSA9IE5VTEw7CiB9CkBAIC05OTIsMTQgKzEwMTQsNiBAQCBz
dGF0aWMgaW50IHJnYV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQljb21w
b25lbnRfbWF0Y2hfYWRkX3JlbGVhc2UoZGV2LCAmbWF0Y2gsIGNvbXBvbmVudF9yZWxlYXNlX29m
LAogCQkJCQkgICAgY29tcG9uZW50X2NvbXBhcmVfb2YsIGNvcmVfbm9kZSk7CiAJCW51bV9jb3Jl
cysrOwotCi0JCS8qCi0JCSAqIEFzIG11bHRpIGNvcmUgaXMgbm90IGltcGxlbWVudGVkIHlldCwK
LQkJICogYnJlYWsgb3V0IG9mIHRoZSBsb29wIHRvIG9ubHkgaGF2ZSBvbmUgY29yZSBwZXIgcm9j
a2NoaXBfcmdhIHN0cnVjdC4KLQkJICogQWxzbyBwdXQgdGhlIG5vZGUsIHdoaWNoIG90aGVyd2lz
ZSB3b3VsZCd2ZSBiZWVuIGRvbmUgYnkgdGhlIGxvb3AgaXRlcmF0aW9uLgotCQkgKi8KLQkJb2Zf
bm9kZV9wdXQoY29yZV9ub2RlKTsKLQkJYnJlYWs7CiAJfQogCiAJcmdhID0gZGV2bV9remFsbG9j
KGRldiwgc2l6ZW9mKCpyZ2EpICsgbnVtX2NvcmVzICogc2l6ZW9mKCpyZ2EtPmNvcmVzKSwgR0ZQ
X0tFUk5FTCk7CmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3Jn
YS9yZ2EuaCBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCmluZGV4
IDk0ZTE0YzJhMmJhNmUuLjUyMjAyMWMzZTAyNDkgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5oCisrKyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0v
cm9ja2NoaXAvcmdhL3JnYS5oCkBAIC04OSw2ICs4OSw3IEBAIHN0cnVjdCByb2NrY2hpcF9yZ2Eg
ewogCiAJY29uc3Qgc3RydWN0IHJnYV9odyAqaHc7CiAKKwl1OCBudW1fY29yZXM7CiAJc3RydWN0
IHJnYV9jb3JlICpjb3Jlc1tdOwogfTsKIAoKLS0gCjIuNTUuMAoKCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlz
dApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
