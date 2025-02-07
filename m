Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 702FBC02194
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Feb 2025 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EKiUHuWn3gJjJzssTsbhxuXG94FYiJluQc9d54YFerc=; b=azzzoIRBidxJMK
	fH/OTqmYw1mwYQYBw6ENuZyUVR2i7Riq/gNUgraM+Rd8zd5a7Yr1QxIaRobuQ2LSlC6J4Jfz2mAez
	njsJ3upFrlCNlc2hp8BQOMB6AgftDxAIEBs/8NKWAUZyDDHF2SdfTsCOySmA6b+6HswF2KoUN5tZ0
	xBpwzcOAd6RDRDymYxPMDQC8ugYgvAo4V/zGsqiijFfpd/6D4svrr8aw7c4L1FPxsqxCl+4J6xoYs
	+gfL4rIelKEhSPJpAF0ZkQdjLYiFMzLXi4Usnt9Zv/7R/1QMF/YFYUYup/vXbSHKWiNsHXAcFjt+v
	B71jhJWqi9cEf6M5GXsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tgRsO-0000000ARHS-3ZNL;
	Fri, 07 Feb 2025 17:10:48 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tgRWM-0000000ALrA-2pNI;
	Fri, 07 Feb 2025 16:48:04 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-7b6e5ee6ac7so171396385a.0;
        Fri, 07 Feb 2025 08:48:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738946881; x=1739551681; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=OLvPkZKAPsSMnxafsZaEnvYemBph/BJy+bYFdl2FKPc=;
        b=fJrbPES5yu3HMwHiTOguPSPHj01RNJFYaZVYurRj2CixjbGQGI09HzrQbgLfi9opn3
         vK0GJIV3ag6nEd6PcmFRUfCN85NswLaeZjiltyUptPokv+A8nCUvOjNh4JRFhWxx1Iaw
         +omNWcekk1PU1/ciTH92+1EyjKwUEzTYTU1ku7a8jkpLlgQIL4dkVdcmAme8LuTLcqfz
         /NEFe6vQ1KWhnA8VoHYcKcmWEZApv5Fk0EhCO3zK/efMosExprueK+r2HGdD3B41cAjw
         iZJ6y7t+VBNxFR6TG3AVuhdtLOGM46vmvZuH8WK150Avduh/r/ewyKZuYDHx0NfEbStm
         702Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738946881; x=1739551681;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OLvPkZKAPsSMnxafsZaEnvYemBph/BJy+bYFdl2FKPc=;
        b=HK+uIzkv12/fABnFeWkm81ejvVi/OwL+FFs9bHxE5OStE2An5Upb3gqSmTQcZwO+d+
         A2hVnBEz15Y3afmF41TDo8ndQmDbIb5TMTcGwLXL+X+54h0tLh8SpMK4Mq7cdJbXreyj
         lyV/hH7GSSpjHWdcllxL2fR3cB9ru6eFpplUh1BSYYH2+3r5i7XCIpO9RNZdmC3PlYRz
         aPMlz7EyC5OqVFp9urniEMBSaCwuCc/nEp6vFJiBInRC0zeCRLMCIO7XKfnZx73Sve49
         7vlH3D+I0SYylSFIFfGU2eY3Cb0dQQejBiP8j7M6Qgm3108VVsIFbpXKhbNcOwrtqIyH
         Z0Ig==
X-Forwarded-Encrypted: i=1; AJvYcCWZxGs3LN2nCwoPuOXPKUhiejikJh162gifT6keXBAa4Jz2bba7ZY0y+BQb6egHm0VmIdv3xMOjzJdgWPMnco/2@lists.infradead.org, AJvYcCX/oOf+5ZhhAL6bvUsDMhMSJgiH4iV8Ui3qo1vqSx9kka9L7umUBYtK1as5d9SafWIitsCiEqOIAMWGJCH7iVE=@lists.infradead.org
X-Gm-Message-State: AOJu0YyCEqsJt8lWaOidNgi5OWfBbtn7ApG0HYuvrE2AMT7bC5KJ4NN/
	E03EWRbXk0DEZue176HKow8WRzEU1JUWJ1beQVbjc5sfLziyDZrI
X-Gm-Gg: ASbGncsescnPZCkhJSIHzQun1zPb0JHORfsliCLL9mHKgoO3MXozeO/9gp7jvoQ8ckC
	G4+63EHRE/rrwiPOB95tzy0G/UUUAdetSU+7Zt3sNB9/5u6aBIAG2CMJx5sWd2v4kC2MJIMZMaP
	6wNr8zCD0PSvDQzSzOrd363cZQ0lSzSPMkysGcpyVdggtds/nAFuAvvTUr8idp/9RQU4sDWcSFn
	x3RaOZzBSG9MU6h2HWcOTe9EhNf/zMdh3G8K/V/lr5Qm4+8wBRlwFGeUwqKfgQ3Et98nh0IOcLs
	7fDYtsphze9nOwM/mFdzTUOnl+qhV+o2KFAoT0W451GH8Wb7ZNBgTDB2XFU=
X-Google-Smtp-Source: AGHT+IEr3FTDT7SjKLFcV/86PKpmd1Ulc9pLBA2vnFIK1IvijuUo0pqO49m1oZQlx0sqziOn6memSg==
X-Received: by 2002:a05:620a:4448:b0:7b6:c92e:2e6f with SMTP id af79cd13be357-7c047c1b895mr615602285a.22.1738946881480;
        Fri, 07 Feb 2025 08:48:01 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7c041ed0304sm208492185a.115.2025.02.07.08.48.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 08:48:00 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: linux-kernel@vger.kernel.org,
	"Rafael J. Wysocki" <rafael@kernel.org>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Lukasz Luba <lukasz.luba@arm.com>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-pm@vger.kernel.org (open list:THERMAL),
	linux-arm-kernel@lists.infradead.org (moderated list:ARM/Rockchip SoC support),
	linux-rockchip@lists.infradead.org (open list:ARM/Rockchip SoC support)
Subject: [PATCH] thermal/drivers/rockchip: add missing rk3328 mapping entry
Date: Fri,  7 Feb 2025 11:47:40 -0500
Message-ID: <20250207164740.14475-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.44.0.501.g19981daefd7c
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250207_084802_710551_B1C893AE 
X-CRM114-Status: GOOD (  10.11  )
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

VGhlIG1hcHBpbmcgdGFibGUgZm9yIHRoZSByazMzMjggaXMgbWlzc2luZyB0aGUgZW50cnkgZm9y
IC0yNcKwQyB3aGljaCBpcwpmb3VuZCBpbiB0aGUgVFJNWzFdIMKnOS41LjIgIlRlbXBlcmF0dXJl
LXRvLWNvZGUgbWFwcGluZyIuCgpOT1RFOiB0aGUga2VybmVsIHVzZXMgdGhlIHRzYWRjX3Ffc2Vs
PTEnYjEgbW9kZSB3aGljaCBpcyBkZWZpbmVkIGFzOgogICAgICA0MDk2LTxjb2RlIGluIHRhYmxl
Pi4gV2hlcmVhcyB0aGUgdGFibGUgaW4gdGhlIFRSTSBnaXZlcyB0aGUgY29kZQogICAgICAiMzc3
NCIgZm9yIC0yNcKwQywgdGhlIGtlcm5lbCB1c2VzIDQwOTYtMzc3ND0zMjIuCgpMaW5rOiBodHRw
czovL29wZW5zb3VyY2Uucm9jay1jaGlwcy5jb20vaW1hZ2VzLzkvOTcvUm9ja2NoaXBfUkszMzI4
VFJNX1YxLjEtUGFydDEtMjAxNzAzMjEucGRmClNpZ25lZC1vZmYtYnk6IFRyZXZvciBXb2VybmVy
IDx0d29lcm5lckBnbWFpbC5jb20+Ci0tLQogZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJt
YWwuYyB8IDEgKwogMSBmaWxlIGNoYW5nZWQsIDEgaW5zZXJ0aW9uKCspCgpkaWZmIC0tZ2l0IGEv
ZHJpdmVycy90aGVybWFsL3JvY2tjaGlwX3RoZXJtYWwuYyBiL2RyaXZlcnMvdGhlcm1hbC9yb2Nr
Y2hpcF90aGVybWFsLmMKaW5kZXggZjU1MWRmNDhlZWY5Li5hOGFkODVmZWI2OGYgMTAwNjQ0Ci0t
LSBhL2RyaXZlcnMvdGhlcm1hbC9yb2NrY2hpcF90aGVybWFsLmMKKysrIGIvZHJpdmVycy90aGVy
bWFsL3JvY2tjaGlwX3RoZXJtYWwuYwpAQCAtMzg2LDYgKzM4Niw3IEBAIHN0YXRpYyBjb25zdCBz
dHJ1Y3QgdHNhZGNfdGFibGUgcmszMzI4X2NvZGVfdGFibGVbXSA9IHsKIAl7Mjk2LCAtNDAwMDB9
LAogCXszMDQsIC0zNTAwMH0sCiAJezMxMywgLTMwMDAwfSwKKwl7MzIyLCAtMjUwMDB9LAogCXsz
MzEsIC0yMDAwMH0sCiAJezM0MCwgLTE1MDAwfSwKIAl7MzQ5LCAtMTAwMDB9LAotLSAKMi40NC4w
LjUwMS5nMTk5ODFkYWVmZDdjCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1yb2NrY2hpcAo=
