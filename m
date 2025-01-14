Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4F2E5E77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jan 2025 20:02:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:To:Cc:From:Subject:References:
	In-Reply-To:MIME-Version:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FAj2QMbtinEaci50qI3AEe3OyMe2OUWuIU8diMd4BPk=; b=SHgat2qnqSEYiO
	iGqLS37FLFzeDaCLd09GjnkDwz29CV0c9zlGT+fT1I+tERl4QbQ+Q76Zr00VCYR1bis/oy0mGkkIm
	kPOORVC7EyEG30djHnfxVRApgZayXoPuDdBhy22wGm3oPUZMKyRj8R+IB/QkC+09NIZYedUeg6Hg7
	6XbvbDYV+yvXrQ1Et2WzRpZDbPTTuKwO1QkUOYFRFqH5VJXLXeQ5eihS//2mu2SBVm/4rfthT1FQS
	y8r+nvWd7rrqwSw1PydTbS/LDr6Rq3QDb79a4cByeZ0bv3XrC7ZEQxIoay/B+YNjbK4roqhKckDWI
	smBVR69/VdSLDuMpor3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXn7K-00000009cGS-3SaR;
	Tue, 14 Jan 2025 20:02:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXm2D-00000009T7u-1b1N
	for linux-rockchip@bombadil.infradead.org;
	Tue, 14 Jan 2025 18:53:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Date:To:Cc:From:Subject:References:
	In-Reply-To:Content-Transfer-Encoding:MIME-Version:Content-Type:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=pSHj05XqsDV6TQqTZU38hHIQGZD0/W6LRLWXVHUKG6k=; b=evku3WW4qrPxWaRwt1EvBz2aAJ
	iaL9CpEWHzDlc5uAnrklha2BE2vqN4Zah3zFkwRvBfeSl2U5O0hky6oAnVv2cJKBghxy4PsB1cOSm
	Tfc5UFFG/tl0cEKibekl7D+JTKGBz9eLQB3TiP2izFgpKPNKEM/5GtfRcix8TjzzTmQBfYJXB8nvN
	6QyIdTzH/JDJzkO/6Eb/GEdstCdF94EL4+HGOxSWycqlAd45IqZ0ix1jvQOhVp/sw0UI+MER+3+fi
	cyNYxAXAJ0MqCmQe4O1yWcEhHgl2EGGvTt44kdWpvdG9pRl7DZYp6aDPRL2nBaout5BVn+z/kfMPW
	0R1fHFmQ==;
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXm2A-0000000AYqd-2WDC
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jan 2025 18:53:04 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 899B15C59CC;
	Tue, 14 Jan 2025 18:52:20 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DA92DC4CEDD;
	Tue, 14 Jan 2025 18:53:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736880781;
	bh=arcvPQRaygLd/y/EZtH/XTVjRL9Lu4Bch5hftUjZUZE=;
	h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
	b=Lvw4v8MgpMQvHGEBNlQjQs8Ap2N3yYK9VkSSq/QtnDQxic9hJD3ji+n2RFzupFsJi
	 BCQ99I5zVHwCO04zzENS89S8/R+Da3j73O6ToT5tcVEBfIfK9pFOtZR0P1TPcTFRfv
	 UdV0Lnbze/qhb6zDK98si6x5pFJIGydba7sJy7UqRQW/uo3GmQ0+WBVL25bCJtj3PB
	 oxBsG5oxy2FTWesiy/qr8dctXux00yImEi2MKh7gJzW+63jetmnhAdr5/ZXBjj6Yfy
	 HNEKuJq0N18849N9vFxI1tlgDMyKP8WSb9hBA6V+EaBZkR12g2sHDzYK0cG+RNkiTs
	 FYknZfuez5hGw==
Message-ID: <07b6745150c7bb671e7355117075c652.sboyd@kernel.org>
MIME-Version: 1.0
In-Reply-To: <2020465.PYKUYFuaPT@diego>
References: <2020465.PYKUYFuaPT@diego>
Subject: Re: [GIT PULL] Rockchip clock changes for 6.14 #1
From: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org, linux-rockchip@lists.infradead.org
To: Heiko Stuebner <heiko@sntech.de>, mturquette@baylibre.com
Date: Tue, 14 Jan 2025 10:52:58 -0800
User-Agent: alot/0.12.dev1+gaa8c22fdeedb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250114_185302_868978_FF727D82 
X-CRM114-Status: UNSURE (   7.15  )
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

Quoting Heiko Stuebner (2025-01-14 05:30:35)
> Hi Mike, Stephen,
> 
> please find below a pull-request with Rockchip clock change for 6.14
> 
> Please pull.
> 
> Thanks
> Heiko
> 
> 
> The following changes since commit 40384c840ea1944d7c5a392e8975ed088ecf0b37:
> 
>   Linux 6.13-rc1 (2024-12-01 14:28:56 -0800)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v6.14-rockchip-clk1
> 
> for you to fetch changes up to cd8b5366636bdff0449b789fb2d33abb20804255:
> 
>   clk: rockchip: rk3588: make refclko25m_ethX critical (2025-01-09 16:23:32 +0100)
> 
> ----------------------------------------------------------------

Thanks. Pulled into clk-next

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
