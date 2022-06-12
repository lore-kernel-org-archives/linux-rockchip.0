Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E579FC43334
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Jun 2022 23:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svLVU+HUjhbfztlLtgcinQmjCPALtxVHelpPq643aRs=; b=vXH1Xe2p/ilsjI
	4l+jZDwcB/hbDCOSmsTMOzyjawXp/v7hl3gEECP/C+89BVxGqszSi6JLK6cGblB/7bkyXf4uTAdBQ
	H/uRP92VR7T0wPGQJkQ7SU3N+b+tRxsRAkDm+R9h7lboGguSbdfOT/D3vLjKG8s2VskZLnWNcXIHq
	V+g2ORGF3HiPHGWg/xFWyfWt43ruz0LW1Uk0HgB2oXMgk+sVUW9lKg8nqlUk6r/llT8XNdsMTjwDl
	JG72VPhedc6y8eIOGloDCBMlHFszE+aAh50ZU4GYLMCFkSmPivJgdUnUj8ZSd1CPJZXHMhTeV0QtX
	OKfCKLgevgk/X8q0XvKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0WbM-000V4L-T2; Sun, 12 Jun 2022 23:02:36 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o0WbJ-000V2V-GW
	for linux-rockchip@lists.infradead.org; Sun, 12 Jun 2022 23:02:34 +0000
From: John Ogness <john.ogness@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1655074944;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GjKZ+LQkKXZaIY72unLROm2RmMm/98TrNKDzBYh55HY=;
	b=QFBhyi09gvtgmNpodSmZHpLhVm19IQDsrPWaS29a9x7F56NeE+OzmHo9x/A9S4H1XdIUg5
	ZbmK+Wy0jpr4Dgk0Yex+NdfqzrCNaIWi1SSGPMLygIzNoVKR/ULiECPhxYgSFirtHouvXD
	VBopQ1NfYfoXznJbcZmiKVU60qUvmGDZhxtyPFoiPY2Sb6QvRJ6VKPHuGozdimcp21UwsR
	8Cc3uS95cQcz9r26hz2ucvyc41BAWu+c93jpl2JCGy18eO5JxUJ/thDaerf11Qi3x7wNyY
	lA7vH2OaBe8shvd4ALPPC9bNeTrGiyrABNdPccjPMTchvVLXPhWt9VEBrx05EA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1655074944;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GjKZ+LQkKXZaIY72unLROm2RmMm/98TrNKDzBYh55HY=;
	b=xaJ8o0jiQdqz1Cf3Sdk3m4i448g+KNCZL7Kr7OIv0X2C/6pYAqtyVR5xRwMeVqYNPqh8KX
	Nttn1qWMX30IbrDQ==
To: Sergey Senozhatsky <senozhatsky@chromium.org>, Petr Mladek
 <pmladek@suse.com>
Cc: Peter Geis <pgwipeout@gmail.com>, Sergey Senozhatsky
 <senozhatsky@chromium.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>, "open list:ARM/Rockchip SoC..."
 <linux-rockchip@lists.infradead.org>
Subject: Re: [BUG] Threaded printk breaks early debugging
In-Reply-To: <YqVZ4CyWTiDgngkA@google.com>
References: <CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com>
 <87y1y48spg.fsf@jogness.linutronix.de> <YqVZ4CyWTiDgngkA@google.com>
Date: Mon, 13 Jun 2022 01:08:23 +0206
Message-ID: <8735g9mqo0.fsf@jogness.linutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220612_160233_728669_FCAB5927 
X-CRM114-Status: UNSURE (   4.45  )
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

On 2022-06-12, Sergey Senozhatsky <senozhatsky@chromium.org> wrote:
> Should a situation when we have only one online CPU be enough of a
> reason to do direct printing? Otherwise we might not have CPUs to
> wakeup khtread on, e.g. when CPU that printk is in atomic section for
> too long.

IMHO, no. Especially in that situation, we do not want printk causing
that atomic section to become even longer. If the machine has entered
normal operation, we want printk out of the way.

John Ogness

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
