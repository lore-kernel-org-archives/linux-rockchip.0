Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6E49C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 13 Jun 2022 11:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qzLSqPYs584CPEjdPEE8eirI+0fSD894w4KYzEauJjg=; b=LzmlUB5wcbe0Wj
	04jlnz3MPpqJ/Ddp/23otBUYrSdG0TybyCugvBOl8DZO7e28588mzsFwGlmXg40+VkhBvpVsiG4RJ
	YxjgXaHJeOOZ2TdH04j7Uu3OORl95un5szGBkBq1it6kiLL4VJ++pTDaR4Upd6jF4kBcH2rwN4iuv
	A+sfcJ3OwU1OJKWMuFk48M3NodA/PfZzAbodzQlB7TxJAe4mKYT8YWFpUAhUS8VFYJzAIZ/xlq5V6
	86ze64S04ODQqqjWqYruhZTHBGi9dXC6Bu/wHax6hjsbptMMHwRSx8R4lYp0Bv7ms+SstOGBbxtGs
	H2hddwxVNfUm9CWRTUpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0iGM-003Ei5-CH; Mon, 13 Jun 2022 11:29:42 +0000
Received: from mail-wr1-x433.google.com ([2a00:1450:4864:20::433])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0iA4-003Bd6-Ld
	for linux-rockchip@lists.infradead.org; Mon, 13 Jun 2022 11:23:15 +0000
Received: by mail-wr1-x433.google.com with SMTP id q15so6677251wrc.11
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jun 2022 04:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=ftbGLeiB2JlBpoGZ3wbFTZazHN6xRtIZim0EkYzsO0Q=;
        b=iB04vWC9FzI1WYr9ij3UzK3+YE+EMwP1iTYCLyegFM7Xj3/q8BDDXuMhk4rXl5Rp+C
         zAv6KAYz9Dgn7zy6gkiH2J6ochM3iiDetyjgfdgkFNb/BZmL/Dq6ntF58L0VTozF7xaJ
         8Hsh5pgxwtvGmGEksP/HHEiI09wU8YKVzl3SR93sTHHX082nCS5mHDIdoKdAW+7j75My
         u5d7/nPmOjX+ZgaXHTTV8DTaAuoysO9apmgFo9z/t4MzuSJU7YxeP2t2Es1MZKNdgvse
         FH6DEOBr+hUsTKYkrLtmZlkrHNOsvduD+Ya9ILeOeTitmQrOpRw0vRN0zXz3js+pRWVC
         ox9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=ftbGLeiB2JlBpoGZ3wbFTZazHN6xRtIZim0EkYzsO0Q=;
        b=Kg/rBwaARopoN3tgKMlHr7pgvzoStr6+DOkkTuLum/OMWHeAL17yON9Hy3CkVH8F7F
         39gTk9uYVhktjYEWF8l1DqVDYigICh8yzsu3gDqEfnWDJGoZq9EvXet8xHGyLTgUny5T
         KCp89wuy4FyZVFTNig0rjHFtBY/BE+ZFwY9C7uCixc12Bm/Y2UMKXzyP/+ezgxwu4Q5v
         2bNBTUBr7dBal/V8Ubu24cVE0om4tKQTWUzBiFOgQvsdHTCGoWUEY6eRXT2wEWvtJEin
         Bv5r7UHyBOeVJm4NchQ/NtkxHlMBRPBARDi2JXUCDq1n38mRmGx2r3sAuKGboUNG8Les
         PGAA==
X-Gm-Message-State: AOAM531iNTDiRwhPl5Q6GFZoR6B1d0IIyEohJ/bxep/3vA19nMba/RQk
	3vbMzAFfs301ARMVN6r6rAw3rA==
X-Google-Smtp-Source: ABdhPJz/XnZLu+IhNH+tzt4F0AQVXRg8Kj57/I/QA3bryB4W9ygJ6qK+EJFE/lcc0ZEZD+zhe66+xQ==
X-Received: by 2002:adf:ce03:0:b0:210:32ec:50fd with SMTP id p3-20020adfce03000000b0021032ec50fdmr56565196wrn.407.1655119388347;
        Mon, 13 Jun 2022 04:23:08 -0700 (PDT)
Received: from Red ([2a01:cb1d:3d5:a100:264b:feff:fe03:2806])
        by smtp.googlemail.com with ESMTPSA id g15-20020a05600c4ecf00b0039c4945c753sm13769058wmq.39.2022.06.13.04.23.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jun 2022 04:23:07 -0700 (PDT)
Date: Mon, 13 Jun 2022 13:23:04 +0200
From: LABBE Corentin <clabbe@baylibre.com>
To: heiko@sntech.de, ardb@kernel.org, herbert@gondor.apana.org.au,
	krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v7 00/33] crypto: rockchip: permit to pass self-tests
Message-ID: <YqceGFafq7QoT+8w@Red>
References: <20220508185957.3629088-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220508185957.3629088-1-clabbe@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220613_042312_991281_1B69928C 
X-CRM114-Status: UNSURE (   9.49  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Le Sun, May 08, 2022 at 06:59:24PM +0000, Corentin Labbe a =E9crit :
> Hello
> =

> The rockchip crypto driver is broken and do not pass self-tests.
> This serie's goal is to permit to become usable and pass self-tests.
> =

> This whole serie is tested on a rk3328-rock64, rk3288-miqi and
> rk3399-khadas-edge-v with selftests (with CONFIG_CRYPTO_MANAGER_EXTRA_TES=
TS=3Dy)
> =

> Regards
> =


This is a gentle ping since this serie has now, no comment to address.

Regards

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
