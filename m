Return-Path: <SRS0=e3Bp=NY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7EDA8C83026
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Sep 2021 16:56:00 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 4C24E60462
	for <linux-rockchip@archiver.kernel.org>; Thu,  2 Sep 2021 16:56:00 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 4C24E60462
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=vanguardiasur.com.ar
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GE5YiFHpzx9Ec4PDCsDJYuRTEwaErfYLueHyPfeFyWc=; b=QsKblTegn53Fg1
	jsFQnQpK3ml2ID4CNt0OfNnAIU0aDxBIhC6N3662tKLMMKZbRGJ4sfSjWWqi2j3kHFXQ4Vb+LKsqB
	BCuDlxaaVWmrLKUEJR0jukAw8nDABP9s1wtiay4+zvENDlHRvgpEkp5tyFgTwzhPrwjWbBB4xCd2b
	oK8KDCXPnyXfN4swtnQOfKHR4NXHX6A8aBj89Yw7ZAwROaogeuNF97i1K9Pyy8JKOS21XMpZLD//x
	CbOL+s0A1keqG/YwozV2cnJSERk1YHV7eiJT59wyUgAdEGKt3UTrStLxnH7CeuIqBtDgHkgoEqUS6
	JODP39W5JK37HYgLPr/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mLq0J-00A3De-PR; Thu, 02 Sep 2021 16:55:55 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mLq03-00A37R-IS
 for linux-rockchip@lists.infradead.org; Thu, 02 Sep 2021 16:55:41 +0000
Received: by mail-ej1-x62c.google.com with SMTP id mf2so5913610ejb.9
 for <linux-rockchip@lists.infradead.org>; Thu, 02 Sep 2021 09:55:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=vanguardiasur-com-ar.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=DdjT4Us6xIPBwUlhi0ZmrboIND0msaui3k9fDHdcywk=;
 b=MRQ5J5NcSS7kJA+NVAT9d1mDsJd8/n7Rnu9sLmT8pLWh9ftJXZqtSi8PlEUhOL84AT
 tTxglMgU891q1EsiSmgMa9okBFOpmeT3hK8xZlyZNM5AUc0/JVm8rb2WBHSnACSrWfTY
 dpWAWSt//ZkKIq9EVQw25M0w5NtMLQx/NGVskYLV7hA7B9gl4D4sHJJ4zabbj2wkgAo5
 kzKWnYZ6QigeYm/QNjmp5uC2ZGgdQuzp0lAsBHa4v6wNHNoxc8xeSWIZcTglFTneUvmp
 3wKkWOPGpfOg75hZI6Lq6kSPiYOimtTBzD9LPozCWMXgYq8QzyUgG+Pkue477uU6shQz
 QYEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=DdjT4Us6xIPBwUlhi0ZmrboIND0msaui3k9fDHdcywk=;
 b=Cc3xhN+VNHwo4VrqvKTPqyhOtkf581B7Y85yfkNeixQYlXH497xwsGZhQ3r1THZtu0
 ekFLMTi4dgFlQ/+yRNgwP28swVuy3nhvS8+CV2fDmCcEEJz5oo5SahBohuCCJIXBtdfu
 r1j3VG1nY4OHQtJhYjkhpD01WEp4vHZkBGe/AryAI6Y9mRQ+4ZOLq0bT8hlwNVmZoR9b
 8G1zkZHG5tWJRg2svGrumS5RgxEb64Hu/ge8N2RqzBssU2xPnckeuosBIkzRAeJehLRv
 vbUjSH5FX1J6sxA5g32EY8a7reL/vEoVVhW6z4AEc9s04HeSrQ6EBYrDmeMzVgl6WP5P
 1Ztw==
X-Gm-Message-State: AOAM531TQWJHH8g2fgyxd2uG3p9a98BwrDscUSIFkjr8yoZyIb4+33pp
 INsV+kbtZyW7AKZ7iRV5cI2WpSccGNApielQJKZUjA==
X-Google-Smtp-Source: ABdhPJwh0/RZoQbsfLsqpqYa2DxpxgVPhTrvfHT/R7bfvGSqtM20ZcJksUFa4sf2GDzTTqsDLOUud4ibRTEhfeHDVWo=
X-Received: by 2002:a17:906:7749:: with SMTP id
 o9mr4966675ejn.141.1630601738117; 
 Thu, 02 Sep 2021 09:55:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210831094900.203283-1-benjamin.gaignard@collabora.com>
 <1484b5ebb9c943c72d7d7a0481c1a2cd9899705b.camel@ndufresne.ca>
In-Reply-To: <1484b5ebb9c943c72d7d7a0481c1a2cd9899705b.camel@ndufresne.ca>
From: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Date: Thu, 2 Sep 2021 13:55:26 -0300
Message-ID: <CAAEAJfA9Sjr78c==1tCoqja4abY2sZ++UcAT7fgBrK7wid1-2A@mail.gmail.com>
Subject: Re: [PATCH 0/2] media: HEVC: RPS clean up
To: Nicolas Dufresne <nicolas@ndufresne.ca>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>
Cc: Benjamin Gaignard <benjamin.gaignard@collabora.com>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Greg KH <gregkh@linuxfoundation.org>, Maxime Ripard <mripard@kernel.org>, 
 Paul Kocialkowski <paul.kocialkowski@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@gmail.com>, 
 John Cox <jc@kynesim.co.uk>, linux-media <linux-media@vger.kernel.org>, 
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 linux-staging@lists.linux.dev, 
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-sunxi@lists.linux.dev, Lucas Stach <l.stach@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210902_095539_632657_95104A4F 
X-CRM114-Status: GOOD (  11.29  )
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

Hans, Nicolas,

On Tue, 31 Aug 2021 at 16:19, Nicolas Dufresne <nicolas@ndufresne.ca> wrote:
>
> As per discussion with Ezequiel, I think this patch should perhaps be made an
> RFC titled "media: uapi: clean and make HEVC uAPI public". Keep it RFC until we
> have collected all the needed changes.
>
> Opinion ?

I agree.

IMO, it makes no sense to keep merging anything on Hantro G2 HEVC
support, until the BLK-CTRL part is ready [1]. Without that, we can't
test anything
so we may introduce regressions without knowing.

Also, I think it's time to start discussing the HEVC uAPI as a whole,
with the goal is having a stable interface that can be used by userspace
frameworks (GStreamer).

[1] https://www.spinics.net/lists/arm-kernel/msg913881.html

Thanks,
Ezequiel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
