Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7A66BC982C4
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 15:10:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ACT7u+MG3W5Db42Y3PYEHBSC3GaLx64nvJj1/q/+3Os=; b=MlR4dwqEsZaWv2
	qZ/szuXueAvbV+YNO1N21W+YYiKgP7Ja/+D7JIvf+4v98SYVvtulqQvPePUOJ5hw8apc3egfIIs5f
	4nap0x2gdBAk0L/g7NaLhyG9poljkwafTFEy6HcdAeL4wMQVLE/hU3n77RDhzwNgb6CUYOnweK9Tt
	5QZRTMwR9Df7oamftaGbsIzCeKKUDwQKMV/O0Xxph6CbcX2u/mQuxuJKW1hZl3ft5TfAAh91AmAJE
	OmFF/jy2wGTP9h4TSHNvLUcwLkJTT3kVO/pZzlW8BPD90DyHHIbrCZ5v1uSdW35CDaoJrH6DJie2t
	NEgOgZDdWIj4EmBRA7xA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rGp-00000009Vt4-0TcI;
	Wed, 16 Sep 2026 15:09:59 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rGg-00000009VoK-0EvO;
	Wed, 16 Sep 2026 15:09:53 +0000
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
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C10552059ED;
	Wed, 16 Sep 2026 17:09:47 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1x6rGd-001Fsx-2A;
	Wed, 16 Sep 2026 17:09:47 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 16 Sep 2026 17:09:43 +0200
Subject: [PATCH v2 02/17] media: rockchip: rga: add comment about pixel
 alignment for YUV formats
MIME-Version: 1.0
Message-Id: <20260916-spu-rga3multicore-v2-2-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260916_080950_242653_D7CB48E8 
X-CRM114-Status: GOOD (  11.59  )
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
aWdodCA9IDI7CgotLSAKMi41NS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlw
QGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9s
aXN0aW5mby9saW51eC1yb2NrY2hpcAo=
