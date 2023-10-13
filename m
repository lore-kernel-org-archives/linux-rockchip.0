Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4C048CDB482
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 21:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=D/N3CLZn9fqPFcjIF1e/dDv9GzWeJl9v0WwYHXdYRII=; b=Du9HhhG21sqGwE
	zFBuFZdt0qeV4ypG8agOb2SLG1j+l64hqFFG0b8gR8N8CumFKwzigCAxcARFa1zYmdcbvFqp5uOfN
	jdtbv85H8Nm4Wtv+fOygqR7pc8tSfsJJ1z1iqUgNWHcMbVATHJPm7Im96E5O/T57pH5xnjLF/TvP9
	WlkWLUiOULWPsnBLmxsS7ah6XkaMjRL+5NhyoruCTf1nNQzEg0WbJz1uEyCe2DlAN99aMvdKGLoE1
	SfCNVcT1na8tR15RXxiZXYDkdwLQtAzUVMXJg13sDa5Xcj5oJdOfV4QTPjCiHvlb92uwPsMpo/wS/
	4CwH6VupOhwWQhzeqnlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrQ58-004KoC-0K;
	Fri, 13 Oct 2023 21:52:30 +0000
Received: from hera.iit.uni-miskolc.hu ([193.6.5.4])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrQ53-004KnL-0g;
	Fri, 13 Oct 2023 21:52:27 +0000
Received: from localhost (localhost [127.0.0.1])
	by hera.iit.uni-miskolc.hu (Postfix) with ESMTP id 473FE13E;
	Fri, 13 Oct 2023 23:52:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
	iit.uni-miskolc.hu; h=content-transfer-encoding:content-type
	:content-type:mime-version:x-mailer:message-id:date:date:subject
	:subject:from:from:received:received; s=hera; t=1697233932; x=
	1699048333; bh=E6GGdU8NqUAeueW/49LZQZKoh1Ml+Xu2MiTlxVU/v5s=; b=t
	ITqHzmN8urDujkz/Yn1T8x+zlXEkpXj9dGIKGPA/Yu8AU/NeGQd2JDcEclISodCV
	81N6dqvbfxYIQhdx0DIHcB+SYqFxXbZl7z703SFbLS884E7M5cOelQVYMWo+wWod
	oxPdDEEyXH6XBN08Kbke7Y0yKuyEovq7MTwpIAOWIYK+QZJ1raGjgsgk8zt+zYZ8
	NhYy1kSCLKxxSbCSWR+siFEhPIksfyVwCI4HXKK7fSv6lbyGRx4dmahtR6MtKqjM
	MdtA70pqIWmfjsZpe6y88QEoIjNsT+mZ8jq7kzQf1xUfOKk+zFzpsiN+cE7tPvuu
	cJAK78n4EZGZ7e0lPhz9Q==
X-Virus-Scanned: Kamavis at iit.uni-miskolc.hu
Received: from hera.iit.uni-miskolc.hu ([127.0.0.1])
	by localhost (hera.iit.uni-miskolc.hu [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KuN4sTeSYG-T; Fri, 13 Oct 2023 23:52:12 +0200 (CEST)
Received: from liberty.hitronhub.home (unknown [IPv6:2a02:8109:a181:1400::3])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: szucst@iit.uni-miskolc.hu)
	by hera.iit.uni-miskolc.hu (Postfix) with ESMTPSA id 2E9F313C;
	Fri, 13 Oct 2023 23:52:11 +0200 (CEST)
From: =?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <szucst@iit.uni-miskolc.hu>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Christopher Obbard <chris.obbard@collabora.com>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@protonmail.ch>,
	Shreeya Patel <shreeya.patel@collabora.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: =?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <szucst@iit.uni-miskolc.hu>
Subject: [RESEND] arm64: dts: rockchip: Enable UART6 on rock-5b
Date: Fri, 13 Oct 2023 23:51:53 +0200
Message-ID: <20231013215208.81345-1-szucst@iit.uni-miskolc.hu>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_145225_912516_6CAD9D6A 
X-CRM114-Status: UNSURE (   8.56  )
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

RW5hYmxlIFVBUlQgbGluZXMgb24gUmFkeGEgUk9DSyA1IE1vZGVsIEIgTS4yIEtleSBFLgoKU2ln
bmVkLW9mZi1ieTogVGFtw6FzIFN6xbFjcyA8c3p1Y3N0QGlpdC51bmktbWlza29sYy5odT4KLS0t
CiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cyB8IDYgKysr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU4OC1yb2NrLTViLmR0cwppbmRleCAzOTJhYzc4M2MzYWQuLmVh
MWUzZDA5ZWE2MiAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
ODgtcm9jay01Yi5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgt
cm9jay01Yi5kdHMKQEAgLTM3Nyw2ICszNzcsMTIgQEAgJnNkaW8gewogCXN0YXR1cyA9ICJva2F5
IjsKIH07CiAKKyZ1YXJ0NiB7CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0IjsKKwlwaW5jdHJs
LTAgPSA8JnVhcnQ2bTFfeGZlciAmdWFydDZtMV9jdHNuICZ1YXJ0Nm0xX3J0c24+OworCXN0YXR1
cyA9ICJva2F5IjsKK307CisKICZzcGkyIHsKIAlzdGF0dXMgPSAib2theSI7CiAJYXNzaWduZWQt
Y2xvY2tzID0gPCZjcnUgQ0xLX1NQSTI+OwotLSAKMi40Mi4wCgoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0
CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVh
ZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
