Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6764C64EC4
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Mar 2023 17:31:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uDya1apNhrDq9WbUfue/M1SMhvV8lEt5FYQPbjVjlm0=; b=pq/7gvBs8CZOti
	mr1n1IxdU4ebWd5XSjjeVXifYOdWbIiqHYGm6H8aYwh1WxqBjHW2xcuq9rvvCEqPmEu6BYsGoNpQ2
	JWL/2sizof+Bx06l0YkgRTZrCVbKHX8ZRItIHvuUJttJ+KGGODJclgIkTnLEFX2kGCofPzp3nJF9H
	+tbIqwFMkIgGScXrLsOTEkAm2guPZX/hw/j4i3AlMWx1TefL6PjCwD0Py0P7Ku8k9UjNZmd+wBVHS
	v1edqcJAp6CfYw3EfJw4KOOuQJOyLlik7ubPAZWqsQd64JTJNhqOX1hewxEyOV/FZzpYynzf4Sbx7
	nVLqeWfF8s1nlxP8BXLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY9FN-006xyV-Oo; Fri, 03 Mar 2023 17:31:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY960-006tFd-3c
	for linux-rockchip@bombadil.infradead.org; Fri, 03 Mar 2023 17:21:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=egPtZ3+/WmN0KpDUAKntc6mGSM0sn5nk4DEElLm3qXI=; b=aQ5LTIwtlehV9EWmxOnZbtLfsB
	x5owPybIoMPVuB/MFM5eDTOkWvs92724eULcHOpyNBP0U8gmaksSL+SVTfWWTI3TTnl7/Rm8Oc0RY
	mLyWxTmw3JhiP4R6g7cwnc8PZsSbYC+nMuzzuLf7xrPcYa4uLiNcRUqekcF7x28nOO7sGUcPRemzI
	9zPrlBnmVGTlFZCnvZdrwH/tcpAWnIchDmwZCDvxkdR8h3CjAqG+92UTfofYpIJGezjlgT/6SZtG1
	p6KvEtshlAAM1/qv++O0D5TrlConaunxE3oSOTAtytlKPhieG+1oWSOM+6AEcXDZI/5te5i8b8tit
	9soDa0zQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pY95t-00FkTj-0k
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Mar 2023 17:21:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1pY95c-0006yw-Mb; Fri, 03 Mar 2023 18:21:04 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pY95b-001bnE-QV; Fri, 03 Mar 2023 18:21:03 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1pY95a-001tlc-QN; Fri, 03 Mar 2023 18:21:02 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Mark Brown <broonie@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH 59/87] spi: rockchip: Convert to platform remove callback returning void
Date: Fri,  3 Mar 2023 18:20:13 +0100
Message-Id: <20230303172041.2103336-60-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230303172041.2103336-1-u.kleine-koenig@pengutronix.de>
References: <20230303172041.2103336-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1800; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=OmQ12uht8IWlDyauzXhSL2XViaI0ICmiBz/+eTBWyf4=; b=owEBbQGS/pANAwAKAcH8FHityuwJAcsmYgBkAivwwXz9uomS2WWf/vdPN4WnOrhcDT0sutXWv xQEsEcj8FWJATMEAAEKAB0WIQR+cioWkBis/z50pAvB/BR4rcrsCQUCZAIr8AAKCRDB/BR4rcrs CchTB/9Cy3Sbh53UV3ob62jodXiRh/CIKWsQH9D12P9G+M+z5/BfO5xRodY6wK1kS2klGV6tbVG l9d1DMjddgR8KSpou08TP3nI/LOrdO5xNr/jO7jEscJ1smQT4PBTw3386tOg2F+t8Xl3Q3yiHlL ueO/4tjj7D0FYYpTn5qXoBT1L2NBmPvU7k0KHetB1715NmZCPoK7amCPDmBHoEpH3mIx5B7E8Fg IeMQDqHNZKZ8+JVegL/YYkXbUYr+qbh4VpYkchuck8ikPngQwnVCtH61xnwqj8ll/5G3lQXMmMu qpDC+qYlMtVAkmrf6AWfKnn5G9zawZtJOvHV3JnbrD+BEEOn
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_172121_378142_E96E0174 
X-CRM114-Status: GOOD (  15.40  )
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

VGhlIC5yZW1vdmUoKSBjYWxsYmFjayBmb3IgYSBwbGF0Zm9ybSBkcml2ZXIgcmV0dXJucyBhbiBp
bnQgd2hpY2ggbWFrZXMKbWFueSBkcml2ZXIgYXV0aG9ycyB3cm9uZ2x5IGFzc3VtZSBpdCdzIHBv
c3NpYmxlIHRvIGRvIGVycm9yIGhhbmRsaW5nIGJ5CnJldHVybmluZyBhbiBlcnJvciBjb2RlLiBI
b3dldmVyIHRoZSB2YWx1ZSByZXR1cm5lZCBpcyAobW9zdGx5KSBpZ25vcmVkCmFuZCB0aGlzIHR5
cGljYWxseSByZXN1bHRzIGluIHJlc291cmNlIGxlYWtzLiBUbyBpbXByb3ZlIGhlcmUgdGhlcmUg
aXMgYQpxdWVzdCB0byBtYWtlIHRoZSByZW1vdmUgY2FsbGJhY2sgcmV0dXJuIHZvaWQuIEluIHRo
ZSBmaXJzdCBzdGVwIG9mIHRoaXMKcXVlc3QgYWxsIGRyaXZlcnMgYXJlIGNvbnZlcnRlZCB0byAu
cmVtb3ZlX25ldygpIHdoaWNoIGFscmVhZHkgcmV0dXJucwp2b2lkLgoKVHJpdmlhbGx5IGNvbnZl
cnQgdGhpcyBkcml2ZXIgZnJvbSBhbHdheXMgcmV0dXJuaW5nIHplcm8gaW4gdGhlIHJlbW92ZQpj
YWxsYmFjayB0byB0aGUgdm9pZCByZXR1cm5pbmcgdmFyaWFudC4KClNpZ25lZC1vZmYtYnk6IFV3
ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1rb2VuaWdAcGVuZ3V0cm9uaXguZGU+Ci0tLQogZHJp
dmVycy9zcGkvc3BpLXJvY2tjaGlwLmMgfCA2ICsrLS0tLQogMSBmaWxlIGNoYW5nZWQsIDIgaW5z
ZXJ0aW9ucygrKSwgNCBkZWxldGlvbnMoLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3NwaS9zcGkt
cm9ja2NoaXAuYyBiL2RyaXZlcnMvc3BpL3NwaS1yb2NrY2hpcC5jCmluZGV4IDc5MjQyZGM1Mjcy
ZC4uODg4OGE1ZmY3YjJmIDEwMDY0NAotLS0gYS9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYwor
KysgYi9kcml2ZXJzL3NwaS9zcGktcm9ja2NoaXAuYwpAQCAtOTQ3LDcgKzk0Nyw3IEBAIHN0YXRp
YyBpbnQgcm9ja2NoaXBfc3BpX3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJ
cmV0dXJuIHJldDsKIH0KIAotc3RhdGljIGludCByb2NrY2hpcF9zcGlfcmVtb3ZlKHN0cnVjdCBw
bGF0Zm9ybV9kZXZpY2UgKnBkZXYpCitzdGF0aWMgdm9pZCByb2NrY2hpcF9zcGlfcmVtb3ZlKHN0
cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiB7CiAJc3RydWN0IHNwaV9jb250cm9sbGVyICpj
dGxyID0gc3BpX2NvbnRyb2xsZXJfZ2V0KHBsYXRmb3JtX2dldF9kcnZkYXRhKHBkZXYpKTsKIAlz
dHJ1Y3Qgcm9ja2NoaXBfc3BpICpycyA9IHNwaV9jb250cm9sbGVyX2dldF9kZXZkYXRhKGN0bHIp
OwpAQCAtOTY3LDggKzk2Nyw2IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfc3BpX3JlbW92ZShzdHJ1
Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQogCQlkbWFfcmVsZWFzZV9jaGFubmVsKGN0bHItPmRt
YV9yeCk7CiAKIAlzcGlfY29udHJvbGxlcl9wdXQoY3Rscik7Ci0KLQlyZXR1cm4gMDsKIH0KIAog
I2lmZGVmIENPTkZJR19QTV9TTEVFUApAQCAtMTA3Niw3ICsxMDc0LDcgQEAgc3RhdGljIHN0cnVj
dCBwbGF0Zm9ybV9kcml2ZXIgcm9ja2NoaXBfc3BpX2RyaXZlciA9IHsKIAkJLm9mX21hdGNoX3Rh
YmxlID0gb2ZfbWF0Y2hfcHRyKHJvY2tjaGlwX3NwaV9kdF9tYXRjaCksCiAJfSwKIAkucHJvYmUg
PSByb2NrY2hpcF9zcGlfcHJvYmUsCi0JLnJlbW92ZSA9IHJvY2tjaGlwX3NwaV9yZW1vdmUsCisJ
LnJlbW92ZV9uZXcgPSByb2NrY2hpcF9zcGlfcmVtb3ZlLAogfTsKIAogbW9kdWxlX3BsYXRmb3Jt
X2RyaXZlcihyb2NrY2hpcF9zcGlfZHJpdmVyKTsKLS0gCjIuMzkuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
