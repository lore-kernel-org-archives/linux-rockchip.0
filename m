Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 412C6C5CFE7
	for <linux-rockchip@archiver.kernel.org>; Tue, 11 Aug 2026 15:45:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rLjL11QoE+iGN82ZSW1KNRA9lt3lHL2KBl8vMgqPjOE=; b=p4QT+Rusf6/GT+
	dPnOG/2Z4qWyrWBkpXnDvZwfiWVAwNVlgFmqP9P6CJb2qBTIBwSroEhZnq1PoXv4WaTp7QfUxiKjn
	V+8osqt1YDUVzDx7Okcs6R2YWxX4TfoKQspq+8kkrnrLtmr04sfvLOPwLSNu+sWApCd9NByE/pqFz
	In8TJ5wNTcMFPLKq/Iz3S6mSn1c50z7P+COqjmnEZ64G+jxV9B1pPewEUkFqVrgMNptjWQtyM4nwc
	or3AoIoPV7xvVpSjQMbZ/zIBoJSpOBYRN8/ZhqjhQF9qIBoAkSIsxUl9eeE+owDlb3uRytsqNtXCW
	zxn2UYmDfYVsu/qVJQKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtofY-0000000ENDW-3b12;
	Tue, 11 Aug 2026 15:45:36 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtofG-0000000EMu5-0sQb;
	Tue, 11 Aug 2026 15:45:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1786463114;
	bh=WJE7FGtqmV37oaQbYJKqAKQxFTuPM4BQrEc9nfttCLo=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Rl36wizNQ/hXCsQbeQaOPDJvjWxc5BbRmSj4d/u5ATQyE321rqxsrAu7RL7QQR7yq
	 CrN7DXseUwb9oYaDbw+SDdnv+czerfxZXqukc8SM5EYwYpkncAfHLGVVom+8ps3JmN
	 /vgO11NBSGRRFoqrVYu2EtmtMrufX3VDrphK5k0+NPAyZ3SMgeSOw6Jd0Awg5/YazR
	 2X6uOlRePCJy4NoBFpnH/SYc5YxSf7SY3osGPOUIihoVZIS70KYFEHCQshc/qxPhl0
	 gYAX1GEhtfkDD7CwtYDMmRrkjoTELAkMPgeTLoVnpFBEGwbeRCS2XUgs9unI00UzqZ
	 9UG5ErjrTNnKA==
Received: from localhost (unknown [100.64.0.241])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange secp256r1 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 07E9E17E052F;
	Tue, 11 Aug 2026 17:45:14 +0200 (CEST)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Tue, 11 Aug 2026 18:44:42 +0300
Subject: [PATCH v6 01/10] phy: rockchip: samsung-hdptx: Fix rate
 recalculation for high bpc
MIME-Version: 1.0
Message-Id: <20260811-hdptx-clk-fixes-v6-1-75bca0ee5753@collabora.com>
References: <20260811-hdptx-clk-fixes-v6-0-75bca0ee5753@collabora.com>
In-Reply-To: <20260811-hdptx-clk-fixes-v6-0-75bca0ee5753@collabora.com>
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
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>, 
 Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260811_084519_335598_8094BF93 
X-CRM114-Status: GOOD (  12.27  )
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
dkBvc3MucXVhbGNvbW0uY29tPgpSZXZpZXdlZC1ieTogTWFuaXZhbm5hbiBTYWRoYXNpdmFtIDxt
YW5pdmFubmFuLnNhZGhhc2l2YW1Ab3NzLnF1YWxjb21tLmNvbT4KU2lnbmVkLW9mZi1ieTogQ3Jp
c3RpYW4gQ2lvY2FsdGVhIDxjcmlzdGlhbi5jaW9jYWx0ZWFAY29sbGFib3JhLmNvbT4KLS0tCiBk
cml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jIHwgMTMgKysr
Ky0tLS0tLS0tLQogMSBmaWxlIGNoYW5nZWQsIDQgaW5zZXJ0aW9ucygrKSwgOSBkZWxldGlvbnMo
LSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3Vu
Zy1oZHB0eC5jIGIvZHJpdmVycy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRw
dHguYwppbmRleCAyZDk3M2JjMzdmMDcuLjcxMDYwM2FmZmY4NiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9waHkvcm9ja2NoaXAvcGh5LXJvY2tjaGlwLXNhbXN1bmctaGRwdHguYworKysgYi9kcml2ZXJz
L3BoeS9yb2NrY2hpcC9waHktcm9ja2NoaXAtc2Ftc3VuZy1oZHB0eC5jCkBAIC0yMTY4LDcgKzIx
NjgsNyBAQCBzdGF0aWMgdTY0IHJrX2hkcHR4X3BoeV9jbGtfY2FsY19yYXRlX2Zyb21fcGxsX2Nm
ZyhzdHJ1Y3QgcmtfaGRwdHhfcGh5ICpoZHB0eCkKIAlzdHJ1Y3QgbGNwbGxfY29uZmlnIGxjcGxs
X2h3OwogCXN0cnVjdCByb3BsbF9jb25maWcgcm9wbGxfaHc7CiAJdTY0IGZvdXQsIHNkbTsKLQl1
MzIgbW9kZSwgdmFsOworCXUzMiBtb2RlLCBicGMsIHZhbDsKIAlpbnQgcmV0LCBpOwogCiAJcmV0
ID0gcmVnbWFwX3JlYWQoaGRwdHgtPnJlZ21hcCwgQ01OX1JFRygwMDA4KSwgJm1vZGUpOwpAQCAt
MjI2Niw2ICsyMjY2LDcgQEAgc3RhdGljIHU2NCBya19oZHB0eF9waHlfY2xrX2NhbGNfcmF0ZV9m
cm9tX3BsbF9jZmcoc3RydWN0IHJrX2hkcHR4X3BoeSAqaGRwdHgpCiAJaWYgKHJldCkKIAkJcmV0
dXJuIDA7CiAJcm9wbGxfaHcucG1zX3NkaXYgPSAoKHZhbCAmIFBMTF9QQ0dfUE9TVERJVl9TRUxf
TUFTSykgPj4gNCkgKyAxOworCWJwYyA9IChGSUVMRF9HRVQoUExMX1BDR19DTEtfU0VMX01BU0ss
IHZhbCkgPDwgMSkgKyA4OwogCiAJZm91dCA9IFBMTF9SRUZfQ0xLICogcm9wbGxfaHcucG1zX21k
aXY7CiAJaWYgKHJvcGxsX2h3LnNkbV9lbikgewpAQCAtMjI4MCw3ICsyMjgxLDcgQEAgc3RhdGlj
IHU2NCBya19oZHB0eF9waHlfY2xrX2NhbGNfcmF0ZV9mcm9tX3BsbF9jZmcoc3RydWN0IHJrX2hk
cHR4X3BoeSAqaGRwdHgpCiAJCQlmb3V0ID0gZm91dCArIHNkbTsKIAl9CiAKLQlyZXR1cm4gZGl2
X3U2NChmb3V0ICogMiwgcm9wbGxfaHcucG1zX3NkaXYgKiAxMCk7CisJcmV0dXJuIERJVl9ST1VO
RF9DTE9TRVNUX1VMTChmb3V0ICogMiAqIDgsIHJvcGxsX2h3LnBtc19zZGl2ICogMTAgKiBicGMp
OwogfQogCiBzdGF0aWMgdW5zaWduZWQgbG9uZyBya19oZHB0eF9waHlfY2xrX3JlY2FsY19yYXRl
KHN0cnVjdCBjbGtfaHcgKmh3LApAQCAtMjI4OCwxOSArMjI4OSwxMyBAQCBzdGF0aWMgdW5zaWdu
ZWQgbG9uZyBya19oZHB0eF9waHlfY2xrX3JlY2FsY19yYXRlKHN0cnVjdCBjbGtfaHcgKmh3LAog
ewogCXN0cnVjdCBya19oZHB0eF9waHkgKmhkcHR4ID0gdG9fcmtfaGRwdHhfcGh5KGh3KTsKIAl1
MzIgc3RhdHVzOwotCXU2NCByYXRlOwogCWludCByZXQ7CiAKIAlyZXQgPSByZWdtYXBfcmVhZCho
ZHB0eC0+Z3JmLCBHUkZfSERQVFhfQ09OMCwgJnN0YXR1cyk7CiAJaWYgKHJldCB8fCAhKHN0YXR1
cyAmIEhEUFRYX0lfUExMX0VOKSkKIAkJcmV0dXJuIDA7CiAKLQlyYXRlID0gcmtfaGRwdHhfcGh5
X2Nsa19jYWxjX3JhdGVfZnJvbV9wbGxfY2ZnKGhkcHR4KTsKLQotCWlmIChoZHB0eC0+aGRtaV9j
ZmcubW9kZSA9PSBQSFlfSERNSV9NT0RFX0ZSTCkKLQkJcmV0dXJuIHJhdGU7Ci0KLQlyZXR1cm4g
RElWX1JPVU5EX0NMT1NFU1RfVUxMKHJhdGUgKiA4LCBoZHB0eC0+aGRtaV9jZmcuYnBjKTsKKwly
ZXR1cm4gcmtfaGRwdHhfcGh5X2Nsa19jYWxjX3JhdGVfZnJvbV9wbGxfY2ZnKGhkcHR4KTsKIH0K
IAogc3RhdGljIGludCBya19oZHB0eF9waHlfY2xrX2RldGVybWluZV9yYXRlKHN0cnVjdCBjbGtf
aHcgKmh3LAoKLS0gCjIuNTUuMAoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBs
aXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlz
dGluZm8vbGludXgtcm9ja2NoaXAK
