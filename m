Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D8CC9CAC597
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Sep 2025 08:33:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vUsZsxbwWQdk3Sm9Uu6fEQ9Gdg9zwHZJ2Z2RVkluFfE=; b=mtgMHjAwpR+peQ
	qF/iLprTCesJtoxGdWdJA6Ie70gYV9lV0u/EnVwC6NI0UEKc4ttQ+CVOx3xMI/9k7aXG5sg9sND9c
	rzjNL+CBiDed8Ko9NalGatWdV6D0F1oFvsiv3R7K0oZIV7U2HjcEI1uwmdKQyxKQTJPyTWHav1hmb
	419fDHirkFDWBYDMucBg6o7yiblWFxT2qLsrzAG0Jcntq2mxoctZGDQ9pB8QJMHedTl2oOg6mOmlQ
	7TbW4Hy0rGkOUuX0yogAdKY21+JZDdk5jrV/ix3S/zcW1rxdCZvz8/PZO8VAA+1HEDhSpOe+DwcKg
	Yai3Qc24cbQuimY4DLiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4eb-00000003E6Z-40sq;
	Mon, 15 Sep 2025 08:33:41 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uy4eZ-00000003E43-38ua
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Sep 2025 08:33:41 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-55f7cd8ec2cso4577902e87.2
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Sep 2025 01:33:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757925218; x=1758530018; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QhCQj6ti4YtQV74gSqzE0JWivz/zF87SY+DolP82Plk=;
        b=Aru1o0gcGAZ+rPMNyeX3nTSoeqeJOV4SQkVM5/CrDXP3GRIMYMGdwkWQ5SXzyKixaK
         62xiGAWsYg51CHq7qp6LQLBcQbdzWVz5oLBVmaAmdK+E+pBsnXGRwIx5sSITAiAOb9Tg
         +CyONronn+cZFzHyum+18HHiakMbbv6VxqNgyUna0zhhY9q0S9+3Iltz/lqUfkDq/P5A
         fiobFlCQJamyC3j+Rqd7Cb6R0vjvpGZ1u425feVzJ4vikvjlAE09q2wjkvfWGHlr7tvr
         3Xqju52+fIlXj8aFLff/aloEJW/OnKfi6PzTjClSyOfgAZ8Q7h842fu4x9VIv8X2ANpy
         BUzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757925218; x=1758530018;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QhCQj6ti4YtQV74gSqzE0JWivz/zF87SY+DolP82Plk=;
        b=rFqg7fQGfXpQKLbjc9QKwxEsE79FmytdZT7O/VtNDgE2yCmTDmA9TTUP98pTBRiZHV
         +xzwpGbJuBFXL0dXMBwbiNmGhcu4R59Xb3Fp9VBfEOakyr7q39z2fOrk4f8425qQjv2x
         +ye1VYmp9483XVOqwSRie/zCHKBzjBH3CjFlUVq99HSAQUv89wmKYTRPORcyoU97SLTk
         rwhKijPUXHHULxJiGiKdh0/CBlfLYc7NSFqiP76uEd0Q/AdEOBHKJiB58zYNeUBrk11e
         P+ZSGmskk9vGVxWXgmNBOAvKQoor/o7kpdQU4vGcYJxs4oUhYd3RMru1nCJ4ITl78bBH
         WkjQ==
X-Forwarded-Encrypted: i=1; AJvYcCWPaxAJY56DGIkupiqXCFQQyVzfQOTtIDYfkOYAG6a+Ot95LZ1fRkEPAABwLeISKqShHJMwzMWbVJarCIQlhA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwigYK/eTsG/i7x1DaMoaf0Y2ncrKFtlGS272N8nyDFq48HHMZf
	kAHMBRF33l8C+H+mwqh5QmTE8BVQqfQ4fimW6HBMMCyVsXIQ/F10/5SdHkCxsFjNyE4=
X-Gm-Gg: ASbGncuc4bU0Acy71YDCOIYAU3sDwtxAuX1td2Xo4E127YR/NQzJsbUGKVHQHOmy9Kg
	EvH7YS9ep1rnfYxwuwhyc4P89NGqjGfJSJnZ6hJrMXuwnL5hTx5a6TL/zNF1rXd11YVI48kBuke
	4Gzb9w8HPb34rYFBW+DTQ18u/kWNpTRHmaNo+H0To0n4TN7s+EKlKT9+Uhkgpp8ER3fy0YqHJA6
	FlHJInO1rDalpza+Yw7RE6ImIJ1YpBVdCgBT1GqusniaZi8HicOzy/x87KfcvuLPpCM081/u63E
	yIDkTNjrJoUgPQryTPMYM4HpMsLNCrNSSnXWO0MF5H6M3tAZi+/rccc4v+NmwuSnlNmxTy2ND6n
	nrepKl78PMgmMJEmKRzEsAp4O8LAnedeL2m1JXfBSDT0AR5d1VQNTnYjkxziC7b2NPw==
X-Google-Smtp-Source: AGHT+IFcLHjxrrKby+Md0dZGhs1/d8RSPE8VaTnfpniHXnX86nTUqa3YezXw3uHyLbu8SVbOt/ZgiQ==
X-Received: by 2002:a05:6512:3158:b0:55f:6831:6eff with SMTP id 2adb3069b0e04-5704ab94916mr3376627e87.4.1757925217538;
        Mon, 15 Sep 2025 01:33:37 -0700 (PDT)
Received: from nuoska (87-100-249-247.bb.dnainternet.fi. [87.100.249.247])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571a6a33ba8sm2335142e87.46.2025.09.15.01.33.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 01:33:37 -0700 (PDT)
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org
Cc: Ulf Hansson <ulf.hansson@linaro.org>,
	Mikko Rapeli <mikko.rapeli@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Arnd Bergmann <arnd@arndb.de>
Subject: [PATCH v4 1/4] pmdomain: rockchip: enable ROCKCHIP_PM_DOMAINS with ARCH_ROCKCHIP
Date: Mon, 15 Sep 2025 11:33:14 +0300
Message-ID: <20250915083317.2885761-2-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250915083317.2885761-1-mikko.rapeli@linaro.org>
References: <20250915083317.2885761-1-mikko.rapeli@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250915_013339_823029_C5F65D62 
X-CRM114-Status: GOOD (  12.09  )
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

T24gcmszMzk5IGJhc2VkIHJvY2twaTRiLCBtb3VudGluZyByb290ZnMgZnJvbSBtbWMgZmFpbHMg
dW5sZXNzClJPQ0tDSElQX1BNX0RPTUFJTlMgaXMgZW5hYmxlZC4gQWNjb3JpZGluZyB0bwpIZWlr
byBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiBhbGwgU29DcyBzaW5jZSAyMDEyIGhhdmUgcG93
ZXIKZG9tYWlucyBzbyB0aGUgc3VwcG9ydCBzaG91bGQgYmUgZW5hYmxlZCBieSBkZWZhdWx0Cm9u
IGJvdGggYXJtIGFuZCBhcm02NC4KCkZhaWxpbmcgYm9vdCB3aXRob3V0IENPTkZJR19ST0NLQ0hJ
UF9QTV9ET01BSU5TPXk6CgpodHRwczovL2xlZGdlLnZhbGlkYXRpb24ubGluYXJvLm9yZy9zY2hl
ZHVsZXIvam9iLzExOTI2OAoKL2Rldi9kaXNrL2J5LXBhcnR1dWlkLzFkNDhmZmQ4LWYyYTctNGEz
My1iNTJmLTE4NjA4OWIzYzg1ZTogQ2FuJ3QgbG9va3VwIGJsb2NrZGV2Ci9kZXYvZGlzay9ieS1w
YXJ0dXVpZC8xZDQ4ZmZkOC1mMmE3LTRhMzMtYjUyZi0xODYwODliM2M4NWU6IENhbid0IGxvb2t1
cCBibG9ja2RldgovZGV2L2Rpc2svYnktcGFydHV1aWQvMWQ0OGZmZDgtZjJhNy00YTMzLWI1MmYt
MTg2MDg5YjNjODVlOiBDYW4ndCBsb29rdXAgYmxvY2tkZXYKL2Rldi9kaXNrL2J5LXBhcnR1dWlk
LzFkNDhmZmQ4LWYyYTctNGEzMy1iNTJmLTE4NjA4OWIzYzg1ZTogQ2FuJ3QgbG9va3VwIGJsb2Nr
ZGV2Ci9kZXYvZGlzay9ieS1wYXJ0dXVpZC8xZDQ4ZmZkOC1mMmE3LTRhMzMtYjUyZi0xODYwODli
M2M4NWU6IENhbid0IGxvb2t1cCBibG9ja2RldgovZGV2L2Rpc2svYnktcGFydHV1aWQvMWQ0OGZm
ZDgtZjJhNy00YTMzLWI1MmYtMTg2MDg5YjNjODVlOiBDYW4ndCBsb29rdXAgYmxvY2tkZXYKZHct
YXBiLXVhcnQgZmYxYTAwMDAuc2VyaWFsOiBmb3JiaWQgRE1BIGZvciBrZXJuZWwgY29uc29sZQpy
b290ICcvZGV2L2Rpc2svYnktcGFydHV1aWQvMWQ0OGZmZDgtZjJhNy00YTMzLWI1MmYtMTg2MDg5
YjNjODVlJyBkb2Vzbid0IGV4aXN0IG9yIGRvZXMgbm90IGNvbnRhaW4gYSAvZGV2Lgpya19nbWFj
LWR3bWFjIGZlMzAwMDAwLmV0aGVybmV0OiBkZWZlcnJlZCBwcm9iZSB0aW1lb3V0LCBpZ25vcmlu
ZyBkZXBlbmRlbmN5CnJrX2dtYWMtZHdtYWMgZmUzMDAwMDAuZXRoZXJuZXQ6IHByb2JlIHdpdGgg
ZHJpdmVyIHJrX2dtYWMtZHdtYWMgZmFpbGVkIHdpdGggZXJyb3IgLTExMApya19pb21tdSBmZjY1
MDgwMC5pb21tdTogZGVmZXJyZWQgcHJvYmUgdGltZW91dCwgaWdub3JpbmcgZGVwZW5kZW5jeQpy
a19pb21tdSBmZjY1MDgwMC5pb21tdTogcHJvYmUgd2l0aCBkcml2ZXIgcmtfaW9tbXUgZmFpbGVk
IHdpdGggZXJyb3IgLTExMApkd21tY19yb2NrY2hpcCBmZTMyMDAwMC5tbWM6IGRlZmVycmVkIHBy
b2JlIHRpbWVvdXQsIGlnbm9yaW5nIGRlcGVuZGVuY3kKcm9ja2NoaXAtdHlwZWMtcGh5IGZmN2Mw
MDAwLnBoeTogZGVmZXJyZWQgcHJvYmUgdGltZW91dCwgaWdub3JpbmcgZGVwZW5kZW5jeQpkd21t
Y19yb2NrY2hpcCBmZTMyMDAwMC5tbWM6IHByb2JlIHdpdGggZHJpdmVyIGR3bW1jX3JvY2tjaGlw
IGZhaWxlZCB3aXRoIGVycm9yIC0xMTAKcm9ja2NoaXAtdHlwZWMtcGh5IGZmN2MwMDAwLnBoeTog
cHJvYmUgd2l0aCBkcml2ZXIgcm9ja2NoaXAtdHlwZWMtcGh5IGZhaWxlZCB3aXRoIGVycm9yIC0x
MTAKcm9ja2NoaXAtdHlwZWMtcGh5IGZmODAwMDAwLnBoeTogZGVmZXJyZWQgcHJvYmUgdGltZW91
dCwgaWdub3JpbmcgZGVwZW5kZW5jeQpyb2NrY2hpcC10eXBlYy1waHkgZmY4MDAwMDAucGh5OiBw
cm9iZSB3aXRoIGRyaXZlciByb2NrY2hpcC10eXBlYy1waHkgZmFpbGVkIHdpdGggZXJyb3IgLTEx
MApya19pb21tdSBmZjY2MDQ4MC5pb21tdTogZGVmZXJyZWQgcHJvYmUgdGltZW91dCwgaWdub3Jp
bmcgZGVwZW5kZW5jeQpya19pb21tdSBmZjY2MDQ4MC5pb21tdTogcHJvYmUgd2l0aCBkcml2ZXIg
cmtfaW9tbXUgZmFpbGVkIHdpdGggZXJyb3IgLTExMApya19pb21tdSBmZjhmM2YwMC5pb21tdTog
ZGVmZXJyZWQgcHJvYmUgdGltZW91dCwgaWdub3JpbmcgZGVwZW5kZW5jeQpya19pb21tdSBmZjhm
M2YwMC5pb21tdTogcHJvYmUgd2l0aCBkcml2ZXIgcmtfaW9tbXUgZmFpbGVkIHdpdGggZXJyb3Ig
LTExMApya19pb21tdSBmZjkwM2YwMC5pb21tdTogZGVmZXJyZWQgcHJvYmUgdGltZW91dCwgaWdu
b3JpbmcgZGVwZW5kZW5jeQpya19pb21tdSBmZjkwM2YwMC5pb21tdTogcHJvYmUgd2l0aCBkcml2
ZXIgcmtfaW9tbXUgZmFpbGVkIHdpdGggZXJyb3IgLTExMApya19pb21tdSBmZjkxNDAwMC5pb21t
dTogZGVmZXJyZWQgcHJvYmUgdGltZW91dCwgaWdub3JpbmcgZGVwZW5kZW5jeQpya19pb21tdSBm
ZjkxNDAwMC5pb21tdTogcHJvYmUgd2l0aCBkcml2ZXIgcmtfaW9tbXUgZmFpbGVkIHdpdGggZXJy
b3IgLTExMApya19pb21tdSBmZjkyNDAwMC5pb21tdTogZGVmZXJyZWQgcHJvYmUgdGltZW91dCwg
aWdub3JpbmcgZGVwZW5kZW5jeQpya19pb21tdSBmZjkyNDAwMC5pb21tdTogcHJvYmUgd2l0aCBk
cml2ZXIgcmtfaW9tbXUgZmFpbGVkIHdpdGggZXJyb3IgLTExMApwbGF0Zm9ybSBmZTgwMDAwMC51
c2I6IGRlZmVycmVkIHByb2JlIHBlbmRpbmc6IHBsYXRmb3JtOiB3YWl0IGZvciBzdXBwbGllciAv
cGh5QGZmN2MwMDAwL3VzYjMtcG9ydApzZGhjaS1hcmFzYW4gZmUzMzAwMDAubW1jOiBkZWZlcnJl
ZCBwcm9iZSB0aW1lb3V0LCBpZ25vcmluZyBkZXBlbmRlbmN5CnBsYXRmb3JtIGZlOTAwMDAwLnVz
YjogZGVmZXJyZWQgcHJvYmUgcGVuZGluZzogcGxhdGZvcm06IHdhaXQgZm9yIHN1cHBsaWVyIC9w
aHlAZmY4MDAwMDAvdXNiMy1wb3J0CnNkaGNpLWFyYXNhbiBmZTMzMDAwMC5tbWM6IHByb2JlIHdp
dGggZHJpdmVyIHNkaGNpLWFyYXNhbiBmYWlsZWQgd2l0aCBlcnJvciAtMTEwCnBsYXRmb3JtIGZm
MWQwMDAwLnNwaTogZGVmZXJyZWQgcHJvYmUgcGVuZGluZzogKHJlYXNvbiB1bmtub3duKQpwbGF0
Zm9ybSBoZG1pLXNvdW5kOiBkZWZlcnJlZCBwcm9iZSBwZW5kaW5nOiBhc29jLXNpbXBsZS1jYXJk
OiBwYXJzZSBlcnJvcgoKV29ya2luZyBib290IHdpdGggQ09ORklHX1JPQ0tDSElQX1BNX0RPTUFJ
TlM9eToKCmh0dHBzOi8vbGVkZ2UudmFsaWRhdGlvbi5saW5hcm8ub3JnL3NjaGVkdWxlci9qb2Iv
MTE5MjcyCgpkd21tY19yb2NrY2hpcCBmZTMyMDAwMC5tbWM6IElETUFDIHN1cHBvcnRzIDMyLWJp
dCBhZGRyZXNzIG1vZGUuCmR3bW1jX3JvY2tjaGlwIGZlMzIwMDAwLm1tYzogVXNpbmcgaW50ZXJu
YWwgRE1BIGNvbnRyb2xsZXIuCmR3bW1jX3JvY2tjaGlwIGZlMzIwMDAwLm1tYzogVmVyc2lvbiBJ
RCBpcyAyNzBhCmR3bW1jX3JvY2tjaGlwIGZlMzIwMDAwLm1tYzogRFcgTU1DIGNvbnRyb2xsZXIg
YXQgaXJxIDQ1LDMyIGJpdCBob3N0IGRhdGEgd2lkdGgsMjU2IGRlZXAgZmlmbwpkd21tY19yb2Nr
Y2hpcCBmZTMyMDAwMC5tbWM6IEdvdCBDRCBHUElPCmZmMWEwMDAwLnNlcmlhbDogdHR5UzIgYXQg
TU1JTyAweGZmMWEwMDAwIChpcnEgPSA0NCwgYmFzZV9iYXVkID0gMTUwMDAwMCkgaXMgYSAxNjU1
MEEKcHJpbnRrOiBsZWdhY3kgY29uc29sZSBbdHR5UzJdIGVuYWJsZWQKbW1jX2hvc3QgbW1jMTog
QnVzIHNwZWVkIChzbG90IDApID0gNDAwMDAwSHogKHNsb3QgcmVxIDQwMDAwMEh6LCBhY3R1YWwg
NDAwMDAwSFogZGl2ID0gMCkKZHdfd2R0IGZmODQ4MDAwLndhdGNoZG9nOiBObyB2YWxpZCBUT1Bz
IGFycmF5IHNwZWNpZmllZAptbWNfaG9zdCBtbWMxOiBCdXMgc3BlZWQgKHNsb3QgMCkgPSA1MDAw
MDAwMEh6IChzbG90IHJlcSA1MDAwMDAwMEh6LCBhY3R1YWwgNTAwMDAwMDBIWiBkaXYgPSAwKQpt
bWMwOiBDUUhDSSB2ZXJzaW9uIDUuMTAKcmtfZ21hYy1kd21hYyBmZTMwMDAwMC5ldGhlcm5ldDog
SVJRIGV0aF93YWtlX2lycSBub3QgZm91bmQKbW1jMTogbmV3IGhpZ2ggc3BlZWQgU0RIQyBjYXJk
IGF0IGFkZHJlc3MgYWFhYQpmYW41MzU1NS1yZWd1bGF0b3IgMC0wMDQwOiBGQU41MzU1NSBPcHRp
b25bOF0gUmV2WzFdIERldGVjdGVkIQpmYW41MzU1NS1yZWd1bGF0b3IgMC0wMDQxOiBGQU41MzU1
NSBPcHRpb25bOF0gUmV2WzFdIERldGVjdGVkIQpya19nbWFjLWR3bWFjIGZlMzAwMDAwLmV0aGVy
bmV0OiBJUlEgZXRoX2xwaSBub3QgZm91bmQKbW1jYmxrMTogbW1jMTphYWFhIFNDMTZHIDE0Ljgg
R2lCCnJrX2dtYWMtZHdtYWMgZmUzMDAwMDAuZXRoZXJuZXQ6IElSUSBzZnR5IG5vdCBmb3VuZApH
UFQ6UHJpbWFyeSBoZWFkZXIgdGhpbmtzIEFsdC4gaGVhZGVyIGlzIG5vdCBhdCB0aGUgZW5kIG9m
IHRoZSBkaXNrLgpya19nbWFjLWR3bWFjIGZlMzAwMDAwLmV0aGVybmV0OiBEZXByZWNhdGVkIE1E
SU8gYnVzIGFzc3VtcHRpb24gdXNlZApHUFQ6MTk3ODQxNyAhPSAzMTExNjI4Nwpya19nbWFjLWR3
bWFjIGZlMzAwMDAwLmV0aGVybmV0OiBQVFAgdXNlcyBtYWluIGNsb2NrCkdQVDpBbHRlcm5hdGUg
R1BUIGhlYWRlciBub3QgYXQgdGhlIGVuZCBvZiB0aGUgZGlzay4KcmtfZ21hYy1kd21hYyBmZTMw
MDAwMC5ldGhlcm5ldDogY2xvY2sgaW5wdXQgb3Igb3V0cHV0PyAoaW5wdXQpLgpHUFQ6MTk3ODQx
NyAhPSAzMTExNjI4Nwpya19nbWFjLWR3bWFjIGZlMzAwMDAwLmV0aGVybmV0OiBUWCBkZWxheSgw
eDI4KS4KR1BUOiBVc2UgR05VIFBhcnRlZCB0byBjb3JyZWN0IEdQVCBlcnJvcnMuCnJrX2dtYWMt
ZHdtYWMgZmUzMDAwMDAuZXRoZXJuZXQ6IFJYIGRlbGF5KDB4MTEpLgogbW1jYmxrMTogcDEgcDIg
cDMgcDQgcDUgcDYgcDcgcDgKCkFja2VkLWJ5OiBIZWlrbyBTdHVlYm5lciA8aGVpa29Ac250ZWNo
LmRlPgpBY2tlZC1ieTogQXJuZCBCZXJnbWFubiA8YXJuZEBhcm5kYi5kZT4KU3VnZ2VzdGVkLWJ5
OiBVbGYgSGFuc3NvbiA8dWxmLmhhbnNzb25AbGluYXJvLm9yZz4KU3VnZ2VzdGVkLWJ5OiBIZWlr
byBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPgpTdWdnZXN0ZWQtYnk6IEFybmQgQmVyZ21hbm4g
PGFybmRAYXJuZGIuZGU+ClNpZ25lZC1vZmYtYnk6IE1pa2tvIFJhcGVsaSA8bWlra28ucmFwZWxp
QGxpbmFyby5vcmc+Ci0tLQogZHJpdmVycy9wbWRvbWFpbi9yb2NrY2hpcC9LY29uZmlnIHwgMSAr
CiAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykKCmRpZmYgLS1naXQgYS9kcml2ZXJzL3Bt
ZG9tYWluL3JvY2tjaGlwL0tjb25maWcgYi9kcml2ZXJzL3BtZG9tYWluL3JvY2tjaGlwL0tjb25m
aWcKaW5kZXggMjE4ZDQzMTg2ZTViOS4uMTdmMmU2ZmU4NmI2ZiAxMDA2NDQKLS0tIGEvZHJpdmVy
cy9wbWRvbWFpbi9yb2NrY2hpcC9LY29uZmlnCisrKyBiL2RyaXZlcnMvcG1kb21haW4vcm9ja2No
aXAvS2NvbmZpZwpAQCAtMyw2ICszLDcgQEAgaWYgQVJDSF9ST0NLQ0hJUCB8fCBDT01QSUxFX1RF
U1QKIAogY29uZmlnIFJPQ0tDSElQX1BNX0RPTUFJTlMKIAlib29sICJSb2NrY2hpcCBnZW5lcmlj
IHBvd2VyIGRvbWFpbiIKKwlkZWZhdWx0IEFSQ0hfUk9DS0NISVAKIAlkZXBlbmRzIG9uIFBNCiAJ
ZGVwZW5kcyBvbiBIQVZFX0FSTV9TTUNDQ19ESVNDT1ZFUlkKIAlkZXBlbmRzIG9uIFJFR1VMQVRP
UgotLSAKMi4zNC4xCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
