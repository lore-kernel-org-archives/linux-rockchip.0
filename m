Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2F64AC3DA63
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Jul 2024 19:56:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wHEhululK8rVxO5HJFn2F1iDCQlNtaqYI6Dt0Kaz9fk=; b=SygArCEX9t/zkf
	wRXnA5h41fN13U1QFsrRaTXGbzJH0DbKvp01xWY0j3ZwIy586L7MEEl9UTi8mIvYsIp8FRw5/Jvc1
	QnJBmXvGERzn/IBBX8IZQiIaTIthfMxmb7iJlLJpvAniJwVQzYQ2TwQx11utnatNshnGglKxo1ZWF
	NF5l33h3qVA+TAWhUbj2AaQpZ7l7/jGV+qi/vgjgYjXJUwDAFLj/Dju37z1e3wYjw/0sPQpL2FoRD
	J/FJbJUNxs2rfYfciiJ5DwtOickg2hda6yO5/73jdpDkRBE+pASonzPdmysOHWYFQAQG+iwE574IW
	QsGXEvcssE2N3q5p8Ouw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLd1-0000000DO8e-1Szy;
	Tue, 23 Jul 2024 19:56:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWLbu-0000000DNcL-19SR;
	Tue, 23 Jul 2024 19:55:48 +0000
Received: from i5e860cd3.versanet.de ([94.134.12.211] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sWLbs-0005iD-Co; Tue, 23 Jul 2024 21:55:44 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: ukleinek@debian.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 02/14] arm64: dts: rockchip: enable second PCIe controller on the Qnap-TS433
Date: Tue, 23 Jul 2024 21:55:26 +0200
Message-Id: <20240723195538.1133436-3-heiko@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240723195538.1133436-1-heiko@sntech.de>
References: <20240723195538.1133436-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240723_125546_358737_BA06BB03 
X-CRM114-Status: GOOD (  13.69  )
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

VGhlIFRTNDMzIHVzZXMgYm90aCBwY2llIGNvbnRyb2xsZXJzIGZvciBzYXRhIGFuZCB0aGUgMm5k
IG5ldHdvcmsKaW50ZXJmYWNlLiBTZXQgdGhlIG5lZWRlZCBkYXRhLWxhbmVzIGluIHRoZSBwY2ll
MyBwaHkgYW5kIGVuYWJsZQp0aGUgc2Vjb25kIHBjaWUgY29udHJvbGxlciwgYXMgd2VsbCBhcyBy
ZW1vdmUgdGhlIGJpZnVyY2F0aW9uIGNvbW1lbnQuCgpUZXN0ZWQtYnk6IFV3ZSBLbGVpbmUtS8O2
bmlnIDx1a2xlaW5la0BkZWJpYW4ub3JnPgpTaWduZWQtb2ZmLWJ5OiBIZWlrbyBTdHVlYm5lciA8
aGVpa29Ac250ZWNoLmRlPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4
LXFuYXAtdHM0MzMuZHRzIHwgMTAgKysrKysrKysrLQogMSBmaWxlIGNoYW5nZWQsIDkgaW5zZXJ0
aW9ucygrKSwgMSBkZWxldGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszNTY4LXFuYXAtdHM0MzMuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjgtcW5hcC10czQzMy5kdHMKaW5kZXggMDdiNGYwOTVkNzY2YS4uOWJmOWMzYjY1
Y2EzMSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5h
cC10czQzMy5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcW5h
cC10czQzMy5kdHMKQEAgLTc4LDE3ICs3OCwyNSBAQCByZ21paV9waHkwOiBldGhlcm5ldC1waHlA
MCB7CiB9OwogCiAmcGNpZTMwcGh5IHsKKwlkYXRhLWxhbmVzID0gPDEgMj47CiAJc3RhdHVzID0g
Im9rYXkiOwogfTsKIAogLyogQ29ubmVjdGVkIHRvIGEgSk1pY3JvbiBBSENJIFNBVEEgY29udHJv
bGxlciAqLwogJnBjaWUzeDEgewotCS8qIFRoZSBkb3duc3RyZWFtIGR0cyBoYXM6IHJvY2tjaGlw
LGJpZnVyY2F0aW9uLCBYWFg6IGZpbmQgb3V0IHdoYXQgdGhpcyBpcyBhYm91dCAqLwogCXJlc2V0
LWdwaW9zID0gPCZncGlvMCBSS19QQzcgR1BJT19BQ1RJVkVfSElHSD47CiAJdnBjaWUzdjMtc3Vw
cGx5ID0gPCZ2Y2MzdjNfcGNpZT47CiAJc3RhdHVzID0gIm9rYXkiOwogfTsKIAorLyogQ29ubmVj
dGVkIHRvIHRoZSAyLjVHIE5JQyBmb3IgdGhlIHVwcGVyIG5ldHdvcmsgamFjayAqLworJnBjaWUz
eDIgeworCW51bS1sYW5lcyA9IDwxPjsKKwlyZXNldC1ncGlvcyA9IDwmZ3BpbzIgUktfUEQ2IEdQ
SU9fQUNUSVZFX0hJR0g+OworCXZwY2llM3YzLXN1cHBseSA9IDwmdmNjM3YzX3BjaWU+OworCXN0
YXR1cyA9ICJva2F5IjsKK307CisKICZzZGhjaSB7CiAJYnVzLXdpZHRoID0gPDg+OwogCW1heC1m
cmVxdWVuY3kgPSA8MjAwMDAwMDAwPjsKLS0gCjIuMzkuMgoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
