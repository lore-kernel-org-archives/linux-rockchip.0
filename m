Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9B794EC8738
	for <linux-rockchip@archiver.kernel.org>; Thu,  7 Sep 2023 15:18:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0CR41mfV3tWwmgf6BLhcntDEJHWBvg0hsulUPQVLIWc=; b=QXUJNhEz6iHreZ
	8z7XowGY4jYymdfxT+tmL7tHLtW6z9iL/4+BWVwZbEm51gaqDxDXxatlCUS1Gw7UADTSVghQWqeMM
	mKnl3xYnz08fY0uugXPVZoAJQf91KI/Kyy47S5kUX/O+vSjkVG58+pWadjV/M5SNdRaaa8xjjte0l
	ItKpK0+mWpmnHrm8VKkhbWH7Hm+lmA8/QU5aloRD5PtQNSn/1Y7gavZDlZ/qeG5gQRMFkg4injPc/
	4Ii//YXwAlnYYFM4vsVwu1nz/cVzQ2v2UAPDtpsvGbrrPCz4MohkVMHZdesWKzppuG+EVkTxsaWW2
	AKud/F7+/5vtJzJm6j3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeGm0-00CFUH-14;
	Thu, 07 Sep 2023 15:18:24 +0000
Received: from mail-wr1-x432.google.com ([2a00:1450:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeGlx-00CFSP-18;
	Thu, 07 Sep 2023 15:18:22 +0000
Received: by mail-wr1-x432.google.com with SMTP id ffacd0b85a97d-31c7912416bso1178221f8f.1;
        Thu, 07 Sep 2023 08:18:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694099897; x=1694704697; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nn8Z/jGqRZ9itG0RlqprNFY2blvA+oxqrFjdAqCBlzs=;
        b=DK/9kiM6YW3TgcJoPkzkC2jDn6NtyaD473GWIe6J2KgHP4y2eEna5JL1IKQJQVMs6s
         MOv6rjrkNyTNT80TsUabjuy6BXyvksTCiJRs0RR/xYSVHtQV9xjG39+RUvxau3rgDkn5
         tFBBMJPZzIassRc1eOwGOtSICBGvIsXM92gBn3l/W2RUppJvmFlI5//PqXhJTKwOL9fY
         JyPBM6YrIuDcYiBYYUNSFkRWkjWHUi/dhLmqHuEuT38a/3RVFNzWUmWpaOOONsCMFQhj
         cPoOSNUbUomU3HZIDCZwxM+Tz/NjjQUaCBMcROQ0kAF2tsoFOk4VYNPZ+CjElYqzUodl
         cjNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694099897; x=1694704697;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nn8Z/jGqRZ9itG0RlqprNFY2blvA+oxqrFjdAqCBlzs=;
        b=LcZmSkNn93zgpezKiuJ/vhZPDn2vrmYdHgoNvRzb7OQi/13afU7wkf/2g7iACbP0IQ
         D77jOw0rFvfFF0sV4ymh93xgbsh1Ba6UCetDsysrpk08skuza/g7dAp06ouHU02GrUTN
         hM9YdGdNyGwUqXDqXMpafO1sjSR7iHO13EHOS/yuKwKCqW0hwJyybKCYcYxH6sXfxg5Y
         H6Nz+0dal9O3i7sTbjHoI1w+DwBTHzhH30nL7tFOTLQoYteqBqsFHEEnMrO+NmgsMgB5
         ZjvCZuTSd4RjHCbo2VLRyXj2teu9IW8IxeNlWrWbz7XPcjCJA5IRef5vPsR2AGU7aSZB
         +xLg==
X-Gm-Message-State: AOJu0YwrdZvIrDm/cIF0I7WvQ4Z8lLnt8bD6r7NBD1Obv/qTaEiyOiKG
	AZODsG8N2xC8s+YMCidjO5o=
X-Google-Smtp-Source: AGHT+IGwqB/QeKYr78Cb/wkxyZKiPbzH4gGpc1Z9STFRTx1jV4gSJPT2SnI8z4IiTAFD941kik9PbQ==
X-Received: by 2002:a5d:4105:0:b0:314:3740:7f69 with SMTP id l5-20020a5d4105000000b0031437407f69mr4401146wrp.37.1694099897397;
        Thu, 07 Sep 2023 08:18:17 -0700 (PDT)
Received: from opti3050-1.lan (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id l16-20020adfe9d0000000b00317e77106dbsm23511973wrn.48.2023.09.07.08.18.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Sep 2023 08:18:17 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
X-Google-Original-From: Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jakob Unterwurzacher <jakob.unterwurzacher@theobroma-systems.com>,
	Ermin Sunj <ermin.sunj@theobroma-systems.com>,
	Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: stable@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: rockchip: set codec system-clock-fixed on px30-ringneck-haikou
Date: Thu,  7 Sep 2023 17:17:16 +0200
Message-Id: <20230907151725.198347-2-jakob.unterwurzacher@theobroma-systems.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230907151725.198347-1-jakob.unterwurzacher@theobroma-systems.com>
References: <20230907151725.198347-1-jakob.unterwurzacher@theobroma-systems.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230907_081821_388976_9BDEFA95 
X-CRM114-Status: GOOD (  13.38  )
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

SGF2aW5nIHNndGw1MDAwX2NsayBkZWZpbmVzIGFzICJmaXhlZC1jbG9jayIgaXMgbm90IGVub3Vn
aCB0byBwcmV2ZW50CnRoZSBkYWkgc3Vic3lzdGVtIGZyb20gb3ZlcndyaXRpbmcgdGhlIGZyZXF1
ZW5jeSB2aWEgc2d0bDUwMDBfc2V0X2RhaV9zeXNjbGsuCgpTZXR0aW5nIHN5c3RlbS1jbG9jay1m
aXhlZCBkb2VzIHRoZSBqb2IsIGFuZCBub3cgYSAxa0h6IHNpbmUgd2F2ZQpjb21lcyBvdXQgYXMg
YWN0dWFsbHkgMWtIeiwgbm8gbWF0dGVyIHRoZSBzYW1wbGUgcmF0ZSBvZiB0aGUgc291cmNlLgoK
VGVzdGNhc2U6IFRoZXNlIHNob3VsZCBzb3VuZCB0aGUgc2FtZToKCiBzcGVha2VyLXRlc3QgLXIg
NDgwMDAgLXQgc2luZSAtZiAxMDAwCiBzcGVha2VyLXRlc3QgLXIgMjQwMDAgLXQgc2luZSAtZiAx
MDAwCgpBbHNvIHJlbW92ZSB0aGUgY2xvY2sgbGluayBoZXJlIGFzIGhhdmluZyBpdCBpbiBzZ3Rs
NTAwMCBhbmQKc2d0bDUwMDBfY29kZWMgY2F1c2VzIGR1cGxpY2F0ZSBjbG9jayB1bnByZXBhcmVz
IHdpdGggYXNzb2NpYXRlZApiYWNrdHJhY2UuCgpDYzogc3RhYmxlQHZnZXIua2VybmVsLm9yZwpG
aXhlczogYzQ4NGNmOTNmNjFiICgiYXJtNjQ6IGR0czogcm9ja2NoaXA6IGFkZCBQWDMwLcK1UTcg
KFJpbmduZWNrKSBTb00gd2l0aCBIYWlrb3UgYmFzZWJvYXJkIikKU2lnbmVkLW9mZi1ieTogSmFr
b2IgVW50ZXJ3dXJ6YWNoZXIgPGpha29iLnVudGVyd3VyemFjaGVyQHRoZW9icm9tYS1zeXN0ZW1z
LmNvbT4KLS0tCiBhcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3B4MzAtcmluZ25lY2staGFp
a291LmR0cyB8IDQgKysrLQogMSBmaWxlIGNoYW5nZWQsIDMgaW5zZXJ0aW9ucygrKSwgMSBkZWxl
dGlvbigtKQoKZGlmZiAtLWdpdCBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1y
aW5nbmVjay1oYWlrb3UuZHRzIGIvYXJjaC9hcm02NC9ib290L2R0cy9yb2NrY2hpcC9weDMwLXJp
bmduZWNrLWhhaWtvdS5kdHMKaW5kZXggODc5MmZhZTUwMjU3Li5kZTBhMWYyYWY5ODMgMTAwNjQ0
Ci0tLSBhL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay1oYWlrb3Uu
ZHRzCisrKyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcHgzMC1yaW5nbmVjay1oYWlr
b3UuZHRzCkBAIC03Miw4ICs3MiwxMCBAQCBpMnMwLXNvdW5kIHsKIAkJc2ltcGxlLWF1ZGlvLWNh
cmQsYml0Y2xvY2stbWFzdGVyID0gPCZzZ3RsNTAwMF9jb2RlYz47CiAKIAkJc2d0bDUwMDBfY29k
ZWM6IHNpbXBsZS1hdWRpby1jYXJkLGNvZGVjIHsKLQkJCWNsb2NrcyA9IDwmc2d0bDUwMDBfY2xr
PjsKIAkJCXNvdW5kLWRhaSA9IDwmc2d0bDUwMDA+OworCQkJLy8gUHJldmVudCB0aGUgZGFpIHN1
YnN5c3RlbSBmcm9tIG92ZXJ3cml0aW5nIHRoZSBjbG9jaworCQkJLy8gZnJlcXVlbmN5LiBXZSBh
cmUgdXNpbmcgYSBmaXhlZC1mcmVxdWVuY3kgb3NjaWxsYXRvci4KKwkJCXN5c3RlbS1jbG9jay1m
aXhlZDsKIAkJfTsKIAogCQlzaW1wbGUtYXVkaW8tY2FyZCxjcHUgewotLSAKMi4zOS4yCgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDov
L2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1yb2NrY2hpcAo=
