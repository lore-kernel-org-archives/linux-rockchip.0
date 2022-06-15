Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1026DC43334
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Jun 2022 16:29:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hq4aNdXrU6F1hGriGsO6SQvJ7ahBoju9g8jTO6r8cig=; b=OqaFfxRBFCRNCK
	X+d9b72iAD38vPh9FaKZtt1ct1aHqnTvHUDX+EtDXLz8nNWLkiz/gMO+D8FIPuRFUPgqGc7Y6qdlH
	f97ddCECgs9FBRs4IruFhzY7KijRs2wYHLVw8f/6hTF2/zdl88fYkCDv/c4GR3+uhCW1aFGx+qWVU
	goKBRERn5NYA4Ee/u0ykwzdHo2z7iXkY1gf1UFgXI5gADMvXQBaQ5bsMch68Ko3H4fWa2bxOheJpO
	+8Y1lxnoa7paSMyLJ6ZTf9F37PiesS6tl3aWw2vB0sQprJUhuxVnvF/eIH4L+tEIKzCBHmf18TifX
	bf9fuljT0xpx7NgPGTWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Vtm-00FQHP-MV; Wed, 15 Jun 2022 16:29:42 +0000
Received: from smtp-out2.suse.de ([195.135.220.29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1Vt9-00FPss-6q
	for linux-rockchip@lists.infradead.org; Wed, 15 Jun 2022 16:29:05 +0000
Received: from relay2.suse.de (relay2.suse.de [149.44.160.134])
	by smtp-out2.suse.de (Postfix) with ESMTP id DCE5D1F974;
	Wed, 15 Jun 2022 16:28:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1655310515; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=qF2II44HGvEm6Nwb6+bY89tJcKcCfhBYiXA23CUhE9A=;
	b=Mc9FS+6ZM/YmeCGoMDktOoyjyZOxslB0f+1cgRXGiepN3pj9tDATJtodgPVpHepDNmb4Wf
	HH66JpL6qhv/nDT26/pRSN9iiV79Vp7NFq2IzwEIKbkNWBHFQWYTqBnoOt/J/MgPj9AMBt
	iyXW+4o5QAvdwWmurgClqgGpBVbTBAI=
Received: from alley.suse.cz (unknown [10.100.201.202])
	by relay2.suse.de (Postfix) with ESMTP id 747E22C141;
	Wed, 15 Jun 2022 16:28:35 +0000 (UTC)
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
Subject: [PATCH 1/2] printk: Block console kthreads when direct printing will be required
Date: Wed, 15 Jun 2022 18:28:04 +0200
Message-Id: <20220615162805.27962-2-pmladek@suse.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20220615162805.27962-1-pmladek@suse.com>
References: <20220615162805.27962-1-pmladek@suse.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220615_092903_507770_167136E5 
X-CRM114-Status: GOOD (  17.06  )
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

There are known situations when the console kthreads are not
reliable or does not work in principle, for example, early boot,
panic, shutdown.

For these situations there is the direct (legacy) mode when printk() tries
to get console_lock() and flush the messages directly. It works very well
during the early boot when the console kthreads are not available at all.
It gets more complicated in the other situations when console kthreads
might be actively printing and block console_trylock() in printk().

The same problem is in the legacy code as well. Any console_lock()
owner could block console_trylock() in printk(). It is solved by
a trick that the current console_lock() owner is responsible for
printing all pending messages. It is actually the reason why there
is the risk of softlockups and why the console kthreads were
introduced.

The console kthreads use the same approach. They are responsible
for printing the messages by definition. So that they handle
the messages anytime when they are awake and see new ones.
The global console_lock is available when there is nothing
to do.

It should work well when the problematic context is correctly
detected and printk() switches to the direct mode. But it seems
that it is not enough in practice. There are reports that
the messages are not printed during panic() or shutdown()
even though printk() tries to use the direct mode here.

The problem seems to be that console kthreads become active in these
situation as well. They steel the job before other CPUs are stopped.
Then they are stopped in the middle of the job and block the global
console_lock.

First part of the solution is to block console kthreads when
the system is in a problematic state and requires the direct
printk() mode.

BugLink: https://lore.kernel.org/r/20220610205038.GA3050413@paulmck-ThinkPad-P17-Gen-1
BugLink: https://lore.kernel.org/r/CAMdYzYpF4FNTBPZsEFeWRuEwSies36QM_As8osPWZSr2q-viEA@mail.gmail.com
Suggested-by: John Ogness <john.ogness@linutronix.de>
Signed-off-by: Petr Mladek <pmladek@suse.com>
---
 kernel/printk/printk.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/kernel/printk/printk.c b/kernel/printk/printk.c
index ea3dd55709e7..45c6c2b0b104 100644
--- a/kernel/printk/printk.c
+++ b/kernel/printk/printk.c
@@ -3729,7 +3729,9 @@ static bool printer_should_wake(struct console *con, u64 seq)
 		return true;
 
 	if (con->blocked ||
-	    console_kthreads_atomically_blocked()) {
+	    console_kthreads_atomically_blocked() ||
+	    system_state > SYSTEM_RUNNING ||
+	    oops_in_progress) {
 		return false;
 	}
 
-- 
2.35.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
