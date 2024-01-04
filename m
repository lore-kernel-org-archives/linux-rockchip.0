Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AA8CC47074
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 17:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:
	Reply-To:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date
	:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hoqfLhT5feMrlfOSymdsfMwWi+rR3jcUxawi/M5f3JI=; b=0t/32rRghSoZo+rYDxfK/8vqQa
	kGVFuGWflyo2B1L2rpFA1hkTl80SnZrPh+5uk49wh3KKAj0utld5E/lbUJY6txdlwIyycvI68QC33
	71tqQ08CZRWgFjag/c5yooV3cecIOnt/ysb+FC0vkfX7yNYmX8+1x/1kfM0Sw6v4MIakz9qsmLMfs
	dTc2R132jrRLe6PX1qZC0Vi5zhpFd2+2KmTTohqXfcMNfh9F0GsG90ahyJiTmeiGsTDGqQFpRo3j1
	3+dwsaDs6tQGblTS5wHvS+aKeLfQPnztLV8G+Tk2myq0rB2FRqwdxmz4U63RgiI/DEKHuZ/BaJgvK
	LjesgOAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLR8u-00ElLC-20;
	Thu, 04 Jan 2024 17:04:28 +0000
Received: from smtp-out2.suse.de ([2a07:de40:b251:101:10:150:64:2])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLR8r-00ElJs-0v
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jan 2024 17:04:27 +0000
Received: from imap1.dmz-prg2.suse.org (imap1.dmz-prg2.suse.org [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id A22F01F821;
	Thu,  4 Jan 2024 17:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1704387859; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ipK/226LRJDTM3FDOd68E2idK7q9JRqvu+4u/g3wH50=;
	b=K3Rgv7W7sta/rNDtR0eZIZmZNKZUs0KubO9/2GP3vpEH7iAUILQfJvyKtKMy6kd/voBYGU
	BgK5F8KgWvEAUx4gmMDTSX+gF09v9SZxutGU/aR8dqTee7V8PS/jkZ9U/flaNILNZC0EoL
	V5CaUtevifWroaAiZir/Abo2a+5JkNk=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.com; s=susede1;
	t=1704387857; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
	 mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=ipK/226LRJDTM3FDOd68E2idK7q9JRqvu+4u/g3wH50=;
	b=t7RtALx4OLAwYM1NSnnPIxj9u/urq88xoeMObBg2yBueCWbTplQCDwM9XjKaKTlCZNXWSb
	8UvcDmIESZxi2Pw4v1s1yqzQRAaW2t4k3Dss65JDw5QjtwUxXXp9gRl3D1T+jt99x7U8C4
	0fdzJJvtaZzf2609O9HT7+10cFgFQc8=
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 726B213722;
	Thu,  4 Jan 2024 17:04:17 +0000 (UTC)
Received: from dovecot-director2.suse.de ([10.150.64.162])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id MsmyGxHllmWDaAAAD6G6ig
	(envelope-from <mkoutny@suse.com>); Thu, 04 Jan 2024 17:04:17 +0000
Date: Thu, 4 Jan 2024 18:04:16 +0100
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
Message-ID: <eng4vwaci5hwlicszgcld6uny55vll2bfs3vp2yjbjf3exhamg@zf6yc2uhax7w>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
 <eqkpplwwyeqqd356ka3g6isaoboe62zrii77krsb7zwzmvdusr@5i3lzfhpt2xe>
 <CA+CK2bBE1bQuqZy3cbWiv8V3vJ8YNJZRayp6Wv-j2_9i37XT4g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+CK2bBE1bQuqZy3cbWiv8V3vJ8YNJZRayp6Wv-j2_9i37XT4g@mail.gmail.com>
Authentication-Results: smtp-out2.suse.de;
	none
X-Spamd-Result: default: False [-1.43 / 50.00];
	 ARC_NA(0.00)[];
	 RCVD_VIA_SMTP_AUTH(0.00)[];
	 URIBL_BLOCKED(0.00)[soleen.com:email];
	 FROM_HAS_DN(0.00)[];
	 TO_DN_SOME(0.00)[];
	 FREEMAIL_ENVRCPT(0.00)[gmail.com];
	 TO_MATCH_ENVRCPT_ALL(0.00)[];
	 TAGGED_RCPT(0.00)[];
	 MIME_GOOD(-0.20)[multipart/signed,text/plain];
	 NEURAL_HAM_LONG(-1.00)[-1.000];
	 BAYES_HAM(-0.03)[55.23%];
	 RCVD_COUNT_THREE(0.00)[3];
	 DKIM_SIGNED(0.00)[suse.com:s=susede1];
	 NEURAL_HAM_SHORT(-0.20)[-1.000];
	 RCPT_COUNT_TWELVE(0.00)[44];
	 DBL_BLOCKED_OPENRESOLVER(0.00)[soleen.com:email];
	 SIGNED_PGP(-2.00)[];
	 FUZZY_BLOCKED(0.00)[rspamd.com];
	 FROM_EQ_ENVFROM(0.00)[];
	 MIME_TRACE(0.00)[0:+,1:+,2:~];
	 MID_RHS_NOT_FQDN(0.50)[];
	 FREEMAIL_CC(0.00)[linux-foundation.org,samsung.com,rosenzweig.io,lists.linux.dev,linux.intel.com,google.com,vger.kernel.org,lwn.net,redhat.com,infradead.org,cmpxchg.org,sntech.de,gmail.com,nvidia.com,8bytes.org,linaro.org,kvack.org,lists.infradead.org,bytedance.com,marcan.st,kernel.org,arm.com,sholland.org,amd.com,svenpeter.dev,csie.org,intel.com];
	 RCVD_TLS_ALL(0.00)[];
	 SUSPICIOUS_RECIPS(1.50)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_090425_488983_B1BC6E5C 
X-CRM114-Status: GOOD (  13.17  )
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
Content-Type: multipart/mixed; boundary="===============8480472987065126515=="
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


--===============8480472987065126515==
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="22fntkpk3vilmqk6"
Content-Disposition: inline


--22fntkpk3vilmqk6
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 04, 2024 at 11:29:43AM -0500, Pasha Tatashin <pasha.tatashin@soleen.com> wrote:
> Thank you for taking a look at this. The two patches [1] [2] which add
> GFP_KERNEL_ACCOUNT were sent separate from this series at request of
> reviewers:

Ah, I didn't catch that.

Though, I mean the patch 02/10 calls iommu_alloc_pages() with GFP_KERNEL
(and not a passed gfp from iommu_map).
Then patch 09/10 accounts all iommu_alloc_pages() under NR_IOMMU_PAGES.

I think there is a difference between what's shown NR_IOMMU_PAGES and
what will have __GFP_ACCOUNT because of that.

I.e. is it the intention that this difference is not subject to
limiting?

(Note: I'm not familiar with iommu code and moreover I'm only looking at
the two patch sets, not the complete code applied. So you may correct my
reasoning.)


Thanks,
Michal

--22fntkpk3vilmqk6
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYKAB0WIQQpEWyjXuwGT2dDBqAGvrMr/1gcjgUCZZblDgAKCRAGvrMr/1gc
jiwfAQCSCpFQriEKwkEB8UUxOA9LFBhZfPl+l6lvTbTvghQXmQEAh2ukMdYInk9Z
KYebGDty+dxGKeNxW6aKFLuxo9UKywg=
=e+tC
-----END PGP SIGNATURE-----

--22fntkpk3vilmqk6--


--===============8480472987065126515==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip

--===============8480472987065126515==--

