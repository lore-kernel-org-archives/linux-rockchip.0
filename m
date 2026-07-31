Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E6E21C55167
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Jul 2026 06:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CC/tyGvhOK9rlPO7xrsMYZb1SRw2r5rHYxubfEeEhtw=; b=LbKDoF5CgOhleX
	I5KiHQxqSrxJgPfki8OB+rqlHV+Pcy+EB9jWX5crsPUgy1x/67n1NoLfEFcWr7RbVFERRh3m1FW/i
	l/ITZw50Ahr3Vp5HnJb2stT0ydhglKvLo2WXzPw0SAsPPKfu24XLORSaAIxgZ2BfLJaqH6AxnMmnW
	tDkD/ulzOZ2D636khCUlFY7rt3FANR7PXA5v4BqIlB/vrzWJD+zBfnFHBEmloWJuD5ZG84fEdjMzK
	Ix8thcHdftzHgXCj0uQmQAu/piBEjQmR59hPyyd1t+O+xedEVQnSi0wXkRqkRTHYP4cBTiMYcoPxW
	GXMiKVFt4BJXGBqEYB9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wphC5-0000000BvKq-2jCC;
	Fri, 31 Jul 2026 06:58:10 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wphBy-0000000BvK3-33Wz
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Jul 2026 06:58:07 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-4731f5ffa74so42355f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 23:58:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785481081; x=1786085881; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YeBqNG7bCPXWkEk3F3j6eSFPbLdWmf4Wl+oL4uzu69g=;
        b=hfaizY3gupFOJ9CJj2N1tVJjaGhkCylzcYqN+/HfAZ6Ya2RznkazOj87mIWePa2gLa
         Sa6EYYgR98yxGlhpIM2ghpByrpKmlX+n3Caw+wVfZmVLbSykj50E4vwRkMbf116PgqVW
         gbkUumyBjn/OGIFjzJ9NEs4Q45r0AnWIDP3DNAQUEBmeKBFhxqixUysjN/nyQqGYj+/7
         wA2/BAyarfWTWeCVn72kLtGv+soe0rRzq29CGQCFOToTP177M3toZE1KsxUdUQVMs5SZ
         z+YtVrUGI4DQ3+H1oJqpPd/L3hti3tWdDwbgWmSFJQWbJ/TIPv6DysyUQwQsUGq4IVYv
         mAZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785481081; x=1786085881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YeBqNG7bCPXWkEk3F3j6eSFPbLdWmf4Wl+oL4uzu69g=;
        b=CHhPVCWcmJfd4/rRBIchPBP2zYWoo2Ru6Ocy23j2yJQ4AyYoeKj/kurP4VkOdGSDXq
         nxNt0EBbiZA85UrBxeDXGl/3rcgAMR/u9TaJLalffbloZnv+qvgvh1gPqR4E8GLewqx0
         va3gKx8IU0+KFugAv+kZk2XdgttFOvLkf9AXmEf14fUwWCt9W3mV1Qqoa4PB1mcGHh+u
         9eAkG9pgyv/gG6T8wk462en3KxtNdORaLZ9faoixZLG+r5isKnFE2dbhnRUZNtTQXrW3
         iTsQiyVkvKVD1nJcNgZI1TYBQ/ZrqAechcWYPBXbRQF/jAkOPaUlXyWhArQEpaayPvH+
         ZHbw==
X-Forwarded-Encrypted: i=1; AHgh+RpbKPPWhjs3e0xe84iyxEG+kG75hERj5yK3c4Q9CapjanD58+4BMnyU86FxiPCPioAbgN3808kg+ScMF17Kxw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxxbylTkYVlj8S+SK5gJfUO1biRCjZyBBvQxMz1dvMn6kKaR7b2
	dHuKZKgU8/4X50Ib5VWqwJ7HgIDr6CRtWI7Z3OK7bAXnVQ65YAxv9rOd
X-Gm-Gg: AR+sD13U19tClhNHmJDIKUYC83Ll+Dd7s67Nv+zUX44gMiWrNVWmFa3jSIsRed5tbIc
	UQFIEAn6Ld8p0OFaopmam4g9c3RDX7ScTwxtzLPEJjXrMi2VtGlEQlaW9yheeK7uw1pIdyvqw5Q
	gz6XU+5wpWiZeZjVkSLh6MUCJevKCbO70pqiL54WPFqMy7xrLScCO61HaOwajiltT78gVfpIOyq
	cEFpbS4+B4W7hb9txs+71if1ur6lSYNxK1fXMlJE/h4IuGOz2UckNAg3Kc3ozjLxyF6JnvvHEMC
	fV45wEezG0gc/OIegxid1BMqTo4b7SKOf3PKzBKga7tlKXyipE+tROoYslU7vZOuHdTsv2FmSCi
	Ub9Bm9+6OlbUE/FbDd+WWfvx1CIHAPmWJNa1CyTRMvjfaNHj9dmcYgPQOULHV5vw+HDHD0etxLM
	iMplGOx8QJ7o+irXv0/3EGGR87SqAyyYGmSmk1CtIK5Bq+pwOxN2eZ7KMM6ddXYCewm+vHc2PB4
	xXsJDpdH5QvKP0pK4MMe+h1oigDjROytxjF5/1FfmJJSZYrGO0PCAFNEScr5GaOx0AgLQ==
X-Received: by 2002:a05:6000:2686:b0:47f:80e0:53bf with SMTP id ffacd0b85a97d-47fd2b6cfcfmr2383206f8f.3.1785481080876;
        Thu, 30 Jul 2026 23:58:00 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B8B8B0053881A2C61CA978D.dsl.pool.telekom.hu. [2001:4c4e:1b8b:8b00:5388:1a2c:61ca:978d])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47fd41d1756sm1416029f8f.4.2026.07.30.23.57.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 23:58:00 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH 2/2] accel/rocket: keep core slots stable across unbind and rebind
Date: Fri, 31 Jul 2026 08:57:44 +0200
Message-ID: <20260731065744.12961-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260730113256.1418091-1-gahing@gahingwoo.com>
References: <20260730113256.1418091-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_235804_580836_9A53EC67 
X-CRM114-Status: UNSURE (   7.86  )
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

Hi Jiaxing,

Thanks - that is exactly the kind of hole a reviewer is for. You were
right on all three counts: the failure path left the slot marked live,
and the live-slot walk in rocket_job_open() could then write one entry
past its allocation.

v2 is out with all three addressed:
https://lore.kernel.org/dri-devel/20260731064933.12548-1-royalnet026@gmail.com/

I also exercised the path you described on RK3588 - a forced error
return in rocket_core_init() for core 2 with cores 0 and 1 bound: the
slot is released, the device comes up with the two remaining cores,
and inference passes bit-exact with only the two live cores'
interrupts firing.

Thanks again for the careful review,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
