Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB098C531CC
	for <linux-rockchip@archiver.kernel.org>; Thu, 23 Jul 2026 19:42:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kkrPU71sdclJyvQ5u6u3lyoezsBNsXK9tyMmQBZ+wE=; b=Y4CKXgu6ZaGHQt
	04ocQXLT4T/i8IKM6V8pqoM6rB3nT6DtwqYzGdHSssMxVqR7BctpdU+t3pA2IGsCfbvyriY/6PpLj
	yUViB8AioWelgGOcZMmOCQc5WLKr8XnZtZIKaXFmLG4kVyiVcSXqWMRazhEXpMZlPfRyH64nZlAwY
	uBhDtlD4glWKxjiDUiC/4SQrIdRoXIVDwGQc0PaXklgWSTSoH6InspMkr6HiIQBMW/ce5y2LVS4cP
	3U8kIJayBsYcH6wgnxfM/Cupkq079xSAupwwX1+4filxcoyaK1MyQL6LmFKyN8mAt5jJWhtfdGRG9
	Wwje993x7gsEjaczmbJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzJ2-0000000EywA-1mTU;
	Thu, 23 Jul 2026 19:42:08 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmzIk-0000000Eyij-38g3;
	Thu, 23 Jul 2026 19:41:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1784835707;
	bh=DpuLUtdDhJa4UJFDwUavVl/FHq+zvMTjYuiEWd+fonE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=U1XHmCkz4cvsqu3dYxUAgG7ZVgz3RN4agEuSlJ7aobMqGqR1cS6FS/0aDcsQGkUHq
	 WttgcQMuCKwsHx0+9pdNxQ9qRzobuMAVX7h3YC9O2fk/AHhC5hm8yJZ9zrHO0BqmLk
	 gI3nQEWmZCdFHMCQxM6HbCYxdNyve9IBG5t5cMZ21ffp4rM0ufb5Z0+U3fpCL9M9WU
	 o3S1a8ArR+Oqot1zebeJl1mpKIq25mnxCUKk0a44b0BwDQPuZDXN76YE7b6SOvcTRD
	 8BPpL5tm9zi7PLsWCQ48SPm34zVg4KMq30zgggcftPIZzsA9J6arEsXorRTV6oK+e2
	 uuJfOtRfFpWHQ==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 2C44517E0A45;
	Thu, 23 Jul 2026 21:41:47 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Thu, 23 Jul 2026 22:41:44 +0300
Subject: [PATCH v5 01/10] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for high bpc
MIME-Version: 1.0
Message-Id: <20260723-hdptx-clk-fixes-v5-1-8e786067865f@collabora.com>
References: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
In-Reply-To: <20260723-hdptx-clk-fixes-v5-0-8e786067865f@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
 Simon Wright <simon@symple.nz>, Diederik de Haas <diederik@cknow-tech.com>, 
 Andy Yan <andyshrk@gmail.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260723_124150_940024_AF13BE08 
X-CRM114-Status: GOOD (  11.83  )
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

VGhlIFBIWSBQTEwgY2FuIGJlIHByb2dyYW1tZWQgYnkgYW4gZXh0ZXJuYWwgY29tcG9uZW50LCBl
LmcuIHRoZQpib290bG9hZGVyLCBqdXN0IGJlZm9yZSB0aGUgcmVjYWxjX3JhdGUoKSBjYWxsYmFj
ayBpcyBpbnZva2VkIGR1cmluZwpkZXZtX2Nsa19od19yZWdpc3RlcigpIGluIHRoZSBwcm9iZSBw
YXRoLgoKVGhlcmVmb3JlIHJrX2hkcHR4X3BoeV9jbGtfcmVjYWxjX3JhdGUoKSBmaW5kcyB0aGUg
UExMIGVuYWJsZWQgYW5kCmF0dGVtcHRzIHRvIGNvbXB1dGUgdGhlIGNsb2NrIHJhdGUsIHdoaWxl
IG1ha2luZyB1c2Ugb2YgdGhlIGJwYyB2YWx1ZQpmcm9tIHRoZSBIRE1JIFBIWSBjb25maWd1cmF0
aW9uLCB3aGljaCBhbHdheXMgZGVmYXVsdHMgdG8gOCBiZWNhdXNlCnBoeV9jb25maWd1cmUoKSB3
YXMgbm90IHJ1biBhdCB0aGF0IHBvaW50LiAgQXMgYSBjb25zZXF1ZW5jZSwgdGhlCihyZSljYWxj
dWxhdGVkIHJhdGUgaXMgaW5jb3JyZWN0IHdoZW4gdGhlIGFjdHVhbCBicGMgd2FzIGhpZ2hlciB0
aGFuIDguCgpEbyBub3QgcmVseSBvbiBhbnkgb2YgdGhlIGhkbWlfY2ZnIG1lbWJlcnMgd2hlbiBj
b21wdXRpbmcgdGhlIGNsb2NrIHJhdGUKYW5kLCBpbnN0ZWFkLCByZWFkIHRoZSByZXF1aXJlZCBp
bnB1dCBkYXRhIChpLmUuIGJwYyksIGRpcmVjdGx5IGZyb20gdGhlCmhhcmR3YXJlIHJlZ2lzdGVy
cy4KCkZpeGVzOiAzNDgxZmMwNGQ5NjkgKCJwaHk6IHJvY2tjaGlwOiBzYW1zdW5nLWhkcHR4OiBD
b21wdXRlIGNsayByYXRlIGZyb20gUExMIGNvbmZpZyIpClRlc3RlZC1ieTogVGhvbWFzIE5pZWRl
cnByw7xtIDxkdWJpdG9Ab25saW5lLmRlPgpUZXN0ZWQtYnk6IFNpbW9uIFdyaWdodCA8c2ltb25A
c3ltcGxlLm56PgpUZXN0ZWQtYnk6IERpZWRlcmlrIGRlIEhhYXMgPGRpZWRlcmlrQGNrbm93LXRl
Y2guY29tPiAgIyBOYW5vUEMtVDYgTFRTClJldmlld2VkLWJ5OiBBbmR5IFlhbiA8YW5keXNocmtA
Z21haWwuY29tPgpSZXZpZXdlZC1ieTogRG1pdHJ5IEJhcnlzaGtvdiA8ZG1pdHJ5LmJhcnlzaGtv
dkBvc3MucXVhbGNvbW0uY29tPgpTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNy
aXN0aWFuLmNpb2NhbHRlYUBjb2xsYWJvcmEuY29tPgotLS0KIGRyaXZlcnMvcGh5L3JvY2tjaGlw
L3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMgfCAxMyArKysrLS0tLS0tLS0tCiAxIGZpbGUg
Y2hhbmdlZCwgNCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMgYi9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCmluZGV4IDJkOTczYmMz
N2YwNy4uNzEwNjAzYWZmZjg2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHkt
cm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCisrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1y
b2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMKQEAgLTIxNjgsNyArMjE2OCw3IEBAIHN0YXRpYyB1NjQg
cmtfaGRwdHhfcGh5X2Nsa19jYWxjX3JhdGVfZnJvbV9wbGxfY2ZnKHN0cnVjdCBya19oZHB0eF9w
aHkgKmhkcHR4KQogCXN0cnVjdCBsY3BsbF9jb25maWcgbGNwbGxfaHc7CiAJc3RydWN0IHJvcGxs
X2NvbmZpZyByb3BsbF9odzsKIAl1NjQgZm91dCwgc2RtOwotCXUzMiBtb2RlLCB2YWw7CisJdTMy
IG1vZGUsIGJwYywgdmFsOwogCWludCByZXQsIGk7CiAKIAlyZXQgPSByZWdtYXBfcmVhZChoZHB0
eC0+cmVnbWFwLCBDTU5fUkVHKDAwMDgpLCAmbW9kZSk7CkBAIC0yMjY2LDYgKzIyNjYsNyBAQCBz
dGF0aWMgdTY0IHJrX2hkcHR4X3BoeV9jbGtfY2FsY19yYXRlX2Zyb21fcGxsX2NmZyhzdHJ1Y3Qg
cmtfaGRwdHhfcGh5ICpoZHB0eCkKIAlpZiAocmV0KQogCQlyZXR1cm4gMDsKIAlyb3BsbF9ody5w
bXNfc2RpdiA9ICgodmFsICYgUExMX1BDR19QT1NURElWX1NFTF9NQVNLKSA+PiA0KSArIDE7CisJ
YnBjID0gKEZJRUxEX0dFVChQTExfUENHX0NMS19TRUxfTUFTSywgdmFsKSA8PCAxKSArIDg7CiAK
IAlmb3V0ID0gUExMX1JFRl9DTEsgKiByb3BsbF9ody5wbXNfbWRpdjsKIAlpZiAocm9wbGxfaHcu
c2RtX2VuKSB7CkBAIC0yMjgwLDcgKzIyODEsNyBAQCBzdGF0aWMgdTY0IHJrX2hkcHR4X3BoeV9j
bGtfY2FsY19yYXRlX2Zyb21fcGxsX2NmZyhzdHJ1Y3QgcmtfaGRwdHhfcGh5ICpoZHB0eCkKIAkJ
CWZvdXQgPSBmb3V0ICsgc2RtOwogCX0KIAotCXJldHVybiBkaXZfdTY0KGZvdXQgKiAyLCByb3Bs
bF9ody5wbXNfc2RpdiAqIDEwKTsKKwlyZXR1cm4gRElWX1JPVU5EX0NMT1NFU1RfVUxMKGZvdXQg
KiAyICogOCwgcm9wbGxfaHcucG1zX3NkaXYgKiAxMCAqIGJwYyk7CiB9CiAKIHN0YXRpYyB1bnNp
Z25lZCBsb25nIHJrX2hkcHR4X3BoeV9jbGtfcmVjYWxjX3JhdGUoc3RydWN0IGNsa19odyAqaHcs
CkBAIC0yMjg4LDE5ICsyMjg5LDEzIEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIHJrX2hkcHR4X3Bo
eV9jbGtfcmVjYWxjX3JhdGUoc3RydWN0IGNsa19odyAqaHcsCiB7CiAJc3RydWN0IHJrX2hkcHR4
X3BoeSAqaGRwdHggPSB0b19ya19oZHB0eF9waHkoaHcpOwogCXUzMiBzdGF0dXM7Ci0JdTY0IHJh
dGU7CiAJaW50IHJldDsKIAogCXJldCA9IHJlZ21hcF9yZWFkKGhkcHR4LT5ncmYsIEdSRl9IRFBU
WF9DT04wLCAmc3RhdHVzKTsKIAlpZiAocmV0IHx8ICEoc3RhdHVzICYgSERQVFhfSV9QTExfRU4p
KQogCQlyZXR1cm4gMDsKIAotCXJhdGUgPSBya19oZHB0eF9waHlfY2xrX2NhbGNfcmF0ZV9mcm9t
X3BsbF9jZmcoaGRwdHgpOwotCi0JaWYgKGhkcHR4LT5oZG1pX2NmZy5tb2RlID09IFBIWV9IRE1J
X01PREVfRlJMKQotCQlyZXR1cm4gcmF0ZTsKLQotCXJldHVybiBESVZfUk9VTkRfQ0xPU0VTVF9V
TEwocmF0ZSAqIDgsIGhkcHR4LT5oZG1pX2NmZy5icGMpOworCXJldHVybiBya19oZHB0eF9waHlf
Y2xrX2NhbGNfcmF0ZV9mcm9tX3BsbF9jZmcoaGRwdHgpOwogfQogCiBzdGF0aWMgaW50IHJrX2hk
cHR4X3BoeV9jbGtfZGV0ZXJtaW5lX3JhdGUoc3RydWN0IGNsa19odyAqaHcsCgotLSAKMi41NS4w
CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgt
cm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hp
cAo=
