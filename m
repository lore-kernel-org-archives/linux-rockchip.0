Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 685CBEE4993
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Aug 2023 17:58:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FPgwOLBsOsBo/xECEtsvIfYCEMty6TrSkXnDFuj9BUk=; b=EUb1G2WtDk55Pc
	IrjVGeQbSlckgXj53tV3WOhEgFB1qfJcKgr6irReMte4haDiXoto5RmOroJDe74hUNR601utMPTIN
	Vrj77+t3UtEsumv6pPWJXBl9sckzAdynOmV/aVBs4No7gWqZR5/TnmPtphAGfkay4y0djpd/CJZO3
	JBjtiv3rFBR9qfCQxSYYbG4Lpj5HpIkmGC/Vfl1T0e+JFHpWf7unqtPxpil2v9iWtltQvgJaycta3
	MWQ2pG5LkI5fbV9Sivg1oLl+rPUHWMqN4FIXub8h2dRAuuBFd/yTudYEqG5O+KqIU050L2+GNOEgK
	PAUXMXNzoYgKMICeg+jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYVe4-00Gbp0-1n;
	Tue, 22 Aug 2023 17:58:24 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYVe2-00Gboa-11
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Aug 2023 17:58:23 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits))
	(No client certificate requested)
	by dfw.source.kernel.org (Postfix) with ESMTPS id A678761B76;
	Tue, 22 Aug 2023 17:58:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F3A2BC433C8;
	Tue, 22 Aug 2023 17:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692727100;
	bh=RfvfmqFjsfgrytUD5NsxzQg5ctyL8XwSos9DQJXcNiA=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=aa47fMliESM0A8yWtb++pnJMQ/APgyF3FDCI80Wug+SbhJZzeKcrl5ADUTgjoOCU2
	 da7G+5E3EQ/cvDGAUsD041+sZgdCu5cd3i7kbFMHs9pDT1t5XJFQTBLdzEQBGS0zin
	 B3UpZC4hXdoTqeLU/edZZkDaF814Wn19vjyX7T9MKeRTLG1Qu24n9VM9c/huS03Sk1
	 tm7LAwfJ7hqIFtRbq9fPXdIIE8vGqFArkLApf7ImsKhk52T84cR/T84cFFIM9kECe4
	 5us4OyNoBIhlKZBxgvfe8RKPXg0aydSWzFGeKOM3sSARzyQgEw3Ulah4T9aRt39l59
	 WBpvWn5GuK+zg==
Message-ID: <e87da743beec8466d4fe6416ded5b19d.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <8651570.alqRGMn8q6@phil>
References: <8651570.alqRGMn8q6@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.6 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 22 Aug 2023 10:58:17 -0700
User-Agent: alot/0.10
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_105822_419812_C0AAD8AF 
X-CRM114-Status: UNSURE (   8.82  )
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

Quoting Heiko Stuebner (2023-08-16 15:05:52)
> Hi Mike, Stephen,
> 
> please find below a pull-request with some small Rockchip stuff.
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 06c2afb862f9da8dc5efa4b6076a0e48c3fbaaa5:
> 
>   Linux 6.5-rc1 (2023-07-09 13:53:13 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.6-rockchip-clk1
> 
> for you to fetch changes up to 5c7a71fd82350c2f5828a66a1f2f38306d61cbc7:
> 
>   clk: rockchip: rv1126: Add PD_VO clock tree (2023-08-10 23:14:06 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
