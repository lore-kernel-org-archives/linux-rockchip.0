Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3DD54ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Sep 2022 12:00:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J3kSfJmRbiCvUZ0ys8qBNTe0Hb/1Krq1ytXtOt6vCds=; b=4BoRFwTEShvAwr
	ylgECbKTzCXK/EUzIAKZsooFvruOujzTthwD5Ce+0JfB+8pFNs2HzIth63RoA7q1UqYSy6CVA1nI7
	wPVbzmzcoY4X4JKE14h+FWRzPk3iBajtoNf2bzt3d0Y3U3IeLAlO+7nRcdfMQFSp1MZYjzS79YDHv
	XYuy2S9/pSE82VUVs5f8/a/cm1jYByBhE31fQ6ueEAyk56yzUZh7RVf7d2VoEYZETc6AdmM4PQDKe
	hEv8XWlNBnnCl66oZPItc6w4kUvcCTM4CCG4uKFBdNt2RFYTIOIjLkpRS/ceq+Yw0b+SIfm6xz36c
	0DopPGi6pyBzaD4gdbBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVAlP-001gMx-OM; Mon, 05 Sep 2022 11:59:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9D7-0005Q6-3E; Mon, 05 Sep 2022 10:20:15 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oV9Cz-0005Nu-5q; Mon, 05 Sep 2022 12:20:01 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Jagan Teki <jagan@amarulasolutions.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amarula@amarulasolutions.com,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Date: Mon,  5 Sep 2022 12:19:59 +0200
Message-Id: <166237318680.2461447.14682764803345384227.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220902065057.97425-1-jagan@amarulasolutions.com>
References: <20220902065057.97425-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_032012_410340_C5D0D9D5 
X-CRM114-Status: UNSURE (   9.66  )
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

T24gRnJpLCAyIFNlcCAyMDIyIDEyOjIwOjU1ICswNTMwLCBKYWdhbiBUZWtpIHdyb3RlOgo+IERv
Y3VtZW50IHRoZSBkdC1iaW5kaW5ncyBmb3IgUmFkeGEgUk9DSyA0QysgU0JDLgo+IAo+IEtleSBk
aWZmZXJlbmNlcyBvZiA0QysgY29tcGFyZWQgdG8gcHJldmlvdXPCoFJPQ0sgUGkgNC4KPiAtIFJv
Y2tjaGlwIFJLMzM5OS1UIFNvQwo+IC0gRFAgZnJvbSA0QyByZXBsYWNlZCB3aXRoIG1pY3JvIEhE
TUkgMktANjBmcHMKPiAtIDQtbGFuZSBNSVBJIERTSSB3aXRoIDE5MjAqMTA4MAo+IC0gUks4MTcg
QXVkaW8gY29kZWMKPiAKPiBbLi4uXQoKQXBwbGllZCwgdGhhbmtzIQoKWzEvM10gZHQtYmluZGlu
Z3M6IGFybTogcm9ja2NoaXA6IERvY3VtZW50IFJhZHhhIFJPQ0sgNEMrCiAgICAgIGNvbW1pdDog
NjM4YjhlYjQzYjJhMTQzZjE1MTA0NWU2NmU2OTViYTkxYjRhMWE3YwpbMi8zXSBhcm02NDogZHRz
OiByb2NrY2hpcDogQWRkIFJLMzM5OS1UIE9QUCB0YWJsZQogICAgICBjb21taXQ6IDkxNzZiYTkx
MGJhMDMwOWRkMDI1YjU1MzgxNjAxZGE1ZjQxNGIzNmUKWzMvM10gYXJtNjQ6IGR0czogcm9ja2No
aXA6IHJrMzM5OTogUmFkeGEgUk9DSyA0QysKICAgICAgY29tbWl0OiAyNDY0NTAzNDRkYWQwODdh
MTIxYmVmYmVkMWFiYTc3NmRiYTNkMzc3CgpCZXN0IHJlZ2FyZHMsCi0tIApIZWlrbyBTdHVlYm5l
ciA8aGVpa29Ac250ZWNoLmRlPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
