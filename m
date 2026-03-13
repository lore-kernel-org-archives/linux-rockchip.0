Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4392C107BCD9
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 Mar 2026 19:22:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EkY3Q7FNOO0fa9LrYFs4MOpT/i+EFk1fYJ4q2PdeOc0=; b=rVOdXxiRXMw73T
	CDHQAQIe6xJY6dJB37/QydYXdoEqk/avQw2ct7pLFcXWnxAvX2Pos/V3FtWdppuBfiNS4at3uAxq5
	vSPDiPAthwM64B4SRa0POejdxhkmEpsTUGONEM7QbF+PA9i3TpSCEjj88sUToySKqMm4GSxgHZMtx
	Mq0OWsT0nG7RS5ROkBD8VoqHwOwgr5AxBWScKC7rYXqPHZOUEQ4/gHG+QfPmY+3xQKkI1pd8oeqQ+
	ChBjOlJ5CepETw/l9DSNXvd5EW9UsVC+zRbgbOEoc0MiyWbyyDiYinsz7zOTG4whyhu0AMUbaAgGr
	D5ZjDaAhQCgzUhQQe0Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w185i-000000012ux-2Vqg;
	Fri, 13 Mar 2026 19:22:34 +0000
Received: from smtp-out1.suse.de ([195.135.223.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w185d-000000012rK-1Gbj
	for linux-rockchip@lists.infradead.org;
	Fri, 13 Mar 2026 19:22:31 +0000
Received: from imap1.dmz-prg2.suse.org (unknown [10.150.64.97])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-out1.suse.de (Postfix) with ESMTPS id B208C4D943;
	Fri, 13 Mar 2026 19:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1773429744;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lEZDbFbdaiqtR0DORmYiMySif6us6CTI89GNtF8koIU=;
	b=cwr9QvSbf3addifFtJFaEE3S5jwqDpZlb749Rs1kTiqHHQe0wIw+TMnTma/8mfA3QiWv+t
	IZuKpLsIb+k3xwyZAXuL8F5GTiyGUJh1olDjZfpDExV1+UvdVwgZIIojOm6APRysjO8/lt
	9WDXlxlJVmMpUXoO3id4LXjiv7t5UI0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1773429744;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lEZDbFbdaiqtR0DORmYiMySif6us6CTI89GNtF8koIU=;
	b=K+U59XI2u6gqS+yANGWtG/Pii/V0SpIQQ7wMg6BtOp5KKFcWyvgFtoDkwX90d0NOWdybeR
	Ua+tdtixGZm/opAA==
Authentication-Results: smtp-out1.suse.de;
	none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.cz; s=susede2_rsa;
	t=1773429744;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lEZDbFbdaiqtR0DORmYiMySif6us6CTI89GNtF8koIU=;
	b=cwr9QvSbf3addifFtJFaEE3S5jwqDpZlb749Rs1kTiqHHQe0wIw+TMnTma/8mfA3QiWv+t
	IZuKpLsIb+k3xwyZAXuL8F5GTiyGUJh1olDjZfpDExV1+UvdVwgZIIojOm6APRysjO8/lt
	9WDXlxlJVmMpUXoO3id4LXjiv7t5UI0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.cz;
	s=susede2_ed25519; t=1773429744;
	h=from:from:reply-to:reply-to:date:date:message-id:message-id:to:to:
	 cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=lEZDbFbdaiqtR0DORmYiMySif6us6CTI89GNtF8koIU=;
	b=K+U59XI2u6gqS+yANGWtG/Pii/V0SpIQQ7wMg6BtOp5KKFcWyvgFtoDkwX90d0NOWdybeR
	Ua+tdtixGZm/opAA==
Received: from imap1.dmz-prg2.suse.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by imap1.dmz-prg2.suse.org (Postfix) with ESMTPS id 6F14A406AC;
	Fri, 13 Mar 2026 19:22:24 +0000 (UTC)
Received: from dovecot-director2.suse.de ([2a07:de40:b281:106:10:150:64:167])
	by imap1.dmz-prg2.suse.org with ESMTPSA
	id 6cTyGvBjtGnfZAAAD6G6ig
	(envelope-from <dsterba@suse.cz>); Fri, 13 Mar 2026 19:22:24 +0000
Date: Fri, 13 Mar 2026 20:22:15 +0100
From: David Sterba <dsterba@suse.cz>
To: Philipp Hahn <phahn-oss@avm.de>
Cc: amd-gfx@lists.freedesktop.org, apparmor@lists.ubuntu.com,
	bpf@vger.kernel.org, ceph-devel@vger.kernel.org, cocci@inria.fr,
	dm-devel@lists.linux.dev, dri-devel@lists.freedesktop.org,
	gfs2@lists.linux.dev, intel-gfx@lists.freedesktop.org,
	intel-wired-lan@lists.osuosl.org, iommu@lists.linux.dev,
	kvm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-block@vger.kernel.org, linux-bluetooth@vger.kernel.org,
	linux-btrfs@vger.kernel.org, linux-cifs@vger.kernel.org,
	linux-clk@vger.kernel.org, linux-erofs@lists.ozlabs.org,
	linux-ext4@vger.kernel.org, linux-fsdevel@vger.kernel.org,
	linux-gpio@vger.kernel.org, linux-hyperv@vger.kernel.org,
	linux-input@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-leds@vger.kernel.org, linux-media@vger.kernel.org,
	linux-mips@vger.kernel.org, linux-mm@kvack.org,
	linux-modules@vger.kernel.org, linux-mtd@lists.infradead.org,
	linux-nfs@vger.kernel.org, linux-omap@vger.kernel.org,
	linux-phy@lists.infradead.org, linux-pm@vger.kernel.org,
	linux-rockchip@lists.infradead.org, linux-s390@vger.kernel.org,
	linux-scsi@vger.kernel.org, linux-sctp@vger.kernel.org,
	linux-security-module@vger.kernel.org, linux-sh@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-trace-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	ntfs3@lists.linux.dev, samba-technical@lists.samba.org,
	sched-ext@lists.linux.dev, target-devel@vger.kernel.org,
	tipc-discussion@lists.sourceforge.net, v9fs@lists.linux.dev,
	Chris Mason <clm@fb.com>, David Sterba <dsterba@suse.com>
Subject: Re: [PATCH 02/61] btrfs: Prefer IS_ERR_OR_NULL over manual NULL check
Message-ID: <20260313192215.GH5735@twin.jikos.cz>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-2-bd63b656022d@avm.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20260310-b4-is_err_or_null-v1-2-bd63b656022d@avm.de>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Spamd-Result: default: False [-2.50 / 50.00];
	BAYES_HAM(-3.00)[99.99%];
	SUSPICIOUS_RECIPS(1.50)[];
	NEURAL_HAM_LONG(-1.00)[-1.000];
	HAS_REPLYTO(0.30)[dsterba@suse.cz];
	NEURAL_HAM_SHORT(-0.20)[-1.000];
	MIME_GOOD(-0.10)[text/plain];
	MIME_TRACE(0.00)[0:+];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	R_RATELIMIT(0.00)[to_ip_from(RLk9qejt5hbtemdgupcccnrijf)];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_ALL(0.00)[];
	DKIM_SIGNED(0.00)[suse.cz:s=susede2_rsa,suse.cz:s=susede2_ed25519];
	RCPT_COUNT_GT_50(0.00)[56];
	FROM_EQ_ENVFROM(0.00)[];
	FROM_HAS_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:replyto,imap1.dmz-prg2.suse.org:helo];
	REPLYTO_ADDR_EQ_FROM(0.00)[];
	RCVD_COUNT_TWO(0.00)[2];
	TO_MATCH_ENVRCPT_SOME(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_122229_544677_9DC43D53 
X-CRM114-Status: GOOD (  10.14  )
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
Reply-To: dsterba@suse.cz
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Tue, Mar 10, 2026 at 12:48:28PM +0100, Philipp Hahn wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
> 
> IS_ERR_OR_NULL() already uses likely(!ptr) internally. checkpatch does
> not like nesting it:
> > WARNING: nested (un)?likely() calls, IS_ERR_OR_NULL already uses
> > unlikely() internally
> Remove the explicit use of likely().
> 
> Change generated with coccinelle.
> 
> To: Chris Mason <clm@fb.com>
> To: David Sterba <dsterba@suse.com>
> Cc: linux-btrfs@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>

Added to for-next, we seem to be using IS_ERR_OR_NULL() already in a
few other places so this is makes sense for consistency. Thanks.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
