Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C4837C54EE9
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Sep 2022 13:26:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9yQIAofH+HW17BxILRztv9xRn5KFZy92ZWG4CYZci8k=; b=07zfNvyNwS7SY9
	Vt+gChhNm3j4A/uNXL0/tMqaJGjHSfhQh6A85BR7yQh/Bb8Eywy8Dg9TWAGPh81gJ/82vaeM+hCoN
	GfGIjItUarbuSaxCzTZ1LhOqz+x1oshOq69IPqV4QaJtpX0ETtfBhRTZy8mBHo/8u/rr1VEdp+G5t
	VJEmi9mhhfeLMcgzBNOIJXD0FSzt9Etdbefz8Ow3YyDNh2CCP2Dim/7PfjEoy4y1y1fliDTpQjk42
	GNc1oTAIm+snNtKXsbMdL/nKCWATKJsWT7txh4pTdniw0lrm14TX+YpBrOL6tcEanwH3Wlmx1+SgM
	9pQoEhm6t+nqmFUioCHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5vo-00AbxH-4A; Tue, 13 Sep 2022 13:26:28 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY5vk-00Abwh-VF
	for linux-rockchip@lists.infradead.org; Tue, 13 Sep 2022 13:26:26 +0000
Received: by mail-pj1-x1033.google.com with SMTP id n23-20020a17090a091700b00202a51cc78bso9396161pjn.2
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Sep 2022 06:26:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=yCK9DEAhKwNKcXK0byVqBlYCo+KRmh3uxHFD62eh4N0=;
        b=Wa4doLCw1vaeh9xSMhfk2KDN4r5qIreIFt1LUE3RrwJHDcuJ8zfklIg/nN/AOyNKrv
         lZE+DGy41jiFHlcv9nIfgBNIIMZwYscH9GshmTDc4ta5faEG0bKWqwpcYMz6lO5e1Id+
         vTiKUKzjPQE+T/s2vm9++0vrPeFIv5WTXmVKCUMDhONe7q39FwjVU15GVQ5ghLq0h/iy
         kXV/KAAZHQhkxitCpxZqaGWoPiXyH8BY9SCKHNZceK3aLtxhmvlB4f0/9v4JlXyUEgKx
         xWy3b9ZpQe8oKZYX84MRh2LMRRnPvIVgHi71TPQ6BsQloXfp5CpeLKADBY/NTNF/Uj5m
         sZ+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=yCK9DEAhKwNKcXK0byVqBlYCo+KRmh3uxHFD62eh4N0=;
        b=NFF0Enx89CDO3ZZiAeGooFxj7TdLbg/paddWI6fIVACn+PKShHnJUS+ITSyrNNlR50
         8DIv+Bz9zBeRtOVUhlCPAPl+2xOL7wU9+5pkH3GrJ062XIdc46Nbq36qhWj65FdDl5pD
         6MIm+j7Io7qLUXG3Zq3WE+gJnJQfblh8HNaOX4sx9vFQls0Ef5IxviFNSRMveyGP1ASo
         crrM8+zq2jCfbhZd2mRc+mcVnz39my73woyOHGBYT7ByFz+Edc1DEZd31mjWAE042MnA
         Vm7tYgRjkZiKHybHMT6UQ9Ak5l46y/pybHm2zIiUdYmR0L+FMT6CeaT4/VA3oqleK9Lr
         8MKA==
X-Gm-Message-State: ACgBeo27AosVkibznITzRn2jHGFg5R4Ks+x00jtToA6HbPLuzMzwbuIg
	BwW3XeQMPDVdCIU1nP2DrftLSGDjMalxMOFDVgs9Z4VyRNE=
X-Google-Smtp-Source: AA6agR6bx09d0a0sPUK2dDIe15bxePcINLRx9iN37gF7wimRBEvi4qzHQbnqOhkWY0OLvDLBT6ZINYjtMZmA6IidFH0=
X-Received: by 2002:a17:90b:4f44:b0:1f5:1310:9e7f with SMTP id
 pj4-20020a17090b4f4400b001f513109e7fmr4021734pjb.235.1663075583622; Tue, 13
 Sep 2022 06:26:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220627202208.45770-1-f.kardame@manjaro.org> <1736540.VLH7GnMWUR@phil>
In-Reply-To: <1736540.VLH7GnMWUR@phil>
From: Vincent Legoll <vincent.legoll@gmail.com>
Date: Tue, 13 Sep 2022 15:26:11 +0200
Message-ID: <CAEwRq=ryq3on+U+rqD_XiA0C9MkjFwxRhpLpdOf88yu=Vg-QrA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: Enable video output on Station M2
To: Heiko Stuebner <heiko@sntech.de>
Cc: Furkan Kardame <f.kardame@manjaro.org>, pgwipeout@gmail.com, 
	linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_062625_062443_498BCE51 
X-CRM114-Status: UNSURE (   7.87  )
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

Hello

On Tue, Sep 13, 2022 at 2:10 PM Heiko Stuebner <heiko@sntech.de> wrote:
> what is this "Station M2". You're changing the rk3566-roc-pc device,
> which I think is "just" an SBC?

I suppose this is it:
https://www.firefly.store/goods.php?id=142

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
