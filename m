Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07850D3ABEA
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 18:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KoclNv3WP8x819b/xev1VuRnAjiy0yRoYiVRCYK/4Z0=; b=EHf/9MZIEOtZoL
	hBTJHjlAD+j6BNXn7CI1CJRvPRePgBBJk0g5M+Xk3O7ZyreOzHKk3q14IeMPfunomU2cQjo39DRsb
	ganh2PRJTXhxp9pkAzDu8WSzgFsG+yD7VY1r+Mkj3a6s0kSpcvRvpZWOVR3UCbOnUAWK9KvcYw2FT
	U8fLIyvjPg68acncT3vTHY1vd2zXkwrZw59nXo3ga5Hya/BCd2KNI5PlcyfGKO3HmosDqAZlNRuM8
	Zr+hJKyN6N3Wv0LxayX94m0g0YfMeSJugHqTJDLzpWCa2jRLGgrAwEBz99nm408r9MjFe13aIIs0t
	cTJzP2x8Hf8n5Aj0NF9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAZ5G-00000000trq-29ul;
	Mon, 11 Nov 2024 18:24:18 +0000
Received: from mail-ej1-f53.google.com ([209.85.218.53])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAYzO-00000000spb-1Mel;
	Mon, 11 Nov 2024 18:18:16 +0000
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-a9a850270e2so889695066b.0;
        Mon, 11 Nov 2024 10:18:13 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731349092; x=1731953892;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eckdRA2Gz50Pl0iUsR156tV+5lFkIuN6FgaOkhY4G4M=;
        b=SNFnki+U09yKPPo5cuVTpdDJbk14WCALYeCGYK8iXvKLvaY0d7TXf56VKjyvFylpZe
         2RBDn9WNr5vjalBLbPViRXSOKUJZf7pZeAeYfR428TXvSAE74pkaQTxsevKdRankFQwD
         ktBfRTZfZ7CqJsE1lp8/nybHI1s4huO49CRp5T6pDYRTBPyhRKbIsCelbxRNMFZMyVYb
         KH5rxODf0rMQ0ZADEcoTKmV4yPvHLG1PwElPf/WL68tsRqQ012M5QqJxyxVg2CMfWVRo
         dMyfZvPWeOlPeMBzfq3ir/EnqVk9g3nWTb5vicshcmYAAQSaYvYWU4jGwiaaU27mYx4y
         8e9A==
X-Forwarded-Encrypted: i=1; AJvYcCVlG1eHELtkNgxVahHlCvveBY/ju5afCYJEPFxeAxHid0T5ffQUgHXjPH3RRsO1f8BkxxrPzGHLfL8BdEcJkww=@lists.infradead.org, AJvYcCVpI16jVHivpbus0dJXskbGqOWUPShRD6UycrpaWYzZRqdlijW4i1qLQQyezmgKN9ZXFHldPNgWKugSurAws+1L@lists.infradead.org
X-Gm-Message-State: AOJu0Yxtg4pxmDY4O6lMv0Jt62/bN87YUaaOqOADL2q3bCrfIpO8qOF3
	kw+w0R1HfbHSKheA0ktP1YCPKwymIwOHm912YHrM+3mbdpYt2oiu
X-Google-Smtp-Source: AGHT+IHD9WSUDwH4PlIGM00maH6QB8VOUn1a7QCnR3fLMSi0p8bYg2PXCsAsVliSK0qebYRlecvEmA==
X-Received: by 2002:a17:907:84a:b0:a99:e1a1:473f with SMTP id a640c23a62f3a-a9ef001914fmr1369234166b.57.1731349091955;
        Mon, 11 Nov 2024 10:18:11 -0800 (PST)
Received: from localhost.localdomain ([193.142.191.186])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0a17b64sm617868466b.39.2024.11.11.10.18.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 10:18:11 -0800 (PST)
From: =?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@linux.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	=?UTF-8?q?Tam=C3=A1s=20Sz=C5=B1cs?= <tszucs@linux.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Dragan Simic <dsimic@manjaro.org>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] arm64: dts: rockchip: Add supported UHS-I rates to sdmmc0 on rock-3b
Date: Mon, 11 Nov 2024 19:17:25 +0100
Message-ID: <20241111181807.13211-2-tszucs@linux.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111181807.13211-1-tszucs@linux.com>
References: <20241111181807.13211-1-tszucs@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_101814_400763_4982E34D 
X-CRM114-Status: GOOD (  10.12  )
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

QWRkIGFsbCBzdXBwb3J0ZWQgVUhTLUkgcmF0ZXMgdG8gc2RtbWMwIGFuZCBhbGxvdyAyMDAgTUh6
IG1heGltdW0gY2xvY2sgdG8KYmVuZWZpdCBtb2Rlcm4gU0QgY2FyZHMuCgpTaWduZWQtb2ZmLWJ5
OiBUYW3DoXMgU3rFsWNzIDx0c3p1Y3NAbGludXguY29tPgotLS0KIGFyY2gvYXJtNjQvYm9vdC9k
dHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzIHwgNiArKysrKysKIDEgZmlsZSBjaGFuZ2Vk
LCA2IGluc2VydGlvbnMoKykKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2OC1yb2NrLTNiLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmsz
NTY4LXJvY2stM2IuZHRzCmluZGV4IDNkMGMxY2NmYWE3OS4uMjQyYWY1MzM3Y2RmIDEwMDY0NAot
LS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cworKysg
Yi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cwpAQCAtNjcw
LDggKzY3MCwxNCBAQCAmc2RtbWMwIHsKIAlidXMtd2lkdGggPSA8ND47CiAJY2FwLXNkLWhpZ2hz
cGVlZDsKIAlkaXNhYmxlLXdwOworCW1heC1mcmVxdWVuY3kgPSA8MjAwMDAwMDAwPjsKIAlwaW5j
dHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmc2RtbWMwX2J1czQgJnNkbW1j
MF9jbGsgJnNkbW1jMF9jbWQgJnNkbW1jMF9kZXQ+OworCXNkLXVocy1zZHIxMjsKKwlzZC11aHMt
c2RyMjU7CisJc2QtdWhzLXNkcjUwOworCXNkLXVocy1zZHIxMDQ7CisJc2QtdWhzLWRkcjUwOwog
CXZtbWMtc3VwcGx5ID0gPCZ2Y2MzdjNfc2Q+OwogCXZxbW1jLXN1cHBseSA9IDwmdmNjaW9fc2Q+
OwogCXN0YXR1cyA9ICJva2F5IjsKLS0gCjIuNDUuMgoKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51
eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3Jn
L21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
