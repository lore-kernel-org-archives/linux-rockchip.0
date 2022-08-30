Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 598A7ECAAD1
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 06:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=811jkoaSW+uuLl7wH6X2BSh3GJ1VdnadYkUSV1JwaE4=; b=uydOsi3KCMZlgb
	hundrYgx7nyXhDpRl8sXKHmvBLFc+nBFhOacZ3B8Bpsa+Z3J2f3pUEjohUWe6IhLA6OXgQv0LnHGA
	cUMFtbREJIPNqFJoWWiB0kTYh/0ayWSTEHTHESZyeLxPbUI7uAudOfsdsGQIY+4TOh4L1jstnzqBn
	VZqyDaLIEEAHYjzEH7TCzjk7gWT6pJAGtaKTox06rjStMD6BQKxl8kgHNY5vdrvvBSVPEI9RNufYO
	JBxeioIJ5FV0066orryeEo4YtVrKEssrzdNMPjPHQE5s6bzKGH2mi0wsPbZL1/syHW+qGiTJUFoTe
	+0eLgNVjPLZgNVBSaJHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSv6B-00EYG6-4E; Tue, 30 Aug 2022 06:51:47 +0000
Received: from mail-pl1-x636.google.com ([2607:f8b0:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSv68-00EYEQ-05
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 06:51:45 +0000
Received: by mail-pl1-x636.google.com with SMTP id m2so10211882pls.4
        for <linux-rockchip@lists.infradead.org>; Mon, 29 Aug 2022 23:51:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=7pxVuvZKnwCDX91eUIsx5zUNymHQHE5pWZq79BjPPME=;
        b=FCVYb2ZQwZQNPJQozcEHmqfO6JFfs9qBPKLDVUhZ4w48DJpcaWEM3OKmFe8WtlaM6b
         Ey9wk/P1cP0eiqTy11S9Zvr4dr09rjMgbDZQix8qOdyB+rCzn77g7hL9Oof5SbGiKRa8
         6uNeiiv+CUGO/jFdn13/WyMV00/CmwP4OLgYg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=7pxVuvZKnwCDX91eUIsx5zUNymHQHE5pWZq79BjPPME=;
        b=fNkq0ssIi+uiJYHIwQgv+6h15B7w1OtjFBzI5c+s4BS8d0ECzk7EutM0wZW5fNeasv
         AFcJEy7GSuIgYjlT7kv+rA0cDS8C5uMpgMRDmWB/nAy4BtDp0SA25uq5fT11raP0C5Gi
         sG4A3f40k3w51t1yTtoJQTik5LL4NIMSPG4IYVPQOWx1kTDYmUCwglUQRMLHZ3qD693B
         xgrYpUO430fsf19pX6EWaJn5I723rRubRwbfUWMIIPLC83k9dRhe3bzAXqPiIKNEyGSh
         1M4+3JbwdAbv1ba2+Yz8u8MqGDOfj3v1hc0THI6lvhHhG7d8pLMkixSavCt96RwDkhEe
         6DaQ==
X-Gm-Message-State: ACgBeo3e/QI7r0SVhnoSHeKr0/vm/h6cqIY4LreE24LyQtD9lU0+EhMR
	1Kql6G5q5xdYbhyP1MFSGSBgHw==
X-Google-Smtp-Source: AA6agR5cLaGfSLe3iLKW6006pUym5HdJ5DrsoVZHTbIrLxWxLRp+iY4sErPfZmNn169Iy3WpFg9TrA==
X-Received: by 2002:a17:90a:bc8d:b0:1fd:f4f1:d5da with SMTP id x13-20020a17090abc8d00b001fdf4f1d5damr4853360pjr.205.1661842300923;
        Mon, 29 Aug 2022 23:51:40 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:8d7b:a73a:5272:1b81])
        by smtp.gmail.com with ESMTPSA id x14-20020a1709027c0e00b0016c78f9f024sm8854460pll.104.2022.08.29.23.51.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Aug 2022 23:51:40 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: FUKAUMI Naoki <naoki@radxa.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amarula@amarulasolutions.com,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/3] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Date: Tue, 30 Aug 2022 12:21:17 +0530
Message-Id: <20220830065119.120844-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220829_235144_068161_413D38F8 
X-CRM114-Status: UNSURE (   9.51  )
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

RG9jdW1lbnQgdGhlIGR0LWJpbmRpbmdzIGZvciBSYWR4YSBST0NLIDRDKyBTQkMuCgpLZXkgZGlm
ZmVyZW5jZXMgb2YgNEMrIGNvbXBhcmVkIHRvIHByZXZpb3VzwqBST0NLIFBpIDQuCi0gUm9ja2No
aXAgUkszMzk5LVQgU29DCi0gRFAgZnJvbSA0QyByZXBsYWNlZCB3aXRoIG1pY3JvIEhETUkgMktA
NjBmcHMKLSA0LWxhbmUgTUlQSSBEU0kgd2l0aCAxOTIwKjEwODAKLSBSSzgxNyBBdWRpbyBjb2Rl
YwoKQWxzbywgYW4gb2ZmaWNpYWwgbmFtaW5nIGNvbnZlbnRpb27CoGZyb20gUmFkeGEgbWVudGlv
biB0byByZW1vdmUKUGkgZnJvbSBib2FyZCBuYW1lLCBzbyB0aGlzIDRDKyBpcyBuYW1lZCBhcyBS
YWR4YSBST0NLIDRDKyBub3QKUmFkeGEgUk9DSyBQaSA0QysuCgpBY2tlZC1ieTogS3J6eXN6dG9m
IEtvemxvd3NraSA8a3J6eXN6dG9mLmtvemxvd3NraUBsaW5hcm8ub3JnPgpTaWduZWQtb2ZmLWJ5
OiBKYWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KLS0tCkNoYW5nZXMgZm9y
IHYzOgotIHVwZGF0ZWQgY29tbWl0IG1lc3NhZ2UKQ2hhbmdlcyBmb3IgdjI6Ci0gZml4IGxpbmUg
d3JhcHBpbmcKLSBjb2xsZWN0IEtyenlzenRvZiBBY2sKCiBEb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgfCA1ICsrKysrCiAxIGZpbGUgY2hhbmdlZCwg
NSBpbnNlcnRpb25zKCspCgpkaWZmIC0tZ2l0IGEvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2Jp
bmRpbmdzL2FybS9yb2NrY2hpcC55YW1sIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9yb2NrY2hpcC55YW1sCmluZGV4IDc4MTFiYTY0MTQ5Yy4uZWMzNTI1ZmIxZTYwIDEw
MDY0NAotLS0gYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlw
LnlhbWwKKysrIGIvRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9yb2NrY2hp
cC55YW1sCkBAIC01MzcsNiArNTM3LDExIEBAIHByb3BlcnRpZXM6CiAgICAgICAgICAgLSBjb25z
dDogcmFkeGEscm9ja3BpNAogICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzM5OQogCisg
ICAgICAtIGRlc2NyaXB0aW9uOiBSYWR4YSBST0NLIDRDKworICAgICAgICBpdGVtczoKKyAgICAg
ICAgICAtIGNvbnN0OiByYWR4YSxyb2NrLTRjLXBsdXMKKyAgICAgICAgICAtIGNvbnN0OiByb2Nr
Y2hpcCxyazMzOTkKKwogICAgICAgLSBkZXNjcmlwdGlvbjogUmFkeGEgUk9DSyBQaSBFCiAgICAg
ICAgIGl0ZW1zOgogICAgICAgICAgIC0gY29uc3Q6IHJhZHhhLHJvY2twaS1lCi0tIAoyLjI1LjEK
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlw
Cg==
