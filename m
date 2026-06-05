Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3158CCD8C83
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 22:08:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X+esvBclzMMOK8JPf+GHy97xX85vn/EPvM1TZTNdO9Q=; b=gXcynUX9f0IA5+
	9haQOms0aAFTY7WUBSUc2LxC7zVypZyVvFxQ0ZQLfpHRr9VJNgV99rumS9KTCshf0+CyInTP1yPm8
	SAC4oFq7XHXZ6amJ9BZ0+O4Vtjrkz8DUUPPkNIOXUS+JrHBKsZJDZ+Q7vRYydPq1MUhi276W1d2xN
	OHU4putFWexMmsU9JjMdgYPhBvAU3lEBGSqf6XaO2ApJlTAet9/AuGcBBf/ZJkg1Y4vfP52RHU1wN
	YKIB6e5P45kB26zt5A7rzMYyA4j++baeEttPxfL8cicENt2q1Iag08repKCP0A4RIl1UI6tz2z1zb
	U0V+idDPh+5N2Y2ME8TQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciH-00000001EF1-2iND;
	Fri, 05 Jun 2026 22:08:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVciE-00000001E9f-0cYx
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 22:08:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVci0-0000LW-Uk; Sat, 06 Jun 2026 00:08:09 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Sat, 06 Jun 2026 00:06:48 +0200
Subject: [PATCH 02/17] media: rockchip: rga: add comment about pixel
 alignment for YUV formats
MIME-Version: 1.0
Message-Id: <20260606-spu-rga3multicore-v1-2-3ec2b15675f7@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260605_150822_191213_8E64F1AB 
X-CRM114-Status: GOOD (  10.56  )
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

QWRkIGEgY29tbWVudCB0byBjbGFyaWZ5IHRoZSB1c2Ugb2YgZml4ZWQgc3RlcF9oZWlnaHQgdmFs
dWVzIGZvciBhbGwgWVVWCmZvcm1hdHMuIFdoaWxlIHRoZSBjb21taXQgaW50cm9kdWNpbmcgdGhl
IGNoYW5nZSBhbHJlYWR5IGV4cGxhaW5zIHRoZQpyZWFzb25pbmcsIGFkZCBhbiBleHBsaWNpdCBj
b21tZW50IHRvIGltcHJvdmUgdGhlIHZpc2liaWxpdHkgb2YgdGhlCnJlYXNvbmluZy4KClNpZ25l
ZC1vZmYtYnk6IFN2ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+Ci0tLQog
ZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMgfCAxMCArKysrKysrKysr
CiAxIGZpbGUgY2hhbmdlZCwgMTAgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMv
bWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhLmMKaW5kZXggYmQwYWZkMzNhZmZlNC4uZWZlNTU0MTA3ODIxNCAx
MDA2NDQKLS0tIGEvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKKysr
IGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmMKQEAgLTQxNCw2ICs0
MTQsMTYgQEAgc3RhdGljIGludCB2aWRpb2NfdHJ5X2ZtdChzdHJ1Y3QgZmlsZSAqZmlsZSwgdm9p
ZCAqcHJpdiwgc3RydWN0IHY0bDJfZm9ybWF0ICpmKQogCQkuc3RlcF9oZWlnaHQgPSAxLAogCX07
CiAKKwkvKgorCSAqIFRlY2huaWNhbGx5IDQ6MjoyIFlVViBmb3JtYXRzIGRvbid0IG5lZWQgYSBz
dGVwX2hlaWdodCBvZiAyLgorCSAqIEJ1dCBmb3IgdGhlIFJHQTMgdGhpcyBpcyBleHBsaWNpdGx5
IGRvY3VtZW50ZWQgaW4gIHNlY3Rpb24gNS42LjMKKwkgKiBvZiB0aGUgUkszNTg4IFRSTSBQYXJ0
IDIuCisJICogQW5kIHRoZSBSR0EyIHZlbmRvciBkcml2ZXIgYWxzbyBjaGVja3MgdGhhdCB0aGUg
aGVpZ2h0IChhbmQgd2lkdGgpCisJICogaXMgYWxpZ25lZCB0byAyIHdoZW4gYSBZVVYgZm9ybWF0
IGlzIHVzZWQuCisJICoKKwkgKiBUaGVyZWZvcmUgYmUgc2FmZSBhbmQgYWx3YXlzIGFsaWduIHdp
ZHRoIGFuZCBoZWlnaHQgdG8gMgorCSAqIHdoZW4gYSBZVVYgZm9ybWF0IGlzIHVzZWQuCisJICov
CiAJaWYgKHY0bDJfaXNfZm9ybWF0X3l1dih2NGwyX2Zvcm1hdF9pbmZvKHBpeF9mbXQtPnBpeGVs
Zm9ybWF0KSkpIHsKIAkJZnJtc2l6ZS5zdGVwX3dpZHRoID0gMjsKIAkJZnJtc2l6ZS5zdGVwX2hl
aWdodCA9IDI7CgotLSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
