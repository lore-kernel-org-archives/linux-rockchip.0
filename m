Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 97C7FC3DA6E
	for <linux-rockchip@archiver.kernel.org>; Fri,  5 Jan 2024 09:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HhuKJ0WSBqlhQrBoQ3nGE4XOr0WP9wafi6/f6zHNBIw=; b=YQAFDpQuhNQ6t5zlujpLeZJUz9
	z1NhDhgbqJQEaqe2WHVi2LuezcbbCAE4oTQ666et5wQU7xqxYkYJ6EHOpMcpeIf0WyxUsqo82ycXS
	L0fEfo0Uim5JRZMXfwFMPPkAnbgHayP1MryuWcOWRqVGd/bEVu0LZnQ5k32T3NHg6bJ2N8ocMCpTn
	OYVZyjFzFP10YBsutZHqjOPV31vTzysLn/Vo9IzjjpFocue1sp8FKj98GWcJ17Vbiih7gP2qKMdvr
	sqnbT9Tvt3hJpRTvnPGYFIBhJd0f2hNUWGuCsvuLln33rtP0jovotSJWCTTU12ydFpQ7KH4nlrnH1
	O2eq4u+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLg5z-00GKEI-1a;
	Fri, 05 Jan 2024 09:02:27 +0000
Received: from smtp-out1.suse.de ([195.135.223.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLg5u-00GKCf-2l
	for linux-rockchip@lists.infradead.org;
	Fri, 05 Jan 2024 09:02:25 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [IPv6:2a07:de40:b281:104:10:150:64:97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id C4C9D21F4F;
	Fri,  5 Jan 2024 09:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1704445339; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/Hmj9D9VfyQx+ZfVXhsSYh7Uls173247uQLnYHxXG1M=;
	b=LOl7umdXMasBBJC+adYeUl4Qi2+31gpUnZx2Dszu/570f6w9mSpa5Zj2pQL35AmskmGqPM
	bRGrv8eW8BsoW3ia+yEWFtC0eKHgC6MUnRuXnnLFT3B0EOt4qzWhLqyTowMGBaNBPaCyEI
	ginbt+IEW3mLW7T0tgfzQTVplxmymGQ=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1704445338; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=/Hmj9D9VfyQx+ZfVXhsSYh7Uls173247uQLnYHxXG1M=;
	b=oXf6BzBUGOHvQ67mDKNH8+c9QYm0uiGfDeK4Ufa8ynqSMGwJKittfVFmT+4clTun94BiM9
	zEnRGSQskkF33k+CycmilhUBqsV+8Aw6RSsF4gcF7o1WH7RzsB2jc/9clyNEy65noVfvVK
	WrhQcDV6UJKqajwr2AxsXuroJXVKJpU=
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 93371137E8;
	Fri,  5 Jan 2024 09:02:18 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id zoe2I5rFl2VvRgAAD6G6ig
	(envelope-from <mkoutny@suse.com>); Fri, 05 Jan 2024 09:02:18 +0000
Date: Fri, 5 Jan 2024 10:02:17 +0100
From: Michal =?utf-8?Q?Koutn=C3=BD?= <mkoutny@suse.com>
To: Pasha Tatashin <pasha.tatashin@soleen.com>
Cc: akpm@linux-foundation.org, alim.akhtar@samsung.com, 
	alyssa@rosenzweig.io, asahi@lists.linux.dev, baolu.lu@linux.intel.com, 
	bhelgaas@google.com, cgroups@vger.kernel.org, corbet@lwn.net, david@redhat.com, 
	dwmw2@infradead.org, hannes@cmpxchg.org, heiko@sntech.de, iommu@lists.linux.dev, 
	jernej.skrabec@gmail.com, jonathanh@nvidia.com, joro@8bytes.org, 
	krzysztof.kozlowski@linaro.org, linux-doc@vger.kernel.org, linux-fsdevel@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-mm@kvack.org, linux-rockchip@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev, linux-tegra@vger.kernel.org, 
	lizefan.x@bytedance.com, marcan@marcan.st, mhiramat@kernel.org, m.szyprowski@samsung.com, 
	paulmck@kernel.org, rdunlap@infradead.org, robin.murphy@arm.com, samuel@sholland.org, 
	suravee.suthikulpanit@amd.com, sven@svenpeter.dev, thierry.reding@gmail.com, tj@kernel.org, 
	tomas.mudrunka@gmail.com, vdumpa@nvidia.com, wens@csie.org, will@kernel.org, 
	yu-cheng.yu@intel.com, rientjes@google.com
Subject: Re: [PATCH v3 00/10] IOMMU memory observability
Message-ID: <elsuzdcx2qpnazvz2ayzmco4ctms5ci3iet3k7ggbjt3p2pfk2@tvr3plow26oi>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <eqkpplwwyeqqd356ka3g6isaoboe62zrii77krsb7zwzmvdusr@5i3lzfhpt2xe>
 <CA+CK2bBE1bQuqZy3cbWiv8V3vJ8YNJZRayp6Wv-j2_9i37XT4g@mail.gmail.com>
 <eng4vwaci5hwlicszgcld6uny55vll2bfs3vp2yjbjf3exhamg@zf6yc2uhax7w>
 <CA+CK2bCUGepLLA2Hsmq00XEhPzLWPb5CjzY_UPT0qWSKastjAQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+CK2bCUGepLLA2Hsmq00XEhPzLWPb5CjzY_UPT0qWSKastjAQ@mail.gmail.com>
Authentication-Results: smtp-out1.suse.de;
	dkim=pass header.d=suse.com header.s=susede1 header.b=oXf6BzBU
X-Rspamd-Server: rspamd2.dmz-prg2.suse.org
X-Spamd-Result: default: False [-5.22 / 50.00];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 SPAMHAUS_XBL(0.00)[2a07:de40:b281:104:10:150:64:97:from];
	 TO_DN_SOME(0.00)[];
	 R_RATELIMIT(0.00)[to_ip_from(RLn3qdfh3r5akp7hsapswoh51s)];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_TRACE(0.00)[suse.com:+];
	 MX_GOOD(-0.01)[];
	 NEURAL_HAM_SHORT(-0.20)[-1.000];
	 SIGNED_PGP(-2.00)[];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+,1:+,2:~];
	 BAYES_HAM(-0.11)[66.01%];
	 ARC_NA(0.00)[];
	 R_DKIM_ALLOW(-0.20)[suse.com:s=susede1];
	 URIBL_BLOCKED(0.00)[suse.com:dkim,soleen.com:email];
	 FROM_HAS_DN(0.00)[];
	 DWL_DNSWL_MED(-2.00)[suse.com:dkim];
	 FREEMAIL_ENVRCPT(0.00)[gmail.com];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 TAGGED_RCPT(0.00)[];
	 MIME_GOOD(-0.20)[multipart/signed,text/plain];
	 NEURAL_HAM_LONG(-1.00)[-1.000];
	 RCVD_DKIM_ARC_DNSWL_HI(-1.00)[];
	 DKIM_SIGNED(0.00)[suse.com:s=susede1];
	 RCPT_COUNT_TWELVE(0.00)[44];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[suse.com:dkim];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 MID_RHS_NOT_FQDN(0.50)[];
	 FREEMAIL_CC(0.00)[linux-foundation.org,samsung.com,rosenzweig.io,lists.linux.dev,linux.intel.com,google.com,vger.kernel.org,lwn.net,redhat.com,infradead.org,cmpxchg.org,sntech.de,gmail.com,nvidia.com,8bytes.org,linaro.org,kvack.org,lists.infradead.org,bytedance.com,marcan.st,kernel.org,arm.com,sholland.org,amd.com,svenpeter.dev,csie.org,intel.com];
	 RCVD_TLS_ALL(0.00)[];
	 SUSPICIOUS_RECIPS(1.50)[];
	 RCVD_IN_DNSWL_HI(-0.50)[2a07:de40:b281:104:10:150:64:97:from]
X-Rspamd-Queue-Id: C4C9D21F4F
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240105_010223_042939_C11C2FB3 
X-CRM114-Status: UNSURE (   9.64  )
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
Content-Type: multipart/mixed; boundary="===============7715314889471403721=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============7715314889471403721==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="p5ofvbvnu5dmxsky"
Content-Disposition: inline


--p5ofvbvnu5dmxsky
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 04, 2024 at 02:12:26PM -0500, Pasha Tatashin <pasha.tatashin@soleen.com> wrote:
> Yes, we will have a difference between GFP_ACCOUNT and what
> NR_IOMMU_PAGES shows. GFP_ACCOUNT is set only where it makes sense to
> charge to user processes, i.e. IOMMU Page Tables, but there more IOMMU
> shared data that should not really be charged to a specific process.

I see. I'd suggest adding this explanation to commit 10/10 message
(perhaps with some ballpark numbers of pages). In order to have a
reference and understadning if someone decided to charge (and limit) all
in the future.

Thanks,
Michal

--p5ofvbvnu5dmxsky
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQpEWyjXuwGT2dDBqAGvrMr/1gcjgUCZZfFiAAKCRAGvrMr/1gc
jvXNAQC/s1r4INt0DOMzuMTQyF7r+E2pYEbj7Prf+TyU1lbn7QD/bVGBlsIv9kpI
Hr5Fq+4l1uV/keTc7yErY9BpbizGVQ0=
=aBiM
-----END PGP SIGNATURE-----

--p5ofvbvnu5dmxsky--


--===============7715314889471403721==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============7715314889471403721==--

