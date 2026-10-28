Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DCB5606A31D
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Oct 2026 00:56:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Sl8dhJ4V;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=wUPUrnCv
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=9eEEvMP+O18bkdG+PyBnsZfQNc8dadNDhx16NsPURMA=; b=Sl8dhJ4V1BqilJ4migOUHVWCli
	+XIv0E2gOa1yEx1Fwjy6Qqh0hB7ZsC8SVKG0sgiai8rH47gPsKEbHSILwbVPB74F2LT4iyVmUNTQq
	8Zj5KvlDDen/5dX6VvDtosZHg0vo1Ri1Lc34iWDOa5Sm5LntC2wQCZCiYiIJtKoEvpG50aOwfj0fa
	eYscTo2Pb0jME+mbx/3Z+TogsCDrWC0tOjT3PWrOK8rCCQOut42G8bpPN4wwSjY4sma9NaHi9Icvh
	JjxF4VS30Xaz3eGrmcvLV0+H4X73KSG81yEczO++zFapUICx79e6hbY4eYXEZCocM8QtAzF6Hb6aQ
	n48DWfqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLrxQ-00000006076-0rUq;
	Wed, 28 Oct 2026 00:56:00 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLrxK-0000000603J-2MLx
	for linux-rockchip@lists.infradead.org;
	Wed, 28 Oct 2026 00:55:56 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-4a7992e2f7dso3436805e9.3
        for <linux-rockchip@lists.infradead.org>; Tue, 27 Oct 2026 17:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793148952; x=1793753752; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=PAsTokA7Hgc1ku+L2Oft5fOaAKv9i/M7eJ7+DNq9b9k=;
        b=wUPUrnCvpVVgDdZe5OWbj+dFyLGFdso00mVcZAyl+pPmdNz9biKLz11PVExNUulIBq
         hw1bFQs+OczwRFl4J0gVm/OgcpMfmVYGP5LhQdlyYay3E5q5UML4QAN7C7CmgR7spcOt
         0zO2fwSXxEHjHGuFr8u6d8FP9dvsOJD1XBf47mUSxDjNGfeyrUi61uZ6LYlD0RQT+sZ+
         FJ85CbHvkhW2iKKl8DuRkYj2GnZk8RujOYj9rO5kRDy4jbPbIa/pvQoo6NmW6CIjjZr6
         yW+HvTqIu1ZCbzieZh5wlhLYSUe5ZFkBR7/e92teu+i97IVajC2IdFQ5LGPm06mvq+KX
         yJwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793148952; x=1793753752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=PAsTokA7Hgc1ku+L2Oft5fOaAKv9i/M7eJ7+DNq9b9k=;
        b=W2FkE2MWz3eY9diA9hpYy/9xsB+Q7LgFp0i0ZMt/2wSbwcfjtFeWFOmIpEK3PxswUU
         UinozO0bBQFBzK28RlSSQrQ5YHTAotLv763ieQq0mh1hyfFOvr2Zj9ozNvive9gAXnEt
         p1TVM1b4G6UgR4BlrlIagQZxx9G/H0DWrK3UypP57apJlDvKvDOL8YpXdfWyoXrQwZsZ
         QCymmzYrgKrL983Vw06Jre83z/0gvEO7OJvUzcOg4QP9pUQfs7JFHpdIkV33z/QrVEkA
         k/wP2CLqyHtG2hnkdrLEQhq8awfoE/ZxslUjS5ValiKG81oyahCAz6eZhVcLK4jYOVqe
         DDSw==
X-Forwarded-Encrypted: i=1; AKwUvBwja+ezz52ME+8zuCGG3KTcE518x42IttSuRfsPxSA1JM1oEmQtoduAl3Cz5DEZT6urcOr6rP6pHdmZQ6o/dg==@lists.infradead.org
X-Gm-Message-State: AFq9FYK9/k/By2f59UWXa3YjuFlhgTHizNyEHIyGVm2CUGIXvLGovPOJ
	QMDsJ6n231T9xAD/IKUaNjr9W8hGg+Z6mJMJk52jJuB6t0zchzJvYbkZ
X-Gm-Gg: AYBFou1qGeY31vMaqTjQcP3dFKx7c8o4NPxLUU22LrU78y1c/ySipXIdQrankvPTjp0
	FM87CPLuxlug5RrwDveIrMahn9lQwrEs79Mmp0t74SGv1IRNnekS9SJAA2ZIDAXIGfZVpim/BpO
	Q+d/AjmTVsl1F1zkQ909a1cDEYUYUc9ilS4d0yT4nYKH54zTnV6DyS7vPDb5gBn9aA74P/F9LI1
	0zKvLt/1Y1fWDGFRhPQyDozlnK3kn+/wWByAwrxfKBjO6EEVz8EKH2Iw1QttBl+D98haXM6Y+F8
	shZTOLLcMvU/BbPJohv6pUZucxu+WUy8uavFM0kfZqi7YHw0+fe9wCP9bn/Yvjj0+C2JLFy/Ff6
	QvbkSPtWLYgyG2gZjO0udVhPlttV3+m1cYm6cR6XhdRr4UZwkuqzJe6VSECE1KjldZHBGyDHMZ6
	WcSeBw2m71hGtljSiYx7wEWDYKFnhhh7/vfHehI4GuLM6FWxZPwdG90xNSv14nBEzYG1+sfrcUc
	y1PhzeNCpRvuNbr9V3hWf9piY6aHPBLG78YKnZJ0kGNdl6yYAvpRBrGGJtXhcyeldsEA7DpTcx9
	LcAhJPRJXRITIzQyoTajKDQQotOg/hM89iAGLZ/isSQaCfqUL8PH2HNzkMteaQwSmcCYCUEew2H
	ZrTgCoI0coeOE48lwj4mOwFanV1JmtPE8M4x9gHo19cO4kg==
X-Received: by 2002:a05:600c:3b1e:b0:4a2:10f9:37ce with SMTP id 5b1f17b1804b1-4a9665870e9mr14042925e9.15.1793148951455;
        Tue, 27 Oct 2026 17:55:51 -0700 (PDT)
Received: from tachyon.internal (2.155.41.158.dyn.user.ono.com. [2.155.41.158])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48e3ecd8dcfsm25111999f8f.50.2026.10.27.17.55.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2026 17:55:50 -0700 (PDT)
From: =?UTF-8?q?Enrique=20Hern=C3=A1ndez=20Bello?= <ehbello@gmail.com>
To: iav@iav.lv
Cc: shawn.lin@rock-chips.com,
	lpieralisi@kernel.org,
	kwilczynski@kernel.org,
	mani@kernel.org,
	bhelgaas@google.com,
	robh@kernel.org,
	heiko@sntech.de,
	dlemoal@kernel.org,
	linux-pci@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	manivannan.sadhasivam@oss.qualcomm.com
Subject: Re: [PATCH v2] PCI: rockchip: Skip the Tpvperl wait when power is already valid
Date: Wed, 28 Oct 2026 00:55:48 +0000
Message-ID: <20261028005548.2399155-1-ehbello@gmail.com>
X-Mailer: git-send-email 2.56.0
In-Reply-To: <20261016-h64-pcie-resume-tpvperl@iav.lv>
References: <20260911211559.207990-1-ehbello@gmail.com> <179196286749.38040.5597453767131590054.b4-reply@b4> <20261016-h64-pcie-resume-tpvperl@iav.lv>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261027_175554_645936_D7A32A3B 
X-CRM114-Status: GOOD (  26.03  )
X-Spam-Score: -2.1 (--)
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

On Thu, 16 Oct 2026 01:21 +0300, Igor Velkov wrote:
> A data point from a Kobol Helios64 (RK3399, JMB585 on pcie0, ep-gpios as in
> the mainline DTS):
> - Enumeration at boot works with and without this patch.

Thank you -- this is the most useful thing anyone could have sent. It says
that on a second RK3399 board with the same endpoint chip the patch causes
no boot regression, and that your board does not have the failure I am
chasing. Both halves matter: the first is the thing I could not test, and
the second says the failure is not simply "RK3399 plus JMB585".

The boards differ in ways that could matter here: ROCK Pi 4 has
vpcie3v3-supply = <&vcc3v3_pcie>, which is regulator-always-on, and no 12V
supply; Helios64 drives pcie_power from a GPIO and feeds vpcie12v from
vcc12v_dcin. On your board the endpoint's rails may genuinely come up with
the probe rather than seconds earlier, which would make the sleep do what it
was written to do.

That distinction now has measurements behind it. I instrumented the driver
with two module parameters, one sleeping before the gpiod acquisition and
one in place of the existing msleep, plus a ktime delta across the two
gpiod_set_value() calls, so the PERST# pulse the endpoint sees can be set
and read on one kernel. On ROCK Pi 4C the pulse is 1 ms without the sleep
and 108 ms with it, and what decides enumeration is the pulse width alone:
delaying the assertion by 200 ms changes nothing, while 100 ms inside the
assertion fails every time (0 of 5). Since vcc3v3_pcie here is
regulator-always-on, Tpvperl is met in the failing configurations too, so it
cannot be the discriminator -- the wait being redundant is only why it is
safe to skip.

If your board genuinely powers the slot at probe, you would expect no
pulse-width sensitivity at all, which is consistent with it enumerating
either way. If you ever want to check that directly, the two-knob patch is
throwaway but small, and I am happy to send it off-list.

> - Resume from s2idle fails in rockchip_pcie_resume_noirq. On plain v7.3-rc7
>   with the mainline DTB, 13 cycles pass and the 14th fails [...]
>   On an Armbian kernel with this patch [...] the first resume ends in a
>   synchronous external abort in rockchip_pcie_rd_conf from pci_power_up.

Two things, one agreeing with you and one asking for more.

Agreeing: the failure happens on plain v7.3-rc7 without the patch, so it is
a pre-existing resume bug and not something this patch introduces. Your
conclusion that it does not depend on the Tpvperl wait is supported by your
own first measurement.

Asking: the with-patch run is on an Armbian kernel and the without-patch run
is on mainline v7.3-rc7, so the comparison is between two kernels, not
between two values of one condition. "First resume aborts" versus "13 cycles
pass" is a big enough difference that I do not want to attribute it to
either kernel without a same-kernel A/B. If you are willing, the cheapest
version is one kernel with the patch applied and the resume hunk neutered,
i.e. in rockchip_pcie_resume_noirq() replace

	rockchip->supplies_pre_enabled = rockchip_pcie_supplies_enabled(rockchip);

with

	rockchip->supplies_pre_enabled = false;

so the full wait is always performed on resume and only the probe path
differs. If your first resume then survives, the resume hunk is the problem
and I will drop it: the failure this patch is about is at probe, and the
resume re-evaluation came out of an automated review of v1 rather than out
of any measurement of mine. I would rather ship the narrow change that was
measured.

> - Plain v7.3-rc7 also hit an asynchronous SError during the bus scan at probe
>   in 1 of 4 boots.

That one I recognise. On ROCK Pi 4 a config read that gets no usable
completion comes back as an external abort rather than as all-ones, which is
why a non-responding endpoint takes the machine down instead of just failing
enumeration. Yours is during the bus scan on an unpatched kernel, so it
looks like the same root-port behaviour showing up independently of this
patch. If you have the log with the faulting address I would be interested,
but it belongs in its own thread rather than this one.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
