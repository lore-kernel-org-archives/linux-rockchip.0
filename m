Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01C63C43458
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Jul 2026 10:14:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:MIME-Version:References:
	In-Reply-To:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Upnq93GC/s8d96BE8T26SQhe5haeODWvg6QhbwWFQYk=; b=fX/96EiqZe/MgW
	LHrBMunpYuqpALpksOEWgoVA+IOmbzLc2TUpB/UUsBXr5tj24gAbO/vNClSjaSNSawVvGaS0N1UH8
	CLXBylbdvrnFWAjluyuwRIFLcCvjc+KETLJLQR4CT7JTEjvnJVqF8nZS9RW9oJJyBGksogEdGRvDb
	TaFv05DL0sUOHDGq1uHd1d0VhQFxoAiCBKCwEoAhk6gE8n/WK7reeK0ctseax4fbNofWK8smx9++I
	keqEqod8UXlDAgLvV3hsmDcc0UGCVk1VvGcg7mzDWPDRb4JNtB7ZIjwjt5r3OjuZEwhoj0ma701kF
	q7aLXIlWgJwyrBgYyYdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werxg-00000001I68-2mZc;
	Wed, 01 Jul 2026 10:14:32 +0000
Received: from m16.mail.163.com ([220.197.31.5])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1werxd-00000001I4T-3KcL
	for linux-rockchip@lists.infradead.org;
	Wed, 01 Jul 2026 10:14:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=Date:From:To:Subject:Content-Type:MIME-Version:
	Message-ID; bh=MUaCqF1q3dPMZyHX/FvBhYePfpljaSOgbae4IlMl/7c=; b=J
	q3n2/W2PE1G0ufaQUuEkb5PGNvOxo4xyyS0B3CURISeHriJ2lMxYGB+srByyRNDx
	iJFxhhW8R+M561q/PGL/pRC7XvFNwN50kb8xsjAEehWUSmRRrJT/9OKF3VB0apsY
	EfbfnQ9B96v5S1l8a4n0uU84KVqcelHQZ02mU8frUg=
Received: from andyshrk$163.com ( [61.154.14.86] ) by
 ajax-webmail-wmsvr-40-131 (Coremail) ; Wed, 1 Jul 2026 18:13:31 +0800 (CST)
X-Originating-IP: [61.154.14.86]
Date: Wed, 1 Jul 2026 18:13:31 +0800 (CST)
From: "Andy Yan" <andyshrk@163.com>
To: "Chen Ni" <nichen@iscas.ac.cn>
Cc: hjc@rock-chips.com, heiko@sntech.de, andy.yan@rock-chips.com,
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
	jonas@kwiboo.se
Subject: Re:[PATCH] drm/rockchip: dw_hdmi: Fix error handling for
 drm_atomic_get_bridge_state()
X-Priority: 3
X-Mailer: Coremail Webmail Server Version 2023.4-cmXT build
 20260511(2e539873) Copyright (c) 2002-2026 www.mailtech.cn 163com
In-Reply-To: <20260701030835.2662123-1-nichen@iscas.ac.cn>
References: <20260701030835.2662123-1-nichen@iscas.ac.cn>
X-NTES-SC: AL_Qu2TAPWbv0Aq5yacY+kcnkYbhuw6X8K4uPwi2YFec84Fnjzh1Ss4TW5lMHLQ/8G2MB+vkQS3bB510sl0Q6Z0V/lizlQLR1ziFtXzwkB7yA==
MIME-Version: 1.0
Message-ID: <20bd25ba.8f5d.19f1d2b6786.Coremail.andyshrk@163.com>
X-Coremail-Locale: zh_CN
X-CM-TRANSID: gygvCgD3f71L6ERqef8UAA--.5696W
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbCxQv3VmpE6EvGTQAA3p
X-Coremail-Antispam: 1U5529EdanIXcx71UUUUU7vcSsGvfC2KfnxnUU==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260701_031430_270542_12D15861 
X-CRM114-Status: UNSURE (   6.46  )
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

Ckhp77yMCgoKQXQgMjAyNi0wNy0wMSAxMTowODozNSwgIkNoZW4gTmkiIDxuaWNoZW5AaXNjYXMu
YWMuY24+IHdyb3RlOgo+VGhlIGRybV9hdG9taWNfZ2V0X2JyaWRnZV9zdGF0ZSgpIGZ1bmN0aW9u
IHJldHVybnMgYW4gZXJyb3IgcG9pbnRlciBvbgo+ZmFpbHVyZSwgbm90IE5VTEwuIEZpeCB0aGUg
Y2hlY2sgdG8gdXNlIElTX0VSUigpIHRvIGNvcnJlY3RseSBoYW5kbGUKPmFsbG9jYXRpb24gZmFp
bHVyZXMuCj4KPkZpeGVzOiBkYzcwMjcyY2MxODQgKCJkcm0vcm9ja2NoaXA6IGR3X2hkbWk6IFBy
b3BhZ2F0ZSBidXMgZm9ybWF0IHRvIGRpc3BsYXkgZHJpdmVyIikKPlNpZ25lZC1vZmYtYnk6IENo
ZW4gTmkgPG5pY2hlbkBpc2Nhcy5hYy5jbj4KCgogICBSZXZpZXdlZC1iee+8mkFuZHkgWWFuIDxh
bmR5c2hya0AxNjMuY29tPgoKPi0tLQo+IGRyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9kd19oZG1p
LXJvY2tjaGlwLmMgfCAyICstCj4gMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspLCAxIGRl
bGV0aW9uKC0pCj4KPmRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRt
aS1yb2NrY2hpcC5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL2R3X2hkbWktcm9ja2NoaXAu
Ywo+aW5kZXggY2ZmYzBhZjUxOTBmLi43NjZjZjIxYTRiZTcgMTAwNjQ0Cj4tLS0gYS9kcml2ZXJz
L2dwdS9kcm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jCj4rKysgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvZHdfaGRtaS1yb2NrY2hpcC5jCj5AQCAtMjg3LDcgKzI4Nyw3IEBAIHN0YXRp
YyB1MzIgZHdfaGRtaV9yb2NrY2hpcF9nZXRfYnVzX2Zvcm1hdChzdHJ1Y3QgZHJtX2VuY29kZXIg
KmVuY29kZXIsCj4gCQlyZXR1cm4gMDsKPiAKPiAJYnJpZGdlX3N0YXRlID0gZHJtX2F0b21pY19n
ZXRfYnJpZGdlX3N0YXRlKGNvbm5fc3RhdGUtPnN0YXRlLCBicmlkZ2UpOwo+LQlpZiAoIWJyaWRn
ZV9zdGF0ZSkKPisJaWYgKElTX0VSUihicmlkZ2Vfc3RhdGUpKQo+IAkJcmV0dXJuIDA7Cj4gCj4g
CWlmIChicmlkZ2Vfc3RhdGUtPmlucHV0X2J1c19jZmcuZm9ybWF0ICE9IE1FRElBX0JVU19GTVRf
RklYRUQpCj4tLSAKPjIuMjUuMQo+Cj4KPl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCj5MaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKPkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKPmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxt
YW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tj
aGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1h
bi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
