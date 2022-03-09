Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 64658C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Mar 2022 18:49:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:To:Cc:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSciwH5V95FMB4kOUR0mDiS9h0w8s9AK3CKkj+i7I6Q=; b=k6RnIT5qNHlZ6n
	yMIAE8CzXEF6AfgM840CH02UCcxp7YLhZU0uUlT7ppPiQgmKBJNBCdHeSxusuJlA64taJ7au17mrM
	nn53LkFlXN0Xlh9CdPv+Bts2Za3H3kAzk9rSsrZ+JpwLbiimy8/tLzxPw0MZxU50UUNIR6vDvKfyV
	WH7l6YoCtfJFpnNXwoOSAwrvlpmpk6Ewvk3eVEjCoT2+ase4o4IV1kibNhPg3OfpqohQIo3INj6Dw
	EJvMb8O8s/96i/XLZ+wg1P3Z8j2qIG3/rcizdYgfQp/1wojbjJkww9JCpxdm6VIB4KrX7gjfvy6Nz
	7ZXwuVT//YNwISATPbYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nS1NN-00A9DG-2E; Wed, 09 Mar 2022 18:49:33 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nS1NK-00A9CQ-Tq
 for linux-rockchip@lists.infradead.org; Wed, 09 Mar 2022 18:49:32 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 1B5266168A;
 Wed,  9 Mar 2022 18:49:29 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 740CFC340E8;
 Wed,  9 Mar 2022 18:49:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1646851768;
 bh=6IlXcKWsuvQQo15ETubC7YeXzDc8mnXi+RwnlwgPmgg=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=fsXF4ziFsuvqfo4avTVFx/WNwtBh54mC2qk8aX3TUJQbdx8HKaP4R3tbUqM4/ante
 uCcAstQKOB+PLUFPYRQkbdQ7uSSX6R58lG4KCV9Q4cb+0fLrirkLx+aK+D5rDcLaJ4
 qKOilrme6OWWlf+G4acUWZWr3S5RjFMh4aEn2pjG2y6K+5eoXFwdEM/bHOFbz9opnj
 cioTnq4HkeJYKeCxzVrAtppyl/Ihc3Qcr35yUPh2URO45LVRxk9I/mf5kh4wTpQXSl
 hdkNtcckj/EmtoFvnEPQVIgxAMlZ9u8yTRxR+gURiRFO7bFankpxm56yD6YWhPpC2Q
 c90zCADRGiZhw==
MIME-Version: 1.0
In-Reply-To: <5797913.TNu9mpgMAd@phil>
References: <5797913.TNu9mpgMAd@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 5.18
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Wed, 09 Mar 2022 10:49:26 -0800
User-Agent: alot/0.10
Message-Id: <20220309184928.740CFC340E8@smtp.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220309_104931_023508_4E822D18 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
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

Quoting Heiko Stuebner (2022-02-24 14:40:21)
> Hi Mike, Stephen,
> 
> please find below some Rockchip clock changes for 5.18
> 
> Please pull, thanks
> Heiko
> 
> The following changes since commit e783362eb54cd99b2cac8b3a9aeac942e6f6ac07:
> 
>   Linux 5.17-rc1 (2022-01-23 10:12:53 +0200)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.18-rockchip-clk1
> 
> for you to fetch changes up to 10b74af310735860510a533433b1d3ab2e05a138:
> 
>   clk: rockchip: re-add rational best approximation algorithm to the fractional divider (2022-02-24 00:07:16 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
