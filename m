Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D9C9CC7EE31
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Jun 2025 13:51:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pTY9Pak1mkWts8FTA0Cj8NpyMHjBMajJILDDnxuer4o=; b=kD5Jot3V8rNhI8
	jhu85SHDg//qFfthEVohAnY4So5LznYyhXS3ZyU6vXMhwfVaq2SOv+2/8agpr/ZC8zhHCQvlZ5Rt4
	nKV9NVmoiQwWtAFP1upIP51kkudlF4gKiWD1ng+kl1YUTnn/TlN4DBjnyc8ze13JbkFy65BB7is6/
	aQGIqwMafmrN/FL60yjY+y+bF86DXjiom5cBu4cjJN+L9wj1hX4US2qRdUtjvHEKmnBQiIBanSfpt
	cwzV4U+EeMtJ2I4SsItvmFE91lYB3uTx0+TkjDhcCx0gpAYB+UMkQlu2Ocok6C7MEmoJWITE0P0wA
	ZP5acOp1CbwP/J9iSGQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV9UE-0000000EpTk-0ns9;
	Fri, 27 Jun 2025 13:51:26 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uV8xd-0000000EkdE-1ela;
	Fri, 27 Jun 2025 13:17:46 +0000
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-60c5b8ee2d9so4614933a12.2;
        Fri, 27 Jun 2025 06:17:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1751030263; x=1751635063; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vgOdRzeLiUyb+th+vZ8OE4pKfRDS2CiYAzgM2DeadJs=;
        b=Vy6ZNeCHEkoKB1/q4/tERY3Ec2K5XFhcfz2s0o2VSKg4YxLwNM+wQ7/4t2a+IHTX91
         9Nq1j5SBsv59M0+CIyi/ncRObTH8wW/TjEjBApoFf29PQ33rDXjcorywu46IGs2DWf4M
         dL2HL68XNpApBZDgNc/gDGrYUkumKFBmhnJypTZy/zFTsfvFRQZSCkYOanc7txwzEIb7
         /o7iL1KtGODmzmKK1pAaYsT6OanuvS8/7Wg4J0T3c+hylAUrStdAqKUXTLctQCOuInyV
         TEj2vzoVb642ZTXrhR5aDqNrRbsymcf6Rt+ncrmOAa/Q4/W3Xx0JfhEjP23gmXRnhNda
         La4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751030263; x=1751635063;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vgOdRzeLiUyb+th+vZ8OE4pKfRDS2CiYAzgM2DeadJs=;
        b=UiVzS2DH+LJya8CckDndlscnswvmKA9gAYWbMsCvAx0I90NY6OxN30dZ9IirhCwfG9
         RDezBC5kbOdNGkLaDF5UahMMrPKfjWXyScYemlFBZKAlmAJuj+V6MpASLrI/QjjZiUyW
         du1QjOgHeTrGHYfSNgV4p9uRa/SmzcojqRpvvlkGD70rHc1DXV/oaxMPfJg8wm98DSH6
         vb1gbpqA191TeDvneqFZRvuzZOrJQFzBwG/oGBA7RU+whQdDBTvWE+/TNWRUNjLTzt3D
         voFPUQNSaFJvoNo3+OdAFnDD2FoRXqHRosB7s2c23mZCo1owxByjSiiCljXg+RRP21jO
         EQDw==
X-Forwarded-Encrypted: i=1; AJvYcCVfbJ93H7I7o5C02Z/VTWjs9GXi7WafahvSIyulPjEGIxWTHnVJ5ieV9xYcw84CxAxWClIM1/fI/swVuFOTyi3f@lists.infradead.org, AJvYcCXUdUol48yzhiMD112CoT3FWH5InC7Z/kDWnvj0X1HwdNYYIhx/tGyC404SCYDh54AAbH/IPSZ7/ouSn8aa9N8=@lists.infradead.org
X-Gm-Message-State: AOJu0Yxpr73PbIDb4xF+cUSMRjXQXaBXzIWD7J5ewh+ienHGq5XrCcyi
	KSl6NpuEGrXf+p1/ZrOVjaHocTGCV8cMKTjQXaXMIwZrhbDI8obJ0jD6
X-Gm-Gg: ASbGncufNycBh8mYh5QZnm6C32j91n9YiqrmjtfDQ+ntFfVqq+Z6TaxG1aRTNFLpmY6
	qcIkoed5wOPgH5oxJoO2Njg/YcMZHctx8REutSyFNMZs2hCM4PYXIkDyMDqBUY5TQw8hSuGnL5v
	uD4y6EKA+N7iQfBTNrK3R9hk8IWX/HASfEtr7cFL2hwD0HFoJSE2c7LJ7B/aAZ+8Uj+nzRiSVGb
	wy5kCsev6aB+EbMvtHaHAiqYw5fZfZZjBvQ7Wmd6OvMP/zzlS75k6fyVCuwoXnGyBqWcs9sBF5h
	tXFJVpCicvHiHZclDOL3UvNMn/abd0vinjLS1iPsYO2qSvMnEzetr49zrULvIF7v97Gk2c5GROh
	xHg7KykXemFD3rYqPgFMJymGkoxtjvrb3b0kkQPly
X-Google-Smtp-Source: AGHT+IFeDwRVWmFdmXrateAqMmllYMK2zntwA1WZ2gBdjY3aP4MNxSK4Z7UA17+I+Adl/DbaSrC1jg==
X-Received: by 2002:a05:6402:84e:b0:60c:79de:1c59 with SMTP id 4fb4d7f45d1cf-60c88b3e392mr2714318a12.7.1751030263064;
        Fri, 27 Jun 2025 06:17:43 -0700 (PDT)
Received: from localhost.localdomain (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c83205eb0sm1471143a12.72.2025.06.27.06.17.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 06:17:42 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
X-Google-Original-From: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>,
	Lukasz Czechowski <lukasz.czechowski@thaumatec.com>,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Farouk Bouabid <farouk.bouabid@cherry.de>,
	Diederik de Haas <didi.debian@cknow.org>
Cc: stable@vger.kernel.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: use cs-gpios for spi1 on ringneck
Date: Fri, 27 Jun 2025 15:17:12 +0200
Message-Id: <20250627131715.1074308-1-jakob.unterwurzacher@cherry.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250627_061745_435355_A241AF59 
X-CRM114-Status: GOOD (  15.48  )
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

RnJvbTogSmFrb2IgVW50ZXJ3dXJ6YWNoZXIgPGpha29iLnVudGVyd3VyemFjaGVyQGNoZXJyeS5k
ZT4KCkhhcmR3YXJlIENTIGhhcyBhIHZlcnkgc2xvdyByaXNlIHRpbWUgb2YgYWJvdXQgNnVzLApj
YXVzaW5nIHRyYW5zbWlzc2lvbiBlcnJvcnMgd2hlbiBDUyBkb2VzIG5vdCByZWFjaApoaWdoIGJl
dHdlZW4gdHJhbnNhY3Rpb24uCgpJdCBsb29rcyBsaWtlIGl0J3Mgbm90IGRyaXZlbiBhY3RpdmVs
eSB3aGVuIHRyYW5zaXRpb25pbmcKZnJvbSBsb3cgdG8gaGlnaCBidXQgc3dpdGNoZWQgdG8gaW5w
dXQsIHNvIG9ubHkgdGhlIENQVQpwdWxsLXVwIHB1bGxzIGl0IGhpZ2gsIHNsb3dseS4gVHJhbnNp
dGlvbnMgZnJvbSBoaWdoIHRvIGxvdwphcmUgZmFzdC4gT24gdGhlIG9zY2lsbG9zY29wZSwgQ1Mg
bG9va3MgbGlrZSBhbiBpcnJlZ3VsYXIgc2F3dG9vdGgKcGF0dGVybiBsaWtlIHRoaXM6CiAgICAg
ICAgICAgICAgICAgICAgICAgICBfX19fXwogICAgICAgICAgICAgIF4gICAgICAgICAvICAgICB8
CiAgICAgIF4gICAgICAvfCAgICAgICAgLyAgICAgIHwKICAgICAvfCAgICAgLyB8ICAgICAgIC8g
ICAgICAgfAogICAgLyB8ICAgIC8gIHwgICAgICAvICAgICAgICB8Cl9fXy8gIHxfX18vICAgfF9f
X19fLyAgICAgICAgIHxfX18KCldpdGggY3MtZ3Bpb3Mgd2UgaGF2ZSBhIENTIHJpc2UgdGltZSBv
ZiBhYm91dCAyMG5zLCBhcyBpdCBzaG91bGQgYmUsCmFuZCBDUyBsb29rcyByZWN0YW5ndWxhci4K
ClRoaXMgZml4ZXMgdGhlIGRhdGEgZXJyb3JzIHdoZW4gcnVubmluZyBhIGZsYXNoY3AgbG9vcCBh
Z2FpbnN0IGEKbTI1cDQwIHNwaSBmbGFzaC4KCldpdGggdGhlIFJvY2tjaGlwIDYuMSBrZXJuZWwg
d2Ugc2VlIHRoZSBzYW1lIHNsb3cgcmlzZSB0aW1lLCBidXQKZm9yIHNvbWUgcmVhc29uIENTIGlz
IGFsd2F5cyBoaWdoIGZvciBsb25nIGVub3VnaCB0byByZWFjaCBhIHNvbGlkCmhpZ2guCgpUaGUg
UkszMzk5IGFuZCBSSzM1ODggU29DcyB1c2UgdGhlIHNhbWUgU1BJIGRyaXZlciwgc28gd2UgYWxz
bwpjaGVja2VkIG91ciAiUHVtYSIgKFJLMzM5OSkgYW5kICJUaWdlciIgKFJLMzU4OCkgYm9hcmRz
LgpUaGV5IGRvIG5vdCBoYXZlIHRoaXMgcHJvYmxlbS4gSGFyZHdhcmUgQ1MgcmlzZSB0aW1lIGlz
IGdvb2QuCgpGaXhlczogYzQ4NGNmOTNmNjFiICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBQ
WDMwLcK1UTcgKFJpbmduZWNrKSBTb00gd2l0aCBIYWlrb3UgYmFzZWJvYXJkIikKQ2M6IHN0YWJs
ZUB2Z2VyLmtlcm5lbC5vcmcKUmV2aWV3ZWQtYnk6IFF1ZW50aW4gU2NodWx6IDxxdWVudGluLnNj
aHVsekBjaGVycnkuZGU+ClNpZ25lZC1vZmYtYnk6IEpha29iIFVudGVyd3VyemFjaGVyIDxqYWtv
Yi51bnRlcnd1cnphY2hlckBjaGVycnkuZGU+Ci0tLQp2MjoKKiBSZW5hbWUgc3BpMV9jc24wX2dw
aW8gLT4gc3BpMV9jc24wX2dwaW9fcGluIHRvIG1ha2UgQ0hFQ0tfRFRCUz15IGhhcHB5CiogQWRk
IHBpbmN0cmwtbmFtZXMgPSAiZGVmYXVsdCI7Cgp2MTogaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcv
YWxsLzIwMjUwNjIwMTEzNTQ5LjI5MDAyODUtMS1qYWtvYi51bnRlcnd1cnphY2hlckBjaGVycnku
ZGUvCgogLi4uL2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaSAgICAgIHwgMjMg
KysrKysrKysrKysrKysrKysrKwogMSBmaWxlIGNoYW5nZWQsIDIzIGluc2VydGlvbnMoKykKCmRp
ZmYgLS1naXQgYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRz
aSBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay5kdHNpCmluZGV4
IGFiMjMyZTVjN2FkNi4uNDIwM2IzMzVhMjYzIDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaQorKysgYi9hcmNoL2FybTY0L2Jvb3QvZHRz
L3JvY2tjaGlwL3B4MzAtcmluZ25lY2suZHRzaQpAQCAtMzc5LDYgKzM3OSwxOCBAQCBwbWljX2lu
dDogcG1pYy1pbnQgewogCQkJCTwwIFJLX1BBNyBSS19GVU5DX0dQSU8gJnBjZmdfcHVsbF91cD47
CiAJCX07CiAJfTsKKworCXNwaTEgeworCQlzcGkxX2NzbjBfZ3Bpb19waW46IHNwaTEtY3NuMC1n
cGlvLXBpbiB7CisJCQlyb2NrY2hpcCxwaW5zID0KKwkJCQk8MyBSS19QQjEgUktfRlVOQ19HUElP
ICZwY2ZnX3B1bGxfdXBfNG1hPjsKKwkJfTsKKworCQlzcGkxX2NzbjFfZ3Bpb19waW46IHNwaTEt
Y3NuMS1ncGlvLXBpbiB7CisJCQlyb2NrY2hpcCxwaW5zID0KKwkJCQk8MyBSS19QQjIgUktfRlVO
Q19HUElPICZwY2ZnX3B1bGxfdXBfNG1hPjsKKwkJfTsKKwl9OwogfTsKIAogJnBtdV9pb19kb21h
aW5zIHsKQEAgLTM5Niw2ICs0MDgsMTcgQEAgJnNkbW1jIHsKIAl2cW1tYy1zdXBwbHkgPSA8JnZj
Y2lvX3NkPjsKIH07CiAKKyZzcGkxIHsKKwkvKgorCSAqIEhhcmR3YXJlIENTIGhhcyBhIHZlcnkg
c2xvdyByaXNlIHRpbWUgb2YgYWJvdXQgNnVzLAorCSAqIGNhdXNpbmcgdHJhbnNtaXNzaW9uIGVy
cm9ycy4KKwkgKiBXaXRoIGNzLWdwaW9zIHdlIGhhdmUgYSByaXNlIHRpbWUgb2YgYWJvdXQgMjBu
cy4KKwkgKi8KKwljcy1ncGlvcyA9IDwmZ3BpbzMgUktfUEIxIEdQSU9fQUNUSVZFX0xPVz4sIDwm
Z3BpbzMgUktfUEIyIEdQSU9fQUNUSVZFX0xPVz47CisJcGluY3RybC1uYW1lcyA9ICJkZWZhdWx0
IjsKKwlwaW5jdHJsLTAgPSA8JnNwaTFfY2xrICZzcGkxX2NzbjBfZ3Bpb19waW4gJnNwaTFfY3Nu
MV9ncGlvX3BpbiAmc3BpMV9taXNvICZzcGkxX21vc2k+OworfTsKKwogJnRzYWRjIHsKIAlzdGF0
dXMgPSAib2theSI7CiB9OwotLSAKMi4zOS41CgoKX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJv
Y2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
