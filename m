Return-Path: <SRS0=F11g=MP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A115C4338F
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 12:02:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C04C460ED4
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Jul 2021 12:02:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org C04C460ED4
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eQjcsRvQ1pXoBKaGuWKpoFKBvHdR73g+8VfS5m4bnCU=; b=WnB14bfEi0J4d0
	MRkbkdvUH8ufIMOIUPMJIKUvg39WXJBjvCe3fbce0o+zT760ZlxXpb2zzgyed2zc9aEf/dc/Ez2Qb
	xGoimQpi5Fr4ZqvjYlQ9LeR4DZsrpspSiEZdw2YbFmjSZv4RseDTQgncej1kKsZ+Tx4esPv5psSuo
	maDE5jA1iyinq7S5Ryk54rNUsKQiKY9fS9GM4xAQM0/Afp0Qunt5YMKmlXkrhs9sySWjWSogC1Vue
	9hTDO8WgP/X3ki/T90bCPoiB3oRfQ6RU4dlw+NSayWTgN8/XSn75XEYkPSLYkrFZUzvS44CVNvrG3
	XD6nJUaZ6jctDb63eeyA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m6tsh-004YEl-1R; Fri, 23 Jul 2021 12:02:19 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m6tse-004YAk-8T; Fri, 23 Jul 2021 12:02:17 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.lan)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1m6tsU-0004qO-PN; Fri, 23 Jul 2021 14:02:06 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: devicetree@vger.kernel.org,
 =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?=
 <nfraprado@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, kernel@collabora.com,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Turquette <mturquette@baylibre.com>,
 Xing Zheng <zhengxing@rock-chips.com>, linux-clk@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Elaine Zhang <zhangqing@rock-chips.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: clk: Convert rockchip,
 rk3399-cru to DT schema
Date: Fri, 23 Jul 2021 14:02:04 +0200
Message-Id: <162704168907.1329605.6589153087595599071.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210610175613.167601-1-nfraprado@collabora.com>
References: <20210610175613.167601-1-nfraprado@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210723_050216_337771_21050285 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
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

T24gVGh1LCAxMCBKdW4gMjAyMSAxNDo1NjoxMyAtMDMwMCwgTsOtY29sYXMgRi4gUi4gQS4gUHJh
ZG8gd3JvdGU6Cj4gQ29udmVydCB0aGUgcm9ja2NoaXAscmszMzk5LWNydSBiaW5kaW5nIHRvIERU
IHNjaGVtYSBmb3JtYXQuCj4gVGVzdGVkIHdpdGgKPiBBUkNIPWFybTY0IG1ha2UgZHRfYmluZGlu
Z19jaGVjayBEVF9TQ0hFTUFfRklMRVM9RG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdz
L2Nsb2NrL3JvY2tjaGlwLHJrMzM5OS1jcnUueWFtbAo+IEFSQ0g9YXJtNjQgbWFrZSBkdGJzX2No
ZWNrIERUX1NDSEVNQV9GSUxFUz1Eb2N1bWVudGF0aW9uL2RldmljZXRyZWUvYmluZGluZ3MvY2xv
Y2svcm9ja2NoaXAscmszMzk5LWNydS55YW1sCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8xXSBkdC1i
aW5kaW5nczogY2xrOiBDb252ZXJ0IHJvY2tjaGlwLHJrMzM5OS1jcnUgdG8gRFQgc2NoZW1hCiAg
ICAgIGNvbW1pdDogZDQ3NTY1MzY3MmI3MzBhMzBiZDEzOTFmNjhjOThmNDUwYWZhZjcyNQoKQmVz
dCByZWdhcmRzLAotLSAKSGVpa28gU3R1ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1h
aWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0
cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
