Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B6DBC35FF3
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 21:14:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IuLnUrq/x1yujoopg3NppUiyhjJJB9eNw59fivK5H7s=; b=lcL3Z6Y8je1tYd
	+ItbdtAX47E6KwfD6iWPkY/S3JaaWBuK3va4siSwxASmbWfPpZFQs5O14Oy4Wi8ttMP9wMmESuAXZ
	BpCkzTWZPWBN6Gf1yxGt6bpu5JboFTjUCjQyYCpmkkLf+B8SFI08qbB7kJd5A+AXscuspiJQEqOVt
	5vmQz/yuCE8NdRaeaQYXKW5IRLqnfy5e9UH7We+PhHpFBtiNOj9X5QNDYNskvPnJ4dyDGuQu3ltug
	CmQrLGXt3xL7HtjC4o+ZPOzfL6utSQY9+CF2UfuipjSR11CeiiHDo09UkpD9t5KTADo7nuN1Ij95o
	10/3qE+5YuWM8hkffwLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tueGM-000000076LY-25go;
	Tue, 18 Mar 2025 21:14:14 +0000
Received: from algol.kleine-koenig.org ([2a01:4f8:c010:8611::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tueBK-000000075se-2x8a;
	Tue, 18 Mar 2025 21:09:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kleine-koenig.org;
	s=2022; t=1742332140;
	bh=2HK9IF+akkeuRsTijfaoaW9JXFacNDKLeDLibhYgLkg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=jrYsdF20um1Z/S1pc6mMQNAdNXnVFC5IViGthUP67uj7YFI42MIZOdFRc4VPK+0R9
	 8v0pB++/Vtm7nyUrwSLqxHpl9LqNb7XzL11D3gQcdJa5miU7FWX3IW4dW4h0rvjR/N
	 GaFDKj05sqnDHQNm48y4TH0SHbCaNOi4y+9AQmpiv8JTK/X5ijzPgvnAyC4E0KM+6F
	 uYcGD11EgqXdj5jVzlWxv4urGwl5Zz/DuioJKhX6obV1ZzM2AhZHFWkl7INoNS2PJe
	 7K80SAzQtPjYAVZM7QPyfSh9fi7CUzB0yXCNxM+mmDSXg25g4o1vMJ7b1C2zIfPmBX
	 TaeBrLEz2UBHQ==
Received: by algol.kleine-koenig.org (Postfix, from userid 1000)
	id F33AAFC59B3; Tue, 18 Mar 2025 22:09:00 +0100 (CET)
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Andrew Lunn <andrew@lunn.ch>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v2 1/2] arm64: dts: rockchip: Correct gmac phy address
Date: Tue, 18 Mar 2025 22:08:45 +0100
Message-ID: <6b8ef7e37e646f4cd399ceb2f46017644d76da9d.1742331667.git.ukleinek@kernel.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <cover.1742331667.git.ukleinek@kernel.org>
References: <cover.1742331667.git.ukleinek@kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=857; i=uwe@kleine-koenig.org; h=from:subject:message-id; bh=2HK9IF+akkeuRsTijfaoaW9JXFacNDKLeDLibhYgLkg=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBn2eDgCA8hjGYQffJnJk4imvIDUZ/G4YlTrfvun cBiJ595uCuJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZ9ng4AAKCRCPgPtYfRL+ TiGYCACl4ARWpmgEnSX7vX8yLNRMwbUVrv5AQHzBKBvj6wIEXSp1r3WtgNECRXTapeTlOsWig6T 1LyqbUeCRX7ECmZUFSUQMp4iGztVmahm7VyuZ71O8sO3GLsasAudArdUiCoUmRg1sqxPU/7yRq0 Tu38BXnLq21WM+DKDpTQaFzi14PyVqGYe/VqyGKhkxN26pVneRnYHqJFwNaZtuOVaRBaPJQFcoz HdT3NZrIXkkx3Dp8XXMirWwoNUZkMkpiEk2olWb//L4JyBc8d2R/QF29mfPDbt/Xg18DsvajTWV VQjg1AaQiWWcKSMsTcp26FX7Xzz+nbvrTRyRClhyCObqYLc4
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_140902_917208_C3EB4EE1 
X-CRM114-Status: GOOD (  10.82  )
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

VGhlIE1vdG9yY29tbSBQaHkgY2FuIGJlIHRhbGtlZCB0byBvbiBtZGlvIGJyb2FkY2FzdCBhZGRy
ZXNzIDAsIGJ1dCB0aGUKYWN0dWFsbCBhZGRyZXNzIGlzIDMuIEFkYXB0IHRoZSByZWcgcHJvcGVy
dHkgYW5kIG5vZGUgbmFtZSBhY2NvcmRpbmdseS4KClNpZ25lZC1vZmYtYnk6IFV3ZSBLbGVpbmUt
S8O2bmlnIDx1d2VAa2xlaW5lLWtvZW5pZy5vcmc+Ci0tLQogYXJjaC9hcm02NC9ib290L2R0cy9y
b2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMgfCA1ICsrKy0tCiAxIGZpbGUgY2hhbmdlZCwg
MyBpbnNlcnRpb25zKCspLCAyIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzIGIvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKaW5kZXggN2JkMzJkMjMwYWQyLi43
MGU4ODc2OWUyMWMgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LXFuYXAtdHM0MzMuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LXFuYXAtdHM0MzMuZHRzCkBAIC00ODEsOSArNDgxLDEwIEBAIGVlcHJvbUA1NiB7CiB9Owog
CiAmbWRpbzAgewotCXJnbWlpX3BoeTA6IGV0aGVybmV0LXBoeUAwIHsKKwlyZ21paV9waHkwOiBl
dGhlcm5ldC1waHlAMyB7CisJCS8qIE1vdG9yY29tbSBZVDg1MjEgcGh5ICovCiAJCWNvbXBhdGli
bGUgPSAiZXRoZXJuZXQtcGh5LWllZWU4MDIuMy1jMjIiOwotCQlyZWcgPSA8MHgwPjsKKwkJcmVn
ID0gPDB4Mz47CiAJfTsKIH07CiAKLS0gCjIuNDcuMQoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
