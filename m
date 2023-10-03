Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA0D3E75432
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Oct 2023 07:36:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=RtpYfmj0GFGXO9AjjWon8FcBEEeYf3A6gT35hdf3ZAQ=; b=Bq+
	jk9G5pHkF7CZlj2GIM2t4PDf2oRrbgED6oXfjARxTFVb/Vc2cgOOJ6g2oZc0M8kIlPNd6LaMXkqLT
	0to6luaV2R/G/g5rk1q85+OJuzb4EAnbhol2sG/8jEtIebvEDvxc1+bztyIg6xidK1sR5W1yfTt+x
	ySlOmBZqlSUHW4RRG8cTLZ8zVCxx799jxiX6SKdwr4lm8NmyR37ZinrDGKsqni5DDYzQ1/xVE2mnf
	5mTP04xa5zTxeQ4GvNF+mmUUtYfsDvZgCGsAryFn4kDh4pxnwXfoXcSk3eyXfJTxeCIyl6v9qPhvU
	sox9Nr8B+4KLl7tT1fAVgJGlMKayRrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qnZx2-00E0AS-03;
	Tue, 03 Oct 2023 07:36:16 +0000
Received: from mail-ed1-x52d.google.com ([2a00:1450:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qnZx0-00E08u-14
	for linux-rockchip@lists.infradead.org;
	Tue, 03 Oct 2023 07:36:15 +0000
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-5335725cf84so829442a12.2
        for <linux-rockchip@lists.infradead.org>; Tue, 03 Oct 2023 00:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696318570; x=1696923370; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=9J/hW8oOTDnIG3dz0w0vHm/f3ECdhVAqXg1YeE1iL8Q=;
        b=ELzy/KzeRpyxOVPc6NfZ8akePRu2uYKbzvi2JMLqWzpFDKrhnNVnDslZWi1KENbFwP
         Z6iSSNZM50p+BY40nAHJeQ0XPtGHO70bKys51F5MrchcYhmVqyUUrrUXLPBc+LqETHfe
         ff3mBBIqxXsNDNn0INARuG0826VkIdE31eK8ZRCL8p+jIVb461tozKvNVtWUjpt5A1Q9
         BiaHW9tpPnpsI75xGPVm/URCKmUoHPGskzVWb7jyPggwqhCNyXKy0UzYsQggKtZC6PJf
         ck7qCit8O0lOHXirgaWE2YuBfyX57cbTKGWKlpPu9bXwEu7/Cf3kT87+ju2h8NPfsSDP
         8Low==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696318570; x=1696923370;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9J/hW8oOTDnIG3dz0w0vHm/f3ECdhVAqXg1YeE1iL8Q=;
        b=VkCYUOC5U+hjM8FbYAopx5h7LnOmlaw64UV+5RXOTsg3IfSXLLa8VLDIWNyNgb8x0v
         qkfGiIGD5PLx1BXGotXHoKn9INbeE7yxI1ZNGWiJifStmQB3S2i97Ot06Lm4Fecl1J+r
         hOLKlPWDYf/xJJXUuwUnPha5wG/XSFoRj0JCLxBUTMkeTaF5P6kyOyTwwVtu8Mi0F73c
         XcdQ/IwoTj1gnJ79qTVx+2Lu+d6DXmzHcBFktCvmrpuhMEvs2RHLbg239wGnHIhJRBEC
         KdE0nUtn6dUsPubUCQBGyI3dN2NKvCH8OhA3SsX4ztx7YDUB4MAqax/QX8bNpZFv7bp7
         ygqA==
X-Gm-Message-State: AOJu0YzOJI9PUzqe2BFMiVOe9lN9LOzQ2ul3be8SKAiw85wjQ7QkQmVt
	Flh617D0GNhLta0dAe9/JlBW7tLP6CCNvf135iJL4SZ6eiw=
X-Google-Smtp-Source: AGHT+IGCssKrfElzC3XMpIVmjz2N2iVut/jGJjvL1X8/dVs/lgCicSQ2WadON3m6L34VUwrYPPM53lUu/16VhJS/Oxs=
X-Received: by 2002:aa7:d593:0:b0:532:dbfd:9c with SMTP id r19-20020aa7d593000000b00532dbfd009cmr12550006edq.1.1696318569688;
 Tue, 03 Oct 2023 00:36:09 -0700 (PDT)
MIME-Version: 1.0
From: Doug Brewer <brewer.doug@gmail.com>
Date: Tue, 3 Oct 2023 15:35:58 +0800
Message-ID: <CAG0V13Tavfe3M5rtwF2=nYM=FJRCyvJ1dJN_d8-7tpyYcdqfaQ@mail.gmail.com>
Subject: Does mainline kernel support Rockchip CAN/CANFD controller for RK356x?
To: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231003_003614_370245_88544CC6 
X-CRM114-Status: UNSURE (   3.66  )
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

Hello,

It seems that mainline kernel doesn't support rockchip can/canfd controller
for RK356x or anyone has patch for it? Thanks!

Regards,
Doug

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
