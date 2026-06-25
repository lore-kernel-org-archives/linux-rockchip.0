Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AB722CDE001
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 Jun 2026 11:44:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Subject:In-Reply-To:
	Message-ID:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=Yw4L19GiNYX/CruwK1kvYHiS67o7GV7BWpufmKesSFU=; b=PQr
	z969Sx2c7QuC4v3rpgKaa8Lm9jfiQNPOKLj1HsMIEN6IeZ6D9JkBkLh5QRA2BpQS2ucc/T1QrFPQW
	N3uvXJQ6UQ+Xk6acd5N8Gr9FHtgUFUMyxAWhSC87QDkTssQIirI81Qej+6R0p9u1zo0uqozkzeSN0
	O7TRhOqPD8+9HUMRUMeyaSTxdlki6uKFkaPZw1eWcUr35KT1aM6prLnb+EHE79AVjieXIootHvtc3
	u6vMMBQp33nyXY7Ner3OEltmZKGt1GNelGOhdGW+fcwv/yg9JhrKqfZWP/gOfhEKUdHHp94HtFx5Q
	TeD1dFlEjfvJVOzP5/p0htdnxTOkqog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wciVV-000000097Ij-2xVg;
	Thu, 25 Jun 2026 11:44:33 +0000
Received: from sender4-op-o11.zoho.com ([136.143.188.11])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wciVS-000000097I5-3NrE
	for linux-rockchip@lists.infradead.org;
	Thu, 25 Jun 2026 11:44:32 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1782387868; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=MiOwY4Wkl8OMTDmooQpHdIeyxyhEs7izdpRZpIecOv6gW5XyYKLKlOQ9okPxe1/PZGQH2N32ieRDGvFrIHYZsfv4y07vpsiILdciyDUvRAX6gKS0PA+lfRWBPe1oToqifSMpQtfhzV04u6orApNaZKgArnumxQzQ9mYlROlp6VI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1782387868; h=Content-Type:Content-Transfer-Encoding:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To:Cc; 
	bh=6pKay4/CDJPfp5fdolGBrwyNfaBSsL7kvNegA11F40I=; 
	b=iyG0TaGCx7qtfE6uCj7CcBqtDc75UT4SFCfxnuTJVgexrQhbQFvzbxV4neyYWnz5vXbGL3i8RcX9PMeTm9okRuJ69bqrLuBAZ4ha2ATZaBCgY4TjA94lZoCGXe2FrmdJmaQbvIDiqwX4S1RKdhOneiwMOPsSduaur/AiUC4Nk/g=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=mcqueen.au;
	spf=pass  smtp.mailfrom=craig@mcqueen.au;
	dmarc=pass header.from=<craig@mcqueen.au>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1782387868;
	s=zmail; d=mcqueen.au; i=craig@mcqueen.au;
	h=Date:Date:From:From:To:To:Message-ID:In-Reply-To:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Reply-To:Cc;
	bh=6pKay4/CDJPfp5fdolGBrwyNfaBSsL7kvNegA11F40I=;
	b=fhuJohmvFzAADH936ZRC7ZVCkg2ujWqOcN+YcYl0C1Idslfar3G2/GUE6ROv2Xxq
	wsWvQY9w3tFv94I7hw3+H70RPb3Hw3YA83ecFpwlhHrnmiKPpWcJrT8TpNO1lqOUkyG
	RmzqRY0oEV8V/Eup+NcgH3PLF/T9HEs2kH11NB5w=
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1782387868403626.2217503449264; Thu, 25 Jun 2026 04:44:28 -0700 (PDT)
Received: from mail.zoho.com by mx.zohomail.com
	with SMTP id 1782387865320367.8298524651666; Thu, 25 Jun 2026 04:44:25 -0700 (PDT)
Date: Thu, 25 Jun 2026 21:44:25 +1000
From: Craig McQueen <craig@mcqueen.au>
To: "linux-rockchip" <linux-rockchip@lists.infradead.org>
Message-ID: <19efe9876a3.827c5ee44221367.2709170723921781911@mcqueen.au>
In-Reply-To: 
Subject: Hard lock-up on RK3328 with no kernel console output
MIME-Version: 1.0
Importance: Medium
User-Agent: Zoho Mail
X-Mailer: Zoho Mail
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260625_044430_931319_8879D0D1 
X-CRM114-Status: GOOD (  13.52  )
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

I have a Rockchip RK3328 SOM based embedded Linux system. I'm using Yocto scarthgap with kernel v6.6.123. 
 
I'm seeing complete system lock-ups occur roughly every 1 to 72 hours, with no diagnostic information shown in the kernel serial console output. It is abrupt and looks like it's a total shut-down. But it does get rebooted by the RK3328 HW watchdog. By reading the CRU_GLB_CNT_TH register after reboot, I confirm that the watchdog triggered the reset. If I don't enable the RK3328 HW watchdog, it stays locked-up indefinitely until an external reset/power-cycle.

I am struggling to diagnose/debug this issue because I have been unable to get any kernel log output on the serial console. Normally I would expect to see a kernel message about a hard lock-up, or kernel oops, etc. I have enabled (among other things):

CONFIG_HARDLOCKUP_DETECTOR=y
CONFIG_HARDLOCKUP_DETECTOR_BUDDY=y
CONFIG_BOOTPARAM_HARDLOCKUP_PANIC=y

I have also tried using the kernel PSTORE, PSTORE_RAM, PSTORE_CONSOLE feature, in conjunction with U-Boot `pstore` command. After a lock-up and reboot, I was able to read the kernel dmesg log with U-Boot `pstore display` command. But it also didn't show any lock-up diagnostics.

In this abrupt lock-up scenario, I would appreciate any advice on:

* How to get any diagnostics out of the system (eg any other kernel config changes to try).
* What sort of known fault mechanisms could lead to such a hard lock-up.

I may try using a SWD/JTAG debugger, once I can get a J-Link debugger.

-- 
Craig McQueen



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
