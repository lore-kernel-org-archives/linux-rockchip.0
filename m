Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ADCBEC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 23:14:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2cuR1gmK/Cjz6PftHKKrrxCBiYF+0YTDDuurscC0p9Y=; b=rnzKJJHlPpVuAY
	4owc4cqUcXabHHiTGRRqrYS1m0SBDKBQJlxiM+ON25xZy9tZlM1zCp0d7Bmoor+AuijCNU/lgvpny
	bz9aoe1z2s8AmrBg3EosnKN2ucxkWhiGWJS1vQDcXbPKCqToYDz+Pv1dFkPUBaNlQlelr0cUDEyGW
	DqZeoFnrcqJkdXFncX+wHoQxBphCnO7Ca3tFkgEpqPg2ZfosGnUd2Sh3Nnm5OKOSa+UFMTuDNWSYi
	ZPLcGr+zaNdkbvDPp4H+mDwmsuHNKHmQEHcDOsM7zRUFjqdlnGdpxLe/rRL32k3w9LzneD4tFFYeF
	SWE1JPNlkFVdDgI/UxdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDDyU-00HJMP-8w; Thu, 27 Jan 2022 23:14:42 +0000
Received: from mail-pf1-x42f.google.com ([2607:f8b0:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDDsk-00HGTE-Bf
 for linux-rockchip@lists.infradead.org; Thu, 27 Jan 2022 23:08:48 +0000
Received: by mail-pf1-x42f.google.com with SMTP id u130so4372230pfc.2
 for <linux-rockchip@lists.infradead.org>; Thu, 27 Jan 2022 15:08:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=fXezxkg2kGuWbB36YJn2JEHiHCC80Um0xlTyospu4bE=;
 b=W52+ysBtqCsUepS7IJiVv6MqZt+QdNIY980EbuHquIW6109/e0+n0y9mwaOPmdVytS
 uRAk7qC1DiU/CwNi49mc4RvLPdUna1Oqj5Qgt0jPuWkra+DTqe1xx5fnNx2rjw/SO5hh
 qVqkuZdKSeug7aH608jY9tfD7Q/F1d9LkblPo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fXezxkg2kGuWbB36YJn2JEHiHCC80Um0xlTyospu4bE=;
 b=JTmgV7Hqx2Ir2/F6yQEg4wNAVEMPevsJOuAfPsCJpEn9TycPTZVRun7OCAIwNddzuT
 eBgPBYkjyyW317PPuXZchz/UmrzaRCmrq2b4qpZw9PXdGO3Mnj+H5tMMrcsLYiD40oXB
 JsTudiGbY8k/RWgTzuhDPt8NPIyFOxqbecyvH0j9DnfM5ngIxGX79wfsy9sWhJO8xNUF
 qeO1nvVG9dGw/DyTOc9xlkMDoxZmWhWlSzWyfYCVi6pFrn5ASaAbbilQTP84Tx8JaJ7Y
 YgtbCpXyI4wbXk/aUARApd4Oi8jwknAeM+xMuNS3eU6xbuC/P+4Gams5pOi4heGfaKdw
 QKOA==
X-Gm-Message-State: AOAM533+wDSkTiuC2I5vI5F/1tEgmyEcYgQun2LeWORN4c9ywMsFq1jL
 pfV8TnsmQXORG5qOPpFjl7Z5Rg==
X-Google-Smtp-Source: ABdhPJzIjPFzmvY95upLY8umBbY8uqvVIvgVAGp2b3szXo3MoWikHuPQAGZ4kG2PB8Y9F89T9NfEvQ==
X-Received: by 2002:a62:1cc9:: with SMTP id c192mr4895534pfc.70.1643324925797; 
 Thu, 27 Jan 2022 15:08:45 -0800 (PST)
Received: from localhost ([2620:15c:202:201:723d:38a9:9e7f:3435])
 by smtp.gmail.com with UTF8SMTPSA id n22sm6497884pfu.77.2022.01.27.15.08.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 27 Jan 2022 15:08:45 -0800 (PST)
From: Brian Norris <briannorris@chromium.org>
To: MyungJoo Ham <myungjoo.ham@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Lin Huang <hl@rock-chips.com>, linux-arm-kernel@lists.infradead.org,
 Derek Basehore <dbasehore@chromium.org>, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, Heiko Stuebner <heiko@sntech.de>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 =?UTF-8?q?Ga=C3=ABl=20PORTAY?= <gael.portay@collabora.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 11/15] arm64: dts: rk3399: Add dfi and dmc nodes
Date: Thu, 27 Jan 2022 15:07:22 -0800
Message-Id: <20220127150615.v2.11.Ie97993621975c5463d7928a8646f3737c9f2921d@changeid>
X-Mailer: git-send-email 2.35.0.rc0.227.g00780c9af4-goog
In-Reply-To: <20220127230727.3369358-1-briannorris@chromium.org>
References: <20220127230727.3369358-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220127_150846_433196_C94A9BD8 
X-CRM114-Status: GOOD (  10.88  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

RnJvbTogTGluIEh1YW5nIDxobEByb2NrLWNoaXBzLmNvbT4KClRoZXNlIGFyZSByZXF1aXJlZCB0
byBzdXBwb3J0IEREUiBEVkZTIG9uIFJLMzM5OSBwbGF0Zm9ybXMuCgpTaWduZWQtb2ZmLWJ5OiBM
aW4gSHVhbmcgPGhsQHJvY2stY2hpcHMuY29tPgpTaWduZWQtb2ZmLWJ5OiBFbnJpYyBCYWxsZXRi
byBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgpTaWduZWQtb2ZmLWJ5OiBH
YcOrbCBQT1JUQVkgPGdhZWwucG9ydGF5QGNvbGxhYm9yYS5jb20+ClNpZ25lZC1vZmYtYnk6IERh
bmllbCBMZXpjYW5vIDxkYW5pZWwubGV6Y2Fub0BsaW5hcm8ub3JnPgpTaWduZWQtb2ZmLWJ5OiBC
cmlhbiBOb3JyaXMgPGJyaWFubm9ycmlzQGNocm9taXVtLm9yZz4KQ2hhbmdlIHNpbmNlIERhbmll
bCdzIHBvc3Rpbmc6IHJlb3JkZXJlZCBieSB1bml0IGFkZHJlc3MsIHBlciBleGlzdGluZwpzdHls
ZQoKLS0tCgpDaGFuZ2VzIGluIHYyOgogLSByZW5hbWUgZG1jIHRvIG1lbW9yeS1jb250cm9sbGVy
CgpDaGFuZ2VzIGluIHYxOgpUaGlzIGlzIGJhc2VkIG9uIGEgdjUgcG9zdGluZyBmcm9tIHZhcmlv
dXMgYXV0aG9yczoKaHR0cHM6Ly9sb3JlLmtlcm5lbC5vcmcvbGttbC8yMDIxMDMwODIzMzg1OC4y
NDc0MS0zLWRhbmllbC5sZXpjYW5vQGxpbmFyby5vcmcvCk11Y2ggb2YgdGhhdCBzZXJpZXMgd2Fz
IGFscmVhZHkgbWVyZ2VkLCBzbyBJIHN0YXJ0IG92ZXIgd2l0aCB0aGUKbnVtYmVyaW5nLgoKIGFy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgfCAxOSArKysrKysrKysrKysr
KysrKysrCiAxIGZpbGUgY2hhbmdlZCwgMTkgaW5zZXJ0aW9ucygrKQoKZGlmZiAtLWdpdCBhL2Fy
Y2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kgYi9hcmNoL2FybTY0L2Jvb3Qv
ZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCmluZGV4IGQzY2RmNmY0MmEzMC4uNDA5NmVmNmY3Yjcy
IDEwMDY0NAotLS0gYS9hcmNoL2FybTY0L2Jvb3QvZHRzL3JvY2tjaGlwL3JrMzM5OS5kdHNpCisr
KyBiL2FyY2gvYXJtNjQvYm9vdC9kdHMvcm9ja2NoaXAvcmszMzk5LmR0c2kKQEAgLTEyOTUsNiAr
MTI5NSwyNSBAQCBwd20zOiBwd21AZmY0MjAwMzAgewogCQlzdGF0dXMgPSAiZGlzYWJsZWQiOwog
CX07CiAKKwlkZmk6IGRmaUBmZjYzMDAwMCB7CisJCXJlZyA9IDwweDAwIDB4ZmY2MzAwMDAgMHgw
MCAweDQwMDA+OworCQljb21wYXRpYmxlID0gInJvY2tjaGlwLHJrMzM5OS1kZmkiOworCQlyb2Nr
Y2hpcCxwbXUgPSA8JnBtdWdyZj47CisJCWludGVycnVwdHMgPSA8R0lDX1NQSSAxMzEgSVJRX1RZ
UEVfTEVWRUxfSElHSCAwPjsKKwkJY2xvY2tzID0gPCZjcnUgUENMS19ERFJfTU9OPjsKKwkJY2xv
Y2stbmFtZXMgPSAicGNsa19kZHJfbW9uIjsKKwkJc3RhdHVzID0gImRpc2FibGVkIjsKKwl9Owor
CisJZG1jOiBtZW1vcnktY29udHJvbGxlciB7CisJCWNvbXBhdGlibGUgPSAicm9ja2NoaXAscmsz
Mzk5LWRtYyI7CisJCXJvY2tjaGlwLHBtdSA9IDwmcG11Z3JmPjsKKwkJZGV2ZnJlcS1ldmVudHMg
PSA8JmRmaT47CisJCWNsb2NrcyA9IDwmY3J1IFNDTEtfRERSQz47CisJCWNsb2NrLW5hbWVzID0g
ImRtY19jbGsiOworCQlzdGF0dXMgPSAiZGlzYWJsZWQiOworCX07CisKIAl2cHU6IHZpZGVvLWNv
ZGVjQGZmNjUwMDAwIHsKIAkJY29tcGF0aWJsZSA9ICJyb2NrY2hpcCxyazMzOTktdnB1IjsKIAkJ
cmVnID0gPDB4MCAweGZmNjUwMDAwIDB4MCAweDgwMD47Ci0tIAoyLjM1LjAucmMwLjIyNy5nMDA3
ODBjOWFmNC1nb29nCgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX18KTGludXgtcm9ja2NoaXAgbWFpbGluZyBsaXN0CkxpbnV4LXJvY2tjaGlwQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1yb2NrY2hpcAo=
