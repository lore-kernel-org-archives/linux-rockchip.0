Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 55AA8D3ABE7
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 Nov 2024 18:20:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bK6sYTgY6X/qfq84+YXCebf6A5p9mZzVoxOvfVPFNsU=; b=gfF+r3gPAw85Zb
	0Z9CBz0vliSVQUsILEl5V7ahGnOzzl4g78VfLzfql8jy/MpOUO4yDXCzOpLrwUzZ0LyvwwcoBFryi
	Fu2KkeUBpApzgADmAY3zsiaYxuQbytUAidTNwJYNucWxrVkqo3Cc3/WJk1JUXkZNtT2K1dn1hvUxB
	RSiVisthXb4EoWGTFMHEhv2w1A2/CFWwH86pXpQKwvWEzLi5HX2yjPZUG/ZT2bUQ68aej9a0T/xE0
	L7jfYNf8JFbxXBgvQ2MmsqMXGnXq8A9s1lC8xbkW4LDY9O1OHJlIUeACXhZpiZ8yRMiYk6sIHSHbO
	CtvDk7kLNHWewdX10DgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAZ1i-00000000tF5-0jO3;
	Mon, 11 Nov 2024 18:20:38 +0000
Received: from mail-ej1-f43.google.com ([209.85.218.43])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAYzN-00000000spX-3My9;
	Mon, 11 Nov 2024 18:18:15 +0000
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-a9ed49edd41so849855666b.0;
        Mon, 11 Nov 2024 10:18:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731349091; x=1731953891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uuZnyXBdk3QHcPbZuZ4wdiQBJmOvaPtia/X0YSXMhqk=;
        b=AtBYAQ/8Cig93LDv9UBsBVlmgkY6XSTg1gM2W2cGIRRhu+GSUAC1zFjx+aQgQfHyBy
         ApnPfMRwn31NiyNszqe41op8pQ4Wxcwl1+eTSRGdDOZwzgUhcMTy4BRaW1kMSTSef8Pu
         f/NtCEJdAYhsu9XWNa/Dd8nWDeAQ33D/hQL6o1nUDNlvKzsmXLDU17jwpBatBibOEJB2
         a+UtzqaLmzrulAXx0f9NvjxOmcRGZhDgMQ/jBqxjlJlDoXpS6HSt7iX3IeNZUNMdjwHQ
         ovrH5dbTgULti+DdxRi2Zapvsxg0kRCnLqRn7qJPn1P2FOIijHu85YPf9ix15Yq5nx3u
         xJyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUqoPnrm1OKaG+UJ1OmwrukDXzyNZOovy7/Ej2vaeGaQCvBXQ9UayRINj83SDudIegXnpFxS2y/oYDdZPXR5iUj@lists.infradead.org, AJvYcCUuQ2nX32fjCVVR7E2nkGmTFFzvB7W59wMRsvkgIj8Zq3wmrYW78tKQB2aZqBnXOvRSy/RyhafqNZbKdXeql6I=@lists.infradead.org
X-Gm-Message-State: AOJu0Yx2XDmBDgLKIgUR60hxsQ5BS2w1jowpAEpiDHUq30xaTyqXUSlJ
	Sg5kyyfJQJbn5nSujFBJcWCVpCZxlE2cG/fwm/eZsEOcpUiaO/ID8h8Thyigbx8=
X-Google-Smtp-Source: AGHT+IGFs+veCOYdFl4AbDVCq/r8ZyxcC4t3ag3b+QKAnXD58wwk8c8uG5tNU8vrFqoP3DjFTYY2kA==
X-Received: by 2002:a17:907:368a:b0:a9e:8574:e154 with SMTP id a640c23a62f3a-a9ef00216fdmr1422727866b.59.1731349091087;
        Mon, 11 Nov 2024 10:18:11 -0800 (PST)
Received: from localhost.localdomain ([193.142.191.186])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0a17b64sm617868466b.39.2024.11.11.10.18.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Nov 2024 10:18:10 -0800 (PST)
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
Subject: [PATCH 0/3] arm64: dts: rockchip: rock-3b TF + M2E updates
Date: Mon, 11 Nov 2024 19:17:24 +0100
Message-ID: <20241111181807.13211-1-tszucs@linux.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_101813_866609_C369FA66 
X-CRM114-Status: UNSURE (   9.11  )
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

SGksCgpDaGFuZ2VzIGhhdmUgYmVlbiB0ZXN0ZWQgb24gYW4gUkszNTY4Siwgd2l0aCBhbiBlbXBo
YXNpcyBvbiBERFI1MCBhbmQgU0RSMTA0IGF0IDIwMCBNSHouCgpLaW5kIHJlZ2FyZHMsClRhbWFz
CgpUYW3DoXMgU3rFsWNzICgzKToKICBhcm02NDogZHRzOiByb2NrY2hpcDogQWRkIHN1cHBvcnRl
ZCBVSFMtSSByYXRlcyB0byBzZG1tYzAgb24gcm9jay0zYgogIGFybTY0OiBkdHM6IHJvY2tjaGlw
OiBFbmFibGUgc2RtbWMyIG9uIHJvY2stM2IgYW5kIHNldCBpdCB1cCBmb3IgU0RJTwogICAgZGV2
aWNlcwogIGFybTY0OiBkdHM6IHJvY2tjaGlwOiBFbmFibGUgVUFSVDggb24gcm9jay0zYgoKIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszNTY4LXJvY2stM2IuZHRzIHwgMTYgKysrKysr
KysrKysrKystLQogMSBmaWxlIGNoYW5nZWQsIDE0IGluc2VydGlvbnMoKyksIDIgZGVsZXRpb25z
KC0pCgotLSAKMi40NS4yCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1yb2NrY2hpcAo=
