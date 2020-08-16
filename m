Return-Path: <SRS0=P1+Z=B2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0FAABC433DF
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 17:27:30 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CF67A20674
	for <linux-rockchip@archiver.kernel.org>; Sun, 16 Aug 2020 17:27:29 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="hh5Pm6Q2";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=tutanota.com header.i=@tutanota.com header.b="21l5jwsA"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org CF67A20674
Authentication-Results: mail.kernel.org; dmarc=fail (p=quarantine dis=none) header.from=tutanota.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Subject:References:In-Reply-To:
	Message-ID:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=K2xQxg5oIvJMd2dgq9HRDE3mCDmvHSKY1sj1FYr9/NI=; b=hh5Pm6Q2YnFb4p+fl4xghr1sN
	/RHA/YFzdKWYYPm8uaEFc6c87OHSRmnnDRmMQSZ93YMyVAzmvd8bA9y5LMCLZzSrqLkqtL5+bcksY
	EmpX0NrGNZco3JiD+v1noZtWIN5DBminJq2xomUDvvF6l8V5/8kyT2p5HVWANW3GESJLLDpWZvklm
	Vimlg6PvSGdwSofJ+PCo2OIX3Oa5gWvO+DDllLTwXtYMUv0pJnCT90LI6NsDKuGQfRM2on80y8Pub
	ueZXe/QWGKz7R2H6ObnuT58e76+KNZQggWicf6awxybw9YtjcSQ+MCWm8pkriuHljeyIfmokXyJ1K
	1ARvxw1aA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7MRH-00028k-0N; Sun, 16 Aug 2020 17:27:23 +0000
Received: from w1.tutanota.de ([81.3.6.162])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7MRB-00027r-BA; Sun, 16 Aug 2020 17:27:18 +0000
Received: from w3.tutanota.de (unknown [192.168.1.164])
 by w1.tutanota.de (Postfix) with ESMTP id 47D7FFA03C8;
 Sun, 16 Aug 2020 17:27:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1597598835; 
 s=s1; d=tutanota.com;
 h=From:From:To:To:Subject:Subject:Content-Description:Content-ID:Content-Type:Content-Type:Content-Transfer-Encoding:Content-Transfer-Encoding:Cc:Cc:Date:Date:In-Reply-To:In-Reply-To:MIME-Version:MIME-Version:Message-ID:Message-ID:Reply-To:References:References:Sender;
 bh=fA4h/N/F4FlCIJKQipKo5rMWNyDVxcAR2cCxC/0ydvs=;
 b=21l5jwsA3PUIJMDuYKX0m3bkonWAbDn1NCjdW8sUcBNfCKX43fio+nteLRwMTbIR
 gzotDnxzCiZBLC8WGfyKAysUKLUIUI2Ldbk4mv5NQLrk+wPKt5BtUf67wGlPRj+mDPm
 /DeAqJUfrSmJhkle/rXsX9laEaHRepexFFmlEeiCCejfJFtztbZOoXqhBwyWwiOvtpK
 FxfsvXsalbXvtR8Ak+U/OhdbQaFyGHziLEQMvJmwJDNys00KEXwATSXjplc5AWZ5qCL
 KWcFBbARXPgZ8vbslIeJqABaXzzNwuJfOFRxhpJjKA12KHYYS2kyxJa03HDl6fVooNf
 v/fw2dP9uQ==
Date: Sun, 16 Aug 2020 19:27:15 +0200 (CEST)
From: Cameron Nemo <cnemo@tutanota.com>
To: Devicetree <devicetree@vger.kernel.org>,
 Linux Arm Kernel <linux-arm-kernel@lists.infradead.org>,
 Linux Rockchip <linux-rockchip@lists.infradead.org>,
 Linux Kernel <linux-kernel@vger.kernel.org>,
 Linux Usb <linux-usb@vger.kernel.org>
Message-ID: <MEsItyq--3-2@tutanota.com>
In-Reply-To: <MEsH4zf--7-2@tutanota.com>
References: <MEsGWB_--3-2@tutanota.com> <MEsGppx--3-2@tutanota.com>
 <MEsH4zf--7-2@tutanota.com>
Subject: Re: [PATCH 3/3] arm64: dts: rockchip: enable rk3328-rock64 usb3 nodes
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200816_132717_740073_A9DEB7EB 
X-CRM114-Status: UNSURE (   6.18  )
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
Cc: Balbi <balbi@kernel.org>, Robh+dt <robh+dt@kernel.org>,
 Heiko <heiko@sntech.de>, Gregkh <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Unfortunately I had not noticed that these patches were malformed when I sent them.
I will fix my email setup then resend.
--
Cameron Nemo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
