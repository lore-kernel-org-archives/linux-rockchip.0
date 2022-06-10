Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 000ADC43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 12:48:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Rwvt42YniXGp7RY7lM/++i66EUsNYIO6tRuJsXB2SXg=; b=Xcyaf3/bpUdCRy
	5GvVlOVA65pQpEsHJ/cEVX1PIabm/kGcr6c1ecWt2aKSsIE/8hviFPCnbhKdVjKn2tdE/4EPnQWba
	tsX/163Hfb3SIHD/XeokQ6Aa/89wSRhmtDx+wvEepel2MK451HfcVGrwR9ztmfrt5szcA+OVLTOYK
	xrW/imHOqwAi3HIHjduaIguE2kLpOt7jYDhjVy2SHp9j/GHC5FrEjkiiHT4cZXvWkDPQRaxCmdedR
	/TW1L7Jeu7BmfQlKt3cMNG78NDJBLlWnOa9OvmsaepMBxM/niFVXGSrBi4NF06kzWiRrboFxiK21q
	KYIRSO2Xc7TI7967FjEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nze45-008EFI-A0; Fri, 10 Jun 2022 12:48:37 +0000
Received: from mail-yb1-xb2e.google.com ([2607:f8b0:4864:20::b2e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nze42-008EEI-PL
	for linux-rockchip@lists.infradead.org; Fri, 10 Jun 2022 12:48:35 +0000
Received: by mail-yb1-xb2e.google.com with SMTP id p13so46820839ybm.1
        for <linux-rockchip@lists.infradead.org>; Fri, 10 Jun 2022 05:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to:cc;
        bh=Sfhj5wdwRUjdvuShztWnVmtciB4bmqpt/yCTTC/qT1Q=;
        b=qoZTrQOJJqrmNKCLNaP7NcaBbh6iuWsbFYB4xngaH5zEuOzNZW6X3YyQT+0y+znjuR
         6QqH53aKiZ0M6kT8bMm5wk4M2Y7q6LbjfmYtl2kHAxSbgXzm9cPQqj8I1+HQOlC6KukY
         3rxaQFs1KPUP8o9qvjb5DsegfPRckr9Op4Diqhg6tyzHowUpPFO5Z4nj4YqEcS6LtBTs
         kfPImQh6bzaT+3Wbuy/KCB8B2VTUIFcIW87uswO5foKzxgyADBNrDPlCGSxNW6vqeKya
         r16heKxo6iDywBjlZy/PuvQ7l3ebsiOZnpia3wOvhoAmX1VEEQAgsur91muSJ53DrknD
         eSmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
        bh=Sfhj5wdwRUjdvuShztWnVmtciB4bmqpt/yCTTC/qT1Q=;
        b=Ywo/8pQxdRjLLObVvGwdmiFDRS9cEyG/CMhUhscAJ8pbMcr8x3S2YijzaFd9lVondG
         XvZnhvY4QjJ2j7ol3Al2hsffhjciXOLQJ0AH44nkSGEz1cC+8u4yr2ha7RCcJPXZm27T
         5/1IZ9qTAH3bWGu+O6JV/MQifGyEsnurFVGTwIpHJ4Mu/hEQw0oxyKtCjh4AW0qUBP7B
         49Z5FfR3gOeYZs6z44haqfbPHdtsGMV+eheHMg72AQAWLr5+24/5I3LwQBqCtFzv9ggs
         Diy8MY+IF1Fzsp1ePKwEIdhc+XS1Qx9g84kr2SHVWjnxpmwnW8cshLgoTkqavgDuixL0
         7dMQ==
X-Gm-Message-State: AOAM533VkiUF6h++SS7z1Fh79j64IuuvWZwpSDbBgLELWxAmPlMWdkbG
	K8t0nmxfRZQPrFjd33fByhl5GEn6Ip86NFpzRELiD95t1Dk=
X-Google-Smtp-Source: ABdhPJwgGuJKr0Lv+asRzvW54Hvakrc7XqpEufJMBXIOtQFdLCsHv05NLGfrUagPF2W/jDZvLrjpttsGr6KfKNGRq/w=
X-Received: by 2002:a25:7611:0:b0:65c:b595:2822 with SMTP id
 r17-20020a257611000000b0065cb5952822mr43370508ybc.228.1654865311641; Fri, 10
 Jun 2022 05:48:31 -0700 (PDT)
MIME-Version: 1.0
From: Peter Geis <pgwipeout@gmail.com>
Date: Fri, 10 Jun 2022 08:48:18 -0400
Message-ID: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
Subject: [BUG] Threaded printk breaks early debugging
To: John Ogness <john.ogness@linutronix.de>
Cc: Petr Mladek <pmladek@suse.com>, Sergey Senozhatsky <senozhatsky@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_054834_862707_E9D4A983 
X-CRM114-Status: UNSURE (   6.95  )
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

Good Morning,

First, I love this patch from a functional standpoint! However I've
run into an issue debugging early boot issues. Anything that causes
the kernel threading system to die (for example here, a NPE) causes
the boot console to halt before it outputs the error.

Would it be possible to have both a kconfig option and a runtime
option to toggle printk_fallback_preferred_direct()? Currently I've
had to force it at all times while debugging.

Thanks again for this amazing work!

Very Respectfully,
Peter Geis

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
