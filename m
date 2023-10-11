Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B8688CDB47F
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Oct 2023 19:15:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:From
	:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SJCInVQxHgSfaHhxcse9qTeIpzDXZJrz177HzurfQVs=; b=Q9aAxam543NlYu
	S40Ek49FHpqfwlGW/8I6z87yZpB32iHNaJjbi/uoazTnyETBUpSgIF+KcFPZ/ZMdH2ztFJC4RG/9t
	omy3Xg+fX+Bi/6UyFV4Zj5yF1dZI4lHZEEFoOqsB9z+zZTbMJ1cXukiPeaWIzghgB2Rd8btSmdppS
	nCNKhhRwefXk0FUntJc61Zcgsc1phdpu1JwWGsS4mbTL7qV5RQV3ByMx/6dCN/q8cSQNgO4ga4J5g
	fRVadTU/dvo00RU/Y3FXv7OFn/niZVyQS7Ou2+kaaJwnvd3fLwSG/xNf/kjtmbEz6DODUmbJU9/KP
	3Zb1DjjBDL2N6f9lq3NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qqefy-00GXBa-1v;
	Wed, 11 Oct 2023 19:15:22 +0000
Received: from mail-4322.protonmail.ch ([185.70.43.22])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qqefu-00GXA4-2X
	for linux-rockchip@lists.infradead.org;
	Wed, 11 Oct 2023 19:15:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1697051713; x=1697310913;
	bh=EBTFFd6IGBPeF9S/93E4EoonIWn2TeNSGVG4hjiL2XI=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=TaUooCrLMZjJ5emzXcPY2dspBqoyKGE0bp3KQHTFObjQeEE6MgTt0ypDzZLjcpvon
	 KKugtgLjchsQE/B7Pi4ZUDAQ4TRz9ippAIqqKglzgVuGngs1xWN/OZbKF1xKLp7LfZ
	 DK9Gn9eBsi5n4MHOEES7zdX7nxcDL2Ecl9bn7RisDoOkPcz11zIKe8a5D6ZQy93jOK
	 r3J0zfi5qJWrYJs/W4j5OSDCuVemPulClxNhVMZZd19AGpI0+OISzCOBObICf2Mnq/
	 pXK68/GjQVkN3w6oyXyJuf6g935Yzq+Sbeh0/BalAuJMgea/kXx2bxiBuEPJZiCVw0
	 6bULNdJPDy1ug==
Date: Wed, 11 Oct 2023 19:14:56 +0000
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Michael Riesch <michael.riesch@wolfvision.net>, Chukun Pan <amadeus@jmu.edu.cn>, Anand Moon <linux.amoon@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, Shengyu Qu <wiagn233@outlook.com>, Jagan Teki <jagan@amarulasolutions.com>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
From: =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>
Cc: =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>
Subject: [PATCH] arm64: dts: rockchip: Add missing sdmmc2 SDR rates to rock-3a
Message-ID: <20231011191448.58936-1-tszucs@protonmail.ch>
Feedback-ID: 53029:user:proton
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231011_121518_979083_79170B7E 
X-CRM114-Status: UNSURE (   6.89  )
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

QWRkIG1pc3NpbmcgVUhTLUkgU0RSIHJhdGVzIHRvIHNkbW1jMi4gQWRkIGV4cGxpY2l0IGFsaWFz
IGFzIG1tYzIgd2hpbGUgYXQgaXQuCkl0IHdvdWxkIGJlIGdvb2QgdG8gaGF2ZSBtYXRjaGluZyB0
aW1pbmdzIGVuYWJsZWQgaW4gY2FzZSBzbG93ZXIgU0RJTyBkZXZpY2VzCmFyZSBlbmNvdW50ZXJl
ZC4KClNpZ25lZC1vZmYtYnk6IFRhbcOhcyBTesWxY3MgPHRzenVjc0Bwcm90b25tYWlsLmNoPgot
LS0KIGFyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2EuZHRzIHwgNCAr
KysrCiAxIGZpbGUgY2hhbmdlZCwgNCBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvYXJjaC9h
cm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgtcm9jay0zYS5kdHMgYi9hcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNhLmR0cwppbmRleCBlMDVhYjExOTgxZjUuLmE1
ZTk3NGVhNjU5ZSAxMDA2NDQKLS0tIGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1
Njgtcm9jay0zYS5kdHMKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1Njgt
cm9jay0zYS5kdHMKQEAgLTE1LDYgKzE1LDcgQEAgYWxpYXNlcyB7CiAJCWV0aGVybmV0MCA9ICZn
bWFjMTsKIAkJbW1jMCA9ICZzZGhjaTsKIAkJbW1jMSA9ICZzZG1tYzA7CisJCW1tYzIgPSAmc2Rt
bWMyOwogCX07CiAKIAljaG9zZW46IGNob3NlbiB7CkBAIC03NDcsNiArNzQ4LDkgQEAgJnNkbW1j
MiB7CiAJbm9uLXJlbW92YWJsZTsKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0
cmwtMCA9IDwmc2RtbWMybTBfYnVzNCAmc2RtbWMybTBfY21kICZzZG1tYzJtMF9jbGs+OworCXNk
LXVocy1zZHIxMjsKKwlzZC11aHMtc2RyMjU7CisJc2QtdWhzLXNkcjUwOwogCXNkLXVocy1zZHIx
MDQ7CiAJdm1tYy1zdXBwbHkgPSA8JnZjYzN2M19zeXM+OwogCXZxbW1jLXN1cHBseSA9IDwmdmNj
XzF2OD47Ci0tIAoyLjQyLjAKCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
