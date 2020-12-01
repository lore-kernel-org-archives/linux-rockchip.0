Return-Path: <SRS0=IWi6=FF=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F551C64E7B
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:42:07 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 46F0F20857
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Dec 2020 15:42:03 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="I1lCZ8Zh";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mSjovjNP"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 46F0F20857
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=6g8j9oy/++oYuk+ayRwHKc26oVEjQ1EX9Nzalt6iyx0=; b=I1lCZ8ZhyGs18gdxGMxUnR+KbW
	DMtVxcUM2ZN1Wu98HMv/J/c0RGVOUlBx5IfjOb4vm53nRFFoDUerNkF/axhAbVffpyFxLmLKbakSt
	t0ivQG4t6Ck4RzvLkgjngkYVUC4AQ1SLXitCKnfk4Nm6bz5Lc8AiDc28jhsY2197WKAcX+WDcIsx/
	9UJTkyAAh3HHhrzjOjOGbLRm2E5WsaoDSFBXz9uV/sdWzTbDM2yOb40wWyxNjcfBdZVBUmwCN17FO
	kCe46i0XdVjoGVsErvHHKal+fn5FL9dQRC1yN6kAiUIh+GLInOPoyp77ZK8l48hnnWs2hiyuMq5QZ
	sGEYk9sQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kk7mx-00044V-46; Tue, 01 Dec 2020 15:41:59 +0000
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kk7mr-00043M-SA
 for linux-rockchip@lists.infradead.org; Tue, 01 Dec 2020 15:41:54 +0000
Received: by mail-wr1-x429.google.com with SMTP id t4so3269677wrr.12
 for <linux-rockchip@lists.infradead.org>; Tue, 01 Dec 2020 07:41:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t9IoCwQMJ/vJnXHY0k6N+PPqYBXAse+gw5VKwTEOZVw=;
 b=mSjovjNPOYvly9NDNraY3XAH/7Af2pjSrmAXm/FpRstKebUlgZ5ihtR4U9/Zc9MgH/
 02gcE3yKLB6P2ONrKS5IPPVV0yPnR8YDTr6wIuxlL9WvvvpBIJEcFXTbNtFrDj4Rhqf6
 pMjVb1rZI5HTtGjk7q+OByuw9CFqZWC7jQ3eeGFtFm0hog1clehVPH7ChgbIDEva8cj1
 R3wrsm+Nrv6oyRTHYidoraA4aTaQv6lEwRIXGzeHaRFWizhg3k2zmfy53F+V8Qt4hhVf
 7XJt3afmhPIySWOWiNdLQbFaT4MjRo+647XD8UQPUwowzv5sLqsulxWeVsC76UhKQnt1
 KphQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=t9IoCwQMJ/vJnXHY0k6N+PPqYBXAse+gw5VKwTEOZVw=;
 b=aroxfpaFUh/YXDSDCC8l/mSRfEe/iiuQlgCMuK0VwVJgLxFXHsSFfq2LZ8kA6qrXjc
 ncuWUHYGiv8NYSWOuuAW2aSKEWyLzg2TnAjG48fWaeTxsbBMscKpPAe2KuBsHfB1JgKk
 g9lrx9w/XjmOiqbEkib7DW/vMgKUWnFuE/nWI80JjJD3BkfHSZgJz9IAPgJux0AKFKXh
 sbI7wiedFIFfnyW8XNgNKQHsc01l6B8+HzT4mfflt1N05O0DsXEZSfsihwUa3SySv0bx
 uFM4p0AZvCJSKzPRJL0r2AZKY4e7I8j3ZlaHx5aLAdfDKUdOOnTBC8MLnuZ62iHqJUF3
 3c5A==
X-Gm-Message-State: AOAM530IaYL94KJFLT4jymUJQAPIIhR2NPoNi0fe1HSq/uzfS9bKG874
 3Sd+UIRVj69x4F5L/gXx0GU=
X-Google-Smtp-Source: ABdhPJwRE51m2jKzF9S3y7fqeHotJ/3a3YEokaQe9s6VXpPJ+xQ1R/KHYCs4K27SJ+Ilk5q8kvD7FQ==
X-Received: by 2002:a5d:6886:: with SMTP id h6mr4580986wru.173.1606837312293; 
 Tue, 01 Dec 2020 07:41:52 -0800 (PST)
Received: from localhost.localdomain ([170.253.51.27])
 by smtp.gmail.com with ESMTPSA id l24sm4229811wrb.28.2020.12.01.07.41.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 01 Dec 2020 07:41:51 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Douglas Anderson <dianders@chromium.org>,
 Carlos de Paula <me@carlosedp.com>,
 Sugar Zhang <sugar.zhang@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Boris Brezillon <boris.brezillon@collabora.com>,
 Robin Murphy <robin.murphy@arm.com>, linux-rockchip@lists.infradead.org
Subject: [PATCH 0/3] arm64: dts: rockchip: miscellaneous fixes for
 rk3399-rock-pi-4c
Date: Tue,  1 Dec 2020 16:41:29 +0100
Message-Id: <20201201154132.1286-1-vicencb@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201201_104153_968597_4056BA3D 
X-CRM114-Status: UNSURE (   9.83  )
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
Cc: Vicente Bergas <vicencb@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This patch series fix several issues found on rk3399-rock-pi-4c

Vicente Bergas (3):
  arm64: dts: rockchip: fix supplies on rk3399-rock-pi-4
  arm64: dts: rockchip: fix I2S conflict on rk3399-rock-pi-4
  arm64: dts: rockchip: use USB host by default on rk3399-rock-pi-4

 .../arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 15 ++++-----------
 1 file changed, 4 insertions(+), 11 deletions(-)

-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
