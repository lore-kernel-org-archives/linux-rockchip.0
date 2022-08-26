Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35D0FECAAD4
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Aug 2022 12:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2X+PTujbdzdPsXc6maLZIFq4AvaniQP9ZPLz6vwAXc0=; b=lTAUWItQhQAwpJ
	f74dU1G4ZZ1L6a/FIVfgHAIxBZlz0tK9lJVbiHQa5DOP0pqg2AwCNL6jOn0biXXnpf/gRkiuEEpST
	pfZCbOG6BwUp7/9rBW+z3+/9rNvAJCI4f452S+tnj3rav7kKeOUVarfpANCoLGxrPQXFxlGuwgBqV
	xoN/iQN4UnOZCe29VaQxncWHMkMoDoFj5TsutPOtsWmQY7/9s2k9mLvqhKYAc5gOkomxEEalYDt0I
	osvmMIHZt2wqUy41Avq1u6fPmVRJ1IvKk9QrTmp39n4q9t9u7ZTxXFOAC/+BcvyWJEYpd3+q8rrMF
	Ap6gM5KC2pYP0B1Z+0JQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRY8s-002OZC-J7; Fri, 26 Aug 2022 12:08:54 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRY8d-002OEH-5a
	for linux-rockchip@lists.infradead.org; Fri, 26 Aug 2022 12:08:40 +0000
Received: by mail-pg1-x52e.google.com with SMTP id c24so1211927pgg.11
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Aug 2022 05:08:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=D3lfFqV/J6np/aW5HDDLz5odIk3AM7hN1s/0B3dYotU=;
        b=gAfZvDAdktIb5TyU9JIzfgSHc7/cF9NEnuBaYDA69C3HDO5Gf7klwiAIhHMmWL13Ou
         NGtasPQ02ONGFVScwbo42v1TAcJJ+n9t2tfMR8t5gB3VWgwWoGnFMUJj3hvaMxrg9oZ3
         o7Modppjeop5I4upslDnJCbe/MFAYcyGZ6Rz8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=D3lfFqV/J6np/aW5HDDLz5odIk3AM7hN1s/0B3dYotU=;
        b=Uks9zb+oGd+uAnfezGIqXQty7FRpabf5P59yKZGh08UZos23SKhY+95SoNi7EfZTxW
         I94DP9pPf2qD0ZqaDk9RmZZ6jHQPodXmFV1QXrYOZCvrc+FGcEaUh+1J3SKQ4xNCqVnP
         ohS2bjHssq/VzS+xbHlLeZLM/JWhAoM/eqDaCJZO3eI8IqQJaF12fvGL65jgDwVOwlfl
         TImv7EAfJcN/H9RGWRTQvmndjXSSsS1X0SH8kqT9/VuqgYJDE//CQnsObU6utPp2Lw1j
         OXv0k4qbmDziQEjHueaWTRTT6lyxRQiA9G3MJMa+Xkzu0Mxa9euHohLKIq8XbfK9Gzom
         4pIw==
X-Gm-Message-State: ACgBeo0maF4PraLMnX3D+QQkx7kccW021d0FGWe+dRepn4I++h4orIhR
	pMGhkF6L+Qm+9uhSDelYuMcYeQ==
X-Google-Smtp-Source: AA6agR7MB+OcGuWwGdUko5ghXWjA/zoHklq9WWg0sAeH2yRes0aBG1YitjbkGEXe+ZssLdhQJtgD7w==
X-Received: by 2002:a05:6a00:174b:b0:52f:c4d1:d12d with SMTP id j11-20020a056a00174b00b0052fc4d1d12dmr3603050pfc.41.1661515716228;
        Fri, 26 Aug 2022 05:08:36 -0700 (PDT)
Received: from localhost.localdomain ([23.27.44.247])
        by smtp.gmail.com with ESMTPSA id w2-20020a170902e88200b0016f1aa00abbsm1416364plg.195.2022.08.26.05.08.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Aug 2022 05:08:35 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amarula@amarulasolutions.com,
	Jagan Teki <jagan@amarulasolutions.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/2] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Date: Fri, 26 Aug 2022 17:38:16 +0530
Message-Id: <20220826120817.1623536-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220826_050839_225398_84729650 
X-CRM114-Status: UNSURE (   9.29  )
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

RG9jdW1lbnQgdGhlIGR0LWJpbmRpbmdzIGZvciBSYWR4YSBST0NLIDRDKyBTQkMuCgo0QysgcmVw
bGFjZWQgRFAgd2l0aCBIRE1JIGFuZCB1cGRhdGVkIE1JUEkgRFNJL0NTSSBGUEMgY29ubmVjdG9y
cwpjb21wYXJlZCB0byA0QyByZXZpc2lvbi4KCkFsc28sIGFuIG9mZmljaWFsIG5hbWluZyBjb252
ZW50aW9uwqBmcm9tIFJhZHhhIG1lbnRpb24gdG8gcmVtb3ZlClBpIGZyb20gYm9hcmQgbmFtZSwg
c28gdGhpcyA0QysgaXMgbmFtZWQgYXMgUmFkeGEgUk9DSyA0Qysgbm90ClJhZHhhIFJPQ0sgUGkg
NEMrLgoKU2lnbmVkLW9mZi1ieTogSmFnYW4gVGVraSA8amFnYW5AYW1hcnVsYXNvbHV0aW9ucy5j
b20+CkFja2VkLWJ5OiBLcnp5c3p0b2YgS296bG93c2tpIDxrcnp5c3p0b2Yua296bG93c2tpQGxp
bmFyby5vcmc+Ci0tLQpDaGFuZ2VzIGZvciB2MjoKLSBmaXggbGluZSB3cmFwcGluZwotIGNvbGxl
Y3QgS3J6eXN6dG9mIEFjawoKIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0v
cm9ja2NoaXAueWFtbCB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykK
CmRpZmYgLS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tj
aGlwLnlhbWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlw
LnlhbWwKaW5kZXggNzgxMWJhNjQxNDljLi5lYzM1MjVmYjFlNjAgMTAwNjQ0Ci0tLSBhL0RvY3Vt
ZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAorKysgYi9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKQEAgLTUzNyw2
ICs1MzcsMTEgQEAgcHJvcGVydGllczoKICAgICAgICAgICAtIGNvbnN0OiByYWR4YSxyb2NrcGk0
CiAgICAgICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMzk5CiAKKyAgICAgIC0gZGVzY3JpcHRp
b246IFJhZHhhIFJPQ0sgNEMrCisgICAgICAgIGl0ZW1zOgorICAgICAgICAgIC0gY29uc3Q6IHJh
ZHhhLHJvY2stNGMtcGx1cworICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzM5OQorCiAg
ICAgICAtIGRlc2NyaXB0aW9uOiBSYWR4YSBST0NLIFBpIEUKICAgICAgICAgaXRlbXM6CiAgICAg
ICAgICAgLSBjb25zdDogcmFkeGEscm9ja3BpLWUKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcg
bGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZy
YWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
