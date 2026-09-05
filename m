Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26D14C624DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2026 09:02:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0o8kZdJCFpcsSlvqpnBw1sOB1XHOveT2hK6oXHvkcIs=; b=Qz5rYjGN/aXGVk
	DRW1YqUGbgL6ryA39DmcugZl1MxFISXFZUBcyrBPpCqL/Cyfdvz4BqwU1NGp4+OgeYncLP98dfGYu
	8EizSlwdOrYMZCgfHbW4CyFHZ3qei28MRYIIOYBInyHc4Xf3K+g+tIr+qscXnMPpQ1mqXgH9bX2g7
	5h5MG8wQ5sHkQHufIxi58q8IUKarwafsU7j7NuotO2eGafhB9wFopJXZkqLouND5aL+amjTvAvOI0
	lJ10JdxYcMqOI3IdIzqGJ8ubmm7aM+bKFP7vuRV5x+8IbCED8pY/+8BieHA0Uut8V7mWEe4tyq7uk
	TwbXUus1JTDPSAafC/Xg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2mHR-00000003tT9-0KaH;
	Sat, 05 Sep 2026 09:01:45 +0000
Received: from fhigh-a6-smtp.messagingengine.com ([103.168.172.157])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2mHN-00000003tSm-3Wfv
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Sep 2026 09:01:43 +0000
Received: from phl-compute-02.internal (phl-compute-02.internal [10.202.2.42])
	by mailfhigh.phl.internal (Postfix) with ESMTP id 2254B1400040;
	Sat,  5 Sep 2026 05:01:40 -0400 (EDT)
Received: from phl-frontend-04 ([10.202.2.163])
  by phl-compute-02.internal (MEProxy); Sat, 05 Sep 2026 05:01:40 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gahingwoo.com;
	 h=cc:cc:content-transfer-encoding:content-type:content-type
	:date:date:from:from:in-reply-to:in-reply-to:message-id
	:mime-version:references:reply-to:subject:subject:to:to; s=fm2;
	 t=1788598900; x=1788685300; bh=3B7gJtfgo23VO+nTznGk7ne+zYgCnQ8o
	DMOsdHtb2U4=; b=JAsl+hL92E+c/DRdGEZF21tz6wpxt0I1XDiWGcwx4sZlazDH
	FQPlci9qarF0q8S1y/g+kcnl0Py3snOHn6fiWD+QWumBWBsi39IMZz3EhhalDaVx
	EqaFGnbU/o1WoZPT35G16FVxIJv8XWPD8g9mbIGoPAIpFI8KSeQ+6/nLHacAQM5d
	P1vzWlhMFJuWcQwcRVNgHQxRvFUUHklECHp9UduCeK0DBJa/5hTOFtp2a6vTpt9x
	A+h8kjPJKjNXy0pPGw1fGp3Ap35stAzFJGhGEUBLno/R1HBsZtOBOsDT26pEYrrm
	DFcZ9mZ0PR0Ehdf6NdjT2PHzs8QyNsI2FvxDEg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:cc:content-transfer-encoding
	:content-type:content-type:date:date:feedback-id:feedback-id
	:from:from:in-reply-to:in-reply-to:message-id:mime-version
	:references:reply-to:subject:subject:to:to:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; t=1788598900; x=
	1788685300; bh=3B7gJtfgo23VO+nTznGk7ne+zYgCnQ8oDMOsdHtb2U4=; b=m
	o4PA0WD7re7wCp6iuB5ajjhr5xdqWPf3aq5mLuCCH5ZbrafuVQcMXowbERiobI8S
	gL2AbYm7BekUQ6zEEZBoXN1agMFRJVN8QO8hyhpuTwZJYxC5cr8dPAH5353PUZBC
	BvfmLSgSp/AFNId4bMnqWDd9eX6NPm/XjOkD78DkTxgnLo5ww7OvzN/1/eJ7DoS/
	kuXfJ9C++pG/64LcukQVGphkmLOJtIpRoyn0QfRTtQtkpPZB1e8JtwVUAWtQKcRk
	jrf0VGOtrxmQEg6DUWWjTGNWU9F7PUgHHgprMLK8WwPh8A0YvqnIrXHzCoahzKw2
	eSkeRg4HqnX/UMpu91Saw==
X-ME-Sender: <xms:c9qbagI84QzhT0-lMgizKzR7J_ktU4WsZSwMPrdVvqMEDWHoS089wA>
    <xme:c9qbahqDSWv6tn0EsQr_Jw5W3cWOVJOjx3odH9ZG9NlLZWFO_sAfKH_hc2jFFxeiu
    C5eVYs8-G26-99VhbXTQsY-GEPyDO1xm2bJ0Kg072-LOpWFbqp4jCZZ>
X-ME-Received: <xmr:c9qbagzrI1e4vmaqQbYQClmUUfu_SIXzy0GpWqIHN7D4NRyewcNCaGsjATHYPpid2IPCJ9C-9g>
X-ME-Proxy-Cause: dmFkZTEYSrnIgFqH7Zve5CKWphECD4dHzCRXMT0THSbWEWGgAbHRBgA0hl65ofVS4GybDE
    mhNPOB6hEr81yHFFTNkxA2XaeRjcRl6mrMaHjzxA9tp3+UrtFTOia51yeQNXP3utIfJ9Ji
    Ny5sW/E3oug/8a1poAzhWYWvo0Ewk9Pue5iUXTRDYE0K6ATvMR43x2v39S4Wu6rsFD5eTp
    e+03Iwl3QVILoZm8uEvhDNfxJzwEs76WFhAJK+UPUEieD0xFcPM5SfK8lsQKmt5zNHwuKR
    ir99+tzb0zA90e97nq7EEayX01uw2XbPcxLaoGqihPWclPGU+4syOES5jrF0Epi7jQpJeO
    5kXNzyNXaycqdCUbnDkWwnqrPpWOXw1mVO4s5n+YgaUGIab43IoKZ1GvWrT2yhv4lWwVzR
    Vx0rvUG3n385kuMaAEkXPZIu0YTMOsnWFR6fqDPsGQ50M70TKDlc01ED9yFxGMcWjl3McE
    gfuo72BDNdE4B4IYTyIc08f+5GcRctGwNOA2R0Z6lf/WSkO3FICWe2R1tbGzGBBD8HCMeO
    BeQNP/a2Ks8+pyirp1Hn3egSSMWaOKgChniW9lxvgmCqqeeQ54yKpse3Lez+7s7Fsi95Gj
    0odvZ7A/VLzPiavL6G3zMEVzyaCb8lg1hCzdlQ/Uu/YyYDz5dCq08wOPknyA
X-ME-Proxy: <xmx:c9qbatM1hHpkSdQKHWcs6aDySyTDogHHJX6ya3KjL3o1VJBod8_iFg>
    <xmx:c9qbat7EY-EdpwJnn7L7RtUNoyypnwsanSEXCCLy5sPhb1i7ApKwgg>
    <xmx:c9qbaumHc5KFleBbtWLeTL_sr5IHb8WLsSPmjEcK8wBI8HdPLb31ug>
    <xmx:c9qbauSO28iZ2vLooHcF_tfGONOX3q4jabVi-4h8vdzS3QsvLyMvuQ>
    <xmx:dNqbajLT6aBl-HroG1f5jie3kZLivf4rtpM59aEKpprGS1_a2dGjWDsu>
Feedback-ID: i7a5e4b5f:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Sat,
 5 Sep 2026 05:01:37 -0400 (EDT)
From: Jiaxing Hu <gahing@gahingwoo.com>
To: royalnet026@gmail.com
Cc: tomeu@tomeuvizoso.net,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH] accel/rocket: search every core slot when a core is removed
Date: Sat,  5 Sep 2026 21:01:34 +1200
Message-ID: <20260905090134.239404-1-gahing@gahingwoo.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260904125936.26234-1-royalnet026@gmail.com>
References: <20260904125936.26234-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_020142_089494_92B725E8 
X-CRM114-Status: UNSURE (   3.13  )
X-CRM114-Notice: Please train this message.
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Igor,

Two unbind and bind rounds on a Radxa ROCK 4D: bound: 0, then bound: 2
with the cores numbered 0 and 1 both times, and nine models decoded
identically afterwards. Moved here from the DVFS thread so that b4 can
collect it.

Tested-by: Jiaxing Hu <gahing@gahingwoo.com> # RK3576, two cores

Jiaxing

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
