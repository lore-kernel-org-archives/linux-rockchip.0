Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EBA2AC46CA1
	for <linux-rockchip@archiver.kernel.org>; Mon, 18 Sep 2023 07:43:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K29HsIRaQc19sbmjmguC8KZvahTFM8pCRkfQJbBX9vo=; b=Dx6wCzCHShLeq/
	8GE263LqxVje7wNPQBk8eHrLJ/zbUOTrGA7xZOmXeEiIqeTbzbcylEKnYAvtBuM8z/MDdOlZ0YqnF
	Kf+fjfZDanRrIwvk/vC9HBy15VuiTN2YSZ5MBjCdpa1zeB2qWv7gPrql8Xv7AjDee5yCskxmeNTqJ
	eSBpYxmAEde6mRIxp5LBaTIhPjLSvt3lg4rxqUnKCTVq8LColAzzpZjjHUpJcO8mKbI6Ey3Wjg5Mg
	+X2nCJqhxZpNYFcVxQhax8xNVDsk31TGdcnopBASSC9U7T6tVeHGwAWcMZjN9uZ5QTe56TkoyUhv+
	QuTHaRtoI/QAQhXU/2kQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8ul-00ElWX-0E;
	Mon, 18 Sep 2023 07:43:27 +0000
Received: from relay1-d.mail.gandi.net ([217.70.183.193])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qi8ue-00ElU4-1B;
	Mon, 18 Sep 2023 07:43:22 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 90B2624000D;
	Mon, 18 Sep 2023 07:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arinc9.com; s=gm1;
	t=1695022997;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=4o9b0EdEagI/FVxfPGBCEgC2OjH+6DvLWQZYPHDD6DU=;
	b=UXqvSR9xSpiieP1etH1Vyl2cSN/ENa0irafGLBjjr8QSsr1PCkGhBMiU19eEQsmi7wjGlS
	JSrBrFRbzCmWrMaDy4xQTUlu3HRYtpwxStzFt5QMYzy3Cgk0jsthfGcxsfEH6kbXCzkKED
	DLtadljofsB8byIw7Ckm3wr8e5HSVSGZ/g0mvnqawmsXO/qGOFhQldKwQ++yAVsA/1PNBU
	Na8JGAVAQ15ySbgTuWyDPqv0M2tNjtlXkCPaWgo5VM73rw/MFxpy0ga/jXzOUo0LNoBXDR
	6SkQ5Esi68A82g2pQCH0pgdUVgS/Mjq5M8oBEZqc0iK2R9w5e1foPk6merh1GQ==
From: =?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	=?UTF-8?q?Ar=C4=B1n=C3=A7=20=C3=9CNAL?= <arinc.unal@arinc9.com>,
	Frank Wunderlich <frank-w@public-files.de>,
	David Heidelberg <david@ixit.cz>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Alex Riabchenko <d3adme4t@gmail.com>
Cc: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: replace Bananapi with Banana Pi
Date: Mon, 18 Sep 2023 10:43:01 +0300
Message-Id: <20230918074301.74528-1-arinc.unal@arinc9.com>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
X-GND-Sasl: arinc.unal@arinc9.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_004320_538131_1C341E7E 
X-CRM114-Status: UNSURE (   9.61  )
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

VGhlIGJyYW5kIG5hbWUgaXMgQmFuYW5hIFBpLiBSZXBsYWNlIGFueSBtZW50aW9uIG9mIEJhbmFu
YXBpIHdpdGggQmFuYW5hClBpLgoKU2lnbmVkLW9mZi1ieTogQXLEsW7DpyDDnE5BTCA8YXJpbmMu
dW5hbEBhcmluYzkuY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIy
LWJhbmFuYXBpLWJwaS1yNjQuZHRzIHwgMiArLQogYXJjaC9hcm02NC9ib290L2R0cy9tZWRpYXRl
ay9tdDc5ODZhLWJhbmFuYXBpLWJwaS1yMy5kdHMgfCAyICstCiBhcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3JrMzU2OC1icGktcjItcHJvLmR0cyAgICAgICB8IDIgKy0KIDMgZmlsZXMgY2hh
bmdlZCwgMyBpbnNlcnRpb25zKCspLCAzIGRlbGV0aW9ucygtKQoKZGlmZiAtLWdpdCBhL2FyY2gv
YXJtNjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRzIGIvYXJj
aC9hcm02NC9ib290L2R0cy9tZWRpYXRlay9tdDc2MjItYmFuYW5hcGktYnBpLXI2NC5kdHMKaW5k
ZXggZjJjYzk1ZDRhMzQzLi42YjRlMzljNjAwYWYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9v
dC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRzCisrKyBiL2FyY2gvYXJt
NjQvYm9vdC9kdHMvbWVkaWF0ZWsvbXQ3NjIyLWJhbmFuYXBpLWJwaS1yNjQuZHRzCkBAIC0xNCw3
ICsxNCw3IEBACiAjaW5jbHVkZSAibXQ2MzgwLmR0c2kiCiAKIC8gewotCW1vZGVsID0gIkJhbmFu
YXBpIEJQSS1SNjQiOworCW1vZGVsID0gIkJhbmFuYSBQaSBCUEktUjY0IjsKIAljaGFzc2lzLXR5
cGUgPSAiZW1iZWRkZWQiOwogCWNvbXBhdGlibGUgPSAiYmFuYW5hcGksYnBpLXI2NCIsICJtZWRp
YXRlayxtdDc2MjIiOwogCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVr
L210Nzk4NmEtYmFuYW5hcGktYnBpLXIzLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvbWVkaWF0
ZWsvbXQ3OTg2YS1iYW5hbmFwaS1icGktcjMuZHRzCmluZGV4IGFmNGE0MzA5YmRhNC4uZDczOWVi
MGM3ZTU2IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210Nzk4NmEt
YmFuYW5hcGktYnBpLXIzLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL21lZGlhdGVrL210
Nzk4NmEtYmFuYW5hcGktYnBpLXIzLmR0cwpAQCAtMTUsNyArMTUsNyBAQAogI2luY2x1ZGUgIm10
Nzk4NmEuZHRzaSIKIAogLyB7Ci0JbW9kZWwgPSAiQmFuYW5hcGkgQlBJLVIzIjsKKwltb2RlbCA9
ICJCYW5hbmEgUGkgQlBJLVIzIjsKIAljaGFzc2lzLXR5cGUgPSAiZW1iZWRkZWQiOwogCWNvbXBh
dGlibGUgPSAiYmFuYW5hcGksYnBpLXIzIiwgIm1lZGlhdGVrLG10Nzk4NmEiOwogCmRpZmYgLS1n
aXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1icGktcjItcHJvLmR0cyBi
L2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LWJwaS1yMi1wcm8uZHRzCmluZGV4
IGY5MTI3ZGRmYmI3ZC4uYTc0ZGIwM2E4Njk4IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1icGktcjItcHJvLmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1icGktcjItcHJvLmR0cwpAQCAtMTIsNyArMTIsNyBAQAogI2lu
Y2x1ZGUgInJrMzU2OC5kdHNpIgogCiAvIHsKLQltb2RlbCA9ICJCYW5hbmFwaS1SMiBQcm8gKFJL
MzU2OCkgRERSNCBCb2FyZCI7CisJbW9kZWwgPSAiQmFuYW5hIFBpIEJQSS1SMiBQcm8gKFJLMzU2
OCkgRERSNCBCb2FyZCI7CiAJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazM1NjgtYnBpLXIycHJv
IiwgInJvY2tjaGlwLHJrMzU2OCI7CiAKIAlhbGlhc2VzIHsKLS0gCjIuMzkuMgoKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
