Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4AF8AC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 03:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:References:
	In-Reply-To:Message-ID:To:From:Date:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1WcrROF5mdCr4X3mh6+BupcuoMr9wmIuvHacOH9anVs=; b=EdzEYEnbGKl460OtY2czs7TWzW
	G2ei/yWC1LlatVTnvRXq7ky2ydAGst32p0gBxW2wsetixm99OWYHjRRPfEUDtAX3Rr6ZuMWdSIcNY
	4BqsIx42wl4PayEoo85oPZQOzH5mNZvA4ydT8VLNI16pMtoR1zQVcrMhtYML7KprHCfvKQPyh/UjH
	04fOOOj5VzEcmZyTDAjlGWsXFPJa3Qv7xlztuqS6Yf5DD8AqFIdsJ7cAKrgWwwFMueuJfThko8lHm
	X9HxhujeuJE888PQILUrFkt2aGfluGeHbcLqtjKKFWiKkkGI0KfwXA0M/laBMm6knrNuBUNxwtJ3C
	ZY5NDj0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whfEP-00000000snj-1pi5;
	Thu, 09 Jul 2026 03:15:21 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whfEM-00000000snF-3r8n
	for linux-rockchip@lists.infradead.org;
	Thu, 09 Jul 2026 03:15:20 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1783566915; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=D0EU6uw2N8rhxi7aKxUzlfgemo0PxAoafZ4QOo5e2Kcbx6MdQdHqcPhcG04E2FaXl7bNMRCmDvz44BAatztWO2T44K0A4Iz4jSov5uxPkUmHmM/xHltweSBzxHjhNKq78xskOrJNbOg32cpsy703tUs5bE+EuKGLPPBvrlITyGg=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1783566915; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=ZLrYtx/5ZFbT2w7W2dQM5aQyyu4Tp3c2Z0AI3Z4k6Mw=; 
	b=lABUUNJbrM/ruJ5EXAJv6wTuGwoxs7GQ5yK7QEWrofzPV/4duin/PSceM2H/z6/jb1yp7I6l+2LRHlWAKCZTgHPgkDLxNqT7tUG2w6vqjeTn+YT59BrdEcpxaRjKJ2p9dWJE1sZUlhn9slmLmLXU4u8rZ7hsPpjkLGb0Ks9M6Pw=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=mcqueen.au;
	spf=pass  smtp.mailfrom=craig@mcqueen.au;
	dmarc=pass header.from=<craig@mcqueen.au>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1783566915;
	s=zmail; d=mcqueen.au; i=craig@mcqueen.au;
	h=Date:Date:From:From:To:To:Message-ID:In-Reply-To:References:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=ZLrYtx/5ZFbT2w7W2dQM5aQyyu4Tp3c2Z0AI3Z4k6Mw=;
	b=CehNSWm7R7LhIBkpNy+W1ID5rpXv+zMrzt+mg8cAV+9ok+Nkx002lXPk8Ow4b0/w
	9RQk2AOyd8gjmz6mUyMZV5hwXF4bRWIQBDAhXNg11oiZY71+uEfSsdzwhEuPKIKyhyv
	sMJrx1U6H2rJfGLenGTX9a6Wt1yNXdBy7MTTg0zA=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1783566914994573.6350447024572; Wed, 8 Jul 2026 20:15:14 -0700 (PDT)
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1783566912812359.0787510379224; Wed, 8 Jul 2026 20:15:12 -0700 (PDT)
Date: Thu, 09 Jul 2026 13:15:12 +1000
From: Craig McQueen <craig@mcqueen.au>
To: "linux-rockchip" <linux-rockchip@lists.infradead.org>
Message-ID: <19f44df4d18.79ae221412353947.8680684473851503956@mcqueen.au>
In-Reply-To: <19efe9876a3.827c5ee44221367.2709170723921781911@mcqueen.au>
References: <19efe9876a3.827c5ee44221367.2709170723921781911@mcqueen.au>
Subject: Re: Hard lock-up on RK3328 with no kernel console output
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260708_201519_126869_B101EFD0 
X-CRM114-Status: GOOD (  20.95  )
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

On 25-June-2026 I wrote:
 > I have a Rockchip RK3328 SOM based embedded Linux system. I'm using Yocto scarthgap with kernel v6.6.123. 
 >  
 > I'm seeing complete system lock-ups occur roughly every 1 to 72 hours, with no diagnostic information shown in the kernel serial console output. It is abrupt and looks like it's a total shut-down. But it does get rebooted by the RK3328 HW watchdog. By reading the CRU_GLB_CNT_TH register after reboot, I confirm that the watchdog triggered the reset. If I don't enable the RK3328 HW watchdog, it stays locked-up indefinitely until an external reset/power-cycle. 
 >  
 > I am struggling to diagnose/debug this issue because I have been unable to get any kernel log output on the serial console. Normally I would expect to see a kernel message about a hard lock-up, or kernel oops, etc. I have enabled (among other things): 
 >  
 > CONFIG_HARDLOCKUP_DETECTOR=y 
 > CONFIG_HARDLOCKUP_DETECTOR_BUDDY=y 
 > CONFIG_BOOTPARAM_HARDLOCKUP_PANIC=y 
 >  
 > I have also tried using the kernel PSTORE, PSTORE_RAM, PSTORE_CONSOLE feature, in conjunction with U-Boot `pstore` command. After a lock-up and reboot, I was able to read the kernel dmesg log with U-Boot `pstore display` command. But it also didn't show any lock-up diagnostics. 
 >  
 > In this abrupt lock-up scenario, I would appreciate any advice on: 
 >  
 > * How to get any diagnostics out of the system (eg any other kernel config changes to try). 
 > * What sort of known fault mechanisms could lead to such a hard lock-up. 
 >  
 > I may try using a SWD/JTAG debugger, once I can get a J-Link debugger. 

Once I set up the debugger, I needed to set kernel command parameter `cpuidle.off=1` for the debugger to be able to reliably access the processor cores. But once I did that, the lock-up  problem disappeared.

So it looks as though my lock-up bug is related to CPU idle management.

-- 
Craig McQueen



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
