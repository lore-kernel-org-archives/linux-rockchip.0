Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 13E14CDB47E
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Oct 2023 19:38:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:From:To
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s07QA4DSqYIq7fbOA2zQJELptaA9mDgGkhDtcp76KHU=; b=Vp7QuZ0KTZ+u+V
	k0I0f93+PMAITSkQBSXRREdF2I9RVdAygGAUovrkweIWxXsQXNGixKyag69EXIbIiWDQtJf20aJPr
	PhXAcYgn+fPQzqkhNFM3UcB2jVgkcRxryqUfGYcLOt6suiIliVuCIl3Elg8FIL1gbWE9j5uB06fx+
	JwYSEBNT5zVSdPDSACsDjkCezRSX89dUfqcnD9GSfGqQs6AlhKDg0jQDPvAfdLEUaytQGinkesBUl
	aSEtVRiGODPZ5gWNo1Dt5BA+ujz6PZaXaKw4Z/iIdf2FB23PfIlE0G1WwHwNc5QCLp5ioU7jDBz7j
	wqzMRHEbYu4IzWahGNJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qrNyt-0049HX-1D;
	Fri, 13 Oct 2023 19:37:55 +0000
Received: from mail-40133.protonmail.ch ([185.70.40.133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qrNyo-0049GO-1p
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Oct 2023 19:37:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1697225864; x=1697485064;
	bh=wPzipRewpW3dUMQiQ9R1lRpOCZ11YqKIXflefzzg4qc=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=k5wbz9InWJKvgw8yUIQlXlx36hd27bzK76LimxvxnOAo9MO7DrwrR+DxK4qMi4QJD
	 iXBEftVD81gU+B1jBpovrZ5HNcJu6PqVjz8cFvwPtNQJXs07s9G/K6lubClsJ/EZLP
	 exk6GBDtFv/L0V9TxzDNs8eslI2AXRLtEkdkBKnBMIUc6hWx4P6ebEjyviw8VRBC46
	 OE87wwUc6bEOeNxWQlGr2IOHUrCN99UgUqu/uhqv5WDmV1GgAfjYo9hKlwsW8sqbda
	 x2O8LpRxyGhFV5pEMVlSpTtOKFlmCHQzEbmeUmMyCkBdG+odEzVpS6FGbUfLHV/EeL
	 wrQcgZuen6pcQ==
Date: Fri, 13 Oct 2023 19:37:30 +0000
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Christopher Obbard <chris.obbard@collabora.com>, =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>, Shreeya Patel <shreeya.patel@collabora.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
From: =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>
Subject: [PATCH] arm64: dts: rockchip: Enable UART6 on rock-5b
Message-ID: <20231013193722.78630-1-tszucs@protonmail.ch>
Feedback-ID: 53029:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231013_123750_779353_A9949852 
X-CRM114-Status: UNSURE (   5.33  )
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
bmVkLW9mZi1ieTogVGFtw6FzIFN6xbFjcyA8dHN6dWNzQHByb3Rvbm1haWwuY2g+Ci0tLQogYXJj
aC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMgfCA2ICsrKysrKwog
MSBmaWxlIGNoYW5nZWQsIDYgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQv
Ym9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2stNWIuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0
cy9yb2NrY2hpcC9yazM1ODgtcm9jay01Yi5kdHMKaW5kZXggMzkyYWM3ODNjM2FkLi5lYTFlM2Qw
OWVhNjIgMTAwNjQ0Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJv
Y2stNWIuZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTg4LXJvY2st
NWIuZHRzCkBAIC0zNzcsNiArMzc3LDEyIEBAICZzZGlvIHsKIAlzdGF0dXMgPSAib2theSI7CiB9
OwogCismdWFydDYgeworCXBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7CisJcGluY3RybC0wID0g
PCZ1YXJ0Nm0xX3hmZXIgJnVhcnQ2bTFfY3RzbiAmdWFydDZtMV9ydHNuPjsKKwlzdGF0dXMgPSAi
b2theSI7Cit9OworCiAmc3BpMiB7CiAJc3RhdHVzID0gIm9rYXkiOwogCWFzc2lnbmVkLWNsb2Nr
cyA9IDwmY3J1IENMS19TUEkyPjsKLS0gCjIuNDIuMAoKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
