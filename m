Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DB6E0CD98D7
	for <linux-rockchip@archiver.kernel.org>; Thu, 11 Jun 2026 23:45:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aI7rjoZZI4GrtSw6xkcwSa4Kc7EWFGc5BVPgTttBTMs=; b=SPof1AkHmGGvaB
	r5bmo39VX7PFh9unQeMRc2k51tgmRSHppTGCQ8MJ8nM96Obn51WUPKEwbsxmjgYEFqO+xRajBiFAp
	xywSYd145x23RPYlqm5+Qrli7oubd6VF9xAyPyxOSYLKTh7QnwP9rmaffzRTYpjBFe6ETeeFPHjxc
	51O5ZWRQs1oonN4IXAu7m/LR6z1Xt7e9cnLrANWtryHnayJqIlqVYsuWuBzG4KBr8A1jH50aaOR3N
	Ea8cMnZTZV7Pro8qxHbHLr1ioDBMYCaxcOb6T+7YJl3NAtyKjaTS3zBPT98xLpIy9zGxbbsbEeSWd
	E/U4/5PVnlV9tOXQy3sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXp5t-0000000ABP1-1DxH;
	Thu, 11 Jun 2026 23:45:53 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXp5n-0000000ABJs-3O7P;
	Thu, 11 Jun 2026 23:45:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1781221544;
	bh=FLTlKYBwbpVpaUOCu6nlw+klwM1qmLmhO3wOq+k94VU=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=C4dijLUezV6a7U7+JuezvIAAjPmeDtPDexXNIOPazkG7eGfAKgOSmUUtrWNLOLor8
	 LFhVVo0gTSpBIfq3WwMByx4+HhOf8Ckxgaas60TpDmxaD5HhovPGN6QS/sN4+D2UD2
	 +kThvY1B23D2eHgy+QkcIJI2sda6mOlz3J1elyGr9Sv8OCx5lJ3jvFWxqfVPvAbBAY
	 wkF4JZUqd9CBo2fm7EBagEAj3rkmPgaSsNPi+lNEnNLXpSb0lfLLnwvdh8VlyiMIYz
	 8QsAIzwZHloaa12BBzCUf4G3zBmr9QqohDMcQg+anM3aiMIbI/HMb/yZzl3hy7B92P
	 5eURoHoiSl/Gg==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 0322C17E091C;
	Fri, 12 Jun 2026 01:45:43 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Fri, 12 Jun 2026 02:45:20 +0300
Subject: [PATCH v4 1/8] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for high bpc
MIME-Version: 1.0
Message-Id: <20260612-hdptx-clk-fixes-v4-1-ce5e1d456cda@collabora.com>
References: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
In-Reply-To: <20260612-hdptx-clk-fixes-v4-0-ce5e1d456cda@collabora.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Heiko Stuebner <heiko@sntech.de>, Algea Cao <algea.cao@rock-chips.com>, 
 Dmitry Baryshkov <lumag@kernel.org>
Cc: kernel@collabora.com, linux-phy@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Thomas_Niederpr=C3=BCm?= <dubito@online.de>, 
 Simon Wright <simon@symple.nz>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260611_164547_989412_B1AAE0B9 
X-CRM114-Status: GOOD (  11.73  )
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
Y2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCmluZGV4IDJkOTczYmMzN2YwNy4uNzEw
NjAzYWZmZjg2IDEwMDY0NAotLS0gYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAt
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
c2RpdiAqIDEwKTsKKwlyZXR1cm4gRElWX1JPVU5EX0NMT1NFU1RfVUxMKGZvdXQgKiAyICogOCwg
cm9wbGxfaHcucG1zX3NkaXYgKiAxMCAqIGJwYyk7CiB9CiAKIHN0YXRpYyB1bnNpZ25lZCBsb25n
IHJrX2hkcHR4X3BoeV9jbGtfcmVjYWxjX3JhdGUoc3RydWN0IGNsa19odyAqaHcsCkBAIC0yMjg4
LDE5ICsyMjg5LDEzIEBAIHN0YXRpYyB1bnNpZ25lZCBsb25nIHJrX2hkcHR4X3BoeV9jbGtfcmVj
YWxjX3JhdGUoc3RydWN0IGNsa19odyAqaHcsCiB7CiAJc3RydWN0IHJrX2hkcHR4X3BoeSAqaGRw
dHggPSB0b19ya19oZHB0eF9waHkoaHcpOwogCXUzMiBzdGF0dXM7Ci0JdTY0IHJhdGU7CiAJaW50
IHJldDsKIAogCXJldCA9IHJlZ21hcF9yZWFkKGhkcHR4LT5ncmYsIEdSRl9IRFBUWF9DT04wLCAm
c3RhdHVzKTsKIAlpZiAocmV0IHx8ICEoc3RhdHVzICYgSERQVFhfSV9QTExfRU4pKQogCQlyZXR1
cm4gMDsKIAotCXJhdGUgPSBya19oZHB0eF9waHlfY2xrX2NhbGNfcmF0ZV9mcm9tX3BsbF9jZmco
aGRwdHgpOwotCi0JaWYgKGhkcHR4LT5oZG1pX2NmZy5tb2RlID09IFBIWV9IRE1JX01PREVfRlJM
KQotCQlyZXR1cm4gcmF0ZTsKLQotCXJldHVybiBESVZfUk9VTkRfQ0xPU0VTVF9VTEwocmF0ZSAq
IDgsIGhkcHR4LT5oZG1pX2NmZy5icGMpOworCXJldHVybiBya19oZHB0eF9waHlfY2xrX2NhbGNf
cmF0ZV9mcm9tX3BsbF9jZmcoaGRwdHgpOwogfQogCiBzdGF0aWMgaW50IHJrX2hkcHR4X3BoeV9j
bGtfZGV0ZXJtaW5lX3JhdGUoc3RydWN0IGNsa19odyAqaHcsCgotLSAKMi41NC4wCgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAg
bWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
