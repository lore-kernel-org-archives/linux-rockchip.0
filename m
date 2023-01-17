Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9F5C4C63797
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 10:56:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bmyIDzHUGXlnHAMCswknIFzvSS7X06V1wYhLlCvYmDU=; b=xnFv91rQN5b523
	iEaOELt4UogvUpBhYqIwdskMtdlFm9TUU8qh7XCOsmJmve9QRKvDv0zbxetmpwt+/g5SWQJ5drNtY
	vb3eKUeXUJZZjTvcY5IXZRU9EqXzOj2IJHElq53/csXXWyyTpwxhzC5C5Xqp47Ho+5TDw8BFxjB/w
	S7qnEWoyeox2ix7E8+VuxNc/OYALF/0hpGNy9QjCZvdT0xJF4rEcS+aL7jQYKt4edw99tthUrACwv
	I5rguHesJluwUvP3WLZlm0sm+3OPFcAhNjoAVhQeTkRDDNiNfGm6JCq6i2RSngxMN3mLDGI8ElQB0
	5i6KzzphisllC2tsv6+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjdt-00DsVR-PK; Tue, 17 Jan 2023 10:56:37 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjct-00DrxL-QV
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 10:55:37 +0000
Received: by mail-pg1-x535.google.com with SMTP id s67so21644002pgs.3
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 02:55:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nu/Ix+1gOtGEiBRhLoDua7gRgmdwQFVNbDjh3YIsf54=;
        b=SJpFephnhqR1betrvPfxruzIEt2ihI0Xv5lNtiGSQjI9uZ13A8TY3i7bEpzQwRXwZ2
         J0E7adH6YIdCu8m1NGc63e9+UJy9+LECBMdXItkPPO1ZzycLFf445/FFDOJAz/heea4t
         sZeKSNRpLL4dyVgH2HW/QtP7gyoQ2VdRN4Mdo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nu/Ix+1gOtGEiBRhLoDua7gRgmdwQFVNbDjh3YIsf54=;
        b=e+DryJoyKCHXwnVXqfyxmprvPNWuvJ/WNazNQJ3/bKaEEdelWTuRPXiHhZQwstDvce
         /13+X4q1XuYMkoPjam1YN8Alxl0fQUM2NEilQiyyCril3/A/Asr2kV6nCsfRr7Nf5wqT
         e6X8dc1TnxONtza4uZELAj61WdD+tj0lu4PflN2cGXDgKa9vb49wr3rEU+QLI7E7vRrI
         VaXI2GDC0/0COg0GK5EyMHltqOGsRSx0f/If2/VYwfbF0jCQ/Sy4EQjZl/hxUq9JafAA
         F3RaDjORB0kkKFPRi2db8+jgGqDbFf1w/cFvYCPzD9hnd09ji1AmbN5jHU5TtbK95/i2
         SCIg==
X-Gm-Message-State: AFqh2krazaMI3KTwJXfceKyk2ApOVA6WoZAViQMy7XlkgBfIq72OiUwQ
	Ieyyb8vrafCdyosfTTjBTQCG7w==
X-Google-Smtp-Source: AMrXdXuCQoqv/WgWQnkqCbkSTbfMvmwfrLPdhpYntThE9zYVbc5QmSgQpIcstJa3f0G3+1TCPxnu+g==
X-Received: by 2002:aa7:910c:0:b0:58d:a924:9ce with SMTP id 12-20020aa7910c000000b0058da92409cemr2944036pfh.7.1673952934037;
        Tue, 17 Jan 2023 02:55:34 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:33 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	Chukun Pan <amadeus@jmu.edu.cn>
Subject: [PATCH 5/7] arm64: dts: rockchip: Drop unneeded model for Radxa CM3i
Date: Tue, 17 Jan 2023 16:25:02 +0530
Message-Id: <20230117105504.18296-5-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_025535_892146_2310E61A 
X-CRM114-Status: GOOD (  12.20  )
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

V2l0aCBtb2R1bGUgYW5kIGNhcnJpZXIgYm9hcmQgdG9wb2xvZ3ksIGNhcnJpZXIgYm9hcmQgZHRz
IHdpbGwgaW5jbHVkZQptb2R1bGUgZHRzaSBmaWxlcyBmb3IgY3JlYXRpbmcgY29tcGxldGUgcGxh
dGZvcm0uCgpUaGUgY2FycmllciBib2FyZCBkdHMgd2lsbCBoYXZlIGZpbmFsIG1vZGVsIG5hbWUg
YW5kIGNvbXBhdGlibGUgc3RyaW5nCnNvIGFueSBtb2RlbCBuYW1lIGFkZGVkIGluIG1vZHVsZSBk
dHNpIHdpbGwgZXZlbnR1YWxseSByZXBsYWNlZC4KClRoaXMgaGFwcGVuZWQgZm9yIGFueSBkZXZp
Y2V0cmVlIHByb3BlcnR5IGlmIHRoZSBzYW1lIHByb3BlcnR5IGlzIHVwZGF0ZWQKb3IgYWRkZWQg
dHdpY2UuCgpTbywgZHJvcCB0aGlzIHVubmVlZGVkwqBtb2RlbCBuYW1lIGZyb20gbW9kdWxlIGR0
c2kuCgpDYzogQ2h1a3VuIFBhbiA8YW1hZGV1c0BqbXUuZWR1LmNuPgpTaWduZWQtb2ZmLWJ5OiBK
YWdhbiBUZWtpIDxqYWdhbkBhbWFydWxhc29sdXRpb25zLmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jv
b3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yYWR4YS1jbTNpLmR0c2kgfCAxIC0KIDEgZmlsZSBjaGFu
Z2VkLCAxIGRlbGV0aW9uKC0pCgpkaWZmIC0tZ2l0IGEvYXJjaC9hcm02NC9ib290L2R0cy9yb2Nr
Y2hpcC9yazM1NjgtcmFkeGEtY20zaS5kdHNpIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hp
cC9yazM1NjgtcmFkeGEtY20zaS5kdHNpCmluZGV4IDBjOWE5MThiODA5YS4uMWJhZGE5OGE0ZDhi
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yYWR4YS1j
bTNpLmR0c2kKKysrIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9yazM1NjgtcmFkeGEt
Y20zaS5kdHNpCkBAIC02LDcgKzYsNiBAQAogI2luY2x1ZGUgInJrMzU2OC5kdHNpIgogCiAvIHsK
LQltb2RlbCA9ICJSYWR4YSBDTTMgSW5kdXN0cmlhbCBCb2FyZCI7CiAJY29tcGF0aWJsZSA9ICJy
YWR4YSxyYWR4YS1jbTNpIiwgInJvY2tjaGlwLHJrMzU2OCI7CiAKIAlhbGlhc2VzIHsKLS0gCjIu
MjUuMQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxp
bnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQu
b3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9j
a2NoaXAK
