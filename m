Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 176A0CFD376
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Nov 2025 16:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0pkp/EQJmTRSph76Ck7uDIvi3kTK7d2FFcod/SIy15U=; b=Zwz82jPT91L/e8
	W4O54QDZSyzLYa28c+9WN9nYGQ2PQFbLq2bwNMfWRcruTnH1Zu8W48bGfNqUv8cXUoR2rPfuMQ/7X
	t7KBmSnefkXa2VOfnkRRxxUV9XmzNis0Fr4NRslqTwG4LhR7Mvn5ko95zX85wNts3lhmYFO/Y6h+Q
	EvmtHWGvDO8zijqqBn1+UmnOkkzEAIwpsRfbV8DJ3JkFvEkDABS7/dSLH2vWbKmeZMDSFZN8t5+G6
	kGpBGcLjUhDhNK1MRPChVtj6S1srbMKam3mT53IXEVlDfSU4ex0QumuDR5FUZe5X9YUENbhMZzeVM
	GwZDQzjRvEIa1xCaUrfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPk3q-00000002Pgf-15qB;
	Sun, 30 Nov 2025 16:14:06 +0000
Received: from mail.jakse.fr ([45.81.62.48])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vPk3m-00000002Pft-3iOg;
	Sun, 30 Nov 2025 16:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jakse.fr; s=default;
	t=1764519230; bh=1Y5LGb3g31rjjIXxiw5Jdr35UaFiGP0OuDnqqXz+mjE=;
	h=From:To:Cc:Subject:Date:From;
	b=LuiDZvuuhNnGg0sLq1wfUtOo/qR/8tevJmuGB8ogaSX7N8Wl8iSvIJSMM9YcR8YWw
	 sVb2IZqacR9cRCL5mD+Tf6pJU1ircz/soUQPv206H1tyr2cedv+2mETHsLSYBH7bnV
	 Lpt2/E+/LBN5B7ldPqMKN/mRB9HRX+7Kn9aISmXQ=
Received: from rigel.lan (rigel.lan [IPv6:2001:912:1ac0:2e00::9bd])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature ECDSA (secp384r1) server-digest SHA384)
	(No client certificate requested)
	by mail.jakse.fr (Postfix) with ESMTPSA id 8B83EEA12BF;
	Sun, 30 Nov 2025 17:13:50 +0100 (CET)
From: =?UTF-8?q?Rapha=C3=ABl=20Jakse?= <raphael.kernel@jakse.fr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	heiko@sntech.de
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	=?UTF-8?q?Rapha=C3=ABl=20Jakse?= <raphael.kernel@jakse.fr>
Subject: [PATCH] arm64: dts: rockchip: Fix Bluetooth on the RockPro64 board
Date: Sun, 30 Nov 2025 17:12:59 +0100
Message-ID: <20251130161259.9828-1-raphael.kernel@jakse.fr>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251130_081403_386171_B4127E8F 
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

VGhlIFJvY2tQcm82NCBib2FyZCBoYXMgYW4gb3B0aW9uYWwgQkNNNDM0NUM1IEJsdWV0b290aCBk
ZXZpY2Ugb24gVUFSVDAuCgpUaGlzIHBhdGNoIGZpeGVzIGF1ZGlvIHN0dXR0ZXJzIGJ5IHNldHRp
bmcgaXRzIGNvcnJlY3QgbWF4LXNwZWVkIGFuZApjb21wYXRpYmxlIHByb3BlcnRpZXMuCgpTaWdu
ZWQtb2ZmLWJ5OiBSYXBoYcOrbCBKYWtzZSA8cmFwaGFlbC5rZXJuZWxAamFrc2UuZnI+Ci0tLQog
YXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LXYyLmR0cyB8IDcg
KysrKysrKwogYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0
cyAgICB8IDcgKysrKysrKwogMiBmaWxlcyBjaGFuZ2VkLCAxNCBpbnNlcnRpb25zKCspCgpkaWZm
IC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LXYy
LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC12Mi5k
dHMKaW5kZXggMzA0ZTNjNTEzOTFjLi44ODNkOWJjZmU3OTIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJt
NjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC12Mi5kdHMKKysrIGIvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LXYyLmR0cwpAQCAtMjgsMyAr
MjgsMTAgQEAgZXM4MzE2X3AwXzA6IGVuZHBvaW50IHsKIAkJfTsKIAl9OwogfTsKKworJnVhcnQw
IHsKKwlibHVldG9vdGggeworCQljb21wYXRpYmxlID0gImJyY20sYmNtNDM0NWM1IjsKKwkJbWF4
LXNwZWVkID0gPDE1MDAwMDA+OworCX07Cit9OwpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290
L2R0cy9yb2NrY2hpcC9yazMzOTktcm9ja3BybzY0LmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMv
cm9ja2NoaXAvcmszMzk5LXJvY2twcm82NC5kdHMKaW5kZXggNGI0MjcxNzgwMGY3Li5hZTNlZTkx
ZGJhMmYgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LXJv
Y2twcm82NC5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazMzOTktcm9j
a3BybzY0LmR0cwpAQCAtMjgsMyArMjgsMTAgQEAgZXM4MzE2X3AwXzA6IGVuZHBvaW50IHsKIAkJ
fTsKIAl9OwogfTsKKworJnVhcnQwIHsKKwlibHVldG9vdGggeworCQljb21wYXRpYmxlID0gImJy
Y20sYmNtNDM0NWM1IjsKKwkJbWF4LXNwZWVkID0gPDE1MDAwMDA+OworCX07Cit9OwotLSAKMi41
Mi4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGlu
dXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2Nr
Y2hpcAo=
