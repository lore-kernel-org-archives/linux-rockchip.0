Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CD38CC7EE29
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 May 2023 20:15:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMk4+zqpoz84+Ziosjg+gjFYusayaycGcEvEcr9DuxY=; b=Ung9beByTAiEB8
	ROLXi7oLq+fXGR5R63QZ2FIGu40uOuv0y/xkFKcpooOS5wB7/EZ2JCxpUSoPc8VDyfh7yfeeW1TOG
	dAS41VorBAEJ/633tTbOAq9VIRAUoeJYmPcVJatjFjpf0zgb5f2tKZncrIvuuejn2hcpshkUL2hxT
	03zH6P99w2BsqKiShOToTLZ0Dq7YUD5UdJvkTWsYX6k5XY0T1a48MwIA2N8q0ONDq5lKrxCcqK9Vy
	OQhF1mhdFDCcGmWmEt+UaN2aOvjSa8kAqB9/w1GX38OxTWs8W8LOtcVq6LSwaui/NSXgerh7ILTCa
	yX9ZrX3/M7IINuZCUldQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1BwL-007sCP-1X;
	Mon, 22 May 2023 20:15:33 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1BwF-007s8i-0X
	for linux-rockchip@lists.infradead.org;
	Mon, 22 May 2023 20:15:31 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-1ae557aaf1dso56155605ad.2
        for <linux-rockchip@lists.infradead.org>; Mon, 22 May 2023 13:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1684786526; x=1687378526;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=Pdrje6wvnlDZ+Z6wbd9zxIlTwzeS32i409hLZznOFcY=;
        b=IKgGDbfMAFcTW0fCraBOWKLWmKW3iVgSXiA5H6aqBySMQvF33LN3e/4WaaVBfsNkiv
         rlwvatxvFaLKPYJiJOQxmwX7qux9hU+DbTGFv0sTcdeK2WbWfEGPKqRy9tINpmr6Gs9P
         +LMTABtMt4FGiI3+DOzwVFbwur7RscLj5yUcg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684786526; x=1687378526;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Pdrje6wvnlDZ+Z6wbd9zxIlTwzeS32i409hLZznOFcY=;
        b=F3UUSVZLrH4Fijqg2Z0a61mHG9Dh/4o3pcEFISFq6RSpbVMjjkmX7S9BvEXGWnlLZ/
         mibwP12ulbwKVuU7sSM/wrwNsOx6wpS0Ff0Ht1KfgBTygDOaHqkvuViLwB2FFpcEJVTO
         c+2alwijIZx5IBENCBtMB6MorrUKdu0B65RarhPdFZxQXByRYAy7V2qIIxnQeWdCPzvT
         YiMHDY16grZ+o21nK1aER7cgqPA787Zhu+4h1CwcL4iFKneXutS6eyByyQ/SN/y9p2SA
         1ZyIFtDKWNVIj5flyal2PTuPrHY7e89p6wZyFNOO5Jmzqz4uNNWK97+zjgfSgJIb8lbk
         3EPw==
X-Gm-Message-State: AC+VfDzUJIhJKiDZDo+F/nxClrdCysqS5LqWE+jfmP+PQBKBq/W7tFhv
	Wg4mbd3Jti08YNeUXP8CorjpQw==
X-Google-Smtp-Source: ACHHUZ7wj/gcQ29SqjtFdOT9i9jtD3FakkeSS/upmgojrQC0P7/HF13gNCI198y84KiPEaHhCoJBeg==
X-Received: by 2002:a17:902:b288:b0:1ae:56ff:74e with SMTP id u8-20020a170902b28800b001ae56ff074emr12788781plr.9.1684786525810;
        Mon, 22 May 2023 13:15:25 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net. [198.0.35.241])
        by smtp.gmail.com with ESMTPSA id x1-20020a170902a38100b001a6ff7bd4d9sm5339234pla.15.2023.05.22.13.15.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 May 2023 13:15:25 -0700 (PDT)
Date: Mon, 22 May 2023 13:15:24 -0700
From: Kees Cook <keescook@chromium.org>
To: Azeem Shaikh <azeemshaikh38@gmail.com>
Cc: Sandy Huang <hjc@rock-chips.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	linux-hardening@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org, David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: Re: [PATCH] drm/rockchip: Replace all non-returning strlcpy with
 strscpy
Message-ID: <202305221315.B1E5C7B@keescook>
References: <20230522155149.2336620-1-azeemshaikh38@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230522155149.2336620-1-azeemshaikh38@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_131527_215458_32E2096C 
X-CRM114-Status: GOOD (  10.89  )
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

On Mon, May 22, 2023 at 03:51:49PM +0000, Azeem Shaikh wrote:
> strlcpy() reads the entire source buffer first.
> This read may exceed the destination size limit.
> This is both inefficient and can lead to linear read
> overflows if a source string is not NUL-terminated [1].
> In an effort to remove strlcpy() completely [2], replace
> strlcpy() here with strscpy().
> No return values were used, so direct replacement is safe.
> 
> [1] https://www.kernel.org/doc/html/latest/process/deprecated.html#strlcpy
> [2] https://github.com/KSPP/linux/issues/89
> 
> Signed-off-by: Azeem Shaikh <azeemshaikh38@gmail.com>

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
