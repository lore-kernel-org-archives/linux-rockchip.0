Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8FD19CD37BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 11 May 2026 14:50:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nSYEZTmKJywjEl7eSBbeURByaZfkFuaKAGVHas39Nus=; b=hSGG4ik0/a3g3M
	8zhCg6T7r5l/XpU5N2T8aV8aMRg9+vzYtLETA4H/AKB56K8TDlxEiQKDKI6K/SHcYQeXOmGVBjnJP
	Vj+QNey77eLrc0cGVeMqW0yl7oGkW+s+m+aujmSbJCo3F2G3twq01DJ7HBy08+Voh7WCXo0/+OSNQ
	BFx9UXIiw0TJee5gfEIF6D2xcfxZV0HdnpZdakJDjW491DfmLBjqIg6m/2dX4q90ri0ct7n8bUw3t
	O3r6UNwNCuZSqSk5mo9MRcJt5ppr6tJAXJ/2U3am/M+VigIlSw5tbk8aDBwpT2Q9NYZs8LLMSIu9f
	Ni+r08VZdeJ8qt0nPBPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMRxe-0000000DxHQ-2HEc;
	Mon, 11 May 2026 14:50:22 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.133.124])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMRxd-0000000DxGc-0SH8
	for linux-rockchip@lists.infradead.org;
	Mon, 11 May 2026 14:50:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1778511020;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8ffz+WS/kwatrVzg+MFiCHc5tqdSu3w6k7GM/epuJ1A=;
	b=O2U9rkPoT09HZR6iluK9qogCVVo0bPORrfZccQvxR7sxBQExXySnRFC3O9hqT7EWT3VPsl
	jtENEeD1oDITfbbiS5nzhJ4MW5ttVlave6eQMOF35tD5L1PY0V46Zwd+lw+4849SqLPPKg
	PksatqbV8QptjxlgCTlmJBBq/pLDM68=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-520-ScvBS0MKOcmL7AkSP2htyA-1; Mon, 11 May 2026 10:50:18 -0400
X-MC-Unique: ScvBS0MKOcmL7AkSP2htyA-1
X-Mimecast-MFC-AGG-ID: ScvBS0MKOcmL7AkSP2htyA_1778511018
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-50d84b5f73bso43295331cf.0
        for <linux-rockchip@lists.infradead.org>; Mon, 11 May 2026 07:50:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778511018; x=1779115818;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8ffz+WS/kwatrVzg+MFiCHc5tqdSu3w6k7GM/epuJ1A=;
        b=ELGdTL9h2TTMC5BUmP3c79riKA2sGFO2xeITCfVXY4lm8xdnAfy8gqK4NBhWLjMETK
         kOTbdN9W7Qi6qXowS72l6by5HsibvjYalkbmL3HDTv+XessgX51UwM/BgFrtuqJc+CPO
         lLx1Ux4aqKygAkXaQyKNN0vgbCs23aqPWFj5zRMKpmAiOIcD5RmkHCu1XbDRenJJ4LxI
         iEzFRTG7SOGqikYdQilrIUXChKqkdiYgcFER+x/KR1/iO/LtQtS5tYY1gXgyYJRLz3mi
         no4fXXGdq8XQhVXLCkcVzWhWvKwZk6Ey9v2rpgjPBCMS5h3QUUmMC1QyFUmUMmvzze9m
         d1Ow==
X-Gm-Message-State: AOJu0YyRiyADOtL+g387sUWybEjxg9sNdaMKu4iGztapQzeQLiz0z4EW
	Rwy69GMYsL8CoUytfWyOQQvuR5TYetAXHMqGZcldOz8DvQFx2fX1dsTnmPXGX/uXcgVzv/hzQA9
	EXxKJ9/QoX1mOfMRD9JKPZbMfPFf1Wid9UFYCGKAo4CTNaRDKn+FdMtbhV71DCV1q2936TB1cYQ
	==
X-Gm-Gg: Acq92OEX1zfV+92aK3OHxCgKHTEC815AxbM20AoM7tRBNuBsLknP0TzXIZxj3YmWmds
	tMZZnp7zGZb9L0R0/vRvh26ADknHXxkopoX3xon0iY+mZpJOJwdz1OMcMrKwIDjfqGiWni4bkLr
	4Vphs5+q2iQ6WmAsi00Vuf7Ev9msh18E3pSz2Z7RCg8Ca137j3Y81y3WSDBSHC63g8PO8c+aNuz
	TAcrRLrhhjas4SJSgxa/8hwUrxLBydv5sYPgCjvGrM9tJuM8rXDTQUkH101McgCExLNMyfUYFV8
	rZII3Vyo2Ri7PKQPK8XOUfyNRYMpnkwWrcGmXHggjIJ/CtYsAbdXi0RFkXPTCyWl7gHEXjPQLCZ
	w2ScxsG0FERcrbL3qQOFl9AjmZ9NHBQQ8BnSV0+XSgugGV/U+XrhhB/z2ryYYOlujfL8=
X-Received: by 2002:a05:622a:1b1a:b0:50d:8c8f:f94d with SMTP id d75a77b69052e-514621eef47mr364491131cf.52.1778511017832;
        Mon, 11 May 2026 07:50:17 -0700 (PDT)
X-Received: by 2002:a05:622a:1b1a:b0:50d:8c8f:f94d with SMTP id d75a77b69052e-514621eef47mr364490501cf.52.1778511017330;
        Mon, 11 May 2026 07:50:17 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-8bf3a906e25sm95748686d6.14.2026.05.11.07.50.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 May 2026 07:50:16 -0700 (PDT)
Date: Mon, 11 May 2026 10:50:14 -0400
From: Brian Masney <bmasney@redhat.com>
To: Rosen Penev <rosenp@gmail.com>
Cc: linux-rockchip@lists.infradead.org,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <nick.desaulniers+lkml@gmail.com>,
	Bill Wendling <morbo@google.com>,
	Justin Stitt <justinstitt@google.com>,
	"open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>,
	open list <linux-kernel@vger.kernel.org>,
	"moderated list:ARM/Rockchip SoC support" <linux-arm-kernel@lists.infradead.org>,
	"open list:CLANG/LLVM BUILD SUPPORT:Keyword:b(?i:clang|llvm)b" <llvm@lists.linux.dev>
Subject: Re: [PATCH] clk: rockchip: allow COMPILE_TEST builds
Message-ID: <agHspp1KZHZmMeOy@redhat.com>
References: <20260509003602.956186-1-rosenp@gmail.com>
MIME-Version: 1.0
In-Reply-To: <20260509003602.956186-1-rosenp@gmail.com>
User-Agent: Mutt/2.3.1 (2026-03-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: R9YVxRfbmOqXjP_lr_mXi8zZUv0Hc8ZFaM_VONag30g_1778511018
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260511_075021_230705_223A2762 
X-CRM114-Status: UNSURE (   9.67  )
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

On Fri, May 08, 2026 at 05:36:02PM -0700, Rosen Penev wrote:
> COMMON_CLK_ROCKCHIP already gates the Rockchip clock objects inside the
> Rockchip clock Makefile.  Allow selecting it for COMPILE_TEST and use it
> for the parent Makefile descent instead of ARCH_ROCKCHIP.
> 
> The per-SoC Rockchip clock symbols already have COMPILE_TEST dependencies,
> so this exposes the existing build coverage to other architectures without
> selecting the Rockchip platform.
> 
> Tested with:
> make LLVM=1 ARCH=loongarch drivers/clk/rockchip/
> 
> Assisted-by: Codex:GPT-5.5
> Signed-off-by: Rosen Penev <rosenp@gmail.com>

Reviewed-by: Brian Masney <bmasney@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
