Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C22B3C55182
	for <linux-rockchip@archiver.kernel.org>; Mon,  3 Aug 2026 15:45:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MZyp4cGOZHCB/h5pkV/5fFdwiwBcp9xT/fDIeZjZGJM=; b=O8FBitTz8Clu7r
	yPNboeRGsQ9Xq1TYqm4AevNWgM0jqK5QQh+AByjJleK7KhDZ+PQBoSw3JAExMVssOhk5wwSHLAmDH
	TJ/ZIK1+en4Ty0AUv1US06CpDYoKT+yNmo1WvL9dLTvgQ/5rsGKP4Fp3ibyVN3toFyLKArtXuDhod
	7Br2aiSBE6kLH28sOYH9l/BVcGojib13J7x9QB6AvbNrGECdqv8bs1HzRQWaY7STojFAhc0ivGuTb
	KYxz2uNXRQzo1KvFQ+jjRTDs2vZIznuhvV7GvWYa361weyJL1YLHm+2GvBPSacnuWk9pqoKdQAZtK
	kulDNO0uRVNml3QEIaww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wquqR-0000000HZ5r-0ZaN;
	Mon, 03 Aug 2026 15:44:51 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wquqO-0000000HZ4F-11A7
	for linux-rockchip@lists.infradead.org;
	Mon, 03 Aug 2026 15:44:49 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4954c08a7c8so3123875e9.3
        for <linux-rockchip@lists.infradead.org>; Mon, 03 Aug 2026 08:44:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785771886; x=1786376686; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=brpCBQVGbNrDVt7cTfK+56VzO28aZ7jJCm8ldakLLGM=;
        b=lHd+EQ5OO0i6M9mJvxSUV4mGGVZN0Vq8MojJgme+UL/Lcq52GlldqTAxM22vi4MitI
         uFY/BXZN+fg3zUzAa5TQSYqtsE2gLoluObUeBpMS28TPE+GNh7T0WhAFbzM4EMgQLuXF
         R+Fn8ICjKreTFciivpsZo52tlaB71cIYLt0eakv+MX52ImhlY5Thp3F1rj9n6bjOZyx7
         wxEpf3V0lvdmRAVfB8HWrHwwNwlCKB6Iez129wcybdA7KCLEm7Bkmiul3vtIB7dDM1T3
         z+rQx67h709ZlFjlUX9qXdtK1Q7HBpAK8tw/Nt/TtJHUMGx/HNBdmDKNzFyrxrMmUxAY
         R47g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785771886; x=1786376686;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=brpCBQVGbNrDVt7cTfK+56VzO28aZ7jJCm8ldakLLGM=;
        b=ENTvKvnaoaWWuboV1KcAocbq397xJjpyFJFMO4YWEOlBeMDUQhG2nNEn6wfGNG5lU8
         i4CqY7w+2XKaajM/Nx6/4OCyp5oAixjOjLzIZnp87zkBZtgeG+mJCo7okHXb2znDoaqj
         SK+XMiljJB+KJtKqIn0ZSADsyfI98AsFoLUsnsX+9NlUXKT6GlxuCSgvorD+FUXKSscs
         lNbh8wkeXCU4gXk9SZOJKspnY6Axpw50vCaZREu0b7q56g/kME1EqhGi/cb88LhAE/Wf
         R3DgwWCLRWpmybX3PenfQ94WSkEyDi2oZlY43ssZogfaIoEd8cccucD1p++st3Isx31F
         /Ohw==
X-Forwarded-Encrypted: i=1; AHgh+Rpx0Vaodr03wSYUQFh0lFGTFy38ZxLOgp20DirZjrMlZoUgAxPcB+BqEg1yfFd6nm+Ms21bsOj9TwR6pcTlsQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzE+Y38cGzxtUPv+GiyDPfWxws4uylQYIvJj+I1NfigOkA6yKgL
	6aOwuNStbIc5A3hCDwk36lzQW1EXFJUxyfznBOE1ilA+AGFawxSoNbAE
X-Gm-Gg: AR+sD11GDfdygGZ1f/NKeMJtFhnWli7O3pUi8iDHNkaqFcYgKbsN/plZ5VcjpzzOcXg
	TtN8QLX5281vMBKz3COhA14UfR+7ggTZGU82CqMWD/SrdwI1fk/sgISIhvnsz3Ave1nLHpty9pu
	9O7eboS4Q9mibbA6++FUlxIS+H12JKExkpKz9b9mi+sWKUs14niJPTrG4CYyisqcYmA5E7uahb+
	HrpsrHdIqs9f9+WiDzg53KOM7ZaxjUTau3M8tfXnqVZ0Lwtf4fPsTt1Esidjkq5PoKWlML2GW6e
	vAHNNXDEvYxSaCNR+l6kIJzsSF0ZZdS45eRWWgbmc3uKdC9Axip34OIUdFzAKqWlDvA48x8nGge
	e8aQv9sPwQDmKT7KnItSY+YB/NZceS8pYb4LlqdKDf4rBTL8wj01Vvxl7s4XE/KGReNHI3LFVNM
	V8ekmK6p3aibC+EYrZWYX9O83i3drhE8G6YMCOy73qmd8RNRApcq4rrHYk602e8x1wUNeiArZxz
	DYwUCtQD+H22QWV8pI0AIKkIq+OULfQnQ0TpuYDl3jxUDOXcYrmL4ZSItEfmnuuToJn
X-Received: by 2002:a05:600c:1c11:b0:495:7561:a9cc with SMTP id 5b1f17b1804b1-4980c6aa664mr130391355e9.4.1785771885581;
        Mon, 03 Aug 2026 08:44:45 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B85F300A5CC0DBDABDC4661.dsl.pool.telekom.hu. [2001:4c4e:1b85:f300:a5cc:dbd:abdc:4661])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49807b9441csm233512265e9.4.2026.08.03.08.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Aug 2026 08:44:45 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Jiaxing Hu <gahing@gahingwoo.com>
Cc: tomeu@tomeuvizoso.net,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulfh@kernel.org,
	p.zabel@pengutronix.de,
	ogabbay@kernel.org,
	alchark@gmail.com,
	chaoyi.chen@rock-chips.com,
	krzk@kernel.org,
	will@kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [RFC PATCH v4 4/6] accel/rocket: add RK3576 NPU (RKNN) support
Date: Mon,  3 Aug 2026 17:44:23 +0200
Message-ID: <20260803154423.12175-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260803094125.3285895-5-gahing@gahingwoo.com>
References: <20260803094125.3285895-1-gahing@gahingwoo.com> <20260803094125.3285895-5-gahing@gahingwoo.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_084448_307884_546B8365 
X-CRM114-Status: GOOD (  17.52  )
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

Hi Jiaxing,

Thanks for the re-spin, and thanks for asking about the tag rather than
carrying it over. I went to re-test on RK3588 and stopped at the diff,
because patch 4/6 is not the fixes-only patch the cover describes: it
carries your debugging tree with it.

Diffing v3 4/6 against v4 4/6, rocket_job.c goes from +55 to +306 lines,
and 202 of those added lines are the ping-pong experiment. It brings in
five module parameters that were not in v3:

  state_init  (rocket_core.c)  - default 1, i.e. ON
  sptr_alt    (rocket_job.c)
  snap        (rocket_job.c)
  pp_clear    (rocket_job.c)
  sptr_dbg    (rocket_job.c)

plus rocket_snap_take() with its ioremap() of a hardcoded
ROCKET_SNAP_DPU_PHYS and two kmalloc_array() buffers that are never
freed, and rocket_sptr_patch_regcmd() doing phys_to_virt() on the
IOMMU-mapped regcmd and a hand-rolled dma_sync_sg_for_device(). The
comment above the block says it itself:

  /*
   * EXPERIMENT (not for upstream), 2026-08-01, following Tomeu's
   * suggestion that the block is stuck on ping-pong bank 0.

So I think the trim simply did not catch this hunk.

The part that matters for the tag you asked me about:

  rocket_core_state_init() is called unconditionally from
  rocket_device_runtime_resume(), not behind core->soc->poll_completion
  or any RK3576 check, and rocket_state_init defaults to 1.

So on RK3588 every runtime resume now writes PC BASE_ADDRESS = 0x1 and
the CNA S_POINTER 0 / DATA_SIZE1 / S_POINTER 1 / DATA_SIZE1 / S_POINTER
0x1e sequence, i.e. the RK3576 vendor init replayed on RK3588 silicon.
That is a third change to my board that the cover does not list, and it
is the one I would have to characterise before I could put my name on
anything. "RK3588 never reaches either" is true of the two fixes you
name, but not of this patch as it stands.

The two fixes themselves look right to me, and both are correctly gated:

  * rocket_job_fini() cancelling poll_timer and poll_work under
    soc->poll_completion - RK3588 has poll_completion = false, so it
    cannot regress here.

  * poll_work_seq / poll_seq in rocket_poll_work_fn() - same gate, and
    the stale-work window it closes is real.

So: send a v5 with 4/6 trimmed back to the fixes, and I will re-run the
RK3588 bench and give you the Tested-by on that. It is a mechanical
respin, no new debugging needed from your side.

Two smaller things while I am in there, for whenever the experiment code
does come out anyway:

  * rocket_state_init is not static, so it lands in the global namespace.
  * The two snap buffers and the ioremap are never released, so with
    snap=1 that leaks per module load.

On the real problem: I do not have an RK3576 to poke at, but the shape
you describe - one configuration byte exact forever, a second one
computing nothing, the pointer reading back 1 no matter what we write,
and the 20 KB snapshot differing only in OPERATION_ENABLE - reads to me
less like a register we are failing to write and more like something the
block never re-fetches. The regcmd is DMA'd, so the interesting question
might be whether the second configuration's regcmd is actually being
read by the block at all on the second submit, rather than whether the
bank flipped. If you can get at it, an IOMMU fault trace or a read-side
counter over the regcmd buffer across the two submits would separate
"fetched and ignored" from "never fetched". If it is never fetched, the
bank is a red herring and the ping-pong work has been ruling out the
wrong half of the path.

Happy to run anything you want tried on RK3588 as a control.

Thanks,
Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
