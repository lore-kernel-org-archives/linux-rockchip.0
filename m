Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F247CD484D
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 18:21:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SLuyd8Q1lMIY6R54l0VU/Bc8vLOxDp55JlFjLXWR6Iw=; b=IHpDOYzKkJc3tZ
	67708eQ7Qd3248EN//Ca4MzfRBNggZnqB4Dmhz6j8z9ow7FkjR3lzItEdDS7cLMmsIxTl3rFBH6J+
	89mEiosR/U76wg3mShRtuKwK3RfTU8D9wqptug8l968s7fcIqan9Dv5y2ElIY/dY25WM5IAiTvCG+
	aCtawTBKy7Wj/y+itmU8U79YIfZwVAvkTAUXoNA/ze1wjzOTLNkged1g1zHg3FWm4O7sjUyOdgzeF
	YvXpNiAKHjz9sw82oCDo3oRFqV466v7uFqcNsOCetDW+g0/rtvXgCOn6qxr3BJtspDptcH6Bf6fF/
	cluXq79NPLEz+WsLh48g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMVFw-0000000ETu1-3zAH;
	Mon, 11 May 2026 18:21:28 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMVFt-0000000ETqt-1OsE;
	Mon, 11 May 2026 18:21:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1778523681;
	bh=5f1KMBpJaQ47rd9eDJHLEhSqYhE7uD9TiYEKDFAFjQg=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=fWyL51MeCllhmasiS0mJNFWv6FGadoNdB7fi24NeNif1mLfjw5m9LStwxcvEILYwO
	 /6RZFL8Xtxxn8VJGUkqU0/PXpvoaNTK6acbY7y3AWPR/4P+Db6HqC6iUYotS74/wAc
	 z8IcmQSaE+xUZ2juI2Q4vpzIfEBU2XcmtNmIR4c/ii/sYnDFnGJjBZJ+BIzGW6Bgv6
	 xWC+wFg9ao/r0vJzSZyfE077c3k9PPcWm3LdvYYi5dUjM1msy6kDR0NHEw+TGrVpkN
	 jrbzEKFAB/2RRZrGV0v+794otbJysHwbcGpnwPNGMsvvrf/AZZLAaYj7+a+NyXbXuv
	 ojEZMgbr7BpFw==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 68B7B17E12AA;
	Mon, 11 May 2026 20:21:21 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Mon, 11 May 2026 21:21:15 +0300
Subject: [PATCH v2 1/6] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for high bpc
MIME-Version: 1.0
Message-Id: <20260511-hdptx-clk-fixes-v2-1-664e41379cab@collabora.com>
References: <20260511-hdptx-clk-fixes-v2-0-664e41379cab@collabora.com>
In-Reply-To: <20260511-hdptx-clk-fixes-v2-0-664e41379cab@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
 Simon Wright <simon@symple.nz>
X-Mailer: b4 0.15.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_112125_514730_CCB525F9 
X-CRM114-Status: GOOD (  11.80  )
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
c3ltcGxlLm56PgpTaWduZWQtb2ZmLWJ5OiBDcmlzdGlhbiBDaW9jYWx0ZWEgPGNyaXN0aWFuLmNp
b2NhbHRlYUBjb2xsYWJvcmEuY29tPgotLS0KIGRyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2Nr
Y2hpcC1zYW1zdW5nLWhkcHR4LmMgfCAxMyArKysrLS0tLS0tLS0tCiAxIGZpbGUgY2hhbmdlZCwg
NCBpbnNlcnRpb25zKCspLCA5IGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2RyaXZlcnMvcGh5
L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1zYW1zdW5nLWhkcHR4LmMgYi9kcml2ZXJzL3BoeS9yb2Nr
Y2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCmluZGV4IDJkOTczYmMzN2YwNy4uN2Zi
MWMyMjMxOGJiIDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
c2Ftc3VuZy1oZHB0eC5jCisrKyBiL2RyaXZlcnMvcGh5L3JvY2tjaGlwL3BoeS1yb2NrY2hpcC1z
YW1zdW5nLWhkcHR4LmMKQEAgLTIxNjgsNyArMjE2OCw3IEBAIHN0YXRpYyB1NjQgcmtfaGRwdHhf
cGh5X2Nsa19jYWxjX3JhdGVfZnJvbV9wbGxfY2ZnKHN0cnVjdCBya19oZHB0eF9waHkgKmhkcHR4
KQogCXN0cnVjdCBsY3BsbF9jb25maWcgbGNwbGxfaHc7CiAJc3RydWN0IHJvcGxsX2NvbmZpZyBy
b3BsbF9odzsKIAl1NjQgZm91dCwgc2RtOwotCXUzMiBtb2RlLCB2YWw7CisJdTMyIG1vZGUsIGJw
YywgdmFsOwogCWludCByZXQsIGk7CiAKIAlyZXQgPSByZWdtYXBfcmVhZChoZHB0eC0+cmVnbWFw
LCBDTU5fUkVHKDAwMDgpLCAmbW9kZSk7CkBAIC0yMjY2LDYgKzIyNjYsNyBAQCBzdGF0aWMgdTY0
IHJrX2hkcHR4X3BoeV9jbGtfY2FsY19yYXRlX2Zyb21fcGxsX2NmZyhzdHJ1Y3QgcmtfaGRwdHhf
cGh5ICpoZHB0eCkKIAlpZiAocmV0KQogCQlyZXR1cm4gMDsKIAlyb3BsbF9ody5wbXNfc2RpdiA9
ICgodmFsICYgUExMX1BDR19QT1NURElWX1NFTF9NQVNLKSA+PiA0KSArIDE7CisJYnBjID0gKEZJ
RUxEX0dFVChQTExfUENHX0NMS19TRUxfTUFTSywgdmFsKSA8PCAxKSArIDg7CiAKIAlmb3V0ID0g
UExMX1JFRl9DTEsgKiByb3BsbF9ody5wbXNfbWRpdjsKIAlpZiAocm9wbGxfaHcuc2RtX2VuKSB7
CkBAIC0yMjgwLDcgKzIyODEsNyBAQCBzdGF0aWMgdTY0IHJrX2hkcHR4X3BoeV9jbGtfY2FsY19y
YXRlX2Zyb21fcGxsX2NmZyhzdHJ1Y3QgcmtfaGRwdHhfcGh5ICpoZHB0eCkKIAkJCWZvdXQgPSBm
b3V0ICsgc2RtOwogCX0KIAotCXJldHVybiBkaXZfdTY0KGZvdXQgKiAyLCByb3BsbF9ody5wbXNf
c2RpdiAqIDEwKTsKKwlyZXR1cm4gZGl2X3U2NChmb3V0ICogMiAqIDgsIHJvcGxsX2h3LnBtc19z
ZGl2ICogMTAgKiBicGMpOwogfQogCiBzdGF0aWMgdW5zaWduZWQgbG9uZyBya19oZHB0eF9waHlf
Y2xrX3JlY2FsY19yYXRlKHN0cnVjdCBjbGtfaHcgKmh3LApAQCAtMjI4OCwxOSArMjI4OSwxMyBA
QCBzdGF0aWMgdW5zaWduZWQgbG9uZyBya19oZHB0eF9waHlfY2xrX3JlY2FsY19yYXRlKHN0cnVj
dCBjbGtfaHcgKmh3LAogewogCXN0cnVjdCBya19oZHB0eF9waHkgKmhkcHR4ID0gdG9fcmtfaGRw
dHhfcGh5KGh3KTsKIAl1MzIgc3RhdHVzOwotCXU2NCByYXRlOwogCWludCByZXQ7CiAKIAlyZXQg
PSByZWdtYXBfcmVhZChoZHB0eC0+Z3JmLCBHUkZfSERQVFhfQ09OMCwgJnN0YXR1cyk7CiAJaWYg
KHJldCB8fCAhKHN0YXR1cyAmIEhEUFRYX0lfUExMX0VOKSkKIAkJcmV0dXJuIDA7CiAKLQlyYXRl
ID0gcmtfaGRwdHhfcGh5X2Nsa19jYWxjX3JhdGVfZnJvbV9wbGxfY2ZnKGhkcHR4KTsKLQotCWlm
IChoZHB0eC0+aGRtaV9jZmcubW9kZSA9PSBQSFlfSERNSV9NT0RFX0ZSTCkKLQkJcmV0dXJuIHJh
dGU7Ci0KLQlyZXR1cm4gRElWX1JPVU5EX0NMT1NFU1RfVUxMKHJhdGUgKiA4LCBoZHB0eC0+aGRt
aV9jZmcuYnBjKTsKKwlyZXR1cm4gcmtfaGRwdHhfcGh5X2Nsa19jYWxjX3JhdGVfZnJvbV9wbGxf
Y2ZnKGhkcHR4KTsKIH0KIAogc3RhdGljIGludCBya19oZHB0eF9waHlfY2xrX2RldGVybWluZV9y
YXRlKHN0cnVjdCBjbGtfaHcgKmh3LAoKLS0gCjIuNTMuMAoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
