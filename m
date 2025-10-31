Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57003CCF9FE
	for <linux-rockchip@archiver.kernel.org>; Fri, 31 Oct 2025 10:49:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BgCAvuUDM0mjNFW31c9FYNWWleJtDQ8qaNjn/CTcv9s=; b=BXg4Z6ZkCYEInD
	ehqu3RCHG3TAeWsAnCc2BQ0g7GP7C8XPXyA7/Ty/Cv460nKwkAU0QnMnFShP6TTGJwo/QZ+JNdpMX
	Qrlbjuwmh+f9kchUtr5IfQ9a6wmD9OvNGUwek9Ysg+Wyvv/NiI6bfQb230kEOIwXHUCNgEGgpJ655
	t8H7wBlEXGoWnmyH/9mxtHY36H9QcDNmXUHHyn4h+9ElpJS4qgMHfyfrfCWu/Xk8zfNvluei1B1CJ
	luosV4h8EJxJn1L+yOyF7VwwmRS6t6fYYCnDGs/b+81YIwrm7rYvfpw/52ElcSp36r3BxPCIkZnQk
	lCbQRi0o2WNgp10SJwaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEmgh-00000005xb2-3bmq;
	Fri, 31 Oct 2025 10:48:55 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vEmge-00000005xYF-2Ehl
	for linux-rockchip@lists.infradead.org;
	Fri, 31 Oct 2025 10:48:54 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-47109187c32so10875695e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 31 Oct 2025 03:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1761907730; x=1762512530; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NgLCYfpgrKXyb0uNcHRkHZoucWvjEkXvo5QPwaDt/k0=;
        b=SI8B0czy+yAbKvi0PKzV+ugS2MKOFsD2sWhjfHI0fuBQKkJRDu5qMF2CZxAtUPoJ53
         9nrivpkwuPqfZ26MU7mA6VjCbNBAgP9mpRiWvAxxGUdp78AWZuJG8EPc+6+mvILfA3sZ
         jy1T23BTv91vPJNxkUX4KOm/pP+podpQhLEzUNxFzQ4lVoLUAgdHgfv9wXfYEBLkYLFI
         gTzl8Xau0iYkZJsivjuRy4bendG40a4gljrECZZ8udYRfG9mrNBHIpv0K9LLtpfBjSah
         dZ39GOXHURtd+DoF2ZvrC86PYag12iu9C8aUSpUS3pcsyZiSHkwkDbXGK2m4NydBMok5
         vhHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761907730; x=1762512530;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NgLCYfpgrKXyb0uNcHRkHZoucWvjEkXvo5QPwaDt/k0=;
        b=HFUGbVDP5QKWSGJemaeG7dqzHd4BYU5cZxjSxodyNUSSF56Zq08AFhl62ans3s+O5o
         8n6GpgB6BAxAgeXTMN7oYs3DpOIFzt9NSPLI7P+CrSm2b2Rv4jiB2X6X2PT/yEeIQHy2
         brZwmscVob0b3vFuifl0Pe5oMUX7B9kkctoA5mPDeq4wBWyKx23nrrj4OOiU3lY7Bp6A
         y7PfpfRF5Hl3Diqv4KxL1/o5/R1jkWEc5tkC8d0nqzyKyie1cMWTiNCvAtUu7dzR6CIf
         kgOBf227NmW1SN+Sz5rcWcy/yh8BMd0tl4YoJrnRAqpW3TdmxYqknZsfaalcXnJEtPUz
         H2eA==
X-Forwarded-Encrypted: i=1; AJvYcCXKyk/r9NGopU2Qt4J2zf6c3ainXZIog76xHjzLPYJm/g+5uuhKtLkv9JYLf+LqtS4wqe5GEiu5c2BWwtJZVw==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzfgi52Z8tsLcpOLJgnFSU2sF6ldif04DRqaJeKe2bIgLEtcFMG
	2OWs+GTcDYJ3p1+plu3Fx30+3M1WkcE+c9h/Tp6l4p/WaM8f/llz+5remm6+8v5CsS0=
X-Gm-Gg: ASbGncsA3qtTLD/qxam4LVTxsFgM5+OQzFVsDiphEO06BiP01Aup1WK9850tVrMNpYW
	fGp/oREYOJw1xRkLvZ4Pwj1YGgmYdSNBtfujQ/yJFcdJ6eBwtasDSXrmgcIXpiqIu9p3SNwI3av
	tODazZTDL6juckZ4pjpA55Lk6qgdYLBhrdws4ymKVYoyV8vduIravfph4Eb4PgQr7s3vgKTiAHJ
	izeBEee8S9OVDtEicdQyMzhYYrQvBxlnjZ+CSzcBF5wnoAL7Qr9SVZvTnHOWh38dt7lTgrkS9dG
	WX4/BpAUsVUbTal1deA3bT2S/H23O74pmofX/WxjcviXR6RDwQkFkwRQnBb5ADvEpLbJkuQ/65I
	62wtBPi5H9cgvQ6ocNCBY6uEKSP+aFsC0UyFWXf+uQKRUfVR9crRgy1OZ5CmQVMTFdFTlr6Q4uh
	5dyJ+/BqBmAgGQIUqnTnQmzlsgx35elf9wBJM=
X-Google-Smtp-Source: AGHT+IFP987BsDATwy71oQrVgMqL+tPUdk6zXS4vwh+ZuiP9GnPeneDUsTtppOuOWWpaBC8dvT1MnQ==
X-Received: by 2002:a05:600c:3e06:b0:475:dc58:39e5 with SMTP id 5b1f17b1804b1-4773089b541mr26933225e9.27.1761907729944;
        Fri, 31 Oct 2025 03:48:49 -0700 (PDT)
Received: from localhost.localdomain ([2a00:6d43:105:c401:e307:1a37:2e76:ce91])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429c102dfd2sm2961635f8f.0.2025.10.31.03.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Oct 2025 03:48:49 -0700 (PDT)
From: Marco Crivellari <marco.crivellari@suse.com>
To: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Cc: Tejun Heo <tj@kernel.org>,
	Lai Jiangshan <jiangshanlai@gmail.com>,
	Frederic Weisbecker <frederic@kernel.org>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	Marco Crivellari <marco.crivellari@suse.com>,
	Michal Hocko <mhocko@suse.com>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>
Subject: [PATCH 0/2] rename system_wq and system_unbound_wq
Date: Fri, 31 Oct 2025 11:48:44 +0100
Message-ID: <20251031104846.119503-1-marco.crivellari@suse.com>
X-Mailer: git-send-email 2.51.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251031_034852_611630_5740DF8F 
X-CRM114-Status: GOOD (  14.13  )
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

Hi,

=== Current situation: problems ===

Let's consider a nohz_full system with isolated CPUs: wq_unbound_cpumask is
set to the housekeeping CPUs, for !WQ_UNBOUND the local CPU is selected.

This leads to different scenarios if a work item is scheduled on an
isolated CPU where "delay" value is 0 or greater then 0:
        schedule_delayed_work(, 0);

This will be handled by __queue_work() that will queue the work item on the
current local (isolated) CPU, while:

        schedule_delayed_work(, 1);

Will move the timer on an housekeeping CPU, and schedule the work there.

Currently if a user enqueue a work item using schedule_delayed_work() the
used wq is "system_wq" (per-cpu wq) while queue_delayed_work() use
WORK_CPU_UNBOUND (used when a cpu is not specified). The same applies to
schedule_work() that is using system_wq and queue_work(), that makes use
again of WORK_CPU_UNBOUND.

This lack of consistency cannot be addressed without refactoring the API.

=== Recent changes to the WQ API ===

The following, address the recent changes in the Workqueue API:

- commit 128ea9f6ccfb ("workqueue: Add system_percpu_wq and system_dfl_wq")
- commit 930c2ea566af ("workqueue: Add new WQ_PERCPU flag")

The old workqueues will be removed in a future release cycle.

=== Introduced Changes by this series ===

1) [P 1-2]  Replace uses of system_wq and system_unbound_wq

    system_wq is a per-CPU workqueue, but his name is not clear.
    system_unbound_wq is to be used when locality is not required.

    Because of that, system_wq has been replaced with system_percpu_wq, and
    system_unbound_wq has been replaced with system_dfl_wq.

	The new wq(s) keep the same old behavior.


Thanks!


Marco Crivellari (2):
  drm/rockchip: replace use of system_unbound_wq with system_dfl_wq
  drm/rockchip: replace use of system_wq with system_percpu_wq

 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 4 ++--
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c    | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
