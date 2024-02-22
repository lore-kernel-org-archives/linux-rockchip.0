Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 01F7DC48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 12:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ENVq51gfV8GfOMWVnPFsedMbgb71Z1u46LueJKfqGY4=; b=xvCa0arE/kecQxj6ePq+M3Uisc
	9mkzdNl1//OPhifKat5T/M5Wq2F/hIbkWj8+jslfDT4cky0asEBtthQd6CGCBxMsmmjqrbJsXpMjY
	vGB74Ev07PYtduxCbzJUxFiwB6VZT4MU36o5TrfxZ8kveQDxtIwOIB6Plcwgjp7MTQaJCdKh3XQOC
	0SPunjmb7lbGZmMFwEeJhryJI4VgApcD+Rvf4xfiH55tsvZvhXzsA+Wly/nJdbfYHMmEisw4IuPjX
	W7bvKg/qvevjaALZZ1L/IvfTHDePVxT5eFREfGamj2iRChbjbF51vvp/pW2HwL2IoMl/uXAGzdFik
	umOpK1og==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rd8Kk-00000004r6S-3ChG;
	Thu, 22 Feb 2024 12:37:50 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rd8Ki-00000004r60-04Du;
	Thu, 22 Feb 2024 12:37:49 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 6945161703;
	Thu, 22 Feb 2024 12:37:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BDB4FC43390;
	Thu, 22 Feb 2024 12:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708605467;
	bh=2HMdWI3nhegIrX7DvPTDdGRwgUpA87f+mQI3vADvmUA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=J9wf1Fn2s7yjjNGeZc8qDUMdCkIg2+Me9u8s9bytnRxVyAkHnthnj68f32ZQbhcC6
	 YEUjaPFPz7STnM7iBgkaFShuowyCnzdA3hpiu+6d1kREQh9s4eXdrXrXkq/3uJa0tZ
	 MbX/13MhN0iwUKHrddXclf991rxeutVpLTapP0Cqcp7PF6QspVbBqmRHBWPBTJRPDm
	 cnQidamdyDirsa2YnK5C1BEd4Q0d37lUtQnbBGJadr0XE1z2bSFbEyWSua3iM9AC2I
	 0YZfu23qQmOWf7xG9V2GCmt7U2IYiQdytFn46fVxV0i+P8zNHFrzl/56XwIYSDgYCV
	 fBcv98/lTF8Xw==
Date: Thu, 22 Feb 2024 07:37:46 -0500
From: Sasha Levin <sashal@kernel.org>
To: Tim Lunn <tim@feathertop.org>
Cc: linux-kernel@vger.kernel.org, stable@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Andi Shyti <andi.shyti@kernel.org>, Wolfram Sang <wsa@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-i2c@vger.kernel.org
Subject: Re: [PATCH AUTOSEL 6.1 27/27] i2c: rk3x: Adjust mask/value offset
 for i2c2 on rv1126
Message-ID: <ZddAGs9pKyLV37zP@sashalap>
References: <20240128161424.203600-1-sashal@kernel.org>
 <20240128161424.203600-27-sashal@kernel.org>
 <030766c0-a6b9-401d-9e9a-fe5d11c5d381@feathertop.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <030766c0-a6b9-401d-9e9a-fe5d11c5d381@feathertop.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_043748_146255_7601101A 
X-CRM114-Status: UNSURE (   8.27  )
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
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, Jan 29, 2024 at 10:19:35AM +1100, Tim Lunn wrote:
>Hi Sasha,
>
>=A0 Support for the rv1126 SoC was only added around linux 6.2 and 6.3, =

>thus doesnt make sense to pick this patch up in 6.1

I'll drop it from 6.1 (and older), thanks!

-- =

Thanks,
Sasha

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
