Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0E4B1C43458
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 Jul 2026 08:53:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zIOY9sIpVVIMCPPYGVWONkuiuLpCR9XjFJKfi/yczic=; b=G/c7UBvVoCHt1R
	Yy1zG3sPJ1TXM2TtZMvxF+C6ywNyHFCeUZBns//XnLfXH2n7sPSWxF5pM5x4VKl5gHuq3HlNwnmMK
	FnZQCFh8BkfRZN7UTOJKMnYIJtuGUviWgiOmW++JNsIWAZdJMTjtgmCid3IfYcRCxvM5guYEqTK0A
	sYP/M5ayKlcVQIAuV6QqfK6FuGTLyuz+IhaodJ9dcMArSEnoALFrl1VHCcm7Zm7s22yWKNFDEn+q0
	Ix60mHFcT+w5ZllgVywfMJhilpwwYRkhEPPQZN+S0WAZ2vS4Al1aJTX+qZuSRoa89w29jzw1E4BrI
	GYwubA2jlp1rxKhDwJgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1whkW0-00000001cPl-0yFU;
	Thu, 09 Jul 2026 08:53:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfJMG-00000004oSw-1sQx;
	Thu, 02 Jul 2026 15:29:44 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by sea.source.kernel.org (Postfix) with ESMTP id 25A4F418F4;
	Thu,  2 Jul 2026 15:29:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BA7DF1F000E9;
	Thu,  2 Jul 2026 15:29:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783006184;
	bh=AmvNH9wwHqyoIMesePnV6/zMDBtlSz51dFh4yHJ1BTo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=EZDY+QGcsghhDIw9rxbIhnPAJRijthrModhJ3dAoSN5cVM+YkTpcpEvD+KPlh/M/u
	 Qwt3kZkRl2OzXpZ8lNBF20cEMvcQmjr2C3N0OBOmi3krbMnyRHMJTEBJXrtiCGLkys
	 hVceGk9nKeLivyWhhq1nb1heVf5ntbaXnUG4S4OpDlt89/1RU+lLBy/OziQBm1WY0f
	 mLETtt6Kv1hVTKJQz++mgHlN+PUF+ac9yH5QtMrmNRfTW7GoeSyD7Rts3hi3Don33s
	 UtJfTmtwGOSlfBDJEzVdm8IjgP96nHmx5GxFIPDKfkfCebxxa9UBrNHRuHW+T6BGzw
	 FkrA9PbgKP9aQ==
Date: Thu, 2 Jul 2026 16:29:20 +0100
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
Subject: Re: [PATCH 06/13] mm/vma: convert vm_pgprot_modify() to use
 vma_flags_t and rename
Message-ID: <akaC-xxNr8ZyN4aH@lucifer>
References: <548ba81b2971734d4d2143237ad1465bd1b2f525.1782760670.git.ljs@kernel.org>
 <20260702122116.65642-1-lance.yang@linux.dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260702122116.65642-1-lance.yang@linux.dev>
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

On Thu, Jul 02, 2026 at 08:21:16PM +0800, Lance Yang wrote:
>
> On Mon, Jun 29, 2026 at 08:25:29PM +0100, Lorenzo Stoakes wrote:
> >Update vm_pgprot_modify() to use the new VMA flags type vma_flags_t, and
> >rename to vma_pgprot_modify() accordingly.
> >
> >This is part of the ongoing work to convert vm_flags_t to vma_flags_t, in
> >order to eliminate the arbitrary limit of the number of bits in a system
> >word on available VMA flags.
> >
> >Update VMA userland tests accordingly, updating vma_set_page_prot() to no
> >longer inline vma_pgprot_modify(), rather we can simply define
> >vma_pgprot_modify() as a static inline function and the tests will pick it
> >up from vma.h.
> >
> >No functional change intended.
> >
> >Signed-off-by: Lorenzo Stoakes <ljs@kernel.org>
> >---
> [...]
> >diff --git a/mm/vma.h b/mm/vma.h
> >index bcf0c2773449..6a8abb8ae937 100644
> >--- a/mm/vma.h
> >+++ b/mm/vma.h
> >@@ -522,9 +522,11 @@ static inline bool vma_wants_manual_pte_write_upgrade(struct vm_area_struct *vma
> > }
> >
> > #ifdef CONFIG_MMU
> >-static inline pgprot_t vm_pgprot_modify(pgprot_t oldprot, vm_flags_t vm_flags)
> >+static inline pgprot_t vma_pgprot_modify(pgprot_t oldprot, vma_flags_t vma_flags)
> > {
> >-	return pgprot_modify(oldprot, vm_get_page_prot(vm_flags));
> >+	const pgprot_t prot = vma_get_page_prot(vma_flags);
> >+
> >+	return pgprot_modify(oldprot, prot);
>
> Nit: could this just stay as a single return? something like:
>
> return pgprot_modify(oldprot, vma_get_page_prot(vma_flags));

I feel it's a bit clearer this way, separating out the two, I know it's a super
tiny difference but anyway :P

>
> Otherwise, LGTM, feel free to add:
>
> Reviewed-by: Lance Yang <lance.yang@linux.dev>

Thanks!

>
> [...]

Cheers, Lorenzo

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
