Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D2B5CC48BED
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Feb 2024 09:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S/tLucx+soW9vxYz5P/WbWHAppOduajXZwFvAIbl2Q4=; b=f5dP6bVDQGqcA0
	ePqJgwyIi5SXI4CD5C0JR4brIjli6kClvFy+D4jb8Uxi07M/3CU2ySsvkr+xs3x/c0eRXGbPkOwht
	JqyeK0yyOs5AFAT/Ihg6zAh+6DmUablDGbY1NMNnLZFp7gjr5lJCuRa6JfRJjdihnLzzxk6gjLrNu
	tUWBZBefE8gNxxvO6A0cRA/5nGliToppBvZtyecIhIoSxn9cmfquxadeVAnKXdFxmhMujlfkOnLCE
	1lQpeJ7wSwq4rTZFLs22kVv2tkN5CfpYUdxe8LRtnWS+VKie1Db+AYJgTUVBK19hV0m+3M5IhG99M
	BrqaEOukWJmmZ6Sk3JgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raBjZ-0000000CNb5-2YmA;
	Wed, 14 Feb 2024 09:39:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raBfQ-0000000CKkw-1SsN
	for linux-rockchip@bombadil.infradead.org;
	Wed, 14 Feb 2024 09:35:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=3awcpQeDHLSXROVNcsKQV3ar0d1Kk7QRPPPvQTp44+Q=; b=Xb0zY0DIX4eoiJySdoDo+n8tWV
	sGcGOk6yYgW5RK5rTMAhtvIGF3caNp0AXO7ivboRyAaRJ6PNa+qnkq09sriWfUL3QtDE7bXnC5JZl
	5sPHfP1wWxQ6GW6+4Vc2/TIQlx1ASB7cjVsQGPGyAsFODD9Q3sAv4U1TGtn2EvyAyLL4bYlSYnIx/
	WNABCl3ie7Gn5LA2qvn2zwzrHaRPRM21CYKMl1bl14npoV6/NLodu4bjrVrYzIP9xAEaHcrcFgI9F
	sL2lrSaHKVAF4EqJ30T4Tp3i/Hrw2FEc1+Mw/ZUxd6ggcNkBIKHzidyVJdQlHiydLmQ8kzA+7Y9LX
	u/NgJVuQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raBfE-0000000GAXM-2Ppm
	for linux-rockchip@lists.infradead.org;
	Wed, 14 Feb 2024 09:34:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1raBf1-0005O6-EN; Wed, 14 Feb 2024 10:34:35 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1raBey-000fEQ-19; Wed, 14 Feb 2024 10:34:32 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1raBex-004Y5v-35;
	Wed, 14 Feb 2024 10:34:31 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: Heiko Stuebner <heiko@sntech.de>,
	linux-pwm@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	kernel@pengutronix.de
Subject: [PATCH v6 092/164] pwm: rockchip: Make use of devm_pwmchip_alloc() function
Date: Wed, 14 Feb 2024 10:32:19 +0100
Message-ID: <61a3f48710e3e795beb2e496c8c673bbc0f6c932.1707900770.git.u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <cover.1707900770.git.u.kleine-koenig@pengutronix.de>
References: <cover.1707900770.git.u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1883; i=u.kleine-koenig@pengutronix.de; h=from:subject:message-id; bh=MaLv9HpNc3gSSboEx4AXhzrUji0bPoNdjQWHXjg6D1M=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBlzIi0Q6jh5jQS1v0LelA5uwPTo5/sscfBg/Ssl 7WKx/rIVaWJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZcyItAAKCRCPgPtYfRL+ TpfkB/9Xwu5KMbDTzywn8HbUynu522uvpHjJwdLBAp2qurcNabbuhZh1rPBJ6Ns71N+B78IwtKl J0cs1MpD7vpS4oEeQEvE7W1nXAk+1TptdgjBVYeP3JCJgPuuQHtH8Q6oF/P/gdP5s2KX2l5F6xD jdYkisWyowUXdUBL26ZNg1lyqKe1Hpd6rbdHaXWoa/ZfQD63zX7oT1nXLhu+984N1ISGYQhVliz gKvbA60uzAvTo+8XH/PfVohRpTOgDqcAs+I5xQb9HLYU/j7A3Mc0LEKgodN/JZ1xDaWNZIHW+va ymq4dIJRczio3WRyasU1g6W6WgLiL0HHKxETKa4aul0UvAW4
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: ukl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240214_093449_059420_3135739F 
X-CRM114-Status: GOOD (  13.78  )
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

VGhpcyBwcmVwYXJlcyB0aGUgcHdtLXJvY2tjaGlwIGRyaXZlciB0byBmdXJ0aGVyIGNoYW5nZXMg
b2YgdGhlIHB3bSBjb3JlCm91dGxpbmVkIGluIHRoZSBjb21taXQgaW50cm9kdWNpbmcgZGV2bV9w
d21jaGlwX2FsbG9jKCkuIFRoZXJlIGlzIG5vCmludGVuZGVkIHNlbWFudGljYWwgY2hhbmdlIGFu
ZCB0aGUgZHJpdmVyIHNob3VsZCBiZWhhdmUgYXMgYmVmb3JlLgoKU2lnbmVkLW9mZi1ieTogVXdl
IEtsZWluZS1Lw7ZuaWcgPHUua2xlaW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4KLS0tCiBkcml2
ZXJzL3B3bS9wd20tcm9ja2NoaXAuYyB8IDEzICsrKysrLS0tLS0tLS0KIDEgZmlsZSBjaGFuZ2Vk
LCA1IGluc2VydGlvbnMoKyksIDggZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9w
d20vcHdtLXJvY2tjaGlwLmMgYi9kcml2ZXJzL3B3bS9wd20tcm9ja2NoaXAuYwppbmRleCBjMDAx
ZWI2YjE3YWUuLjBmYTc1NzVkYmI1NCAxMDA2NDQKLS0tIGEvZHJpdmVycy9wd20vcHdtLXJvY2tj
aGlwLmMKKysrIGIvZHJpdmVycy9wd20vcHdtLXJvY2tjaGlwLmMKQEAgLTMwLDcgKzMwLDYgQEAK
ICNkZWZpbmUgUFdNX0xQX0RJU0FCTEUJCSgwIDw8IDgpCiAKIHN0cnVjdCByb2NrY2hpcF9wd21f
Y2hpcCB7Ci0Jc3RydWN0IHB3bV9jaGlwIGNoaXA7CiAJc3RydWN0IGNsayAqY2xrOwogCXN0cnVj
dCBjbGsgKnBjbGs7CiAJY29uc3Qgc3RydWN0IHJvY2tjaGlwX3B3bV9kYXRhICpkYXRhOwpAQCAt
NTQsNyArNTMsNyBAQCBzdHJ1Y3Qgcm9ja2NoaXBfcHdtX2RhdGEgewogCiBzdGF0aWMgaW5saW5l
IHN0cnVjdCByb2NrY2hpcF9wd21fY2hpcCAqdG9fcm9ja2NoaXBfcHdtX2NoaXAoc3RydWN0IHB3
bV9jaGlwICpjaGlwKQogewotCXJldHVybiBjb250YWluZXJfb2YoY2hpcCwgc3RydWN0IHJvY2tj
aGlwX3B3bV9jaGlwLCBjaGlwKTsKKwlyZXR1cm4gcHdtY2hpcF9nZXRfZHJ2ZGF0YShjaGlwKTsK
IH0KIAogc3RhdGljIGludCByb2NrY2hpcF9wd21fZ2V0X3N0YXRlKHN0cnVjdCBwd21fY2hpcCAq
Y2hpcCwKQEAgLTMwMiwxMCArMzAxLDEwIEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcHdtX3Byb2Jl
KHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYpCiAJYm9vbCBlbmFibGVkOwogCWludCByZXQs
IGNvdW50OwogCi0JcGMgPSBkZXZtX2t6YWxsb2MoJnBkZXYtPmRldiwgc2l6ZW9mKCpwYyksIEdG
UF9LRVJORUwpOwotCWlmICghcGMpCi0JCXJldHVybiAtRU5PTUVNOwotCWNoaXAgPSAmcGMtPmNo
aXA7CisJY2hpcCA9IGRldm1fcHdtY2hpcF9hbGxvYygmcGRldi0+ZGV2LCAxLCBzaXplb2YoKnBj
KSk7CisJaWYgKElTX0VSUihjaGlwKSkKKwkJcmV0dXJuIFBUUl9FUlIoY2hpcCk7CisJcGMgPSB0
b19yb2NrY2hpcF9wd21fY2hpcChjaGlwKTsKIAogCXBjLT5iYXNlID0gZGV2bV9wbGF0Zm9ybV9p
b3JlbWFwX3Jlc291cmNlKHBkZXYsIDApOwogCWlmIChJU19FUlIocGMtPmJhc2UpKQpAQCAtMzQy
LDkgKzM0MSw3IEBAIHN0YXRpYyBpbnQgcm9ja2NoaXBfcHdtX3Byb2JlKHN0cnVjdCBwbGF0Zm9y
bV9kZXZpY2UgKnBkZXYpCiAJcGxhdGZvcm1fc2V0X2RydmRhdGEocGRldiwgY2hpcCk7CiAKIAlw
Yy0+ZGF0YSA9IGRldmljZV9nZXRfbWF0Y2hfZGF0YSgmcGRldi0+ZGV2KTsKLQljaGlwLT5kZXYg
PSAmcGRldi0+ZGV2OwogCWNoaXAtPm9wcyA9ICZyb2NrY2hpcF9wd21fb3BzOwotCWNoaXAtPm5w
d20gPSAxOwogCiAJZW5hYmxlX2NvbmYgPSBwYy0+ZGF0YS0+ZW5hYmxlX2NvbmY7CiAJY3RybCA9
IHJlYWRsX3JlbGF4ZWQocGMtPmJhc2UgKyBwYy0+ZGF0YS0+cmVncy5jdHJsKTsKLS0gCjIuNDMu
MAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4
LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2No
aXAK
