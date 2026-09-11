Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DE613C88E53
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 19:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OwhtHBE0Aq0ImQo0qvEos3Cbql4uaixn1HszP30M+W4=; b=0hWLYgUul3AGo0
	YMtcXcjk6hZSk3TLNAwDScAZV20ZyaU0rhQ33Ky9U/560AvMqNaZfJGYgXZbxfdTT2Obp5gycjUNK
	Fa3ev9+hg1fMa2jVOl0lUQi/xa6fIAdIj5ZQsdeycBZPHxN/CtxDraBdQJ/R7cb5DRLSuEujwB+Cc
	6oKYeT0blFR6bheuRaiHNrKVeAqmA3AiVkPk5oFK9EjPEckxyh28tVZ2VWNW1pWUodfcwuu5LcoDx
	fSx9ZrL+6NxWs4+D0pBMYOSFQ4ivAUgeqApY/wutEjj1ZLbgISNW0qIEK/MHBNIbbQubSefesRkwo
	1JsAWyf8C661g6GXfE+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x56w7-0000000HZLi-0vP7;
	Fri, 11 Sep 2026 19:29:23 +0000
Received: from mail-wr2-x10.google.com ([2a00:1450:4864:30::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x56w5-0000000HZLA-1Fjy
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Sep 2026 19:29:22 +0000
Received: by mail-wr2-x10.google.com with SMTP id ffacd0b85a97d-4843703c170so23807f8f.2
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Sep 2026 12:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789154959; x=1789759759; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=9iZH4smAK/5RQM3yN2gdRK991OBVSlxMLJnV0+zPvsg=;
        b=Tyh3OUnenymd9enWPOeaHYZtdJ1Rs6pd8v9pGQktJwTBgrcyIilbaIsYsHRV6BNXaS
         RhIgZtdQ10N+YFSR7vBDLeLAgsUpS1WPTaZziYsBL+lUFJLsReX0pAu1P1X9XU6yNelO
         g5GfgjTv8Gi8/G9/vH7uXB/aPciZt4SWiuGFlTburespxto18Oe/BocDe/0Y6z0IV+pB
         ZFlsXmU+OP6MPR4B6HGJXAclTJ09AOfo1ZbgTZNxajjfqpTXkCMH237CXZOQcQ6/I4UQ
         Vvwa9YAyELfz8j9F4ink44YE8kOUBQqF3arHyqROF9A5QFBxqQ1zvqMGRD966qGD/TBm
         /Chw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789154959; x=1789759759;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=9iZH4smAK/5RQM3yN2gdRK991OBVSlxMLJnV0+zPvsg=;
        b=dyYI6NkX2cl0a86GxagFpBlunaF0UfeHCfSYlcUyPOcfng240meokwqxeiuasWb1ky
         PJ/PbVREXtHH0eFY+B+2wQddAjIYLfVJwYj6wlqU9pVDE61gObjmXY7++uI/usl4hXtV
         Zt2cNi9vJSci/fN2Fo1nVlVDEgeV63A4U6nTBQkFfNos8mc8pWHw1xkHlm7m9xM3W+Qw
         h8sebF+2o6bHV5cJjB6eck+l0AS6XO901NGVmuuKvFXWJwWYhRrq60YyTJqGyXXcDmqA
         W44InDiIV2Se2H9WSH7iamCS2+mylXeuTzwWg3wrYBdv67CkBCGBIElEg9GqfEO30XJ5
         EaOQ==
X-Forwarded-Encrypted: i=1; AKwUvByMrGNy+OQCubPnE00birCeP1lZFSSOz+JYNztXlagw+dpv/a/aQWubvt2twUh7PNq6ZVke+itZz1l12O7r2w==@lists.infradead.org
X-Gm-Message-State: AFuF++nFwzMSSvs7JsTTldkZbdc+uoHz11Il8p4GaB5b5J4mmnUKGSg9
	Lo/wILaGT6SHFr2b42EHTycSrsBCJgUaYuSObc/g9yaUfv6NX8c4+/on
X-Gm-Gg: AYBFou3+vVgvzXcWMaMh1Qm5NjhmcVURDNc1sNSuKVnW/T/rgADHHzNyYIEorRCLIcd
	G2SIwceWvTgd/NwTmLS9OIuYiIYqswNw6JpObROXtz8x+5/eRjCGtfzFbQvbtVB1MBmG2mkVo4e
	TLCqBPNY6PIkBffhGLhi+ywYHQPcfDwIJQa2jZtj01SCo+mqsrwrUpFNygWeGRqnKYdFOkrY2QL
	Q62J7RrrpZGGsiWjiDhRWjzOPY5AnPcFlxp31XTyqFdhD1qpAACxdh8YP6TZbIGgJA4GpwgIAXo
	4SKdS7hwZnkrQH/jP260OB4SJlwgYopsbqd9NxEUQR5NdGE9ZNSZCL4qhE8GBeztQneNTPH5KSU
	bEibpElv3zUKcRLrn5ehz48aHr+PF4McFfFXAlUKbkF2L9BXqH/PoM8wKsXA7UkKk+HeeaK5JYk
	4xgDKwqg9Pii2JWEWNhQFEhw1VWxdkTlhUpnbKy4dTGalpKtB+pl2+gVc/FTKrdWSC63zP1MjPO
	64lo9PcfyiAIng5M9UUL7sESm784KUvdkiOedvfJ5knwTwsS716jQnihSdl/nppmf7FhPVoqrSr
	k60=
X-Received: by 2002:a05:600c:4712:b0:499:d95a:41f with SMTP id 5b1f17b1804b1-49e61643939mr56344455e9.0.1789154957725;
        Fri, 11 Sep 2026 12:29:17 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B918F00F78D5B181090144B.dsl.pool.telekom.hu. [2001:4c4e:1b91:8f00:f78d:5b18:1090:144b])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49e60ac42b9sm97156775e9.6.2026.09.11.12.29.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 12:29:17 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH v10 00/13] accel/rocket: RK3576 NPU (RKNN) enablement
Date: Fri, 11 Sep 2026 21:28:32 +0200
Message-ID: <20260911192833.105634-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260911122832.1364839-1-gahing@gahingwoo.com>
References: <20260831040804.24111-1-gahing@gahingwoo.com> <20260911122832.1364839-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_122921_360729_BD03FF82 
X-CRM114-Status: GOOD (  10.99  )
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

Hi Jiaxing,

Thanks for going back over it, but the correction needs one more
turn: both sets of numbers are mine, from two different days.

The 45 (12 + 8 + 12 + 13) is the 19 August A/B square on v8 1-2/12
[1]: no manifestation on either arm, oracle 48/48 throughout. That
is what the patch text describes, and it is right.

The 102 is the 25 August re-run on v9 as posted [2]: v9 arm 12 + 11
resets, all 48/48; differential arm (same base, 1/13 and 2/13
removed) five runs, 8/10/12/8/15; plus 13 + 13 on a third arm with
3/13 added [3]. In one of the five differential runs the inference
issued after the forced autosuspend/resume "succeeded" and returned
all 48 output channels at 0x80 while the CPU reference varied
normally, with nothing in dmesg, lockdep or on the serial console.
That run was on RK3588, on my board, and the v10 cover quoted it as
I wrote it.

So the signature is shared, not carried over. Your explanation of
it (fresh shmem BO zeroed, teflon readback adding 0x80) is the same
mechanism I inferred from the scorer, which flagged 128 as not this
model's zero point, i.e. an output buffer that was never written.
What holds is the caveat I put on it then: one event in 53
differential resets, zero in 49 with the patches, timing-dependent,
and my protocol cannot tell a genuinely hung block from a lost
completion. It bounds; it does not prove. The artifacts (scorer
output, runtime and genpd state, journal, serial log) are preserved
if you or Tomeu want them.

If you respin, both statements can stand next to each other: 45
resets with no manifestation on 19 August, and one silent completion
on the unpatched arm out of 102 resets on 25 August.

[1] https://lore.kernel.org/all/20260819073530.6087-1-royalnet026@gmail.com/
[2] https://lore.kernel.org/all/CAEWPSH5mxTbUkNouxm6yecMZYvDowquhvYvhaXQ8HoMtHD5U1g@mail.gmail.com/
[3] https://lore.kernel.org/all/CAEWPSH5MVzoQMaFOEQ93+1pOPmcXCDNfuXsv5j-X8Lb1fy_hrg@mail.gmail.com/

Regards,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
