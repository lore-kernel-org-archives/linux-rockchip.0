Return-Path: <SRS0=Se97=KJ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FDC4C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:21:00 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 9150F61285
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 May 2021 12:20:59 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 9150F61285
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=iDt0UaSUtpORU9hnIgBkzoMsPZUpVk+COOhggxvrjdg=; b=DRBIe4pYIoX12VO64qfDeZ4+g
	Uyzox7NZKj2lr3nalIUmVHR7m6b2f6j1X8YXUbbJvxDVXH102iYro/ERxLQCYkiC8l2IcU/hoXxy1
	rB3NvRf/aca7gGYhRRn2HfmWTWcbX+Oa+gaFlNrQDcpTjZqYfSz5v1XAaQzTHyKbt4fV40P/anOFT
	DPzquPjVJaoV+NEqS/bxXXYnFuKJOzFYmi7Vo/9mwG1CJqIotofB5Eo1OkyQrTpH6rzwhLrdqo9Q7
	IFucpIYN5YQk4AYM/62LYjun+59elZHe8OrcOgBTgrOWDzQ8HX2MRonmdk+XB5GmzZ3OJrv0xzv0c
	clIV03RYQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lhWoH-0080eg-F2; Fri, 14 May 2021 12:20:53 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWo3-0080bt-Cc
 for linux-rockchip@desiato.infradead.org; Fri, 14 May 2021 12:20:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
 To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=DfwJRa5IRtTYfuaTlSibcdXDwHrGJh7vpF1zYYiiHMI=; b=wYykofoUZkJgb0DihAWzV5eV7g
 LTUwAZZM14dAqeUAhYqJukTbREeCyXTq/AVA0FeoMk6BHA9QfO79kTSj3uNMjnh3M/r4GdxJC6ICe
 Wh0wSDC0rLKE4RjQEVSIL5Tpe4aZ6vR5wWrPn/CBu9YZVceZWQ3pepL8adIg8d0SiUMRi7yqqquqg
 q06MAduZZFzxKUZ/mn9PZ1KPVCWlfz7ABwybP9S+o/yEMEUA0D9goQXZrmxeyh68BY2LvQc6lNzPZ
 Yk6DY6s6F9Z40CzZIpxcmV10Aj2LvBSRBoxFxUjxjPh0rMvL6/HnZSxsx7PFRPzp8Ii0U+ms9QZZ+
 7JPICXRw==;
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lhWo1-00By3S-1f
 for linux-rockchip@lists.infradead.org; Fri, 14 May 2021 12:20:38 +0000
Received: from p5b127fa9.dip0.t-ipconnect.de ([91.18.127.169]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1lhWny-0002bC-GU; Fri, 14 May 2021 14:20:34 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
Cc: Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Aditya Prayoga <aditya@kobol.io>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: helios64: Add support for two PWM
 fans
Date: Fri, 14 May 2021 14:20:32 +0200
Message-Id: <162099477649.1967349.5366927271429530848.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210510090607.970145-1-uwe@kleine-koenig.org>
References: <20210510090607.970145-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210514_052037_107143_D91985EF 
X-CRM114-Status: UNSURE (   9.87  )
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

T24gTW9uLCAxMCBNYXkgMjAyMSAxMTowNjowNyArMDIwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4gT24gdGhlIGhlbGlvczY0IGJvYXJkIHRoZSB0d28gY29ubmVjdG9ycyBQNiBhbmQgUDcg
YXJlIHN1cHBvc2VkIHRvCj4gcG93ZXIgdHdvIGZhbnMuIEFkZCB0aGUgY29ycmVzcG9uZGluZyBw
d20tZmFuIGRldmljZXMuCgpBcHBsaWVkLCB0aGFua3MhCgpbMS8xXSBhcm02NDogZHRzOiByb2Nr
Y2hpcDogaGVsaW9zNjQ6IEFkZCBzdXBwb3J0IGZvciB0d28gUFdNIGZhbnMKICAgICAgY29tbWl0
OiAyNzFiNjY0MTRkZjBiMTcyYzkzNmIzY2ZkMTg5NGI3OTM5Zjg0MTY1CgpBZGFwdGVkIHRoZSBv
cmRlcmluZyAiZmFuKiIgYWJvdmUgImxlZCoiLgoKQmVzdCByZWdhcmRzLAotLSAKSGVpa28gU3R1
ZWJuZXIgPGhlaWtvQHNudGVjaC5kZT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hp
cEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4v
bGlzdGluZm8vbGludXgtcm9ja2NoaXAK
