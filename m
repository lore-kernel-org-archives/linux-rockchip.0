Return-Path: <SRS0=VpfD=G4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-7.0 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=no
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EC4B8C433DB
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:57:41 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 127D622597
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Jan 2021 23:57:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 127D622597
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=scbpOTmwS9WsqgHVn5ZZiKSB+/GVYlrrhcq9DpJT/jQ=; b=H74wT7R056IOWqQGqnoj0l7nE
	iVRlMt2uOcL1ODxrPqnNWR7C+uIpunOAjrT3duWWkMXZuw5lrrPbcBIEInQiiwpIRQYsMarlMEl8c
	69MuYqgzWD/ovwnePkYoXexhojoUaSSIlz6VeMD6cE7if20QrMKui2C93BlM6HYd6p+m2XwFbranD
	F51Ug9Wh8f/73XGDk+bS+nlZJkAA8ZBwQO5lttsm2KQ8uYIDaiMFAHEINQbO80mooa5Fh4vrR5iSV
	YWnZkn4YwZ6UPoMojduGX1nmuGa/OXdjH7cAMuwJ6jun3z8esQ+zfxLNDje4nBvsDbCB4l3128YGE
	XDZUVrbYA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l4Bjk-0000UR-0M; Mon, 25 Jan 2021 23:57:36 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Bim-00008C-4C
 for linux-rockchip@lists.infradead.org; Mon, 25 Jan 2021 23:56:37 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=phil.fritz.box)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1l4Bii-00066j-RK; Tue, 26 Jan 2021 00:56:33 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
 Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Increase maximal SDIO voltage
 to 3.3 V
Date: Tue, 26 Jan 2021 00:56:26 +0100
Message-Id: <161161878916.2050283.12931282362839155996.b4-ty@sntech.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210124210328.611707-1-uwe@kleine-koenig.org>
References: <20210124210328.611707-1-uwe@kleine-koenig.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210125_185636_553241_974B84EC 
X-CRM114-Status: UNSURE (   9.69  )
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
Cc: linux-rockchip@lists.infradead.org, Aditya Prayoga <aditya@kobol.io>,
 Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

T24gU3VuLCAyNCBKYW4gMjAyMSAyMjowMzoyNyArMDEwMCwgVXdlIEtsZWluZS1Lw7ZuaWcgd3Jv
dGU6Cj4gV2hpbGUgY29tcGFyaW5nIHRoZSB2ZW5kb3IgZHRzIHdpdGggdGhlIG9uZSBhZGRlZCBp
biB2NS4xMS1yYzEgSSBub3RpY2VkCj4gdGhhdCB0aGUgdmVuZG9yIGR0cyBzcGVjaWZpZWQgMy4z
IFYgd2hpY2ggbWF0Y2hlcyB0aGUgU0RJTyBzcGVjaWZpY2F0aW9uLgo+IAo+IFNvIGZpeCB0aGUg
c2RpbyByZWd1bGF0b3IgdG8gcHJvdmlkZSAodXAgdG8pIDMuMyBWLgoKQXBwbGllZCwgdGhhbmtz
IQoKWzEvMl0gYXJtNjQ6IGR0czogcm9ja2NoaXA6IEluY3JlYXNlIG1heGltYWwgU0RJTyB2b2x0
YWdlIHRvIDMuMyBWCiAgICAgIGNvbW1pdDogZDEzNGFjNzMxZmVlZDkxYTgxYjQ0N2UwZTYzYzFj
MzU1MjNmYzU3NApbMi8yXSBhcm02NDogZHRzOiByb2NrY2hpcDogUmVseSBvbiBTb0MgZXh0ZXJu
YWwgcHVsbCB1cCBvbiBwbWljLWludC1sCiAgICAgIGNvbW1pdDogMTlkZTUxNTZkMDAyOWNjZGYw
MTUzY2VlMzVmYjgzNTZiNTZiYTljNgoKQmVzdCByZWdhcmRzLAotLSAKSGVpa28gU3R1ZWJuZXIg
PGhlaWtvQHNudGVjaC5kZT4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fCkxpbnV4LXJvY2tjaGlwIG1haWxpbmcgbGlzdApMaW51eC1yb2NrY2hpcEBsaXN0
cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGlu
Zm8vbGludXgtcm9ja2NoaXAK
