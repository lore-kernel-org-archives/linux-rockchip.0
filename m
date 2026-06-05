Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B873ACD8C81
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jun 2026 13:32:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:MIME-Version:Subject:
	Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=buaPsKbIlh+rok8WlMOBzB/xHhg7marU8ngi9KoklK8=; b=cD/bcMx1e7+ROZ
	FHA6xzwtfVPzOcAi8CuQ3UgdPxi0XA1WAc0/eDLFAZqXQGMz7LkfO8EUNdUqt5Ylf4zr/Dn0L3/LM
	/kXvlmsAtKTAa6Zgqe5/PafvAUnjRr25acvzWIMPTEBzpllRzCkI9IZiU3Qn8hz56k8ljvq96Xue+
	dQmzTQoBp9yehK8OWNidvAlqbd9kNt/076/yEnzob9c6vnVQaAHbqqyW8qbvujA9Pe0zxoSy32ZDX
	tuHD7WUxxSWmldJ3QE/9urzAhHX2XhY38XNhiRGca1EkqtMStUXt0u3h34/PBuXov7XXi92QUWdzo
	qISkmI81QMukktyQ7BhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUez-00000000gFl-1XDg;
	Fri, 05 Jun 2026 13:32:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVUex-00000000gF3-1ll8
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jun 2026 13:32:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wVUee-0000cf-1N; Fri, 05 Jun 2026 15:32:08 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Fri, 05 Jun 2026 15:32:01 +0200
Subject: [PATCH] media: rockchip: rga: don't change RGB quantization
MIME-Version: 1.0
Message-Id: <20260605-spu-fixrga3quantization-v1-1-1059d984dc6e@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yWMQQ6CMBAAv0L2bJMtxmr8ivGwlAXWQ8VuS4iEv
 7vqcZKZ2UA5Cytcmw0yL6LyTAb+0ECcKI3spDeGFtuAAU9O5+oGWfNIx1elVORNxRqHwcdz8OT
 7C4LVc2bTfufb/c9auwfH8t3Bvn8AsZjEBHsAAAA=
X-Change-ID: 20260605-spu-fixrga3quantization-061c761a1d80
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>, 
 Hans Verkuil <hverkuil+cisco@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kernel@pengutronix.de, Philipp Zabel <p.zabel@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_063227_460155_44C9DB06 
X-CRM114-Status: GOOD (  15.48  )
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

RG9uJ3QgY2hhbmdlIHRoZSBxdWFudGl6YXRpb24gb2YgYW4gUkdCIGZvcm1hdCB3aGVuIGNvbnZl
cnRpbmcgYmV0d2VlbgpSR0IgYW5kIFlVViB3aXRoIHRoZSBSR0EzLiBBcyB0aGUgUkdBMyBvbmx5
IHN1cHBvcnRzIGRvaW5nIGNvbnZlcnNpb25zCnRvIGZ1bGwgcmFuZ2UgWVVWIHdpdGggQlQ2MDEs
IGl0IHdhbnRzIHRvIGFubm91bmNlIGl0IHRocm91Z2gKdHJ5X2ZtdC9zX2ZtdC4KCkFzIGl0IGlz
IG9ubHkgcmVsZXZhbnQsIHdoZW4gY29udmVydGluZyBiZXR3ZWVuIFJHQiBhbmQgWVVWLCBpdCdz
Cmd1YXJkZWQgYnkgYSBnaXZlbiBjb25kaXRpb24uIEJ1dCB0aGUgY29uZGl0aW9uIGFsc28gY2F1
c2VzIHRoZQpSR0IgZm9ybWF0IHF1YW50aXphdGlvbiB0byBiZSBhZGp1c3RlZCB0byBsaW1pdGVk
IHJhbmdlLCB3aGljaAppcyBpbmNvcnJlY3QuCgpUaGVyZWZvcmUgc2ltcGxpZnkgdGhlIGNvbmRp
dGlvbiB0byBvbmx5IGFwcGx5IHdoZW4gdGhlIGN1cnJlbnQgZm9ybWF0CmlzIGEgWVVWIGZvcm1h
dC4gQWxzbyBkb2N1bWVudCB0aGUgcmVhc29uIGZvciBjaGVja2luZyBpZiB0aGUgb3RoZXIKZm9y
bWF0IGlzIGFuIFJHQiBmb3JtYXQuCgpGaXhlczogMjRhNjNkNGM5ZDNjICgibWVkaWE6IHJvY2tj
aGlwOiByZ2E6IGFkZCByZ2EzIHN1cHBvcnQiKQpTaWduZWQtb2ZmLWJ5OiBTdmVuIFDDvHNjaGVs
IDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KVGhpcyBwYXRjaCBpcyBhIGZpeCB0byB0
aGUgdXBjb21pbmcgUkdBMyBzdXBwb3J0LiBCeSBtaXN0YWtlIGl0J2xsIGFsc28KYWRqdXN0IHRo
ZSBSR0IgcXVhbnRpemF0aW9uIGluc3RlYWQgb2Ygb25seSBhZGp1c3RpbmcgdGhlIHF1YW50aXph
dGlvbgpvZiB0aGUgWVVWIGZvcm1hdHMuIFRoZXJlZm9yZSByZW1vdmUgdGhlIGluY29ycmVjdCBj
b25kaXRpb25zIGFuZApkb2N1bWVudCB3aHkgd2UgYWxzbyBjaGVjayB0aGUgZm9ybWF0IG9mIHRo
ZSBvdGhlciBzaWRlLgoKSSd2ZSBqdXN0IG5vdGljZWQgdGhpcyBmbGF3ZWQgY29uZGl0aW9uIGFu
ZCBkaWRuJ3QgY2hlY2svcmVwcm9kdWNlIGl0IGluCmEgcHJhY3RpY2FsIHNjZW5hcmlvLgoKICAg
IHY0bDItY29tcGxpYW5jZSAxLjMyLjAsIDY0IGJpdHMsIDY0LWJpdCB0aW1lX3QKICAgIC4uLi4K
ICAgIAlDYXJkIHR5cGUgICAgICAgIDogcmdhMwogICAgLi4uCiAgICBUb3RhbCBmb3Igcm9ja2No
aXAtcmdhIGRldmljZSAvZGV2L3ZpZGVvMDogNDgsIFN1Y2NlZWRlZDogNDgsIEZhaWxlZDogMCwg
V2FybmluZ3M6IDAKCiAgICB2NGwyLWNvbXBsaWFuY2UgMS4zMi4wLCA2NCBiaXRzLCA2NC1iaXQg
dGltZV90CiAgICAuLi4KICAgIAlDYXJkIHR5cGUgICAgICAgIDogcmdhMgogICAgLi4uCiAgICBU
b3RhbCBmb3Igcm9ja2NoaXAtcmdhIGRldmljZSAvZGV2L3ZpZGVvMTogNDgsIFN1Y2NlZWRlZDog
NDgsIEZhaWxlZDogMCwgV2FybmluZ3M6IDAKLS0tCiBkcml2ZXJzL21lZGlhL3BsYXRmb3JtL3Jv
Y2tjaGlwL3JnYS9yZ2EzLWh3LmMgfCAxMiArKysrKysrKy0tLS0KIDEgZmlsZSBjaGFuZ2VkLCA4
IGluc2VydGlvbnMoKyksIDQgZGVsZXRpb25zKC0pCgpkaWZmIC0tZ2l0IGEvZHJpdmVycy9tZWRp
YS9wbGF0Zm9ybS9yb2NrY2hpcC9yZ2EvcmdhMy1ody5jIGIvZHJpdmVycy9tZWRpYS9wbGF0Zm9y
bS9yb2NrY2hpcC9yZ2EvcmdhMy1ody5jCmluZGV4IGNhMWMyNjgzMDNkZDQuLmM0YTcxMzA2Mjc4
YmEgMTAwNjQ0Ci0tLSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYTMt
aHcuYworKysgYi9kcml2ZXJzL21lZGlhL3BsYXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EzLWh3LmMK
QEAgLTQ1MCwxMCArNDUwLDE0IEBAIHN0YXRpYyB2b2lkICpyZ2EzX2FkanVzdF9hbmRfbWFwX2Zv
cm1hdChzdHJ1Y3QgcmdhX2N0eCAqY3R4LAogCW90aGVyX2Zvcm1hdCA9IGlzX291dHB1dCA/ICZj
dHgtPm91dC5waXggOiAmY3R4LT5pbi5waXg7CiAJb3RoZXJfZm9ybWF0X2luZm8gPSB2NGwyX2Zv
cm1hdF9pbmZvKG90aGVyX2Zvcm1hdC0+cGl4ZWxmb3JtYXQpOwogCi0JaWYgKCh2NGwyX2lzX2Zv
cm1hdF9yZ2IoZm9ybWF0X2luZm8pICYmCi0JICAgICB2NGwyX2lzX2Zvcm1hdF95dXYob3RoZXJf
Zm9ybWF0X2luZm8pKSB8fAotCSAgICAodjRsMl9pc19mb3JtYXRfeXV2KGZvcm1hdF9pbmZvKSAm
JgotCSAgICAgdjRsMl9pc19mb3JtYXRfcmdiKG90aGVyX2Zvcm1hdF9pbmZvKSkpIHsKKwkvKgor
CSAqIE9ubHkgYXBwbHkgdGhlIHF1YW50aXphdGlvbiByZXN0cmljdGlvbnMgd2hlbiB3ZSBuZWVk
IHRvCisJICogY29udmVydCBiZXR3ZWVuIFJHQiBhbmQgWVVWLiBPdGhlcndpc2UgdGhlcmUgaXMg
bm8gcG9pbnQKKwkgKiB0byBsaW1pdCB0aGUgcXVhbnRpemF0aW9uIGZvciBvcGVyYXRpb25zIGxp
a2Ugc2NhbGluZyBvcgorCSAqIHJvdGF0aW9ucy4KKwkgKi8KKwlpZiAodjRsMl9pc19mb3JtYXRf
eXV2KGZvcm1hdF9pbmZvKSAmJgorCSAgICB2NGwyX2lzX2Zvcm1hdF9yZ2Iob3RoZXJfZm9ybWF0
X2luZm8pKSB7CiAJCS8qCiAJCSAqIFRoZSBSR0EzIG9ubHkgc3VwcG9ydHMgQlQ2MDEsIEJUNzA5
IGFuZCBCVDIwMjAgUkdCPC0+WVVWIGNvbnZlcnNpb25zCiAJCSAqIEFkZGl0aW9uYWxseSBCVDcw
OSBhbmQgQlQyMDIwIG9ubHkgc3VwcG9ydCBsaW1pdGVkIHJhbmdlIFlVVi4KCi0tLQpiYXNlLWNv
bW1pdDogNmE3NWUzZDRmNjQyOGI5MGYzOTgzNTQyMTJlM2EyZTAxNzI4NTFkNgpjaGFuZ2UtaWQ6
IDIwMjYwNjA1LXNwdS1maXhyZ2EzcXVhbnRpemF0aW9uLTA2MWM3NjFhMWQ4MAoKQmVzdCByZWdh
cmRzLAotLSAgClN2ZW4gUMO8c2NoZWwgPHMucHVlc2NoZWxAcGVuZ3V0cm9uaXguZGU+CgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
