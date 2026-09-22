Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4915AC982F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:12:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FYvEl80KVhVLE+jVb/MSaOSLnlnwRe95a2fBrKNyfdE=; b=RueSBy17xqkVeS
	mqy01ahVz0C/snkI6E8KVSGbdTOfNCoCon3o3scv+jz8BDlH2QONQG9KmOeOPdvENPn7SNeCmmLYF
	EIAYibGWD4xiOfVxuAHEFdjMoIAB5qLjAwAHFHMu+be7lgNBaVVjAeK0peLMqdJ2j4RxDl9yB/EV6
	tjZSVexHBw3KvabqbW9anfamnCTPm1aDYX89f6JNd53PZ7vgshkbm1M8Al9ebnbGZI9urgwJYbrF9
	qzI53WWLIHPtXUCGwIjneFKSgr4rt/gaCZm+iOwotja+KIKWHOVBuuXLi9j+DEDv9M2uwHvcK8ndm
	SWFbj3acdjsK/er/x9sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vcT-00000004dI3-0rlc;
	Tue, 22 Sep 2026 08:12:53 +0000
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vcR-00000004dHf-11AZ
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 08:12:52 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49b93204449so2958555e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 01:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790064769; x=1790669569; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=60x8O/YrRot0F50Ltg76B2oYgHHgxNBmBw6ELDymd/c=;
        b=DPokBrLXret6ENp7QV1xGs+sDmqUz7kaDEbhD3jUov9YJqbeov1wrH+dY43Hsh8P/q
         bzuk5BShoIYEuC4L4QNR2CI0oKzAOjx7o9sXMXbxadQgpzc0oaaKuKi5nk7Ir3xD0Ghv
         50k4cxBiglWsc24DBAZ2ei1BrAC/bxHG8CKqod84EnyMgHiD3jMIeRQWnhNVv1d3unBU
         tYFPxTWoH3KesZSYSUWe4wnWo7CcI6OP7pM2RObuoPkeV74Oc0Wax7Llun4JoFt84AOH
         uYVKrEwSqNQs+aASq++kFV+2TviyYqmFVhoXlAXmta3O0GR7ZiCCJdhK6AqDvDopYbcY
         A58w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064769; x=1790669569;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=60x8O/YrRot0F50Ltg76B2oYgHHgxNBmBw6ELDymd/c=;
        b=c32Fk88M1QaE/39BhyaYGCa5Wxffgo6L8qBYgJmnblVoV1InWJ2WqqXgkxPg0sI+R7
         PzQCYB2gDiMZ6kZ8pYLGidmZYu6/bKoLWmC/t4cDd4FpEDft2AkiXwv4XmtCuoT23rDx
         NLfEJd1tioKavaParJkIE3H2M6bhcgG8rkTpO3M43sRZtTJNMVxWJJBptfRycAhiQGuA
         IXj1iL197+8zx3qUJVX1qSx9h9i+/lxzrUe2Yrpk0HZH7FrFlg3saHmHQBiz8YhD3Sjz
         cXWRiuQ6YBz4vhpn9upjRR8uwu7+7ieRvU2QMds9Hu1MPIgDTAVhf3jhd9mCENAfeGvS
         OzCA==
X-Forwarded-Encrypted: i=1; AKwUvBzEAgQLChK+nQ676Bblzyq1V1x/uz3smRKSwIuNxTpevy2lrv7nmyUMReMi1KwWE7Yjp2MvjHy66/yF0VftBQ==@lists.infradead.org
X-Gm-Message-State: AFuF++kCxjg9ofqD8WrgtZuuledF7AHRXFO78Fsq+ucAr7EJUuaNFxfe
	qt3qYDnkrzg0pcpgTYriJ8GKwVuX0zsiv8pr7G5JZQ+uxODEJVoGvWTOaxTaxK54
X-Gm-Gg: AYBFou0Xvm7g5t3ioQVtlZuxKfPfyIa2GyfB/6fFpuuh0USQot9OquAaMaXdMnrRZDF
	/aXUjo6ZzkkJp8pvOK0w4ZWDHCkdvKCmTACC/ZrHiONqEuDiwOYmnb0SjyqAZrFW/g5+g584XU7
	6LVVpQC14z+HOoM0K/1W7rcJNNUNipYPzud9pLDwcvHKNRMNk70Fq6VEcklbk02PERriLugOhQU
	BF9rzdhhR+H2zOU/JnYbzfsRhfygNfFiQ5V1Xo80/F4gb8bqyz6Tog+n5OUJUkaqXR171DQ65Am
	Z9xe6C3md85ZZNN++nEuVXJ5waef0SFIYleS+mF0UlM86BkmKuqooPhOVBtglTGxP+wJ5FBOA7j
	8wESJmnpUH/TuLPAHGf/9brg9RRAwx9cilEsLsNRjJaTBg2Wx+O6ofg8vek4p0aDNjFUAS9g/Ie
	poNNS0ReJ8mMeWUpil5rY64puiS9HrXJZWc2WXkAMdr82FBy7hiVoVrKn7i8BSAKfSRRc40qgOI
	0/flbiqA300gTioElExwW/AtcOyTPq2CmZ/y+ghdN8zi69/Gyv/NkZBG/UcJrEsLMeTl2VfNU0e
	qJ20FdcHh9rbBw==
X-Received: by 2002:a05:600c:609b:b0:49c:f9b8:bae0 with SMTP id 5b1f17b1804b1-49fc7f2bdc8mr199991445e9.2.1790064769228;
        Tue, 22 Sep 2026 01:12:49 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B80530056971C6280202175.dsl.pool.telekom.hu. [2001:4c4e:1b80:5300:5697:1c62:8020:2175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fdad6306esm34086575e9.15.2026.09.22.01.12.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:12:48 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 0/2] accel/rocket: fix shared-device lifecycle on probe failure and unbind
Date: Tue, 22 Sep 2026 10:12:41 +0200
Message-ID: <20260922081241.46091-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260812130311.8252-1-royalnet026@gmail.com>
References: <20260731064933.12548-1-royalnet026@gmail.com> <20260812130311.8252-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_011251_291954_8F15F5E9 
X-CRM114-Status: GOOD (  11.24  )
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

Hi Tomeu,

A status update on this series.

2/2 now travels as patch 4 of the DVFS v2 series, as v3, rebased onto
the slot fixes it builds on:
https://lore.kernel.org/r/20260922080114.44662-5-royalnet026@gmail.com
Its commit message shows the crash it fixes, and the notes under ---
list what changed since v2. Jiaxing, v3 changes the code you reviewed
here: the scheduler list is checked for allocation failure and freed
when only one core is live, and the patch sits on the slot fixes before
it. So I did not carry your Reviewed-by; a look at the new version
would be welcome.

1/2 is not in that series. It builds on Guangshuo Li's "accel/rocket:
clear rdev on device init failure", which is not in drm-misc-next yet:
https://lore.kernel.org/r/20260708062845.716487-1-lgs201920130244@gmail.com
I will resend 1/2 on top of it once that one is in.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
