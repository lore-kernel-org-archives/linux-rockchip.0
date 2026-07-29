Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7FDACC53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 13:05:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FXgFEaJ5HSafras/f+Bf1kd2VO0zyFijvztPcAExrUQ=; b=33gptQ3j3XUr2u
	AIrP5OStkGgoogmXyCVk6n3dk+ChnNcSvV2vyxjsIllG3UTVEtX3EYmbNc+MHpEVHl7FdAbocCOj6
	/+xLvHym3V+VQxQTdHd+K4SIeHXlu7AAMjGzyCwco+5vSfrFaLgMyw2ewSMceY5oYr3uZSflIhITp
	2kzKkpBXPfcNjZ4uAEPdXxyKdB9G2eAQYP7goswEWVLDf1lAvveYq6OriC2gKVv9/oa3hAhEM2iVX
	dbW7ExS7ZXY+q0VCb93Jt2bgJUMWFbmaMxtMm7Dbme7SbqvT/gxTNVJojKXdP4e3+CThzUH9giGEN
	fZjhBaSAVLCl5gTPYa0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp3yf-00000008105-0jUo;
	Wed, 29 Jul 2026 13:05:41 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wp3yR-000000080rB-1K0E
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 13:05:28 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-495773ee3edso789705e9.3
        for <linux-rockchip@lists.infradead.org>; Wed, 29 Jul 2026 06:05:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785330325; x=1785935125; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=+zzhIqIVSBoQbM0AVBT+VjFhhPCuzrFXaKl3szG+kqs=;
        b=Idlx96e+0qR7+vROpPLmwEEqU8l4HEj+eyGbJEIO6J4ZvsXex+Ox1juL/VumHzSBO5
         E1+qUOqaCOGIEWniKoI8ziB8tnNmZtxFIsPDkxElJh7gViKXqdXMj4RKr17lbIiT2uSO
         7D6oyBijqYYee89GcnN2ook8ez1CFywJEZLnivUcHT7LvnryKb5pfGShWNPYu3ca0z52
         upUBsbeDb4ubTpdw1ACvbDYdWfhIIjqLQpB9/yMoFxj8b8AvJ2f6o5rVj1Eci31wnGd7
         lXh394hljHhx8nD2iax2DqtMWhJepsVKSMwrM8CAE9DEH0AvjkKzTpxNREEbtiqlnyPt
         4jHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785330325; x=1785935125;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=+zzhIqIVSBoQbM0AVBT+VjFhhPCuzrFXaKl3szG+kqs=;
        b=HUGCtCYefHnY1CTRRq1PqG0pql360e79wG+5hb9Xr7nMuBJcrhenhutKaAE37lGxS4
         FiPtswqbR3KnacPGKTzQbCqlajvMCj0rClVk5BUe8bF+edn0Hz/Vbqujq4vAEvXKV1sp
         mlNd+WNv/p+D2I/HOd6pjF5V253cCek5JIhEuRWvL8I3Ycs9XI3GmzBpCsdOnI211CiR
         7rk8Uu+/hOyevSn+Qr1SuDj19m8EhDGyP8rHPyyuHFennXjII03yH1rwHq15K95p1oHx
         x/4xyex8uwdGw16YIWXBceMNouGVl2V3uevPKjR+VsRy7XqHDyuCiQx8QXXIigpX1JMC
         KBEA==
X-Forwarded-Encrypted: i=1; AHgh+RpGAoixd8qimzksa3uJSJTuTYx+wF1Cb0Xk4dm6v+VzXaLyo3pkeMxJ9313bgL3ULQS9H1zhiCHkQdFG06PQg==@lists.infradead.org
X-Gm-Message-State: AOJu0YzPmtn38wh9E3TUetKXdwRXjqjHyMhP6yN0h/AwGEZ1jBzsxsN1
	eLfvnIccsuTLA9jDbCSBB71OkM0sU2jUP2uE9BDcPzEYDnOzshPg7RB8
X-Gm-Gg: AR+sD13G6AjJe+Q4CwTZKWeYpdMNQsqyAzpmC1/R5/ZkQAcnQj+97ZFBDJncVjwGQ2L
	ei5Q/OoVQKxIxNcUi59gbUKcTPBJcMK826D9sJHT/tVA0+FfOGSEPWvOay/1eprntIK+/EXA9lf
	gilsfjdsw+AlMeLpFk+YhB2GyBAh/kAx4k6i21jEvZ4+VtTKUlsQAsQ4Xl02AtOYKWEtMMnqMfQ
	rKgkoVwNFlQgcPzxIh41u3PB6lwn8/xsPc80jEnRG/P7uUq+/fRC3I7noK6tH//O0xtdf+WlnPq
	YvGeYte7mqDvTe2LDd7L45elOVV6QbND6vxedQNetZmuNuwOjHSE+y+4rmed5FqBWY+Ge/en5Hk
	czv5WXfEbmheoGHIgt6jF/7cZB0UUzkkfvQyuAsM3rHt9fqlbrLKiUu/gUitcMtbKqKCYZx1iy+
	d6jFPaFb+5Lo7DUc7eZLto7vquNJcDxFTZ1toEIIOFm6F8zhpgsdwUOktqtD/GkdMMAD71HnHXm
	RRCyiD70VZxcoXYjwcET7XY0b2Toxe+mnBYYnChyT6YRN4XbjGIJ3noQDEUAk8yoa++PrFuhe2J
	whg9
X-Received: by 2002:a05:600c:46ca:b0:493:bea7:6b67 with SMTP id 5b1f17b1804b1-496c65a60dbmr52320545e9.3.1785330325142;
        Wed, 29 Jul 2026 06:05:25 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B886F0027B74C8463513DA4.dsl.pool.telekom.hu. [2001:4c4e:1b88:6f00:27b7:4c84:6351:3da4])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4975abdca42sm52980835e9.0.2026.07.29.06.05.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Jul 2026 06:05:24 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: Re: [PATCH] accel/rocket: request the core clocks by name
Date: Wed, 29 Jul 2026 15:05:02 +0200
Message-ID: <20260729130503.128710-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260729105013.1255526-1-gahing@gahingwoo.com>
References: <20260729105013.1255526-1-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_060527_360715_1E9BFAB3 
X-CRM114-Status: UNSURE (   9.56  )
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

Thanks a lot for the review - and for the RK3576 data point. Good to
know the same four ids are running on a ROCK 4D; that makes two SoCs
between us indeed.

Good catch on the behaviour change: resolving by name turns a
permissive lookup into a strict one, and that deserves to be findable
in git log when an out-of-tree DT without all four clock-names stops
probing. I have added a paragraph about it to the commit message and
will send a v2 right away with your Reviewed-by collected.

Noted on the v3 timing, and thanks for confirming the iommu patches in
linux-next.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
