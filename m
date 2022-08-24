Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 12E39C00140
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 Aug 2022 08:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=71+UMlSR0SECt4CXVWfooIDsu2LXZ4YnpIkS6cI7MPM=; b=1ByzuTHnDT0cpy
	vSPqPv1HyYC8zFic9nSFCBtLLQgsSjP/YW113aE0HNT0NsxBx3UhyF/26xRUGUSk7HajFbUaqJBAU
	GQGo6BTIuniVpi4gRGKoDMmIbtLLtbBYF4ILQH/gJ0XdOolS7EBVJH569QmBvwiAJ4o2UP9Kyvy9j
	2p/qZnxeG5FN6m1tYsfnUPOu2agyAvdp2cikRnhdZR3RN4c7rU8zAlFZO9hlU8XgYwF8q3bqGLAnB
	uCuQBUbPKZwP0xbF1TWkmvMntplCduYWyIuSp4p0+wDgxNyeUgwFfDkcFJuCE8crFjnEdhPwVGfdT
	teQT746Hmxo/sbYMk1Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQlSE-00BOAJ-BK; Wed, 24 Aug 2022 08:09:38 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQlS2-00BO5y-GO
	for linux-rockchip@lists.infradead.org; Wed, 24 Aug 2022 08:09:27 +0000
Received: by mail-pf1-x429.google.com with SMTP id g129so12449204pfb.8
        for <linux-rockchip@lists.infradead.org>; Wed, 24 Aug 2022 01:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=2vTpdZQYgRFnGUjEMEzfPwPvDO0zA3CdUFVRf6A8iFI=;
        b=hUy71wp6l2Uo+tdO1eSNki5chXdiuBnBNLCPFKNtGbPi4UvdmE3VCwZG1qBobSKG3u
         0knwlFm/g2eC2ZACKATN47ZdfWQP14QGcxFCh6vMEFHBDWYF4ahXymS+sorAFDGcPJHQ
         75c/8C1IkbmETUHvswfDMBK4MP0/b8jX0pLx4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=2vTpdZQYgRFnGUjEMEzfPwPvDO0zA3CdUFVRf6A8iFI=;
        b=wTsMvJCiv7B+16tp/iiKQijrlXr9uYorB7aPU8jrFDu2ZDcaCXiHzeGQWyXqo8lfkM
         5PaP6YIg47ZbRB1zofx22EfxMEAfM2t4OcZvW7T+0erZQVKzt0r+p6IDRJrPV4TscYsP
         EdmA2mBgIMvWxGqImc0VO4CWv/a4TnWUEFuKD9yACtfuxAbP4maMmLWrQvZtvxnJmb9E
         pOgAu7J2CCi1OuaPiiD2r+T/xJ88tam9m0GVRaxYy1gMYBz958GwjMcDs1xE6S21YLbQ
         8pXnK6kF/JABkCC7lQdiUim2wrx2pcBcg0rTHTwivdLmzm7nT2X6d5jCkBGNnsRklahc
         ABcg==
X-Gm-Message-State: ACgBeo0fivDz6uZqy8x515NorBJsNdgNFn8crXuwwhojFVI/PbR7BYsZ
	OJOjlY4BJi6QmrXvByqJ/JwPUw==
X-Google-Smtp-Source: AA6agR7H7t7ZYk+ooV2esxaMsHLoFR+5ZzanJ77GKXbtF126UDHawRZneXWGx3wJa17VGN7Udhvhfw==
X-Received: by 2002:a63:8243:0:b0:42b:1d94:3c66 with SMTP id w64-20020a638243000000b0042b1d943c66mr1487683pgd.278.1661328563676;
        Wed, 24 Aug 2022 01:09:23 -0700 (PDT)
Received: from localhost.localdomain ([212.102.47.105])
        by smtp.gmail.com with ESMTPSA id ik3-20020a170902ab0300b0016bdc98730bsm11859594plb.151.2022.08.24.01.09.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Aug 2022 01:09:23 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-amarula@amarulasolutions.com,
	Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Document Radxa ROCK 4C+
Date: Wed, 24 Aug 2022 13:39:02 +0530
Message-Id: <20220824080903.3696847-1-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220824_010926_598164_4FF465CF 
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

RG9jdW1lbnQgdGhlIGR0LWJpbmRpbmdzIGZvciBSYWR4YSBST0NLIDRDKyBTQkMuCgo0QysgcmVw
bGFjZWQgRFAgd2l0aCBIRE1JIGFuZCB1cGRhdGVkIEZQQyBjb25uZWN0b3JzCmZvciBNSVBJIERT
SS9DU0kgY29tcGFyZWQgdG8gNEMgcmV2aXNpb24uCgpBbHNvLCBhbiBvZmZpY2lhbCBuYW1pbmcg
Y29udmVudGlvbsKgZnJvbSBSYWR4YSBtZW50aW9uCnRvIHJlbW92ZSBQaSBmcm9tIGJvYXJkIG5h
bWUsIHNvIHRoaXMgNEMrIGlzIG5hbWVkIGFzClJhZHhhIFJPQ0sgNEMrIG5vdCBSYWR4YSBST0NL
IFBpIDRDKy4KClNpZ25lZC1vZmYtYnk6IEphZ2FuIFRla2kgPGphZ2FuQGFtYXJ1bGFzb2x1dGlv
bnMuY29tPgotLS0KIERvY3VtZW50YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2No
aXAueWFtbCB8IDUgKysrKysKIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKCmRpZmYg
LS1naXQgYS9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlh
bWwgYi9Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwK
aW5kZXggNzgxMWJhNjQxNDljLi5lYzM1MjVmYjFlNjAgMTAwNjQ0Ci0tLSBhL0RvY3VtZW50YXRp
b24vZGV2aWNldHJlZS9iaW5kaW5ncy9hcm0vcm9ja2NoaXAueWFtbAorKysgYi9Eb2N1bWVudGF0
aW9uL2RldmljZXRyZWUvYmluZGluZ3MvYXJtL3JvY2tjaGlwLnlhbWwKQEAgLTUzNyw2ICs1Mzcs
MTEgQEAgcHJvcGVydGllczoKICAgICAgICAgICAtIGNvbnN0OiByYWR4YSxyb2NrcGk0CiAgICAg
ICAgICAgLSBjb25zdDogcm9ja2NoaXAscmszMzk5CiAKKyAgICAgIC0gZGVzY3JpcHRpb246IFJh
ZHhhIFJPQ0sgNEMrCisgICAgICAgIGl0ZW1zOgorICAgICAgICAgIC0gY29uc3Q6IHJhZHhhLHJv
Y2stNGMtcGx1cworICAgICAgICAgIC0gY29uc3Q6IHJvY2tjaGlwLHJrMzM5OQorCiAgICAgICAt
IGRlc2NyaXB0aW9uOiBSYWR4YSBST0NLIFBpIEUKICAgICAgICAgaXRlbXM6CiAgICAgICAgICAg
LSBjb25zdDogcmFkeGEscm9ja3BpLWUKLS0gCjIuMjUuMQoKCl9fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApM
aW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
