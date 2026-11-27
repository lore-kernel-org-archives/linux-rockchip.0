Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F2C3606A31E
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Nov 2026 20:03:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=p9Onb+BN;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=OdM/aStW
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=6VcVys1yrdgJgFDDhAtnxYr12EbhHgFIiLn2BCzNdDM=; b=p9Onb+BNRC7ToIIeLEyPGUjR05
	wdJhrUL5KiTHI+5WBIgQFnN/qM6BExU+qQC2Rd62cNZQhFLH4P1VxTIEkXQgVVy2iDCFbxl/XOtsr
	6VDBE9QTG1U/MK28CaQwIL8zcTRr4LTHJRr6rwq9qKr63tiM+Ey8LVGiauAhyb39GQT/RKrwVoVan
	7GCn1rALiETosqsZ/yVh+tjqqT2BsM6V38M+2INNePEbXlrLhL4ISOAw5I+PkiE3+E1xICjyyJEVG
	Z399/XcrFW0xVTfsJxnTvc0lrt1MBvl6JDqRCmBktnFIQ5CE0TbXnT5SbQtd1xsbYnYmYCQL0jHjV
	yy2B//Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX2A2-000000001ni-3780;
	Fri, 27 Nov 2026 20:03:10 +0000
Received: from mail-ed1-x530.google.com ([2a00:1450:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xX29y-000000001ly-2hlG
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Nov 2026 20:03:08 +0000
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-6b86fcbd647so12943905a12.1
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 12:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795809785; x=1796414585; darn=lists.infradead.org;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=L/E3JJyk32BLVSmJPSu88QD4Xx3KecbTtSFMtKZvIaA=;
        b=OdM/aStWMkax31VSkxj0ZjXXThnqyZTGmBaQFQyLFXotJ+ZKegewCBrn3/+s1w83qw
         /9Jri+/aUGzepJyUXx26G0xWR+kcuVvGPkVqLiiWTCITbx33LYsZbUMaS9+MMAqltlu+
         D64aO4CMvsm7iFHu7xYnW7wmvn/aQfmACkE23YQ2PWMyX9iF1Izl1GyCTpx0zhxkNQly
         UuvUydUSrXCzqG5pPmCzKaBVv4a19x55xKvJ8g9Pvmlvt0SJpJxrbrNSx4mwvfrW7E9n
         NWAIGynu4OTJB90x0hW67AV8QzJ7Ss+4cXGrB26HUlq892DG+1JW9JDA7mE51LWIgrcF
         eM5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795809785; x=1796414585;
        h=message-id:date:references:in-reply-to:cc:to:from:subject
         :content-transfer-encoding:content-type:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=L/E3JJyk32BLVSmJPSu88QD4Xx3KecbTtSFMtKZvIaA=;
        b=b3tqpfXyAC+r43IRCYDKLx6SH0ZHTOhrHJhpWTJ+21CwPX1YBatXQSLKjS/0sWDZGh
         1ea/zMQprwiC9H+u+L2D/eUg4rzuoYweCYNVe1lXCABB4nkkFnvYnwbPOpTvVkeREFt0
         yK2QuETWfXlSR5F9CI3aFuZKwKxLx7wxeae8QF6rCgAUZbbsFuoyEyvtXBSD8g6AcedJ
         JHcwojNiS4d7ocmA27qlnaxVYilzhTiezUymdLYy1Anp7J702EQwqYdJf4IVVEjn4oEu
         CwjxPCXziFGrXkg+cwZ5JxT66MVygqKgbgcoZ6vJVJEWM6DGZz63M5eI7GGCPyAlGp7s
         dMqw==
X-Forwarded-Encrypted: i=1; AL+hErHCLGqOxwfFxRuKYE7N/d+yaATTo9+DiuYvhNxbC87ZgvxmXLNAhGU/qMIR4bj/NYixF9RVNp/o8rMskSYlbQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z9ZjPfnYvYyih+QWdzjmv0dPk+sAlOYCRJCSOw40Lf+Bd7ooWrq
	pLshFtG/HioMoBZc1RBDnrWH6VPncWAZ3j+7zYfuEVXwrdpsn3G3iVam5F9gjpx65gA=
X-Gm-Gg: AZFdTZdCWSnUXbTdg3r8g1r2FXqRsVgIXS4II6bTXgB0VZnY2E7TM5RFup1znhBD7uY
	fJZ9DVug3wnScdJ7b1No43ZZlYuWJ+VoLv/Lq2JUqMTUF3M43vzVQHomqnoRM7y21cnGarR5oYD
	gtKiZhbHrtBRycn8OUNyVjHmpEKYw13sh4iRj6A8gcnxGujkb1T1dcakIQ48WCgFp+bwwODNg5C
	70nAcdJBWv67+P0hzucsCcG6ZAO+6aGqXrhMCKlJLWcbtjcvX7EkjWWz9jT4ZRdov8CBs3CrS/P
	6/OgjrLqUo8rD6jbSnS9usQvCOo+w5XK/IcWRDuyFd3uztUwACZGEnK5bXQzJ4olgCtELthOvSm
	wsYcknjrf/YK1Lpah76MgkW53V9M1cawIYTbrfPyOqW/8rvOz18Hs6Jq3yzYIuywYL/HQHRN9VQ
	lcH6b5idX8Mh93Mj1mR5gTxYElXpq32C92OomhA6mIGbUazoRk8HfBTkZCeItFR4JewfUU/g5rO
	WfdVv0tvi65dOZSamHxUfGgOqtCHPtO8x1elCM0zWPRyLjRy9LxEww3pP/QqpJAVdrB/d0WPZ93
	5nDuta1jb4szMR5Srxhe1Q0YZdUUu9oA+k8b7io0djf7mShH
X-Received: by 2002:aa7:d402:0:b0:6a9:8863:ada4 with SMTP id 4fb4d7f45d1cf-6ba1fae103fmr14763271a12.3.1795809784883;
        Fri, 27 Nov 2026 12:03:04 -0800 (PST)
Received: from localhost (82-67-6-57.subs.proxad.net. [82.67.6.57])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6ba6f8fa5b9sm9906969a12.37.2026.11.27.12.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 12:03:03 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH 1/6] clk: Remove unused clk.dev
From: Jerome Brunet <jbrunet@baylibre.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>
Cc: Aaro Koskinen <aaro.koskinen@iki.fi>, 
 Andreas Kemnade <andreas@kemnade.info>, Kevin Hilman <khilman@baylibre.com>, 
 Roger Quadros <rogerq@kernel.org>, Tony Lindgren <tony@atomide.com>, 
 Russell King <linux@armlinux.org.uk>, Paul Walmsley <paul@pwsan.com>, 
 Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andyshrk@163.com>, Ulf Hansson <ulfh@kernel.org>, 
 linux-clk@vger.kernel.org, linux-renesas-soc@vger.kernel.org, 
 linux-rockchip@lists.infradead.org, linux-omap@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org, 
 linux-pm@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>
In-Reply-To: <a896e5bdb29c7c6de39df9b28b11d55614f2ec2d.1795094688.git.geert+renesas@glider.be>
References: <cover.1795094688.git.geert+renesas@glider.be>
 <a896e5bdb29c7c6de39df9b28b11d55614f2ec2d.1795094688.git.geert+renesas@glider.be>
Date: Fri, 27 Nov 2026 21:02:59 +0100
Message-Id: <179580977968.3028968.220600254133838233.b4-review@b4>
X-Mailer: b4 0.17-dev
X-Developer-Signature: v=1; a=openpgp-sha256; l=438; i=jbrunet@baylibre.com;
 h=from:subject:message-id; bh=1x7I9OxtWjxbS+wEVDFGimHZA2zKBIWqfRJtzMCbXkE=;
 b=owGbwMvMwCW2VtK+WnvWU3HG02pJDNmcD7/5dtokM+ZkaTF6K2ZGVttk1rMrH2fK8un5tvb9D
 fstDRc7SlkYxLgYZMUUWWq4q8XfSWp9mTVd5zbMHFYmkCEMXJwCMJH4Q4wMmxfdaay4eymZS6GK
 Z55007ypBev3ur2PCN636eTcxxoMGYwMv2pstwfXV9w7/0GsKypkd/dKC/bAd4cr1ViY1xxhVqj
 nAgA=
X-Developer-Key: i=jbrunet@baylibre.com; a=openpgp;
 fpr=F29F26CF27BAE1A9719AE6BDC3C92AAF3E60AED9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_120306_959565_B102F00C 
X-CRM114-Status: UNSURE (   8.13  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, 19 Nov 2026 14:40:34 +0100, Geert Uytterhoeven <geert+renesas@glider.be> wrote:
> This basically reverts commit efa850487a6b6742 ("clk: Inform the core
> about consumer devices").
> 
> This commit added a struct device pointer member to struct clk and a
> parameter to clk_hw_create_clk(), but the new member was never used
> beyond setting.
> 
> [...]

Reviewed-by: Jerome Brunet <jbrunet@baylibre.com>

-- 
Jerome


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
