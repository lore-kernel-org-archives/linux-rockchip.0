Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0EC43C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Mar 2022 14:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PB6XiiNauL5/+EX0x+1CwBbwo3YDO1TDbfRdEBXwy9c=; b=D/3aw02nQ9lpxr
	8Hzlo5ZNJgiLz0GDhNrTXPVQgsu1tDzfqW0nCP8sJ2VoqTjUc+vJgxUY7Oz0R8ANpRI/kvVM19sQs
	WPbiG2Vmyhks1/O580XHKf5IUhz4dZNhZAbiBMZJBR72ZiyCzJDmGhYKyoaZkzjgI+/q1Hu7+JSSM
	6dl6mun3TMyn9GSgohkHAzJCA1xwoo++4Zs9+kFSk/0ZbABzfVfc+40qk8UeTBzMKIni7c8s1Hru+
	iG5s8LI/Ft9Iq/u2hv+sE7YmfRbxciRszsNqEVl2XZ59LvAekjKd82dju+So4ALe4zWspDLsNoo4g
	i+A8xzdvEm2NLZtgNetQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nPPsU-002xvW-0x; Wed, 02 Mar 2022 14:22:54 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nPPsG-002xoh-1L; Wed, 02 Mar 2022 14:22:41 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 12EFF6134E;
 Wed,  2 Mar 2022 14:22:39 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A177AC004E1;
 Wed,  2 Mar 2022 14:22:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646230958;
 bh=gtQk75T3qKDxWoDQiGWygKCOzdyAYhEBNXZLCyqiv0M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=i22xKKX0SQD3c2kRTiVGhQmy0lDN0stgowJAclW1NmZbMgrB2gX93GGnFGrD33HtO
 zAEXtNZBtM5wIau9y191ZpsXONrZTMg+aIeZZ+7vf6gYmqGCVyZL0rkC0JTgntPscu
 bah6ZdaB0gk+YEraw4R4Lc0cZxCc2KGz4cSeVxeIGwpICfNCsk9omrVMdIVHn7impW
 5AdCPag9H2wQN+O6s8I+bBqaZ4jPzSfz2jFD/xUGbDSUZ4ajriXJU9hrMYAIi/29sO
 07K9ejfdoVFMIV7jCet3zH9iVRaof0i1hM5BS1CtiOBdUdMXihT5bZsWNDF/EqXqRj
 LEynYA0zgVaIw==
Date: Wed, 2 Mar 2022 19:52:33 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Geis <pgwipeout@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
 Heiko Stuebner <heiko@sntech.de>, Yifeng Zhao <yifeng.zhao@rock-chips.com>,
 Johan Jonker <jbx6244@gmail.com>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Rob Herring <robh@kernel.org>, devicetree <devicetree@vger.kernel.org>,
 arm-mail-list <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/8] dt-bindings: soc: grf: fix rk3568 usb definitions
Message-ID: <Yh99qVeALFN3X9te@matsya>
References: <20220228135700.1089526-1-pgwipeout@gmail.com>
 <20220228135700.1089526-2-pgwipeout@gmail.com>
 <CAMdYzYqs=iRY6uNzVSkHrrhPYFixXdbZjtwSpPOjf-6f8TXutw@mail.gmail.com>
 <Yh8n7XiJbaT4pZGD@matsya>
 <CAMdYzYrkDbr5mHYmAbqBoJJEKH8A5xXfRNuTiTn8q40vRJeCgA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMdYzYrkDbr5mHYmAbqBoJJEKH8A5xXfRNuTiTn8q40vRJeCgA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220302_062240_160829_5FCF67B6 
X-CRM114-Status: GOOD (  19.55  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On 02-03-22, 07:18, Peter Geis wrote:
> On Wed, Mar 2, 2022 at 3:16 AM Vinod Koul <vkoul@kernel.org> wrote:
> >
> > On 01-03-22, 09:52, Peter Geis wrote:
> > > Good Morning,
> > >
> > > Would it be possible to pull this patch individually, to fix the
> > > current error reported by Rob?
> >
> > This does not apply for me on phy-next. What was this based on..?
> 
> This is based on linux-next, which the applicable patch was accepted on 24 Feb.
> The original patch was correct, but it seems a merge error happened
> and these two lines were moved into an incorrect location.
> This patch corrects that, but I see on the original patch chain you
> are discussing reverting and reapplying to fix it.

Ok let me revert than so that it is easy for everyone to fix up

Thanks

-- 
~Vinod

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
