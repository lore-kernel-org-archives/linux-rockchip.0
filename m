Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D903ECD5BB1
	for <linux-rockchip@archiver.kernel.org>; Wed, 20 May 2026 22:46:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q9bl+rJwGPZTlYRDNnDNM2/ZyK/dJ4SaYw6iXqQy8q0=; b=dXxq6twy5y9DF9
	bTvbUh3WKcjh9g2S2+EIkkdeke6I/ECtgKhwjkmUwu5B+BOPSfAZFwus1OZAsVNYvwIfX5REQWWui
	fM/Q2cdeWYe+bLJB1jS9V17jNYNyWTP+0l1+P5vC3aKUeZGT2BRyskfxKwYgUqyNMsh5qTWe+q8Vx
	Q5t26ttGUysZHiLn/8NE4+tSi1+UelHFCvfx6wNa7nefTWpEIK67+ZVFYX0hS1rTcKUQy1MvIKBcA
	yvOxeqICuwqr05IfwtWDnkVigHJIF01bNtSjERqYK6VRjpNoAy+CdUVS59RqHu3i9Lan95rNoQ/qG
	bgI48Jd2yRwEa1Q0M2oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPpgN-0000000635P-4BFR;
	Wed, 20 May 2026 22:46:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPpfQ-000000061la-1cLz
	for linux-rockchip@bombadil.infradead.org;
	Wed, 20 May 2026 22:45:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=l8VtRLFbldF/8xI5Y5uiEJgtiC4l9dUxQ/fkLD84C6U=; b=iftmcJxInG3oKeaTXzNhlbwGP2
	A41k9gi2D/AiiDkMhWuO7W6Ig0IH79BovBZt5mZSn7nt5ebxiCxcggSHp8AMvSYyHxxIS00JkRBV0
	M4tK/eD2NcQzIRdQoPSOUXLX7ExMTclyBjoDQnXPhmw8d69Tx3sMT8vlCnNISsXh3RSzeZGv0wbNU
	iiLU/wjBhlynKBjZbe4OVIMpGjBefbPMuPwMjtYmTytV5Hg6o9ASf+m0MwmGPMx8qbhM34eNBUR2F
	rjNY8P1GW8BYtHdFREl7bQ9J63OxcMkH7zfXE44PE6dIjnWTv6sa0ka1sC0uz1LuuCoB8OhQU2miP
	aDJCBQHg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPpfJ-00000000VCB-46CE
	for linux-rockchip@lists.infradead.org;
	Wed, 20 May 2026 22:45:30 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=peter.mobile.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.pueschel@pengutronix.de>)
	id 1wPper-0005vy-M8; Thu, 21 May 2026 00:44:58 +0200
From: =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>
Date: Thu, 21 May 2026 00:44:26 +0200
Subject: [PATCH v7 21/28] media: rockchip: rga: share the interrupt when an
 external iommu is used
MIME-Version: 1.0
Message-Id: <20260521-spu-rga3-v7-21-3f33e8c7145f@pengutronix.de>
References: <20260521-spu-rga3-v7-0-3f33e8c7145f@pengutronix.de>
In-Reply-To: <20260521-spu-rga3-v7-0-3f33e8c7145f@pengutronix.de>
To: Jacob Chen <jacob-chen@iotwrt.com>, 
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, 
 Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Hans Verkuil <hverkuil@kernel.org>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, kernel@pengutronix.de, nicolas@ndufresne.ca, 
 sebastian.reichel@collabora.com, m.tretter@pengutronix.de, 
 p.zabel@pengutronix.de, 
 =?utf-8?q?Sven_P=C3=BCschel?= <s.pueschel@pengutronix.de>, 
 Michael Olbrich <m.olbrich@pengutronix.de>, 
 Nicolas Dufresne <nicolas.dufresne@collabora.com>
X-Mailer: b4 0.15.2
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.pueschel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_234527_109012_6CBBCCC9 
X-CRM114-Status: GOOD (  11.70  )
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

RnJvbTogTWljaGFlbCBPbGJyaWNoIDxtLm9sYnJpY2hAcGVuZ3V0cm9uaXguZGU+CgpUaGUgUkdB
MyBhbmQgdGhlIGNvcnJlc3BvbmRpbmcgaW9tbXUgc2hhcmUgdGhlIGludGVycnVwdC4gU28gaW4g
dGhhdApjYXNlLCByZXF1ZXN0IGEgc2hhcmVkIGludGVycnVwdCBzbyB0aGF0IHRoZSBpb21tdSBk
cml2ZXIgY2FuIHJlcXVlc3QKaXQgYXMgd2VsbC4KClNpZ25lZC1vZmYtYnk6IE1pY2hhZWwgT2xi
cmljaCA8bS5vbGJyaWNoQHBlbmd1dHJvbml4LmRlPgpSZXZpZXdlZC1ieTogTmljb2xhcyBEdWZy
ZXNuZSA8bmljb2xhcy5kdWZyZXNuZUBjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBTdmVu
IFDDvHNjaGVsIDxzLnB1ZXNjaGVsQHBlbmd1dHJvbml4LmRlPgotLS0KIGRyaXZlcnMvbWVkaWEv
cGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jIHwgMyArKy0KIDEgZmlsZSBjaGFuZ2VkLCAyIGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9kcml2ZXJzL21lZGlhL3Bs
YXRmb3JtL3JvY2tjaGlwL3JnYS9yZ2EuYyBiL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2No
aXAvcmdhL3JnYS5jCmluZGV4IGUzYzk5YzNmN2M1YmUuLmNkYTNjZWNiMWNlOGMgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCisrKyBiL2RyaXZl
cnMvbWVkaWEvcGxhdGZvcm0vcm9ja2NoaXAvcmdhL3JnYS5jCkBAIC03NjcsNyArNzY3LDggQEAg
c3RhdGljIGludCByZ2FfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldikKIAkJZ290
byBlcnJfcHV0X2NsazsKIAl9CiAKLQlyZXQgPSBkZXZtX3JlcXVlc3RfaXJxKHJnYS0+ZGV2LCBp
cnEsIHJnYV9pc3IsIDAsCisJcmV0ID0gZGV2bV9yZXF1ZXN0X2lycShyZ2EtPmRldiwgaXJxLCBy
Z2FfaXNyLAorCQkJICAgICAgIHJnYV9oYXNfaW50ZXJuYWxfaW9tbXUocmdhKSA/IDAgOiBJUlFG
X1NIQVJFRCwKIAkJCSAgICAgICBkZXZfbmFtZShyZ2EtPmRldiksIHJnYSk7CiAJaWYgKHJldCA8
IDApIHsKIAkJZGV2X2VycihyZ2EtPmRldiwgImZhaWxlZCB0byByZXF1ZXN0IGlycVxuIik7Cgot
LSAKMi41NC4wCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1yb2NrY2hpcAo=
