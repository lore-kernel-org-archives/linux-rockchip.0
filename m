Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F3836ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Sep 2022 11:16:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	Subject:To:From:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WIj34kpk7zaAtEZ0w87d7xUqHkWayG44Yo9B+Ycu1Qk=; b=aNku4/pq6I58Ku
	IG7qMa7twuTaa99qHb75GlJdA+v6WskJeNOS/LT91gVnbKisZFtsd/+sV4saoa7Vlb6dBj7tQedgV
	TfgY85wB66RmaZ0z+DqOeZtdvr+SRDO3+XjiXNWlpuVfvxohbZbarxl5lI/4EjU5FM1GZ4DlYtQkc
	C/a9hlDZyI0j2kehXtAt07SXCKIZkhjlOUOUX6V4uSueH6jvkNf50tD9g59WA8HnsbCEYqX7z1I+A
	tYgLGf7+x99kaNqu4W7f+yW+ppwl7YS58JzH2yXCGg0072NvdraolSUxiEjFiSF5PtKDjueMWhPgG
	d2aUpWiEnhkTkHnbX5/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU4fA-003u5i-Rl; Fri, 02 Sep 2022 11:16:40 +0000
Received: from gxaoszxo.piglight.com ([85.217.145.3])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oU4f7-003u12-I5
	for linux-rockchip@lists.infradead.org; Fri, 02 Sep 2022 11:16:38 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=dkim; d=piglight.com;
 h=Reply-To:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding; i=and.sco@piglight.com;
 bh=2RNxICSB08QOsISrgdgjONv4BIM=;
 b=p5TRD3sMekJC+i0D+LIVKc9R9ABHS4QY7t4l/7r2SSE4bY6SPTn2ddeM37lGjT8iPKHb9rKwj6de
   d9lbtSwd4X2ZzCNhSG+EK6b+/YBUhCRfe+J2/QlQ/KYow16Csi9MzQ2Ue+o8QFhhDRbCOHplcO21
   Ll8G5X7QXK9bHmLlxvk01L62AieAdUZJgRr2EpHPiyZk46D+9JnkYUmeNmMU2OoiumDW7/zY6Z4L
   1nEI3rNKh76N5w6ajI1Ok0cNuqTLJZPsiXBfbrOCgs1jfrdNPZX9+I+9QARGB/Ju3B31QNSj2yKz
   lysdKOUHGQhAYcxwsEk5egdC63HDZZuEQrD4qA==
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=dkim; d=piglight.com;
 b=SiVdrRohgHFUEVjrkSTOYN5V2DwTdCNpMM/2AOJm7fwfaJLQ3MSUq/SC1suLfV30Mz2opWIOSDxW
   q8CwW08JvR5KJ9c1XrJM4lHz7tso6qAKFs/XI3C2qqwqE2IB8kjvOFqYeCtP0w68PFJ9quPj6a6f
   5zPnnXrUmBcGFb87cXP6NjQl76xr/2eO2nnmhnfXJhy/FTf/9Q0tSJwHjdNLbGA8acTONTM/t6re
   1ONLSEy67CvlDPCJ548gRs7Vgpol9RKUE2XbdZWwChcjdaH/9Ox58XXgOL9j1JT5kKP5ujlmxpXL
   wYCmSmiu3ggptB+xXNDMqNhHsAhgo+VpH6uzlQ==;
From: Amjad Ali<and.sco@piglight.com>
To: linux-rockchip@lists.infradead.org
Subject: IMPORTANT!! Sir, I need your urgent response.
Date: 02 Sep 2022 04:16:26 -0700
Message-ID: <20220902041626.9CC4C453CB86EECC@piglight.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220902_041637_754290_D021728B 
X-CRM114-Status: UNSURE (  -2.72  )
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
Reply-To: amjalia90@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hello Friend,

How are you doing? I have sourced for your contact online and 
decided to contact you. My name is Amjad. I am retained with a 
leading Bio Firm. The recent pandemic caused a lot of havoc in 
the business and supply industry. It also opened up new 
opportunities as well. My company has opened up a bid for 
suppliers of some basic raw materials needed in the production of 
life saving vaccines, drugs, etc.

I urgently seek a representative to represent my interest in this 
bid. As a staff member, it is against the policy for me to bid 
directly for this. I assure you that the proceeds from this is 
very good. I have already sourced a local supplier to work with 
on this. I only need a reliable representative. I think we can 
work together on this.

Please get back to me and I can explain in further details.

Regards,
Amjad Ali

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
