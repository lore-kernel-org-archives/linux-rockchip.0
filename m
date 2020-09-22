Return-Path: <SRS0=X5eU=C7=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D56D5C2D0E2
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 12:37:42 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE3542395C
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2020 12:37:41 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="D2TRugMP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org EE3542395C
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-ID:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6peZrjEANCBRtbYiF9v2fciadEZ7kHVXkIsnJ9ttRrc=; b=D2TRugMPVcVkz5msMsQP2RdZT
	HEXezmgzecO20Ul5uN6bVepd6d/S3XDIzNGLo83lx5mM1PtViCWWy9oXmvQMsIWThF5M/XKIlNexY
	+aiTbycU/x/8Fqgkt9HwEzL4tkNvkzcaKATQEjZtn7A2ficRK4tVSGbyfVdd0b5woKwekZyCiInNs
	toNGlsuefC74u8uSGJOTem5f9rt1oToDyVfijyxSPHjfF0vSh0xS8CvQ5nTEjJs00cumNYixA1e7+
	kVf4+pEPc5TohW9DyfwWSrlii/al2GxXALlWtFhvzSL5SNtNkekDDJx7dRbJ65AkNOHzyk/YRzjaC
	pOvmtlKXQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kKhY5-0006tl-0k; Tue, 22 Sep 2020 12:37:33 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kKhY0-0006sP-LJ; Tue, 22 Sep 2020 12:37:29 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1kKhXi-00005Z-Se; Tue, 22 Sep 2020 14:37:10 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 David Lechner <david@lechnology.com>, Sekhar Nori <nsekhar@ti.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH 6/6] clk: rockchip: rk3308: drop unused mux_timer_src_p
Date: Tue, 22 Sep 2020 14:37:10 +0200
Message-ID: <2966215.XPzGgDkocF@diego>
In-Reply-To: <20200916161740.14173-6-krzk@kernel.org>
References: <20200916161740.14173-1-krzk@kernel.org>
 <20200916161740.14173-6-krzk@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200922_083728_795241_6A001B8F 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

QW0gTWl0dHdvY2gsIDE2LiBTZXB0ZW1iZXIgMjAyMCwgMTg6MTc6NDAgQ0VTVCBzY2hyaWViIEty
enlzenRvZiBLb3psb3dza2k6Cj4gVGhlIHBhcmVudCBuYW1lcyAnbXV4X3RpbWVyX3NyY19wJyBp
cyBub3QgdXNlZDoKPiAKPiAgIEluIGZpbGUgaW5jbHVkZWQgZnJvbSBkcml2ZXJzL2Nsay9yb2Nr
Y2hpcC9jbGstcmszMzA4LmM6MTM6MDoKPiAgIGRyaXZlcnMvY2xrL3JvY2tjaGlwL2Nsay1yazMz
MDguYzoxMzY6Nzogd2FybmluZzog4oCYbXV4X3RpbWVyX3NyY19w4oCZIGRlZmluZWQgYnV0IG5v
dCB1c2VkIFstV3VudXNlZC1jb25zdC12YXJpYWJsZT1dCj4gCj4gU2lnbmVkLW9mZi1ieTogS3J6
eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwub3JnPgoKYXBwbGllZCBmb3IgNS4xMAoKVGhh
bmtzCkhlaWtvCgoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtcm9ja2NoaXAK
