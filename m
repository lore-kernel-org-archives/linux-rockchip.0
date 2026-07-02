Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02B9FC43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:54:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r+BtYwWWDfbRx+WxQJlR5AVNj0BmASA1i/Dmu07iniI=; b=oj+Io/cO2v725M
	3dhwQtboyd5twafp+kLo7v8MgeOrqaOhMijJhgmTa9Byzczlusd52v1PPclLsz6acLjYZoHETw2mr
	jX+pfdijX7p772+XkfWyx3Z+BEI04we1jyfteCQg8t1tk2aS9faQP7uYdDUPH/fwqRRxu2T/hRrPY
	bf9W7+/ijnpuvNni8+gmH8ml29URyS4diCZSKUqNi0IV2zUsn3LW6eyh2nIsiFRZoj3ZmoybTnMfE
	k+J3XPNlDXVEHTAf+ybPBDl9a31/gxLIkS+on9dn+DwdXiPOGCtwQ68QlE7efzgdxkkNwCdTQEqP3
	6jmlKY8eutrDRchZDFIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkWN-00000001dNv-3WfN;
	Thu, 09 Jul 2026 08:54:15 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfKKK-0000000513T-0TDp;
	Thu, 02 Jul 2026 16:31:48 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 6EC6943A8D;
	Thu,  2 Jul 2026 16:31:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0D5261F00A3A;
	Thu,  2 Jul 2026 16:31:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783009907;
	bh=E1qWf++P4fQTxTfdt1w7bxV4tlwl6MwcbrDidejiQ/c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=FTJm75v6g78dw7nc2yIjeNrtd/XXU46WO/2u8nnziEKlJYchAWQ9hGEChgT4F31ah
	 HiH5xTUbuFOhBbd6C1duQ+RhK7b4oHictxqHPOAi/lrzXWZ0FTN2EDGOuyFEWt0mD1
	 vjw0IUs1vrHYSMCjr+3zzHxShdi1SoTmUIrBx0H0nw1oUHkfV6THw+nOZBnbM1ksv+
	 +IgzClZgoCati852KoF+eqgYzFxCjgh+OL3JRZibavJHQwCUYoiGfhSnInQcjeQExX
	 M1Tr3eyxRp2MXQhzrXdgxW+NoNc9BMVcJx67MLhqeaR6Vs6Z2WBP6mhtT0mJnysYek
	 vPOd4U2WlHy2g==
Date: Thu, 2 Jul 2026 17:31:24 +0100
From: Lorenzo Stoakes <ljs@kernel.org>
To: Lance Yang <lance.yang@linux.dev>
Cc: akpm@linux-foundation.org, tsbogend@alpha.franken.de, 
	maddy@linux.ibm.com, mpe@ellerman.id.au, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch, 
	l.stach@pengutronix.de, inki.dae@samsung.com, sw0312.kim@samsung.com, 
	kyungmin.park@samsung.com, krzk@kernel.org, peter.griffin@linaro.org, 
	jani.nikula@linux.intel.com, joonas.lahtinen@linux.intel.com, rodrigo.vivi@intel.com, 
	tursulin@ursulin.net, robin.clark@oss.qualcomm.com, lumag@kernel.org, lyude@redhat.com, 
	dakr@kernel.org, tomi.valkeinen@ideasonboard.com, hjc@rock-chips.com, 
	heiko@sntech.de, andy.yan@rock-chips.com, thierry.reding@kernel.org, 
	mperttunen@nvidia.com, jonathanh@nvidia.com, kraxel@redhat.com, 
	dmitry.osipenko@collabora.com, zack.rusin@broadcom.com, matthew.brost@intel.com, 
	thomas.hellstrom@linux.intel.com, oleksandr_andrushchenko@epam.com, deller@gmx.de, bcrl@kvack.org, 
	viro@zeniv.linux.org.uk, brauner@kernel.org, muchun.song@linux.dev, osalvador@suse.de, 
	david@kernel.org, ziy@nvidia.com, baolin.wang@linux.alibaba.com, 
	liam@infradead.org, npache@redhat.com, ryan.roberts@arm.com, dev.jain@arm.com, 
	baohua@kernel.org, hughd@google.com, vbabka@kernel.org, rppt@kernel.org, 
	surenb@google.com, mhocko@suse.com, jannh@google.com, pfalcato@suse.de, 
	kees@kernel.org, perex@perex.cz, tiwai@suse.com, linux-mips@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, dri-devel@lists.freedesktop.org, 
	etnaviv@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, intel-gfx@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, 
	freedreno@lists.freedesktop.org, nouveau@lists.freedesktop.org, 
	linux-rockchip@lists.infradead.org, linux-tegra@vger.kernel.org, virtualization@lists.linux.dev, 
	intel-xe@lists.freedesktop.org, xen-devel@lists.xenproject.org, linux-fbdev@vger.kernel.org, 
	linux-aio@kvack.org, linux-fsdevel@vger.kernel.org, linux-mm@kvack.org, 
	linux-sound@vger.kernel.org
Subject: Re: [PATCH 13/13] mm/mremap: convert mremap code to use vma_flags_t
Message-ID: <akaSQypCQLeW9qfK@lucifer>
References: <380f761d35a3faa4370f8b3f92e3d4af3d4c7110.1782760670.git.ljs@kernel.org>
 <20260702134947.25189-1-lance.yang@linux.dev>
 <akaJx8Zt8kazlrjq@lucifer>
 <2f36a2da-0686-485f-b4b9-ae699bef4fd4@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2f36a2da-0686-485f-b4b9-ae699bef4fd4@linux.dev>
X-Mailman-Approved-At: Thu, 09 Jul 2026 01:48:24 -0700
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

On Fri, Jul 03, 2026 at 12:17:29AM +0800, Lance Yang wrote:
>
>
> On 2026/7/3 00:07, Lorenzo Stoakes wrote:
> > On Thu, Jul 02, 2026 at 09:49:47PM +0800, Lance Yang wrote:
> > >
> > > On Mon, Jun 29, 2026 at 08:25:36PM +0100, Lorenzo Stoakes wrote:
> > > > Replace use of the legacy vm_flags_t flags with vma_flags_t values
> > > > throughout the mremap logic.
> > > >
> > > > Additionally update comments to reflect the changes to be consistent.
> > > >
> > > > No functional change intended.
> > > >
> > > > Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
> > > > ---
> > >
> > > The vm_flags_set() cases below spell out vma_start_write(), but the
> > > vm_flags_clear() cases don't?
> >
> > Yep as I said elsewhere, implicitly taking the lock is terrible and me doing
> > this is completely on purpose to get rid of that :)
> >
> > But I haven't been clear enough clearly, so I should put the argument as to why
> > that's ok in the commit message.
> >
> > Will do so on respin.
>
> Makes sense, thanks for spelling it out! A short changelog note
> should clear it up for me :D

Yeah absolutely, that's necessary and was an oversight on my part, will correct!

Thanks for your great review here, much appreciated! :)

>
> [...]

Cheers, Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
