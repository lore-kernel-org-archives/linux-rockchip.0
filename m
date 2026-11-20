Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A93B2606A320
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 11:28:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=McvWyooJ;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=g/gSM+ss
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ud3Nz2N5ha/bTV3x8M3INm6E8fA41JrSD3EYlIAMTWA=; b=McvWyooJzRAkrc5dD0PjTcU8Te
	/N4m8uI04VNN+I/B80UKMCeJZQhQZx5w23HsPFBIV/JEekWdrUodnsXBm3Z3VxbUVGjizuRLEmqZs
	V6KTizS7/1Weh7x+xL0DqFNdMvAkZ3YlnfJuG+hok1YoLrNROOO1AD4B5O9qxpSb/th/TKCD9vuKZ
	v+6OVfWeD2aIuL3q1EcwgIBKk7VsKOWxgc7ZmRa1TkmcqTIgpSxgfWoy3+myo9HpPwjwAxy1en+cw
	kyOymQjcDQfREB6jcjQp8hIc8UdpINIzJYgOH6ZmQMQe9r7bMx61OitCsZZY7LjXIH6ejZEEKS7Bq
	fxfQ83sQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMmf-0000000En69-2QWr;
	Fri, 20 Nov 2026 11:28:01 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMmc-0000000En4u-1bln
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 11:27:59 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4a2d6d01ecbso4285565e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 03:27:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795174076; x=1795778876; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=KPsWJf8/QIknvbiif9zP+BPQ4xe2P2QvRm+jnUhFSik=;
        b=g/gSM+ssbDUL5Seebs6Z4RZDUytEf5NFzIyhUr77Z0youZ1bbWniRLVf+jvWxfWpi0
         g/J4sGe23sdJsz6Rw90ePNfxmuWG5DW5DagxRE9XYBqX5u+4UvkkluyPJCL5d5dn/s1x
         STsB7WZUZtgDT4iCVyIQEPMY9S+l0ScnLNzGE3Fb4cY63FrmFoWMcPluzyp5vAtF4wW/
         OT+aJQvUApPvzxmQGrM63E7BBiNx04BQom9Bqm7X5aSIbRZZdeIc0NX8MRfoT29qWPg2
         xpaJX+HEnL4R7XeEyOVf5MX3iUxUQeOFLlehjZ6/A1BG/OCCywS7WTNn5iWiTYCd1x+U
         C5eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795174076; x=1795778876;
        h=content-transfer-encoding:content-type:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=KPsWJf8/QIknvbiif9zP+BPQ4xe2P2QvRm+jnUhFSik=;
        b=HTd7eBoTnC6ugmmUxIyGkww/s8HburDzG+DyzI4+kG8QDo8UsPw3fc/FG8Opcbu8Zg
         anuMspuFXGNh/BZWdcRr09MGfK95xY1khuQRVhAQXnmt5XJjRN+GmpS0/bLNZg0dCyoB
         qTYb46eMPKITtRaXcQOg2Dx19l54GRryQr0WOKKW8jz9VptqA7/xGkKJDCZ6mJt3NlNi
         c3NsTqYi0/OT9vOHZzZdvXh7YiLU8MpbUZOKYyezAQ/LEJ33EngibWwFS4qhWjF630o3
         /E90AXvQh9zQIx8P6hSQkh0yJkDnNPXez5cObrJw4V1ScZG8Nh1Gid8ea3M5jiMPdxQ2
         QCdg==
X-Gm-Message-State: APuU4Z+9KnSYlnrROA3oy3B/T9wH+v36ubUB6gkVvPsOoK9Yhf6Mg/aY
	k4PtUqTbmv5PQ7fLkIxtLZ3mX/4nFXb79yqCOTH8FEjNB8DhS+yF45yE
X-Gm-Gg: AYBFou0KLLHSsstvGcEbH7d3MuOTrVHFlDM1Ej6yQbEMxiR+XllXM1M3y+h1st3RGlg
	VHerhQqieu4Qzzi9A0ogNmW6hwnRzeFDQygzuCaKdIOPylst4YoLfBYY4fWj1QjNbOklW+Z2Bo7
	e8iWlSA37x+LEdbk296NjxprYycjhzhNEbhixMMpBdpj+m/yTstfVFkWVD48Xw7NoUETCCAqS8w
	MqbPzBXvvBF7qBUD5+xm3nLnC6mGjYHeiZ7yfULVM8CeOmBhvej/f35035TDas7EhUDdP/kaZpC
	8I1Q7R6eULmDtPOiXmnSYp2IArZOQ+kDmXtdzi9s9AfNWZyiMjQV3e5CQmvBpXcAvzG9+jRn2+B
	NvJmmqkpOBc1xtNdvy2Uubl7URFXiKL66PV6yoyNaZVhvu/2ZrKIPfJz0QQMSgsQ6DG4dS/WtWl
	WiATtWJLpwdjSUTZ4BpaCesI1U3gTeDw2zjz+j0TFTUz1mSROOzYvS2eGOpSSvq3xorMDzcwkbL
	cuCokFVKU4pxUfPV5OcUo65xKTS3QwAxt+UwKNe57Dmc0ahZhyUTTEwXdFzaIP0g+QLoM66J0Pq
	hZIHEE3CInkE0bSCHAM0Hd29ZureX051TTibELRARKi+dg00kCp+5SlR1EWmFUV/fJVuDdHwL25
	D
X-Received: by 2002:a05:600c:4e16:b0:4bb:69b2:d3df with SMTP id 5b1f17b1804b1-4bb88813024mr63973915e9.25.1795174075876;
        Fri, 20 Nov 2026 03:27:55 -0800 (PST)
Received: from debian.tailb81abf.ts.net ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb853368d3sm112095135e9.1.2026.11.20.03.27.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 03:27:55 -0800 (PST)
From: MidG971 <midgy971@gmail.com>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: linux-rockchip@lists.infradead.org,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Simon Xue <xxm@rock-chips.com>,
	Heiko Stuebner <heiko@sntech.de>,
	dri-devel@lists.freedesktop.org
Subject: Re: RK3568 NPU: what triggers the CNA weight-fetch DMA after the executer engages? (mainline rocket vs vendor rknpu)
Date: Fri, 20 Nov 2026 12:27:54 +0100
Message-Id: <20261120112754.1400099-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260721230746.175786-1-midgy971@gmail.com>
References: <20260721230746.175786-1-midgy971@gmail.com>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_032758_470480_E56D845A 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-3.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=no autolearn_force=no
	version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Chaoyi, hi all,

A gentle follow-up on the thread above from July: no reply yet, and I
wanted to add the new evidence I gathered since, in case it sharpens
the question.

Since then I confirmed the engage/completion split explicitly:

  - Loading the vendor rknpu and running ONE vendor job ("priming"),
    then unloading it (no power cycle) and loading mainline rocket,
    makes rocket's executers engage for the first time (S_POINTER
    bit 16 = 0x1000e on all five units, matching the working vendor
    signature).  So the engage is one-time HW state established by a
    *working vendor job*, not by probe/init writes.
  - But completion still fails afterwards: even primed, rocket's job
    times out with wt_rd = 0 / dt_wr = 0 (vendor: 0x1900 / 0x6400).
  - An NIU reset pulse (CRU SOFTRST_CON2 bits 8..10) at resume CLEARS
    the primed state (reads drop to 0); nothing we write re-arms it.
    I also tested a kiln-style reset edge inside rockchip_pd_power()
    at PD power-on (RK3576 kiln 0002 analog) on v7.4-rc3, including a
    forced cold power cycle of the PMU island from userspace:
    negative -- the pulse does not re-arm the sequencer, and the PD
    never actually cold-cycles on this board.
  - Cache coherency ruled out (forced dma_sync of all BOs at submit;
    live DT has no dma-coherent). CBUF_DBG matches the vendor's engaged
    values pre/post job. The board now runs mainline v7.4-rc3 and the
    gate reproduces there unchanged.

So the refined question: after a vendor job has left the NPU in the
armed per-power-session state, which step of that job arms the CNA
weight-fetch sequencer - and is there any RK3568-visible precondition
(CBUF/DCOMP/weight-DMA enable, ordering vs. engage) I could replicate
in rocket so it computes without the vendor prime?

Happy to run any targeted capture on the board (RK3568, ROCK 3B).

Thanks again.
Kind regards,
Midgy

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
