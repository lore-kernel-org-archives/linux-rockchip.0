Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C9ED210F3DE7
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Mar 2026 13:06:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Subject:Cc:To:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8vYqxko3xqwvkNtqiG3WnUL1618YxDWwQ7R2Y9Lu9Ys=; b=H3QCEyvu7nTYO9
	JeR00GttqeL/60zbvXLQRzBdjv9UXCUi26wFCPUc5uohDpoD8PKDpnDLw2n+8fFpZMDgIPpC3hsPi
	J1UfLbUU35Oo6GvP/NyaalFcNrjDcGBowpjHpO10Gm3Q9d11aXnlYJBJ+xFqeGiIlnYvBz1sRto0m
	zjEiqqVVZqPeSqAlDbtmaxfNPdvzviYi1c1LKE+0YruDhDdT6YRPft38Cob07HEN8bUOiea0qHYlB
	fFe38S+TPbG1evt4ojb+7t/DmhFD5SKv5+FYcH5uOBD7xMbRXsnxUZPtjoM+bMdhNRvmKpQEI2s0z
	80TY/G6b1cIC2xB/obhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6TMz-00000008xRj-0thA;
	Sat, 28 Mar 2026 13:06:29 +0000
Received: from xmbghk7.mail.qq.com ([43.163.128.50])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w6TMw-00000008xRG-3Vvo;
	Sat, 28 Mar 2026 13:06:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1774703174; bh=gXMYbAq/58x0snbnrzU6L6DOJ89RXswb5+dhZJU1I+g=;
	h=From:To:Cc:Subject:Date;
	b=qwlgQLbEDkLize0QMzS+3V66ttCmBtcwhM9Xo8gM/gIGdap5VKQpatCvF/yJjcshY
	 6rQNDX8ymeYvrTIZc2sYfJpLVnCNR9cLtgu6q/FQDZkWd0OVp6KVj8ej3IqDtWm8f3
	 hg+zniiq7ebHeUh5eNPuz4GZ0ky4T5+UGZVSRx5s=
Received: from mail.red54.com ([139.99.8.57])
	by newxmesmtplogicsvrszb51-1.qq.com (NewEsmtp) with SMTP
	id 1780141A; Sat, 28 Mar 2026 21:05:56 +0800
X-QQ-mid: xmsmtpt1774703156tms1s7szr
Message-ID: <tencent_4BED6C3FFB8102B4BB3D08D6F47F2CCFC908@qq.com>
X-QQ-XMAILINFO: N/WmRbclY25G6qBVx5CHfggfaD9zux2Mmv9fE5m2oyrKQJFAT0D4wC6vLh9cUT
	 Lo2mGsU4szHgVLAiRRiW3ngzpSJD+to20cSAmoNzEfIh0Sl5JyhttFwMh+5Fg0of7t88nmp7T/5M
	 qVcZEHelcLFOSL1nqA0YTkCe2zr3gVNyt2v5MyaFM1tNCW8ENHmHU3ibYwF8d4Nvj6FdeUMHMMuy
	 pgfOJgWcEsuA9sD5BDlg0Jz3FMnITsmbqeOzZSPw3bht1Cq2VpBsyHcvLXTD7TEeenmN3C6aibGG
	 wcNo1nE4MybtOZFk0YjQ5hyLOD4n1+YSXR93sP4tq47n65YoCW34mWDwJWDeMUWte2Az5N0KhLkO
	 7/bOiND3r/H3k6bjXULt+bfj/SHQ7arhmD9yr9+K5CMFQABcPVYhHGc8MyyTyD7Q9xLqKVJU8gRT
	 NcCUqzG2LqyTS7qdlwLbxTWexkSuckaJM/S5aMx32bITMULXN8P6fci4ovkgwjNat3dWqB0+ME3G
	 Z150fiw+n6IgXbPXxtQgASkMKt5Mncxes8RH3uMt043mDh/RNsvg2TrYhLn1TEEGX4oPipm2CFcQ
	 GDYmZ8Mmr2R2/qWfVrq8TKwNr+JIniZpMeXVNf5c0ATVav3JIc6t0V4kXE8upHjTBkRBuEPIrk+W
	 xHn8SduWoZ+kbXHs7vYMx4pB37dG7fEPMJNGeI72wC/vGwhCyrxMsCdtpQpfS2lVv5P7bTGoj4ig
	 dHfJ9Ph/gajp/sAsVb5eHUyXsQwQBKzFK2HWw0B28CCXkFFFOMOb5S061NuEQ8F/8ZmaLOvZXMbJ
	 BaNICwylneaN/VyKzsR8+/0BC8zyvBQwAHIrCfuPlx9IDzeXQLx6R134MblAujJ+111CVbhLFmNp
	 9oj59zpoWFFM0re9M+kw0OEPqNKTuTScwYMiMkCBJ3ZPakbGLg+UBCMEBMJRouTrARmiMLjRZqn9
	 hMrKvbXgk5YcZbV2afUUwbjCiaXnWsU3aYwbH/N/pQoIvcj/lugikq9zJ6bh6Q9DLI1edscFKUGh
	 +X6t5lQXgxVDSsd073ntbxv2tizjE3cHgVuHb3YS2eCwDT31CBnK2GNNF8UrHsQoBvC+5A2XOmPn
	 LObiuAx6gcV0+8HSae8Jf9VqBgTQ==
X-QQ-XMRINFO: OWPUhxQsoeAVwkVaQIEGSKwwgKCxK/fD5g==
From: =?UTF-8?q?=E8=B0=A2=E8=87=B4=E9=82=A6=20=28XIE=20Zhibang=29?= <Yeking@Red54.com>
To: linux-rockchip@lists.infradead.org
Cc: =?UTF-8?q?=E8=B0=A2=E8=87=B4=E9=82=A6=20=28XIE=20Zhibang=29?= <Yeking@Red54.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Kever Yang <kever.yang@rock-chips.com>,
	Finley Xiao <finley.xiao@rock-chips.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Add RK3562 serial aliases
Date: Sat, 28 Mar 2026 13:05:46 +0000
X-OQ-MSGID: <20260328130546.25381-1-Yeking@Red54.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260328_060627_261415_E56114A8 
X-CRM114-Status: UNSURE (   8.55  )
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

VGhpcyBmaXhlcyB0aGUgc3Rkb3V0LXBhdGggaW4gcmszNTYyLWV2YjItdjEwLmR0cy4KCkZpeGVz
OiBjZWI2ZWYxZWE5MDAgKCJhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIFJLMzU2MiBldmIyIGRl
dmljZXRyZWUiKQpTaWduZWQtb2ZmLWJ5OiDosKLoh7TpgqYgKFhJRSBaaGliYW5nKSA8WWVraW5n
QFJlZDU0LmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5kdHNp
IHwgMTAgKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDEwIGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5kdHNpIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjIuZHRzaQppbmRleCBlNDgxNmFhM2RhZTAuLjE0
ZTc0ZThhYzdkZiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
NjIuZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2Mi5kdHNpCkBA
IC0yNiw2ICsyNiwxNiBAQCBhbGlhc2VzIHsKIAkJZ3BpbzIgPSAmZ3BpbzI7CiAJCWdwaW8zID0g
JmdwaW8zOwogCQlncGlvNCA9ICZncGlvNDsKKwkJc2VyaWFsMCA9ICZ1YXJ0MDsKKwkJc2VyaWFs
MSA9ICZ1YXJ0MTsKKwkJc2VyaWFsMiA9ICZ1YXJ0MjsKKwkJc2VyaWFsMyA9ICZ1YXJ0MzsKKwkJ
c2VyaWFsNCA9ICZ1YXJ0NDsKKwkJc2VyaWFsNSA9ICZ1YXJ0NTsKKwkJc2VyaWFsNiA9ICZ1YXJ0
NjsKKwkJc2VyaWFsNyA9ICZ1YXJ0NzsKKwkJc2VyaWFsOCA9ICZ1YXJ0ODsKKwkJc2VyaWFsOSA9
ICZ1YXJ0OTsKIAl9OwogCiAJeGluMzJrOiBjbG9jay14aW4zMmsgewotLSAKMi40My4wCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
