Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id AADCFC54E65
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 May 2025 23:20:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=29Rbj7RY0sBpoh2KypXP8k+8zrzsOBpMlnuA9RbHaCk=; b=WvgVfh8i3nt5BN
	+fpryyPDhpKI61J5nlxQA3C1/F9GqtJvYWldiZl+S2B9UQLg81854VmR5LF/KYYbHtdzAQgrKarSU
	PMnRh1HOOmVmFiXH6m+uTb5a7CJ4f5+WUjmcZTlcamrzklb2gu/WYvaeqOXf+TfabxhjWC3XRE8Jd
	nc4uHXFn6mXaVKAorqcuB18MSNtXzabza311ibGgvUrb97Q5Jp1BcDHyB+h0yT7d5BZOgiRa6GJG2
	8W62xezUEIS70wLLodAJtZULwQ14XqXYouVg+/iNTrkcRuMROgvyzCX/RLlfM0MwP2bphIlrKGJE3
	oAPh1t0S5smUvASfSBzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIFCO-00000002Q23-4BzV;
	Thu, 22 May 2025 23:19:41 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIFBf-00000002PNE-2CJ6
	for linux-rockchip@lists.infradead.org;
	Thu, 22 May 2025 23:18:56 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 3BF4E4A88E;
	Thu, 22 May 2025 23:18:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D054C4CEEB;
	Thu, 22 May 2025 23:18:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747955935;
	bh=P3t4DL3xYUyTBmAEER2maWx8tKVsMIZCBNPFoN+u+9I=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=P3RQj8DtIgVMpAjGTC4WR+s/4lgjFbMEY52cPLSy9ssQ6XI3M5cfIPuaN+nvTIOKW
	 hUVe9xHj+PWelCqqwzU7VuU/+zWp4REsIDGcZw3bzGPgWSXjKvf5fg07NkKuKqeE9A
	 3+/h5Ut1mJxD3c3+kVdppKa8T5ZvohymkH1VpTuOpbdtDPDp8XlZNOffiD3yYSPVRB
	 JEj1raxHn+TbsKru0JblwotvTPMaDG98oPt0PjQ537hjIZVgrgdY/A/MRQzFzu62B3
	 eAauOxh+Yg4dsiSuW+YwuJhDGMnRtjDaj0SCcKCa78IZTqcfiXn6sb8Kjnv5FfeJtq
	 ABrG8jyNUdFPQ==
Message-ID: <42ee51cc911b4a72c2659f94282519df@kernel.org>
MIME-Version: 1.0
In-Reply-To: <23068874.EfDdHjke4D@phil>
References: <23068874.EfDdHjke4D@phil>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.16 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Thu, 22 May 2025 16:18:53 -0700
User-Agent: alot/0.12.dev8+g17a99a841c4b
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_161855_580561_ED1125B9 
X-CRM114-Status: UNSURE (   7.33  )
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

Quoting Heiko Stuebner (2025-05-18 02:11:44)
> Hi Mike, Stephen,
> 
> please find below a pull-request with Rockchip clock change for 6.16
> 
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 0af2f6be1b4281385b618cb86ad946eded089ac8:
> 
>   Linux 6.15-rc1 (2025-04-06 13:11:33 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.16-rockchip-clk1
> 
> for you to fetch changes up to 276036283716b9135525b195675ea42801bde204:
> 
>   clk: rockchip: rk3528: add slab.h header include (2025-05-15 14:49:05 +0200)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
