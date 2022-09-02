Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EC00CC54EE9
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 06:51:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nlra+PHmNfer1KOQvCHMS8d+iyE+8XorCbsn6ALuKmI=; b=2QfArQubaiHLFZ
	bRi2agifVxN6pBTA+aM2x4vJF8ZY/hJKtIOA0vnpVUx44xv5vl35KtPvG9s8BniY9SamhFhWwX2md
	u+v7MzfeFfGBS4TFCSyNoStQ57vYTy/8UvDMzBj/oJ6iRnwY9u0WwxbXWp2rdohk6xMHVMN7WfAF8
	OLW8BSJw62syxjFSdUC9+k5VgCwGiF3prMkHDYxvll4SMs33DjbNxxaV/2pZobD3rvUhvMUl/acs3
	Gf3G2T0Xqym/unmzkTiIbFR0MeBq5gdF12U24am4dcuww7KowLXNF3wxhvJppG+eWu9lOK9a45XU5
	rdBnEekXtEIP0AZrc3cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU0WS-000zrE-8k; Fri, 02 Sep 2022 06:51:24 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU0WH-000zkG-MB
	for linux-rockchip@lists.infradead.org; Fri, 02 Sep 2022 06:51:14 +0000
Received: by mail-pl1-x62d.google.com with SMTP id j5so1002192plj.5
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 23:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=yyAKPmKQH9lfnrQSZBKeBIRjtCOa6/ER8apL8e3NRik=;
        b=gjWXs/10I4ip0NuCWY+Vni3aQaHsczbOgeFT4xhzGuqtOG6nmHhkbU/ChDn0iV1VSf
         Fx7fxehan4GEp8ju335mUC4HBexhcuCPz2qpLMSQK4Uz6OCbaoKwUDePH7GRElA4FZwY
         xfOcIGhGE+f3Sa7bM85eVxMM/n5DLTduQlq6c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=yyAKPmKQH9lfnrQSZBKeBIRjtCOa6/ER8apL8e3NRik=;
        b=JjV+m4y/5a0HajtG54zz73ppSTmxfLL+y8Rk2PknXQ5m9b9bw2BCR2NNvTkJxMVwGl
         wLFX5kZeOsEEXQkddrJkDyd+fX+N+W3HiyOndSlb0M7LAn2LPAQCEX6Wn9Dy4YlohW03
         8RgWRoghldJqVBkrOB4ccNIWoiLjAF9hSxA14p5IsOLbzMC0AVou4Kf7Ni8eQihxJHSH
         rrSBhcgOiHIslD6pDoebTV9TUkbWB8MkD4P5s6JSxejcjxUN8iBkrhbBBCYfus60SOF3
         WrgKUfh9ubGkdLrOUWUs6Ive1DULXMf86XjcxzzSUz18pkoVMFv6N7BdM0vM55d5vpBi
         icYw==
X-Gm-Message-State: ACgBeo0HfikUW0rOqEbRu4VYd4BU98Utu+3ywewkKjVRS7ywdNDexc/w
	fExdJ0hx8yOgvLX53J7CjftANQ==
X-Google-Smtp-Source: AA6agR7lTDAk+MfB1Y50OQiJ3g+0Tq9+7rnV4wJTE83ko29RQiX9rl0mdMSG0mK6HMrwNw62fla4MQ==
X-Received: by 2002:a17:90a:9b04:b0:1fb:fcb:1de1 with SMTP id f4-20020a17090a9b0400b001fb0fcb1de1mr3232560pjp.235.1662101470074;
        Thu, 01 Sep 2022 23:51:10 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:e40:9bbb:af2b:bca3])
        by smtp.gmail.com with ESMTPSA id e17-20020a17090301d100b00172a2a41064sm769815plh.298.2022.09.01.23.51.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 23:51:08 -0700 (PDT)
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
Subject: [PATCH v4 1/3] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Date: Fri,  2 Sep 2022 12:20:55 +0530
Message-Id: <20220902065057.97425-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_235113_744152_2C92AFEF 
X-CRM114-Status: GOOD (  10.35  )
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
IHY0OgotIG5vbmUKQ2hhbmdlcyBmb3IgdjM6Ci0gdXBkYXRlZCBjb21taXQgbWVzc2FnZQpDaGFu
Z2VzIGZvciB2MjoKLSBmaXggbGluZSB3cmFwcGluZwotIGNvbGxlY3QgS3J6eXN6dG9mIEFjawoK
IERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbCB8IDUg
KysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9Eb2N1
bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwgYi9Eb2N1bWVu
dGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKaW5kZXggNzgxMWJh
NjQxNDljLi5lYzM1MjVmYjFlNjAgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAorKysgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRy
ZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKQEAgLTUzNyw2ICs1MzcsMTEgQEAgcHJvcGVy
dGllczoKICAgICAgICAgICAtIGNvbnN0OiByYWR4YSxyb2NrcGk0CiAgICAgICAgICAgLSBjb25z
dDogcm9ja2NoaXAscmszMzk5CiAKKyAgICAgIC0gZGVzY3JpcHRpb246IFJhZHhhIFJPQ0sgNEMr
CisgICAgICAgIGl0ZW1zOgorICAgICAgICAgIC0gY29uc3Q6IHJhZHhhLHJvY2stNGMtcGx1cwor
ICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzM5OQorCiAgICAgICAtIGRlc2NyaXB0aW9u
OiBSYWR4YSBST0NLIFBpIEUKICAgICAgICAgaXRlbXM6CiAgICAgICAgICAgLSBjb25zdDogcmFk
eGEscm9ja3BpLWUKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
