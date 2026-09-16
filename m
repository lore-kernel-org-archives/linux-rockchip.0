Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2BEDC982C4
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Sep 2026 15:10:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KCMEP/KvBo/tXKXyyzA0UvaSB6B9sqoSeEnqREWmv2A=; b=h6RPZuOZpi1+4y
	0cn+VYpsBFqWkOK5IKuWb7j6KT3ncMgIcz0CaGFSbOfImp3I5oY8LN1FadYOLv2dFlafbUN6Fj1K7
	QYBxgjRW6zUr753+UYwJtEkNYm999s4rz9XpmFnBWTyw6dpI2BXwttyvkoWhoL8uBtc1SsEXHMVlq
	GuqWwfn8M1UAA7T5AWSgZ+R4c0YTk0qAa7TJ1+/d4cqchmueZ8ABPwKPNQlNiXX8+knDeJcC14doO
	1xIXdnrelzZ4XMogNBCtEovQBFT3Miy8Yn+/4EP9Q1oEsU3BZJmOr0+8SG6CidGIqKPanA2o+H6R5
	FkGnjSZC82HeVfl+EaMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rH9-00000009W7L-3UX0;
	Wed, 16 Sep 2026 15:10:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x6rGl-00000009Vqq-0LqI;
	Wed, 16 Sep 2026 15:09:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=aMnF3BDBLVyE/cnSPir8gkf83ZUrMYse381Aw1FfWCE=; b=j5p8KXBPmPOqw23xBw4WSFtlbm
	Pqxgx7CRTIo7z0ECrwJKnu1btoXxJlloJfdr0gVRYEBwE+Rz9szmI74B//aOlHA2mjQS9ZLrZ71dA
	7KUeRVs5NMkeV4czB/gX9IUaN2Tz1uZ2HpBW+GH+P9sf3wlE8RDcAhiyhg8LyOAeXco6t7sWpSp+o
	PYol2vPEtIuT3vFRGTMj2OP02zkLe+2ZcuCfC5XeTop6trqjgvjLNdgG7IqP9wpno7XvgSTHsRRQi
	qvtycWdNK7RZCXdOXS1praLKHGTWbedA9c3rhYv6PqBur4bHe57mxH0e2W6Ue92ITtqm5sKRIrCFu
	cFWeLhTw==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x6rGg-000000081J3-3fHl;
	Wed, 16 Sep 2026 15:09:54 +0000
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
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 3A5DC2059F2;
	Wed, 16 Sep 2026 17:09:49 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1x6rGf-001Fsx-0N;
	Wed, 16 Sep 2026 17:09:49 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Wed, 16 Sep 2026 17:09:45 +0200
Subject: [PATCH v2 04/17] media: rockchip: rga: removed unused regmap
 member
MIME-Version: 1.0
Message-Id: <20260916-spu-rga3multicore-v2-4-23aa2cb74e61@pengutronix.de>
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
X-CRM114-CacheID: sfid-20260916_160951_029660_5CC1ED41 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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

VGhlIGdyZiBtZW1iZXIgdmFyaWFibGUgaXMgbmV2ZXIgYWNjZXNzZWQgb3Igd3JpdHRlbiBieSB0
aGUgUkdBIGRyaXZlci4KVGhlcmVmb3JlIGRyb3AgaXQgZnJvbSB0aGUgcm9ja2NoaXBfcmdhIHN0
cnVjdC4KClNpZ25lZC1vZmYtYnk6IFN2ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9u
aXguZGU+Ci0tLQogZHJpdmVycy9tZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggfCAx
IC0KIDEgZmlsZSBjaGFuZ2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9t
ZWRpYS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhLmggYi9kcml2ZXJzL21lZGlhL3BsYXRmb3Jt
L3JvY2tjaGlwL3JnYS9yZ2EuaAppbmRleCAyYjRmNTY5NDM3NWE0Li4wZTYyMzM3ZjhkZDM4IDEw
MDY0NAotLS0gYS9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaAorKysg
Yi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuaApAQCAtNzEsNyArNzEs
NiBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcmdhIHsKIAlzdHJ1Y3QgdmlkZW9fZGV2aWNlICp2ZmQ7CiAK
IAlzdHJ1Y3QgZGV2aWNlICpkZXY7Ci0Jc3RydWN0IHJlZ21hcCAqZ3JmOwogCXZvaWQgX19pb21l
bSAqcmVnczsKIAlzdHJ1Y3QgY2xrX2J1bGtfZGF0YSAqY2xrczsKIAlpbnQgbnVtX2Nsa3M7Cgot
LSAKMi41NS4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
