Return-Path: <SRS0=KyHE=L5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3BC0C07E98
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 07:34:26 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A7F06611ED
	for <linux-rockchip@archiver.kernel.org>; Mon,  5 Jul 2021 07:34:26 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A7F06611ED
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vnoremRwKA2FtzaPxfMtAwi09ccbUfSORAw2OGjmT6Q=; b=o36aVAw8FQaGdw
	VyNcctqcwEJJJy1MU+ReXmVwO4g8plQlXMyfxUwZrflPRnJICx1ezBUqCbfXaklaagHJw1UwgLdGH
	KVcNNxBU8aWCtPlM+RBcWVUR1yowlseyjagD8K+QqvNfxXgUjDVN27VcWV8BO44BmCHaexLHnoZR6
	jVYKtQW3RrNUAoIingDD6o/1HlWR/IfLhagP23xzDAX5K2aI4OXkUCsLfcv01mV9XsjdTI/k4XYvT
	WVjq+JpP1UN+VvjNgDatkPK4iIwW8R/x1aNY+krZXDPwcvXWr1Cq+ME/NzaB+Zx4dNc2G/7DSvoN2
	zcgf6Wecw5DpaQArP4rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0J7W-0085q5-MQ; Mon, 05 Jul 2021 07:34:22 +0000
Received: from mail-wr1-x42d.google.com ([2a00:1450:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0J7T-0085pE-TL
 for linux-rockchip@lists.infradead.org; Mon, 05 Jul 2021 07:34:21 +0000
Received: by mail-wr1-x42d.google.com with SMTP id f14so20447931wrs.6
 for <linux-rockchip@lists.infradead.org>; Mon, 05 Jul 2021 00:34:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=EBNJ83/aCZlajq80Bp2dxWGUc5q1W6Xlxd/F1gzRdXk=;
 b=Xlzk00gGZIIPjUG03hvDIbMzZnKqULFck66hAW67IX3sPMhaZg5kWn1gPXUw8ALjbZ
 U8I+2DyZjPp3FyhNSi1CUXyBRqe2vosLqYjdojnZQc7KM4T87rNdMryBqJ/sZa6Wur0g
 1bV2+twE7o/l1icuxUainWzuIUQRbzteavaQTI/NjgGuq3DOw/YJdrAPbzri1vkjAB15
 vNmLQnh/i0vwyi6kc2BjGMRnFsZd20J/NFFwepZ+NIbx19kLehzc83nr7FGmJFzhcxwj
 MrSlpDUf0WqCumoDb5lBnAIaGD6ISorisnHvcwJHyx8Ne5qr2TrNCFXNVfSfC9qbXN43
 No5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=EBNJ83/aCZlajq80Bp2dxWGUc5q1W6Xlxd/F1gzRdXk=;
 b=Sq7ReUkEK+OsvTpBvXK4njkwysifjOf2lJ9PUvvrzctxgwTHIsJlV0UbdMU3xWHa4p
 BmmEgqu5mVLWeWcxL5oRVxOIju/eV9TXEIOvJdbj+9l5e6ApAKF0b7MnLAF7ImdkXhGl
 ghPtKl80RQxgURjApH8TBS5tUX8JB5x5LgHiulEWNk87flMpdLDHHKshk3hxZh359c/b
 OZ0EbXny5Bsl3CaGQqI2vQldE96wtCPG2qboOz6mJ++5uuEO4r8B0ZctRT+c3lwXsFkK
 XVdw/GOV5Ro6Vz/BK3JrbF56kkOXqyTrVOqKwC4uOBcM3b/hcpF14VEwas+QYmKHy80w
 Rssg==
X-Gm-Message-State: AOAM532WR2xkmUfAsZTVwxg6jtMWz/dNXivNqgfW/cACWK8tjegXpIqQ
 57Tvjo98fIUjEH60CqRM0GEndQ==
X-Google-Smtp-Source: ABdhPJyehcg9ReIxi1AOVhCby1G/JJZ5u9bOeyubGcqCl5ofyE6O4PKjYJShptLMWn8w2a6VlgL+iQ==
X-Received: by 2002:a5d:4a0d:: with SMTP id m13mr14086437wrq.368.1625470458082; 
 Mon, 05 Jul 2021 00:34:18 -0700 (PDT)
Received: from dell ([109.180.115.218])
 by smtp.gmail.com with ESMTPSA id h8sm12128561wrt.85.2021.07.05.00.34.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 05 Jul 2021 00:34:17 -0700 (PDT)
Date: Mon, 5 Jul 2021 08:34:18 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Cc: cl@rock-chips.com, thierry.reding@gmail.com, robh+dt@kernel.org,
 heiko@sntech.de, jagan@amarulasolutions.com, wens@csie.org,
 uwe@kleine-koenig.org, mail@david-bauer.net, jbx6244@gmail.com,
 linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 jensenhuang@friendlyarm.com, michael@amarulasolutions.com,
 cnsztl@gmail.com, devicetree@vger.kernel.org,
 ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 gregkh@linuxfoundation.org, linux-serial@vger.kernel.org,
 linux-i2c@vger.kernel.org, jay.xu@rock-chips.com,
 shawn.lin@rock-chips.com, david.wu@rock-chips.com,
 zhangqing@rock-chips.com, huangtao@rock-chips.com,
 wim@linux-watchdog.org, linux@roeck-us.net, jamie@jamieiles.com,
 linux-watchdog@vger.kernel.org, maz@kernel.org, linux-pwm@vger.kernel.org
Subject: Re: [RESEND PATCH v5 1/4] dt-bindings: pwm: rockchip: add
 description for rk3568
Message-ID: <YOK1+pMy+N64eR75@dell>
References: <20210622020517.13100-1-cl@rock-chips.com>
 <20210623021303.28015-1-cl@rock-chips.com>
 <20210705064914.o2neaiwqndjfdyqd@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210705064914.o2neaiwqndjfdyqd@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_003420_025035_F6294268 
X-CRM114-Status: GOOD (  11.77  )
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

T24gTW9uLCAwNSBKdWwgMjAyMSwgVXdlIEtsZWluZS1Lw7ZuaWcgd3JvdGU6Cgo+IE9uIFdlZCwg
SnVuIDIzLCAyMDIxIGF0IDEwOjEzOjAzQU0gKzA4MDAsIGNsQHJvY2stY2hpcHMuY29tIHdyb3Rl
Ogo+ID4gRnJvbTogTGlhbmcgQ2hlbiA8Y2xAcm9jay1jaGlwcy5jb20+Cj4gPiAKPiA+IGFkZCAi
cm9ja2NoaXAscmszNTY4LXB3bSIsICJyb2NrY2hpcCxyazMzMjgtcHdtIiBmb3IgcHdtIG5vZGVz
IG9uCj4gPiBhIHJrMzU2OCBwbGF0Zm9ybSB0byBwd20tcm9ja2NoaXAueWFtbC4KPiAKPiBMb29r
cyBnb29kIHRvIG1lCj4gCj4gQWNrZWQtYnk6IFV3ZSBLbGVpbmUtS8O2bmlnIDx1LmtsZWluZS1r
b2VuaWdAcGVuZ3V0cm9uaXguZGU+Cj4gCj4gV2hvIGlzIHN1cHBvc2VkIHRvIGFwcGx5IHRoaXMg
cGF0Y2g/IERvZXMgdGhpcyBuZWVkIGJsZXNzaW5nIGJ5IFJvYj8KClRoZXJlIGlzIG5vIHN0YW5k
YXJkLiAgUm9iIHdpbGwgdXN1YWxseSBoYXZlIHNvbWUga2luZCBvZiBhcnJhbmdlbWVudAp3aXRo
IHRoZSBhc3NvY2lhdGVkIG1haW50YWluZXIocykuICBJZiB0aGlzIGlzIGEgYmlnIGZ1bmN0aW9u
YWwKY2hhbmdlLCBJIHdvdWxkIHN1Z2dlc3QgbGV0dGluZyBSb2IgYW5kIGhpcyBhcm15IG9mIGJv
dHMgZ2l2ZSBpdCB0aGUKb25jZSBvdmVyIGJlZm9yZSBpdCBpcyBhcHBsaWVkIGluIGFueSBjYXNl
LgoKLS0gCkxlZSBKb25lcyBb5p2O55C85pavXQpTZW5pb3IgVGVjaG5pY2FsIExlYWQgLSBEZXZl
bG9wZXIgU2VydmljZXMKTGluYXJvLm9yZyDilIIgT3BlbiBzb3VyY2Ugc29mdHdhcmUgZm9yIEFy
bSBTb0NzCkZvbGxvdyBMaW5hcm86IEZhY2Vib29rIHwgVHdpdHRlciB8IEJsb2cKCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
