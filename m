Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16440C88E40
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 13:36:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LfclwFqacU33NbpslFukZShMjXbTgPwjMqkXvjgdnWQ=; b=JHchIfMqDfKWzh
	dHzSHo7NTe+EScCdf0SxArDbhX8S1YhLp3PR3krECu+WUdOfBKOQqm6lxrxFji66Ad+Qr9mh1M4Sd
	aOaxcB/4g/WFbYxC9Qo8lQmVyFehjgA8m5U2lbroi5f4LRlkzqj6Ijfa6W+RD5B/3E6/YRkk1VM3i
	sDmVBLEFA9jy2dSsmaptk/H81SLyXWruwpxEu2w0Lj/UmcHclk45ip5h2X1xRx1z407VE/pDir9P/
	gzGXE66bz5uT9SEZR9VqQULZkcyv9A6Q5SgG6+KXKydnIygE1/v6qM4EoR7crX0cx88EOsBz2R72z
	JiDpBVbvZbBVsjEllMCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ex3-0000000EVSm-2mUw;
	Thu, 10 Sep 2026 13:36:29 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ex2-0000000EVQ8-1Qpi
	for linux-rockchip@bombadil.infradead.org;
	Thu, 10 Sep 2026 13:36:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=SdfNZLHoTwaSRGbzkk1xRxTbtBIxs9oY1WLjA5lMVdw=; b=EIPpuOPoQmnMCdWt8X8/rQio9y
	gBeeVIy+qswqi+I+UL+GcPrDDIAjVFfItxneSuuqXfWjbS2itSXM5bSPtKUBfu/cEFj38VSAq6Z3/
	unwgLGAHBOT0En6ZVALdQWFEU1HpbdhLGyUW88K3vOl03thkc6O2125lsX7EOybiL8Kgbs5JK9Ztw
	m7Oafmiwdrtv/xho4O4+q2EoBoIJLL8sGdAyIRDzNQB7e2FkLXKEbEEvXe0m5XO8C8ev0vWpGS7pj
	KsSooqiTmbg0v5XaRvpokwvWS3ZsfNKyMAmxMqmxHIlg6uKxdoP3q6lk8MtReaPJ1IdPDH0/dwffc
	GVWEaSiw==;
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x4ewz-00000002Xo2-1Tj0
	for linux-rockchip@lists.infradead.org;
	Thu, 10 Sep 2026 13:36:27 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49b93204449so4250885e9.3
        for <linux-rockchip@lists.infradead.org>; Thu, 10 Sep 2026 06:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789047384; x=1789652184; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=SdfNZLHoTwaSRGbzkk1xRxTbtBIxs9oY1WLjA5lMVdw=;
        b=oNmRPG3MnXHCeOxYDpwGahoEw96XJwRqKec2cCl4567ZEg6PQ44t5/CYltyXktQZF2
         jG1WV9Uc589yA4bQ63Po2jSR6RJS72b5FCF+qJox7tUO8f/JW9cx12WF64S/5V6pfHTe
         iyMItgEJEG04LhSTWQbw6HbJs5sxOidnKGU5JiToHPcroi3JvUHvYYf+KeGOR8KYT0jO
         F/TNbUaKb7EalleUWz1JG1+5+NOxAufBR5m7rCPLtWzqZ0iNs/GT7Ug/rsJz7YKloQUS
         M+AM/u0VnAb4rWvyRiwLNhsFcfnJLfS9yqlyFhbMHFD6Y7NOtQYbUg0fbXT4TyJTHvHg
         Euew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789047384; x=1789652184;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=SdfNZLHoTwaSRGbzkk1xRxTbtBIxs9oY1WLjA5lMVdw=;
        b=kfHHtLITfe5e/HkmWZeUIrOkBuGCqSq6jofX6Zt41gajqATdfHYHHVTnwIGh+sxHY+
         VXyRvMzCny2Qp/sH2GicuyIB54A2NHOy/IVUP03RztdfYCOdvOLIKY2O5hltXSKWuiQ1
         nIqChNPdwnsVnij3LzQT9AwsCs/r1xViWrGRzXGOcufeSRdH0N/UTq/H6Zo9x06RfZ1z
         1R7Nvh1iBDehTwUoT/Y2OkbgoMASKqWMnBPeo+nfNR0XWoh79zmmycxaxtSIpeETrxH3
         gh0/Pyo03m1XI1iljmZni5phmyGzV2sQqA74hO4i0IlKqjA6ZDPUC74+vsxsKYbiR8OZ
         da/g==
X-Forwarded-Encrypted: i=1; AKwUvBypwPxibipXdo+2frTLzXSBS2xmJOMh1db4mvzdn5AI4zEz6jWe/aV9AY3uCj6xD2ImfmlOV/IwlKOOvw9wIw==@lists.infradead.org
X-Gm-Message-State: AFuF++npAa+q50kAJjNK5In4eNN3LFhJutnbcLog+eNc49VErydjht1d
	YfDIdLX7d3kPOVN7WRoIhLralweRMCpcuW7lWcm7r/jhv0ckZFwinWVJ
X-Gm-Gg: AYBFou3Nw500RIsGn3azszge+SzfIqak7g3HaqKjOI+E/cVdkzsJnb8BEPJ+A8NPj9V
	qu6ahFdE6GbJ6vU2l0z6C7TI1d4k2GzCz7ACT6Sd219DfQKE7ohquAqrRkVBJzZpIFud/2RD12u
	VPWumQZJnnmjqBjbSI/EOykOnTTuHnJe9uuUF9dIkzi158uPX/JQompcUswOL4mGADuPCdD78mn
	bFFweWrtLjpdc90CVRk6ir7dmd0mQN7tEyD+aAOx7liPcAVFEh4+aVUmtHpNuXOQN72oC8GGBJN
	gtzMU9K1KWbqhICob48AX39ms6bXKGV+FaT2G1cNumDlI8iMzR3xQVi1zQbETvlbKokRYHAPmZh
	m788Id5hBpFuyQt9qKNWnot8R3NtE9eAh1P22KFnCprA9SWmgP1kKREjaKFUahGsI9gQTyFrh7S
	IjtG45sZjQyUwhQiXJOz/ZOZRr8lRUfqnJGRSjdykwaxlHc74qb9zSfeng2Eu9M6FyLDRvsJP7H
	SBfuYq5SDAp2z0d5J8+OuTSbX7K0w7W8IYdGGz38swFICFdk87YOYDbRQKnurp3XDhhGoF7ERSd
	+sth3v8VUUg5398=
X-Received: by 2002:a05:600c:530d:b0:49c:e363:c66e with SMTP id 5b1f17b1804b1-49d01dce86fmr310949945e9.1.1789047383351;
        Thu, 10 Sep 2026 06:36:23 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B914600506D8644FC6130D5.dsl.pool.telekom.hu. [2001:4c4e:1b91:4600:506d:8644:fc61:30d5])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49d26be3e0asm77721735e9.1.2026.09.10.06.36.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2026 06:36:22 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Subject: Re: [PATCH v3] drm/rockchip: vop2: Scale the AXI clock to the bandwidth the mode needs
Date: Thu, 10 Sep 2026 15:36:02 +0200
Message-ID: <20260910133603.8993-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260910132156.07D6B1F000FF@smtp.kernel.org>
References: <20260910132156.07D6B1F000FF@smtp.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_143625_650215_DC688EEB 
X-CRM114-Status: GOOD (  11.00  )
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
Cc: Igor Paunovic <royalnet026@gmail.com>, Simona Vetter <simona@ffwll.ch>, Owen <support@armdesigner.com>, linux-kernel@vger.kernel.org, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Maxime Ripard <mripard@kernel.org>, Chaoyi Chen <chaoyi.chen@rock-chips.com>, Alexey Charkov <alchark@flipper.net>, linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org, Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 9/10/26 15:21, sashiko-bot@kernel.org wrote:
> [Severity: High]
> Does calling drm_crtc_commit_wait() here cause a kernel warning or potential
> deadlock?
>
> According to the DRM Subsystem Details, drm_atomic_helper_commit_tail()
> and its variants execute in atomic context where sleeping is forbidden.

Both findings rest on that premise, and it does not hold.  The commit
tail runs in process context: drm_atomic_helper_commit() calls
commit_tail() on the caller's stack for a blocking commit and queues it
on a workqueue for a nonblocking one.  commit_tail() then calls
drm_atomic_helper_wait_for_fences() and
drm_atomic_helper_wait_for_dependencies() - three loops of
drm_crtc_commit_wait(), the very function flagged here - immediately
before the ->atomic_commit_tail hook.  The default hooks block in
drm_atomic_helper_wait_for_vblanks(), and the CRTC atomic_enable and
atomic_disable helpers run inside them.

The wait itself is what the core asks for.  From the drm_private_obj
documentation in drm_atomic.h: "Drivers should store (and get a
reference to) the &drm_crtc_commit structure in our private state in
&drm_mode_config_helper_funcs.atomic_commit_setup, and then wait for
that commit to complete as the first step of
&drm_mode_config_helper_funcs.atomic_commit_tail, similar to
drm_atomic_helper_wait_for_dependencies()."  vc4_atomic_commit_tail()
does exactly that, followed by clk_set_min_rate(), which takes the same
clk prepare_lock as clk_set_rate().  The wait is on the previous
commits' drm_crtc_commit, never on the current one, so it cannot wait
on itself.

The pre-existing note answers itself: vop2_crtc_atomic_disable() is
called from that same commit tail, and the @atomic_commit_tail
documentation says "When disabling a CRTC this hook _must_ stall for
the commit to complete."  It also calls clk_set_parent() and
clk_disable_unprepare() there, unchanged.

I suspect the two senses of "atomic" got conflated: an atomic commit is
an all-or-nothing modeset update, not in_atomic() context.  There is no
might_sleep() or context restriction on this path.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
