Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A467EE9B26A
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Feb 2026 14:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aOXdCZfeYTsNLN4h2uG3rnp1zetT4Ut7n6+AwdDrr1Q=; b=I8uoht31NN+O+k
	BQ+3y8Qlf3enkXLtmqbjcp4rLNB82f2GrDUoONHIKNvT24k/byI19QaW5atr45Yhaxx0zVkdpdhXE
	cQvfR67y/FP8hNo8V4qhIg1auJDj4p2jV6OJOZCJxSao3W9Aw81ZCZrUatX4kQVgyFpYsEBpZhPl/
	lhF4l4zpCn6lNm3nwzqwKWob3P6Sssya0boFhRm31GMYbJRFs0VixHK2K0CfesG6g55GCfD0tBlcF
	Y5qeE/BC66zU/cBt1+wcqBlKnPsMPTYNP/NLDBbIufsL0r+BReWMv8wvkWStoPlVZ+BFb/Cu2+f+m
	3sMdMgP3GJM/9YesOLwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vut3K-00000002B7f-2THq;
	Tue, 24 Feb 2026 14:06:19 +0000
Received: from smtprelay0010.hostedemail.com ([216.40.44.10] helo=relay.hostedemail.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vut3H-00000002B6w-27IT
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Feb 2026 14:06:17 +0000
Received: from omf15.hostedemail.com (a10.router.float.18 [10.200.18.1])
	by unirelay01.hostedemail.com (Postfix) with ESMTP id 393A41BFE5;
	Tue, 24 Feb 2026 14:06:10 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: rostedt@goodmis.org) by omf15.hostedemail.com (Postfix) with ESMTPA id BCA961B;
	Tue, 24 Feb 2026 14:06:07 +0000 (UTC)
Date: Tue, 24 Feb 2026 09:06:04 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>, linux-rockchip@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-trace-kernel@vger.kernel.org,
 linux-doc@vger.kernel.org, Masami Hiramatsu <mhiramat@kernel.org>,
 Manivannan Sadhasivam <mani@kernel.org>
Subject: Re: [PATCH v4 0/3] PCI Controller event and LTSSM tracepoint
 support
Message-ID: <20260224090604.0465de5c@fedora>
In-Reply-To: <5549b86e-36f7-e5b2-e16c-f70e328ca6c2@rock-chips.com>
References: <1769047340-113287-1-git-send-email-shawn.lin@rock-chips.com>
	<9e06e69c-d10a-1f21-cbf7-204319549612@rock-chips.com>
	<u3es7h4mgzdqfhvpl52s3x4vcisrpazcm4qb6x7lu4srmagxpn@hca2begqypeu>
	<5549b86e-36f7-e5b2-e16c-f70e328ca6c2@rock-chips.com>
X-Mailer: Claws Mail 4.3.1 (GTK 3.24.51; x86_64-redhat-linux-gnu)
MIME-Version: 1.0
X-Rspamd-Server: rspamout06
X-Rspamd-Queue-Id: BCA961B
X-Stat-Signature: 4cgi5uimthc3nux8ptqpfobnamrz4o68
X-Session-Marker: 726F737465647440676F6F646D69732E6F7267
X-Session-ID: U2FsdGVkX1/Yz0roP/AKiqn82g/7TrII80attliQKEg=
X-HE-Tag: 1771941967-409422
X-HE-Meta: U2FsdGVkX19fXOTQgbK7wdrf7I3YWP9WhyRJN7WbazT1DrLNl30Dj8ynmA96oQfhmzaszaa4KRv+U2ysT+aLh4HeOe9cyHMOJ6GyXybhCc6BdPZ/xhtdovK1G/aBP9nkPoMlt71F1mqj1s4EclEtU8RChufeOAvm+B4fiNkSTifSvBEVLdfSx5rzQ9G40oafavZLyXd8ocwl3bfNcTetar/gtMyusAvzsRR4iDZo2z3ZYMQ7tLLfiMqCjIHpoaFOMcJzfbCIuFXLXJXqqK3ANqfpuxGWZq1ySgKGLbOFhGc57fV1/FQalbisHftixxonmR01tFPGmB13EtNLNNmdR/QF2gPrkD2PwrWUftvdv5IDFX6YsEiWsc6KL4QGWt40imuZNpzmTzzNEbrk+Da4lw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260224_060615_600311_B63D9AF4 
X-CRM114-Status: UNSURE (   5.88  )
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

On Tue, 24 Feb 2026 16:49:47 +0800
Shawn Lin <shawn.lin@rock-chips.com> wrote:

> I'd appreciate it if you could share any concerns you might have about 
> v4. :)

Sure. I'll reply to the patches.

-- Steve

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
