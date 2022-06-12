Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4FD4C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 03:13:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CcUdv8IkohACMqT/chGtp4U8WSxku7EL8d8MtB5ienA=; b=A/YURxOXoFqemn
	mE3NJUGphCMuWTEKV2nZAArvtYH9Lj8aOYz88qqrjkwJruTQ/UL9fWBy8hyyw00s19JYonro4CiNJ
	6+lTr5h11jOUSYwKm156TlL4V4CHqBbCaTPGkDtIAo5Z6jMPRImO+eujPpJ7xzIWZAbzMrVdU386M
	nk1uJZut/EDNlu7VaZ+A3b6UG/eMFuC9WlAXYIXq+a1zt/3LOlc5R5lxewc08mKOaINo3LAqWiskA
	9VmjXSfTarUi7lUm4LIockY6pPp0+unaiPImRZXgSgrMgD7ASUjrQ/uxxXO+3GRipbcklm+Bx9mO/
	EbMBDYi/ncVID8YGnx4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0E2q-00FKUb-ST; Sun, 12 Jun 2022 03:13:44 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0E2o-00FKU5-EK
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 03:13:43 +0000
Received: by mail-pl1-x632.google.com with SMTP id t2so2398900pld.4
        for <linux-rockchip@lists.infradead.org>; Sat, 11 Jun 2022 20:13:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=lOgAHSiJT1Ngpj0heEB7AArM9YKndUmEvJTCZaDYlAU=;
        b=mafhm2wm5Pb3UDVOJx+5BbrYe0URZx/DJjQaWBE+8RekPGDkLh6XL9byr3JXAo1Fz/
         RCp3YhlTTdzhW1pWA/h3eoq8bJhsFUKhl0Elk4SolPH9WvhC8MRL0zmKPBDpQLhITagT
         mGyLx5p27vY+p/ygF7fvSnZ3C2HIfi+IsSPao=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lOgAHSiJT1Ngpj0heEB7AArM9YKndUmEvJTCZaDYlAU=;
        b=CvfG9/r6URlNgBaa33vFeJXqwwX3zXVbne3WvwuuiwRjD4pNKjkoG2j71CNFPNi2Ij
         kB6w+NhksLsuObjGEnotd71vwtbwLIveiZrnCCYAp+r0uBHFWJWRJU12SWN55AaB4rzp
         2EWSb8FvPyryPwrmGNzTsYtXa6Z359c9kcPZxlol+qU4/xIcpSkBwwmtF9fqj0FrZm3i
         +WyRxvD5vkGvWRb3omw3gtH0rH5p+YjMjSpyIbvlfGSgPTcVo0LDmwMmVG26p1RJazjt
         HXGLR8wTEFa4b4fwX2aPmQlvKm3RRo23ugjQy00BIcEu7thQVxYtfOiP0+MnXqJ1KJHH
         /JEA==
X-Gm-Message-State: AOAM532+2uLgm6vqPpMWtTU/JBnDnOmYjsupF5D/0kic4lqUB2YvsLdu
	AcBCFyo/D7/8aUnCSwff7n3jew==
X-Google-Smtp-Source: ABdhPJzHOJF/7pbpsOby5kMUc8bfhWVW3/PFv3W7ClE96QVQymHI7YMRXE35CKe79pGo3nzQN8P5Xg==
X-Received: by 2002:a17:90a:eb11:b0:1e6:7865:4ecb with SMTP id j17-20020a17090aeb1100b001e678654ecbmr8090579pjz.172.1655003621107;
        Sat, 11 Jun 2022 20:13:41 -0700 (PDT)
Received: from google.com ([240f:75:7537:3187:a53:f177:9f19:3ef9])
        by smtp.gmail.com with ESMTPSA id g3-20020a62f943000000b0051be2ae1fb5sm2311329pfm.61.2022.06.11.20.13.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Jun 2022 20:13:40 -0700 (PDT)
Date: Sun, 12 Jun 2022 12:13:36 +0900
From: Sergey Senozhatsky <senozhatsky@chromium.org>
To: John Ogness <john.ogness@linutronix.de>, Petr Mladek <pmladek@suse.com>
Cc: Peter Geis <pgwipeout@gmail.com>,
	Sergey Senozhatsky <senozhatsky@chromium.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	"open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
Message-ID: <YqVZ4CyWTiDgngkA@google.com>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y1y48spg.fsf@jogness.linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220611_201342_536789_ACD3ED48 
X-CRM114-Status: GOOD (  11.20  )
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

On (22/06/10 17:11), John Ogness wrote:
> It would be trivial to provide a boot parameter for this behavior, but I
> think we first need to see a real problem and also see if we can fix
> that problem.

John, Petr, a quick question

Should a situation when we have only one online CPU be enough of a reason
to do direct printing? Otherwise we might not have CPUs to wakeup khtread on,
e.g. when CPU that printk is in atomic section for too long.

---

@@ -480,6 +480,9 @@ static inline bool allow_direct_printing(void)
 	if (!printk_kthreads_available)
 		return true;
 
+	if (num_online_cpus() == 1)
+		return true;
+
 	/*
 	 * Prefer direct printing when the system is in a problematic state.
 	 * The context that sets this state will always see the updated value.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
