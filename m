Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6737FCD6131
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 Oct 2023 20:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BCKnssN8XY873pjqxbEzCgDHYzyO2iDdh9kc5Frl2lE=; b=aSjFDX0w+QR4Jn
	nD6VoEdqZX9UPk4ptF1fyGVsTbpLJU0p9QOiugA/x1nMfUlu+XTeZU0cYJIEWCPLx3chLn0wr6Izg
	DH4neU9hxjM1iUeSZQu0hRpGra76k7EiPvWppTAHSlP/hTELT/CXvJy+SQzM2SDS003tpCi5tzh0u
	pCoeGj85vzxegumfgWXkeUTmIBryZpRgcvYlduH29Tvd0D7QTVd8GR4X4jwwAlhe7MgoCgrNlpAUn
	Du+XIKjYGqKgYTEcp3EuAHidKkEQdT0P9q/8y4SvHnzsvksIYpQFLCL4cL7Jg5Df0yaFzPHhsrf8c
	fjgjH4r/n3VIYixsZ9og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qpwQE-00BWtu-1p;
	Mon, 09 Oct 2023 20:00:10 +0000
Received: from mail-ot1-x331.google.com ([2607:f8b0:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qpwQ9-00BWs2-2I
	for linux-rockchip@lists.infradead.org;
	Mon, 09 Oct 2023 20:00:08 +0000
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6c62cb79b02so3268261a34.2
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Oct 2023 13:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1696881603; x=1697486403; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XnnNZrfQHu6U702fU9qv9YujuMNy/CqVElyAPuDlNS8=;
        b=etPPSnzmJgzQYzJLjCfaPs3lrXtlSK0BY7Fxbw0vC2ycifMhWx8OJ/rsbHe5xG+hj6
         tBoLjBe7adqQipQF5SIJ5rWyTnn2YUTyXEztaEnLHbzxVD6smSlGZCuDQ9DHo6Gj2/7/
         odQemWvjtx8YAQKvKPWUqdfny0MuOiNhihE94=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696881603; x=1697486403;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XnnNZrfQHu6U702fU9qv9YujuMNy/CqVElyAPuDlNS8=;
        b=s1bj3xwo0+/yU08Bsu/KFoqUrgWofFWF+Z11FC68/rUw0X24P2aXhi0/4Fo3IfOYo0
         Sa9zSe/dwvT4wCXbYPIWCbuwlIKPkX8PX2Ygg4gaFAl6W83TDQgBLAt3sMdugtn1XBmJ
         nuDWVKryvZSjXw8wCAzjV6PMTcpGeEfYH8pFjiAUJclEiS+0IkCbP4lAVhk3yEY8ETkv
         ej2ZoHpzhoZ/Mv0cW5+dqMf4k9yHVTKAzy3jxxNpL1bFk2dH1yUGpKTKRI5SeJrFqK4+
         jdmKDRKZbsEXdGq2PPEAFznaY1Z7B+/VeGQx5uqLXhrLnDU8Kd4yvdpPIE/+ayAjqK2G
         Ga7w==
X-Gm-Message-State: AOJu0Yz0rGlTv91vXGL9BCBlWcojbYoLa9tTmT5im1VwO1vbUivdPtRZ
	fJFOlimg5VHyoB2so3PoG+eXGw==
X-Google-Smtp-Source: AGHT+IFr2diKV0FUnPCKvbVJgM9zVEQvrx9lAF5Q6PUGXjcm/39HFBRDZ6m3k4XI8U3B8QraX/ZFbw==
X-Received: by 2002:a05:6358:42a6:b0:143:321:f36b with SMTP id s38-20020a05635842a600b001430321f36bmr14035556rwc.18.1696881603565;
        Mon, 09 Oct 2023 13:00:03 -0700 (PDT)
Received: from www.outflux.net (198-0-35-241-static.hfc.comcastbusiness.net. [198.0.35.241])
        by smtp.gmail.com with ESMTPSA id b21-20020a170902d31500b001bdc8a5e96csm10053257plc.169.2023.10.09.13.00.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Oct 2023 13:00:03 -0700 (PDT)
Date: Mon, 9 Oct 2023 12:59:58 -0700
From: Kees Cook <keescook@chromium.org>
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Miquel Raynal <miquel.raynal@bootlin.com>,
	Richard Weinberger <richard@nod.at>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Heiko Stuebner <heiko@sntech.de>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Tom Rix <trix@redhat.com>, linux-kernel@vger.kernel.org,
	kernel-janitors@vger.kernel.org, linux-mtd@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-hardening@vger.kernel.org,
	llvm@lists.linux.dev
Subject: Re: [PATCH] mtd: rawnand: rockchip: Use struct_size()
Message-ID: <202310091259.1D9E73DAE@keescook>
References: <481721c2c7fe570b4027dbe231d523961c953d5a.1696146232.git.christophe.jaillet@wanadoo.fr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <481721c2c7fe570b4027dbe231d523961c953d5a.1696146232.git.christophe.jaillet@wanadoo.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231009_130005_834026_D367B9BF 
X-CRM114-Status: GOOD (  13.17  )
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

On Sun, Oct 01, 2023 at 09:44:04AM +0200, Christophe JAILLET wrote:
> Use struct_size() instead of hand writing it.
> This is less verbose and more robust.
> 
> While at it, prepare for the coming implementation by GCC and Clang of the
> __counted_by attribute. Flexible array members annotated with __counted_by
> can have their accesses bounds-checked at run-time checking via
> CONFIG_UBSAN_BOUNDS (for array indexing) and CONFIG_FORTIFY_SOURCE (for
> strcpy/memcpy-family functions).
> 
> Also remove a useless comment about the position of a flex-array in a
> structure.
> 
> Signed-off-by: Christophe JAILLET <christophe.jaillet@wanadoo.fr>

It seems the consensus is to keep the struct_size() changes together
with the __counted_by annotation, so yes, this looks correct to me:

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
