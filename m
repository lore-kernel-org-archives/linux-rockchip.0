Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 30BA2C636CC
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Jan 2023 18:22:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DPq//ZOakJG7f1fGGMQg6mMoW3CzMMbor687tctvZ6k=; b=ioaunng70eSHQ3
	Cddh7Rh11x1RPpzUVXoSc/Pgf6/FiDXTrk8ym/L5ZoTS34J6RkBsh7tZRRbrNKuktQoc28FUbuB/6
	mPXk68ZPktEpveGezacGNpqnEU355iqNr53akUUv1h108KuNP6e3dgXEorZ45BjzBO8lFePhRhZ2k
	DuFmnfbL7RiZIwrhTlrUfDB+TsrQxtxUERfZvbyZ9OzLMx/FR+AkGy5v3kSaupTwjMBBCWf9F3H2d
	Ih/iq6e5l9YzOQdrZsDq3X92BZUpCFaMj9QV4xAN743iW5oz1UkaEr404ahh0c4+v0HWFWEybV472
	irpFW4IHwTJuYEUbeirg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMvGu-008yUm-KQ; Tue, 31 Jan 2023 18:22:20 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pMvGq-008yQl-Gi
	for linux-rockchip@lists.infradead.org; Tue, 31 Jan 2023 18:22:17 +0000
Received: by mail-pj1-x1035.google.com with SMTP id mi9so5847916pjb.4
        for <linux-rockchip@lists.infradead.org>; Tue, 31 Jan 2023 10:22:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oKHPwrIGIOKv129n2g8qrO7jcRiGAZlrXq805V9R5IU=;
        b=GXe1ovj+HiqBAI4zSSk0S3pTrERN2h6t1dAxw4wIacM1HLpU+FpZd+E5F7J1f1FDBy
         L7NHXt3ONKixS5+ojTKBPzR/zfug+X15MOC6d/AChNJmJd660B6x+XnwWMqEAUjTo0p8
         xHrQUPZyQYyaM03AuDPZVvaZ+v+8Cx2PDJBoKXddALRdSycvmyNpE8W1lwLsGoAYK0qp
         dNtecjG8VuCYKi+koCo5HB11acVoi0L7of8pCdkU0P4XIb0LcZkwRKfi2Jz4fAEmn8Pv
         Gaie+MfegiTsu2s3QBkm8WEJ+nDTsrFm1NZx3fw1PWyzbFcCDpx615KCSH4DYth1aGiV
         FMDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oKHPwrIGIOKv129n2g8qrO7jcRiGAZlrXq805V9R5IU=;
        b=bBpzkxPxnGo7Ws3OaBPkxqQSBX5W1Q2E0TonLHS9O1OY3SUOYhozNBGnfDPU19CkvV
         r2k34wbEZ4DHZdEVSnioAY0cAMCf/5hF6l06VBUqDWfDGUK1zxKG/YHzS8uVCX/iNops
         bghNFa5gct+a1v2cYqpQFEHE2IeFGUMtuxlj01Vk7vxs7XU6tyvTl7v+i40DASBCur3G
         nMonxG3RCDwqNJWaNI0ZLqovr0/BiZIX+/uQeO8agO99uXP1tLxMUlUMeC3g605uJ7T3
         1DfgiEF5S0P48Uxh2qs8buVKF9eRbU63AnwrHnKwCaiVPkrblPc7hxnP3khRFBRVxZfX
         +PpA==
X-Gm-Message-State: AFqh2kptHW2ZzQW2L7YkTWDc2xeWIAaZABFqKvetzTH+XSe422zRPzYf
	rDAU1Ci5mTuC6918gtttp2Hw+K3+nBQnysCB8BuoQgfrMyzNMA==
X-Google-Smtp-Source: AMrXdXtEffgIYJoAuoD7ej0gIeaR6JQU/NHZKzeFvZUikHmXVXH69mQBxw672nqywq5e3drbFB43lLFeE6U6GSLBusQ=
X-Received: by 2002:a17:90a:1a03:b0:228:7eed:e756 with SMTP id
 3-20020a17090a1a0300b002287eede756mr9129089pjk.166.1675189322065; Tue, 31 Jan
 2023 10:22:02 -0800 (PST)
MIME-Version: 1.0
References: <20220923160115.2946615-1-a1ba.omarov@gmail.com>
 <20220923160115.2946615-3-a1ba.omarov@gmail.com> <f406b303-ff78-33ff-7f59-cc7904b9a9e4@gmail.com>
In-Reply-To: <f406b303-ff78-33ff-7f59-cc7904b9a9e4@gmail.com>
From: Alibek Omarov <a1ba.omarov@gmail.com>
Date: Tue, 31 Jan 2023 21:21:50 +0300
Message-ID: <CAKyg=SWV0iHbvzM0+7Ri8K7-ghmKssTEnpCWzEdU12oak-oKyw@mail.gmail.com>
Subject: Re: [RFC PATCH 2/3] arm64: dts: rockchip: rk356x: add LVDS bindings
To: Johan Jonker <jbx6244@gmail.com>
Cc: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230131_102216_601175_E6C405E5 
X-CRM114-Status: UNSURE (   6.04  )
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

Hi Johan!

1. That's interesting, there is no particular reason for this. I can
move it since it makes more sense, as lvds driver only modifies the
grf.

2. I haven't noticed this patch. If it's merged to Heiko's branch, I
will rebase it on YAML then.

Sorry, I don't have that much free time to finish the v2 yet.
Hopefully will send an updated patchset next week or so.

Alibek.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
