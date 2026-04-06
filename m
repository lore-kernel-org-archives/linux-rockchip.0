Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E1219F46C47
	for <linux-rockchip@archiver.kernel.org>; Mon,  6 Apr 2026 15:07:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V4lYnjKTBszXxiHqNWY+78swDdPhwY3XqUu28SsAcuU=; b=lHtcXqkvrBMSuR
	pfKMnPAz4r4F5piS6aQ/AUqv8dH49bl0XsQMFBMjRWqyFIycVc3cqg4CPsCDE3GArh81gnilIj2I7
	bRCCb2o+/kJJZpnWTLl3RsoK8F8PJRMGRCy14GU8AfaBXgnCOxBtfvkuMGVlWGWCuuIw7vxLG+hU6
	vcxkeNkrdAw1gj+oxbFoOGOE33RN7YJw692zRtVRAwWRavDfLv0laQ4IpnTv40r3PZwVB7hHxTYgL
	z1r0RxXsAekmvP42ru9uHP+k+2M8kePdj9ZulBGhX7l2r6yIZpn1GMQGCtEBIaWZB49FIzN/rS8gW
	FBuk2dHYYAngN3qnNPmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9lXy-00000005FKn-2dfH;
	Mon, 06 Apr 2026 15:07:26 +0000
Received: from smtprelay0012.hostedemail.com ([216.40.44.12] helo=relay.hostedemail.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w9lXw-00000005FKO-0Wmp
	for linux-rockchip@lists.infradead.org;
	Mon, 06 Apr 2026 15:07:25 +0000
Received: from omf14.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay06.hostedemail.com (Postfix) with ESMTP id 327D01B7FCF;
	Mon,  6 Apr 2026 15:07:20 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf14.hostedemail.com (Postfix) with ESMTPA id 4EAE930;
	Mon,  6 Apr 2026 15:07:18 +0000 (UTC)
Date: Mon, 6 Apr 2026 11:08:29 -0400
From: Steven Rostedt <rostedt@goodmis.org>
To: Manivannan Sadhasivam <mani@kernel.org>
Cc: Shawn Lin <shawn.lin@rock-chips.com>, Bjorn Helgaas
 <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org
Subject: Re: [PATCH v5 0/3] PCI Controller event and LTSSM tracepoint
 support
Message-ID: <20260406110829.12f3e445@gandalf.local.home>
In-Reply-To: <u2dh2os5qyuuv636uwzttvohfyics7tvqiobheftjzdnuegq33@n77svn2nlqu2>
References: <1774403912-210670-1-git-send-email-shawn.lin@rock-chips.com>
	<u2dh2os5qyuuv636uwzttvohfyics7tvqiobheftjzdnuegq33@n77svn2nlqu2>
X-Mailer: Claws Mail 3.20.0git84 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-Stat-Signature: ixe9nnprriq7mxpun5m6gf7xrpof86fk
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: 4EAE930
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/uYBeCRxOtEh7TrxbGKZNQKuDClwoTA6I=
X-HE-Tag: 1775488038-770766
X-HE-Meta: U2FsdGVkX18p9VDqkHnORGbRcc0QXG5XI9F5Ld8pli7hj98TQXd50dWcWXwmuezbwzTOF//49UhUyN8vmkZhb5O4V6oiYTqoJ0OHNbW4GeD9jH6m4scWiK8gOWNBog8KJ3mwtCtegVRpUAWg37UUFmVKL88Y4IP2AoNCasIDXtokUk/nBJ1CaLVJtBhPtAHo9q4DokbOH9u+1AT3lSJ3XmUCZ/EDUT8i8x9JcCmkhCQalQbiulTpKc4avizmzJbzoWgVok8maeIWCVCKpzq21xyobxhFqOxx/hmE3ntQaCZHBELuEMao8Hp9J9VHmEptllvBa82VzULEnaDiGNp5WeYs5ylaz3o90+7z9tbINzusWfK12+Rq5MhawtuHBnXrzW8d5tshpNkY+aYCvL0Rlg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260406_080724_222031_B18201E5 
X-CRM114-Status: GOOD (  10.70  )
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

On Sat, 4 Apr 2026 22:23:32 +0530
Manivannan Sadhasivam <mani@kernel.org> wrote:

> On Wed, Mar 25, 2026 at 09:58:29AM +0800, Shawn Lin wrote:
> > 
> > This patch-set adds new pci controller event and LTSSM tracepoint used by host drivers
> > which provide LTSSM trace functionality. The first user is pcie-dw-rockchip with a 256
> > Bytes FIFO for recording LTSSM transition.
> >   
> 
> Steve, could you please take a look at the tracing part?

I already have but didn't say anything because I didn't find anything ;-)

Anyway, for the tracing part:

Reviewed-by: Steven Rostedt (Google) <rostedt@goodmis.org>

-- Steve

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
