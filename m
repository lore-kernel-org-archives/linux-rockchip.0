Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A4AFD3ABEB
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 18:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5yqoXrkrhsyb4iXmEYBVAS6llROa50BFuQBUHPItkKM=; b=wjwDJCLOXrNtuu
	fdUUmiK/Ytp0NvNqNh/XjPYUwtNB98DBhTxBaDsOeNKA9r5uT3ybl2+bfA7DJbkz9VZPms+/sYkMl
	I0kTZt7tvmF0ZOPMTwg7gi68ANvlKYWqiTYZdekjYbExY8YzATL9KHG5F1F2M6ZqDK4y6ROOHw4Et
	sphNGp0+5tPqfeDBNuqVbgCySMOj3TEIdZ5rDhphc/GQuZlnV4/niGx9rghYHmmP7N0d2gY44I/Dx
	MJy+PeHmtcbMfsKcqDmRkTP94SJTFwUhObuYZdN8R0iiaydRq7aVWOQxejTPMkfUK9PGDRlyKiaX2
	vRV3lY6xYFGrnSWYE5iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAZ5G-00000000tre-0Znb;
	Mon, 11 Nov 2024 18:24:18 +0000
Received: from mail-ej1-f41.google.com ([209.85.218.41])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAYzO-00000000spp-34vJ;
	Mon, 11 Nov 2024 18:18:16 +0000
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a9acafdb745so958443266b.0;
        Mon, 11 Nov 2024 10:18:14 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731349093; x=1731953893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L9QaR0BG6R1g4qnhXgnvmqa/ekoM0k94F2vyZtmSUk0=;
        b=nT067+edBm4GzQRWM5iow0npNGUZvWkxiVFAOjjFtLzUvMiPspXrOywx0pavIt8IBd
         xPjJ4DZNvTsQ5xUCUiedUpIbKvCP2YUfm1pg+I98BQqQudQP63p8ynxevswaTSInQKLG
         f/R+S+w5G3v232se3nI2is/AJO0KmLOTqIu+SnRz3aUczZBf52DcxV+PUlhwOrWBoC/l
         0DN5odDxhQxTMW+FqPhSMGhDSCJlyRsem2w+DSpjNu02itEfNn2xeTGaAUfHsejlNFfE
         iEeb6Vu+hbDo+IiVe+MPj6xNlIeWg14Gp9PTR1CwhcLDcwv7qAvojfKW0BqSOw1SX3zg
         ZYRw==
X-Forwarded-Encrypted: i=1; AJvYcCVv7lo2YIkkWcOvmtZIHUZdRktyQ5FpL2xRplheF27kBJoKh3NpyAC3+5pQ6/DTnjsYXZYTHEeWp7EItr+fBK/V@lists.infradead.org, AJvYcCWphFeJH6+KmT2bnYPINXirYKbqHlycbCRbvvXaq7QyMlnbH5LgUGCxEQiQXyvyDPrl2ryxg2Nq5ypiQ1QhYwM=@lists.infradead.org
X-Gm-Message-State: AOJu0YwgY4VxxbF2991IvINpz1HAM9skRCHsTjIXqMNrayk6Y3b2NBOf
	PXxvmxK+fL+pOS2gEloPksHLzdvh1yykW/aBAi7oAOGm42dPaepK
X-Google-Smtp-Source: AGHT+IFRTD3QXRpX84g/OrfQbY0Ox6bUTyQy1uaHky5CSXyrm+co0z+49Rf4f0/uWBqCzAr0o5zw8g==
X-Received: by 2002:a17:907:7f1b:b0:a9a:17be:fac7 with SMTP id a640c23a62f3a-a9eefeb5cb4mr1224603366b.14.1731349092826;
        Mon, 11 Nov 2024 10:18:12 -0800 (PST)
Received: from localhost.localdomain ([193.142.191.186])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0a17b64sm617868466b.39.2024.11.11.10.18.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 10:18:12 -0800 (PST)
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
Subject: [PATCH 2/3] arm64: dts: rockchip: Enable sdmmc2 on rock-3b and set it up for SDIO devices
Date: Mon, 11 Nov 2024 19:17:26 +0100
Message-ID: <20241111181807.13211-3-tszucs@linux.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20241111181807.13211-1-tszucs@linux.com>
References: <20241111181807.13211-1-tszucs@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_101814_794702_CBF40137 
X-CRM114-Status: GOOD (  11.42  )
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

RW5hYmxlIFNESU8gb24gUmFkeGEgUk9DSyAzIE1vZGVsIEIgTS4yIEtleSBFLiBBZGQgYWxsIHN1
cHBvcnRlZCBVSFMtSSByYXRlcyBhbmQKZW5hYmxlIDIwMCBNSHogbWF4aW11bSBjbG9jay4gQWxz
bywgYWxsb3cgaG9zdCB3YWtldXAgdmlhIFNESU8gSVJRLgoKU2lnbmVkLW9mZi1ieTogVGFtw6Fz
IFN6xbFjcyA8dHN6dWNzQGxpbnV4LmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tj
aGlwL3JrMzU2OC1yb2NrLTNiLmR0cyB8IDggKysrKysrKy0KIDEgZmlsZSBjaGFuZ2VkLCA3IGlu
c2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKCmRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0cyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9j
a2NoaXAvcmszNTY4LXJvY2stM2IuZHRzCmluZGV4IDI0MmFmNTMzN2NkZi4uYjc1MjdiYTQxOGY3
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNi
LmR0cworKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzU2OC1yb2NrLTNiLmR0
cwpAQCAtNjg4LDE0ICs2ODgsMjAgQEAgJnNkbW1jMiB7CiAJY2FwLXNkLWhpZ2hzcGVlZDsKIAlj
YXAtc2Rpby1pcnE7CiAJa2VlcC1wb3dlci1pbi1zdXNwZW5kOworCW1heC1mcmVxdWVuY3kgPSA8
MjAwMDAwMDAwPjsKIAltbWMtcHdyc2VxID0gPCZzZGlvX3B3cnNlcT47CiAJbm9uLXJlbW92YWJs
ZTsKIAlwaW5jdHJsLW5hbWVzID0gImRlZmF1bHQiOwogCXBpbmN0cmwtMCA9IDwmc2RtbWMybTBf
YnVzNCAmc2RtbWMybTBfY2xrICZzZG1tYzJtMF9jbWQ+OworCXNkLXVocy1zZHIxMjsKKwlzZC11
aHMtc2RyMjU7CisJc2QtdWhzLXNkcjUwOwogCXNkLXVocy1zZHIxMDQ7CisJc2QtdWhzLWRkcjUw
OwogCXZtbWMtc3VwcGx5ID0gPCZ2Y2MzdjNfc3lzMj47CiAJdnFtbWMtc3VwcGx5ID0gPCZ2Y2Nf
MXY4PjsKLQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCXdha2V1cC1zb3VyY2U7CisJc3RhdHVzID0g
Im9rYXkiOwogfTsKIAogJnNmYyB7Ci0tIAoyLjQ1LjIKCgpfX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1yb2NrY2hpcCBtYWlsaW5nIGxpc3QKTGlu
dXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LXJvY2tjaGlwCg==
