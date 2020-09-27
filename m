Return-Path: <SRS0=B9YW=DE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA61AC4346E
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 20:08:57 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 684AF21D95
	for <linux-rockchip@archiver.kernel.org>; Sun, 27 Sep 2020 20:08:57 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="qbiaveVp";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Ar6tqTbp"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 684AF21D95
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:MIME-Version:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=vwi2KtJe6I3PN07B6yVravI+v1kjhnZT6Km8DK8TeMI=; b=qbiaveVp+ckTM7FeJVjy0M+Mf6
	ju+L4MhGo7K8DzewrAHTjIXBorztH+2dEZvnogepf8Bh1uN6zIEDc97//hLZlEsDhRMHdbFXqzRYe
	32pDeTMty+n61kXOJvI9p4djT84H3MVEQSpW9Hbb9mK20LItXsi7LdOwYOXrQa70pyIAH2jfF9ltm
	FUIb71QBEXUMvhIuyHjDtWTldroxXeJxEy8870P/3gW/4mEmBeIZCQy4rkIfXAvMAlPZDjcaF4GyP
	xS8dkJOtpXUI3SiageFeBfz2MwUCiSBIdRU4ZGX+J0KZMUvKm1G6Y1HtebCQietfbXbOvgmEXG2Fq
	sL1RBHiQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1kMcya-0007b4-Dh; Sun, 27 Sep 2020 20:08:52 +0000
Received: from mail-wr1-x42c.google.com ([2a00:1450:4864:20::42c])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kMcyX-0007aF-Vi
 for linux-rockchip@lists.infradead.org; Sun, 27 Sep 2020 20:08:50 +0000
Received: by mail-wr1-x42c.google.com with SMTP id k10so6504874wru.6
 for <linux-rockchip@lists.infradead.org>; Sun, 27 Sep 2020 13:08:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:mime-version:message-id:user-agent
 :content-transfer-encoding;
 bh=KwdukLhR8lEBy3bTttrmXwu2j3UoN5Ovf1bdxuz9rDE=;
 b=Ar6tqTbptUDVW/Flq0sGuX3nfPpL9cej4cIyWUhKJvuhrxeHxz/PNZ0/WCvs6G0geA
 WIUPxsXK+Y6LHUy7GAV3C/akQVGDsVgIH3up7dX0oOMd3Qw6SDuE4SDj81g8g6DPfWiv
 wegQMdG+ytD7enam0bVPMLY4cYK0GG1qLuLfopiy6BhN548ELKbe+wMlXrMNjxy3N6eT
 aXOxjpoWbzEXXpWzZl1TxgXOg6gnjqWH4AOPQii6MeTQAywQDcAV1PDSs0W1R+a3onfP
 pFfH6rgL+xo/4UYyd/Qc7d5eoK/LvIrFMOzE5m1VpYbD04n/Us50wFtc2A0/Lj9nVJHK
 DBjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:mime-version:message-id
 :user-agent:content-transfer-encoding;
 bh=KwdukLhR8lEBy3bTttrmXwu2j3UoN5Ovf1bdxuz9rDE=;
 b=kDBNfD4Yb4NAGMY0pmxxOhE2lXgexYPKsCONqHRpXkjtMsnajrCjdT2hg5ao+xhwQY
 QYrChDB+MCM2pXHqC7pCyT9ByLcraNuuKFA7dzNndetSfoznxofh3Uf1FCNo8i/bDn5A
 L85CBARqh9plCD2uojJt20k8lh9S5D5wI9atk8vCurBrPLLS6PAU09cFis9xMYJYlu/C
 9qm4N8iKjdDSOwxVjURZ+DfJwI295+LEudCcR73yslrZFv2XouyRzFbKIqYzNyzHw62u
 tqhShpk8pgR7tE9YgnMMokce7yagxOYA6kwFeDYai3f/dzcOc97zYROYHTrmFa5E8grV
 GC8Q==
X-Gm-Message-State: AOAM5320YO9JlgOT3DgADMX+Jt+Vyub3V9VJnAgL4vijsp5x7037GkKj
 2qUWd/rV4x+KPqxOAy7YJKw=
X-Google-Smtp-Source: ABdhPJwvddZjWIXI3Q8OoRAE9ysbjHdpEAQc7xC1zJgDGgL4Jv4nIs1vkQdgzx9dKE5QY8MaywxQmA==
X-Received: by 2002:adf:8342:: with SMTP id 60mr16719108wrd.158.1601237327534; 
 Sun, 27 Sep 2020 13:08:47 -0700 (PDT)
Received: from localhost ([170.253.46.69])
 by smtp.gmail.com with ESMTPSA id n4sm10436396wrp.61.2020.09.27.13.08.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 27 Sep 2020 13:08:46 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
To: Sebastian Reichel <sre@kernel.org>
Subject: [regression,
 bisected] =?iso-8859-1?Q?cros=5Fec=5Fspi=5Fhig_100%_CPU_usage?=
Date: Sun, 27 Sep 2020 22:08:45 +0200
MIME-Version: 1.0
Message-ID: <43eeef8e-3a61-4347-a2b8-fd1225dd1703@gmail.com>
User-Agent: Trojita
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200927_160850_081034_95AE706F 
X-CRM114-Status: UNSURE (   6.70  )
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
Cc: linux-rockchip@lists.infradead.org, linux-pm@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,
since recently the rk3399-gru-kevin is using 100% CPU.
The offending processes are the kernel threads cros_ec_spi_hig and spi2.
The issue has been narrowed down to
  7222bd603dd2fe607794acd0c53025da1dbde21f
  power: supply: sbs-battery: add PEC support
Kernel version v5.9-rc6 with that single patch reverted works fine.

Regards,
  Vicente.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
