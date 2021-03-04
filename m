Return-Path: <SRS0=/i9y=IC=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D444BC433E0
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Mar 2021 08:20:54 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 85C5764EFC
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Mar 2021 08:20:54 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 85C5764EFC
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lb7EE0EvR2bK88bq0HXaJhzrf5uCz/MJR+4RDrcrlTE=; b=lzbaMYnuU8SOU6XZJs1mcRgLF
	3pn3VQ6RaPN5Gbz3zpFGiGrqjF+ei/PMBc7FZPpOqSYcBvnvAaU/ncBoPIF+7ruhSzh3QUj1WQOv9
	19qqh1Q5JzLclAKI7bmL6bWipxmWNBU0thnmuYYb5s3DWC+ObDBiMRtcrbz7CXc4CUOnTLBXK52Z5
	vbzV0eNHBJz/o44nxvvXBr2GHaV8JlMd5Y2SOXLFwvGLb/fa7souVecchqhQmm33pK+bRCFUTHqXZ
	KZYxGPOdNxrRAN94TqMLy/hm/fXLF/2YwR9mlKvHd+TBwu1N/Q3klgWzoA3zHYgus45N/yOjnmLXD
	MjVQHGPNg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHjE1-0087yp-Pq; Thu, 04 Mar 2021 08:20:50 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHjCD-0087iZ-Dj
 for linux-rockchip@lists.infradead.org; Thu, 04 Mar 2021 08:19:10 +0000
Received: by mail-lj1-x22b.google.com with SMTP id k12so23212951ljg.9
 for <linux-rockchip@lists.infradead.org>; Thu, 04 Mar 2021 00:18:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=wKpE7AB3B8yj7ip5M0juhBDFHrYKd9OzJtgHmGKFGF8=;
 b=BFezrt5r3E509RL8PRm8d7nraqZx4eCLk6nI6xP6ZSqKCikGBFSgzHgAweQYoQel53
 8p8zDl8Xl3t2LfP1YcoUfdVmXYAy/3FUcIJcHKXl9mMI9shcfyi9rZXcdFseds6l0F2N
 S+iIb/D7p/N3Uqdg7FdROGaSNyAiHN77dQEvNt4YtZ/SGVFr+2X5Ien332wIjmkauW0o
 qQPvrwGPB3qstPQnYsdogXumOhy+wd2/kotFYpoCn0E+s7b9aII/vS2YAChNDuBFMnKl
 4qEW+X2n0eTWDeZTtIH5I6dEQYjW1nfHdQUWjFB3GhdaiXr9qcqvgOj/EHnA5zXAlTAC
 MkIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=wKpE7AB3B8yj7ip5M0juhBDFHrYKd9OzJtgHmGKFGF8=;
 b=SR9I2ytGjorpN4ybMgPjjIGz5dtdHlKoCheXu4LbmKJo2hTSUOP2fLkBx0qipAGdBc
 qpEWYrQndhmV1wVC88GGh7gOk9GV4aaZ3dehbdZjfpNjI4I+4RHtha74xmQc3pjTB4wU
 urBQlvYwKXw8FOcsdk9RJACM94pZhoGLHwJSkZRyyFouVyvTFIS73KO+oSQ0lzJ1wJWN
 pl7DINBmu2E+gKVeC52CK5Z83V1DUkjMfM5uVj27fm9MEn3o3/sKdJggqNaTas9TPmtB
 nEyJ4W2EEXLLNNUO5bTqhhYP37sNbBaMJFIMhgudDVSm4LylsmTfkyecLLAsfbvHRtMM
 zqHg==
X-Gm-Message-State: AOAM530gdeu46hIc1ep3aZ/YFeo9YZYmsK0VLRWuqwy1RByyA0oTI+wV
 zkhWbvFVQiO87DhgLsDK8ncQW3dvuD9oEe4kn1CUhQ==
X-Google-Smtp-Source: ABdhPJyRVTCRr6C19Jx3r+MDw6/bFutW7QtHtmn9VJKmj3yJqoG8YWzapGyq42EX3KDfZ7IwyeC9KLpnpe+UQbgCiw4=
X-Received: by 2002:a2e:864a:: with SMTP id i10mr1580285ljj.467.1614845936659; 
 Thu, 04 Mar 2021 00:18:56 -0800 (PST)
MIME-Version: 1.0
References: <20210223064211.120935-1-jay.xu@rock-chips.com>
 <CACRpkdbqkCEMuZdwgfPJAhnZBKW1KV0+1MnXqNvTjm300jaS9Q@mail.gmail.com>
In-Reply-To: <CACRpkdbqkCEMuZdwgfPJAhnZBKW1KV0+1MnXqNvTjm300jaS9Q@mail.gmail.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 4 Mar 2021 09:18:45 +0100
Message-ID: <CACRpkdYkBD0-AWz6gWrxK_5GjM6_mSoJ4wR64BijsJ8juzuFug@mail.gmail.com>
Subject: Re: [PATCH] pinctrl: rockchip: make driver be tristate module
To: Jianqun Xu <jay.xu@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Tue, Mar 2, 2021 at 2:18 PM Linus Walleij <linus.walleij@linaro.org> wrote:
> On Tue, Feb 23, 2021 at 7:42 AM Jianqun Xu <jay.xu@rock-chips.com> wrote:
>
> > Make pinctrl-rockchip driver to be tristate module, support to build as
> > a module, this is useful for GKI.
> >
> > Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> > Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
>
> Patch applied.

Dropped this patch again since it breaks x86_64 allmodconfig.

Yours,
Linus Walleij

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
