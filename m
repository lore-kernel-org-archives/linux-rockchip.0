Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 88ED1CD6E7E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P3Eqlsbrl8n8W1FogN1y+dNIRnunBBftH+uwE0Qnkfo=; b=lDIF2k8O6UiCa4
	9kCxg0/rQeCnqE5K08ynnPqi7NzHUExLsc/z41yjv3yPaS5PxeaQIRqS/XuYDO2oSAaW1pgw9V7xa
	30i797lzbiBvnP6vCRAm86iY0ZplisarW6XmRHdpmPn7Ds1qRKxfRYsdGFvU+UXjUzj3xIBROIdc7
	YfBPpdLoWEfpOntihXcZgEdxEu6xuQeJsjDq7EnHdinMBebvg9LrcaFvWw+Du0lVAxuXsfUGMwqO8
	E0eKw7iYKLXpPETKjC5Upi8wryipPa5H2rXB+GcpaVtNE/DL0ZXbuI2N82f8lRKxtlTAF38UFPzSj
	MkknvF8JoUQYb8huqacQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciH-00000001EFh-3UEG;
	Fri, 05 Jun 2026 22:08:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciE-00000001E9o-0vHj
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVci2-0000LW-0f; Sat, 06 Jun 2026 00:08:10 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:06:49 +0200
Subject: [PATCH 03/17] media: rockchip: rga: move early return into if
 condition in vidioc_enum_fmt
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-3-3ec2b15675f7@pengutronix.de>
References: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
In-Reply-To: <20260606-spu-rga3multicore-v1-0-3ec2b15675f7@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Detlev Casanova <detlev.casanova@collabora.com>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_150822_263359_A2D8D3A8 
X-CRM114-Status: GOOD (  12.32  )
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

SW5zdGVhZCBvZiBhIGRvaW5nIGFuIGVhcmx5IHJldHVybiB3aGVuIHdlIGRvbid0IGhhdmUgYSBj
YXB0dXJlIGRldmljZSwKbWVyZ2UgdGhlIGNvbmRpdGlvbiB3aXRoIHRoZSBmb2xsb3dpbmcgaWYg
Y29uZGl0aW9uLiBUaGlzIGltcHJvdmVzCnJlYWRhYmlsaXR5LCBhcyB0aGUgY29uZGl0aW9uIG5v
dyBleHBsaWNpdGx5IGNvbnRhaW5zIGEgY2hlY2sgZm9yIGEKY2FwdHVyZSBkZXZpY2UgaW5zdGVh
ZCBvZiByZXR1cm5pbmcgd2hlbiB3ZSBkb24ndCBoYXZlIGEgY2FwdHVyZSBkZXZpY2UuCgpBbHNv
IHVzZSB0aGUgVjRMMl9UWVBFX0lTX0NBUFRVUkUgaGVscGVyIGFuZCBpbXByb3ZlIHRoZSBjb21t
ZW50LgoKVGhlIGVhcmx5IHJldHVybiBpZiB3YXMgY29waWVkIGZyb20gdGhlIHZpdmlkIGRyaXZl
cnMKdml2aWRfZW51bV9mbXRfdmlkIGZ1bmN0aW9uLgoKU2lnbmVkLW9mZi1ieTogU3ZlbiBQw7xz
Y2hlbCA8cy5wdWVzY2hlbEBwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRm
b3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyB8IDE0ICsrKysrKysrLS0tLS0tCiAxIGZpbGUgY2hhbmdl
ZCwgOCBpbnNlcnRpb25zKCspLCA2IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggZWZlNTU0MTA3ODIxNC4uOGMwMzQyMmQ2NjljZiAx
MDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysr
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTM3MiwxMiAr
MzcyLDE0IEBAIHN0YXRpYyBpbnQgdmlkaW9jX2VudW1fZm10KHN0cnVjdCBmaWxlICpmaWxlLCB2
b2lkICpwcml2LCBzdHJ1Y3QgdjRsMl9mbXRkZXNjICpmCiAJaWYgKHJldCAhPSAwKQogCQlyZXR1
cm4gcmV0OwogCi0JaWYgKGYtPnR5cGUgIT0gVjRMMl9CVUZfVFlQRV9WSURFT19DQVBUVVJFICYm
Ci0JICAgIGYtPnR5cGUgIT0gVjRMMl9CVUZfVFlQRV9WSURFT19DQVBUVVJFX01QTEFORSkKLQkJ
cmV0dXJuIDA7Ci0KLQkvKiBhbGxvdyBjaGFuZ2luZyB0aGUgcXVhbnRpemF0aW9uIGFuZCB4ZmVy
IGZ1bmMgZm9yIFlVViBmb3JtYXRzICovCi0JaWYgKHY0bDJfaXNfZm9ybWF0X3l1dih2NGwyX2Zv
cm1hdF9pbmZvKGYtPnBpeGVsZm9ybWF0KSkpCisJLyoKKwkgKiBBbGxvdyBjaGFuZ2luZyB0aGUg
cXVhbnRpemF0aW9uIGFuZCB5Y2Jjcl9lbmMgZnVuYyBmb3IgWVVWIGZvcm1hdHMKKwkgKiBvbiB0
aGUgY2FwdHVyZSBzaWRlIGZvciBSR0IgLT4gWVVWIGNvbnZlcnNpb25zLgorCSAqCisJICogVGhl
c2UgZmxhZ3MgYXJlIG9ubHkgcmVsZXZhbnQgZm9yIGNhcHR1cmUgZGV2aWNlcy4KKwkgKi8KKwlp
ZiAoVjRMMl9UWVBFX0lTX0NBUFRVUkUoZi0+dHlwZSkgJiYKKwkgICAgdjRsMl9pc19mb3JtYXRf
eXV2KHY0bDJfZm9ybWF0X2luZm8oZi0+cGl4ZWxmb3JtYXQpKSkKIAkJZi0+ZmxhZ3MgfD0gVjRM
Ml9GTVRfRkxBR19DU0NfUVVBTlRJWkFUSU9OIHwKIAkJCSAgICBWNEwyX0ZNVF9GTEFHX0NTQ19Z
Q0JDUl9FTkM7CiAKCi0tIAoyLjU0LjAKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2No
aXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFu
L2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
