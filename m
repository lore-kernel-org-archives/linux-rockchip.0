Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B202C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ivcxwu9kaSJj57uWAbpibFoO2P4EoNbiJuenEtsrLas=; b=hEiVq7OjHlHR7t
	CDq9ZwHpk7waMu3Ny4/rmm2MfwirXZqnv1raq0PPqEe0ZqCMX21/FIGSt6qkV9M5lffgqxP3qa1fs
	vjncR5a2A8tBgKCVmlkjIvgsuKFSGUGuNvrjzcPPbWgKT8t75n01mFElssgChcbIIx37zDlTjrFSs
	Cz5RrIlYuw/G7BaDpQ/KViU2D56bhYN/OptcR9h4uBw42aLmQf/Rq200T8Fadg8a6Nz5DvfJ2Z9s5
	2lFiyU3OsPrX6je5pdGSZz6s1QeAm5EmpzTWZ8VJJxdcBtRKFqvXrbIZBhHwodDZmaPRpaUvbnqtk
	psYA8CscW7TQwagtryKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Vtj-00FQFp-N0; Wed, 15 Jun 2022 16:29:39 +0000
Received: from smtp-out1.suse.de ([195.135.220.28])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Vt3-00FPpO-Qv
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 16:29:00 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id BD86D21A47;
	Wed, 15 Jun 2022 16:28:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1655310509; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:  content-transfer-encoding:content-transfer-encoding;
	bh=DXpHoMVOTbJZvwmLuZ1ddHOOFHEz9OlFs7FNkZTzEKY=;
	b=MNOtK2KQaTbGI8cC0CayNNC/my3nY+Z7+F6lFyz6nHZTumVwPU+czy3QgFFMXKFbc74gA/
	23CMB39X8ncXoGNk/XFCmAfCqAVHVAKPYb5uTbeNzq4GjXYgYKGceRrcA6WcsgbRgwuMp8
	i7NRTaMLeZfQp1D0Vu902soE+5mQqGo=
Received: from alley.suse.cz (unknown [10.100.201.202])
	by relay2.suse.de (Postfix) with ESMTP id C84B12C141;
	Wed, 15 Jun 2022 16:28:27 +0000 (UTC)
From: Petr Mladek <pmladek@suse.com>
To: John Ogness <john.ogness@linutronix.de>
Cc: Sergey Senozhatsky <senozhatsky@chromium.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	"Paul E . McKenney" <paulmck@kernel.org>,
	frederic@kernel.org,
	Peter Geis <pgwipeout@gmail.com>,
	zhouzhouyi@gmail.com,
	dave@stgolabs.net,
	josh@joshtriplett.org,
	Linus Torvalds <torvalds@linux-foundation.org>,
	rcu@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Petr Mladek <pmladek@suse.com>
Subject: [PATCH 0/2] printk: Prevent printk kthreads from blocking direct console handling
Date: Wed, 15 Jun 2022 18:28:03 +0200
Message-Id: <20220615162805.27962-1-pmladek@suse.com>
X-Mailer: git-send-email 2.35.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_092858_071133_54D9B5CF 
X-CRM114-Status: GOOD (  11.03  )
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

There are reports that console kthreads prevented printing
messages during panic() or shutdown(), see
BugLink: https://lore.kernel.org/r/20220610205038.GA3050413@paulmck-ThinkPad-P17-Gen-1
BugLink: https://lore.kernel.org/r/CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com

In both situations, printk() correctly tries to flush the consoles
directly but it fails to get the global console_lock(). Both
problems went away with these patches:

1st patch blocks console kthreads so that they do not start
handling new messages when the direct printing is preferred
by the system state. It is probably enough on its own. It
solves the problem when the kthreads actively did
the wrong thing.

2nd patch allows to wait for the console kthreads to release
the lock in any context. It should make it more reliable.
It would have been useful even for the legacy code.

More possible improvements:

  +  the waiting might be necessary also in the suspend code paths

  + convert con->mutex to con->spinlock to avoid blocking
    the global console_lock() when sleeping with con->lock

  + at least disable preemption around console_emit_next_record()
    in console kthread to avoid sleeping in the console driver
    code

  + somehow change the priority of the kthread so that it gets
    scheduled immediately when the scheduler works

Petr Mladek (2):
  printk: Block console kthreads when direct printing will be required
  printk: Wait for the global console lock when the system is going down

 include/linux/printk.h      |  5 +++++
 kernel/panic.c              |  2 ++
 kernel/printk/internal.h    |  2 ++
 kernel/printk/printk.c      |  8 +++++++-
 kernel/printk/printk_safe.c | 32 ++++++++++++++++++++++++++++++++
 kernel/reboot.c             |  2 ++
 6 files changed, 50 insertions(+), 1 deletion(-)

-- 
2.35.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
