Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A95C4E63FFF
	for <linux-rockchip@archiver.kernel.org>; Sat,  4 Apr 2026 22:42:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2x4YoPDPEvCPbHf1v7g84AZ1ej6BhyIDLFjc5OI/VB8=; b=Tw0Amf+QT5jbYE
	jBvDr9Lz44PCZ3mcucDdI0oEKRUZ0+USW+IKcFl1OZKwnyC7XKJ2WrCtBKRc05Tsnu1dhJnCBGY3z
	oXk4mXdyuYAaUIK0R2SC04MIQsiVsuR5UpG7L4t101idTVoB+fWBeZjvlkHIXeChy8J0gWZigHsWH
	r0bxZmpZP1h/g2mY5x/i6THAETZT+xEMAT1L+tefDKWq23EH/yfGGKELEUfEV8CKE/1NqfA5i77lu
	LMwe14BpvfPE3NdPjefgnzmbkITvl6gKp0vReqKG/zTo/l3amy88+b1Pjrw0NVAFIJjgCa4+HDU6a
	oXZ0J2Npp1kXkaiujSiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w99hH-00000003nUq-1f9p;
	Sat, 04 Apr 2026 22:42:31 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w99hE-00000003nU7-0N0V
	for linux-rockchip@lists.infradead.org;
	Sat, 04 Apr 2026 22:42:29 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-35d971fb6f1so2541311a91.0
        for <linux-rockchip@lists.infradead.org>; Sat, 04 Apr 2026 15:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=orb-net.20251104.gappssmtp.com; s=20251104; t=1775342546; x=1775947346; darn=lists.infradead.org;
        h=references:in-reply-to:content-disposition:mime-version:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=7ZcFkwtelNvbHrpmOVful4dZyoIYvTSSe4AGBuE0+FU=;
        b=wpFTq+P1jBlWp8RLJkHXUrB6woqGNvL5dmmbwFr72BOhOJQTqQx1w/sZfnxr4KLFr2
         u7GoSl6cxC84XzfpHNdz/Dx0ujhx6rj+vZDcfDg/pZ5w2bnKJBPjGlTWHo8YhdlnFVma
         ryPt8SOBxIi4JFwO1vDbR+QA7MT1xlNouCfdRJy95EcrwIdpi0JH+Bg0mJkmUt46LD4f
         IZM34AvcHWemZ/Hnu3vvagXEw3Yx2VN6O+BrjQdbbbEsznaX2C+LeYmavqD9WjfnRjmK
         9TksY/q1N3u12DCpdUEHdTnf1HKzz3t3WGTonJ6PIHhDGq/vvvVS4sXb1pkvPUuTRyxu
         hWwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1775342546; x=1775947346;
        h=references:in-reply-to:content-disposition:mime-version:message-id
         :subject:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc:subject
         :date:message-id:reply-to;
        bh=7ZcFkwtelNvbHrpmOVful4dZyoIYvTSSe4AGBuE0+FU=;
        b=VksLgkM4m8IKkv2TUp+QIzEdcqaPaxugaOl33r2IR0aCefJmxIszFrWOHjB0lxMQM7
         0WMw2C1E1mEkS2hm3t+Aq2kYuoi/RTY66QLy+GkyWbMTFS3DuooEu4LeO5md87jhKQPv
         YGamYJ6bAjDja8bzf50qWkBv+JLquwMUjPiDqFQs5jZRrGHfQnzwBlABh84Dh3Xh3yRU
         5StKK98ZvU6Q8Veb5Natc1eNdDJYaQVzLmO3iqxSlzHEB2mwiLqrzEdeZ+MmpDTbXhMq
         UQBU6M3T1sEHCYA2DhTMsDCfaeBdKU3pz702vBde4NC5WiTem9TH/2jTQKKuUraRGove
         yJpw==
X-Forwarded-Encrypted: i=1; AJvYcCXiXLetgN1xa3s3ms/NfcaNAGJg8RXaHcMu2hNw+4QGi6XrhrHkgGEZdYAVANI0gQLQ4Lx+ndidsFL1Ad75VQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzEwqUML1IV40b3RiLOQnmqkCJqOV6v3xgGl0xqMmRxGYXZmvG9
	E89MxeXCPyet5F1FE4ZRdKbF69iETCjhu+Hcl60VRPRVOmehUNB+AEZreYoXc2iPN4U=
X-Gm-Gg: AeBDievUyAT+BsusB8O9xFBhTVPAMlTIDETjY9SPodc+0lEi4vjpFaWzE81H9y6/zJy
	67x6XpyRdOvANpygasaxPItr+87nHCpd4IUEd8Az5TE7PLOZk4lprRYUAfpxtV8YOkbWx44x8D2
	L3eghQerPod1tiXmDTN+EFugXytUyhsrI4vxC5dggOuURz1Iczf8k31Xf/wOjbYfL9WSixuwjHP
	J7gr+CmwxKQeMlibiH977Saxvvs2L0iJKnBdCaDVs3CecsbtkxkpndWf7Bmy/Ap7Y7BjWg0SvBk
	ysikuFDqAl4vZbIvklVoegbHw6e3Ubdh/3vlO0r1WQLRKSdJwi9lzsc9k85ISIBMv90P3rxJPPO
	qEBkfLNExMCTjrQwF90zDo2uBvMgyWHUM/4wCRmOA49SVw2/Yxhh7BtLZrC3UinTkM6Km55317I
	TDmaemwkCEvdb3Vi9xaH6ogdmZuunkBilBHtTV8EfcGWsBsy+FsKMVQ+G+1oMMn2O5cfryEexw
X-Received: by 2002:a17:90b:2d10:b0:35d:a9bb:1e33 with SMTP id 98e67ed59e1d1-35de685ecf3mr7280003a91.11.1775342546534;
        Sat, 04 Apr 2026 15:42:26 -0700 (PDT)
Received: from claude-dev ([50.125.94.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35dd367c142sm9424108a91.11.2026.04.04.15.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 04 Apr 2026 15:42:26 -0700 (PDT)
Date: Sat, 4 Apr 2026 22:42:25 +0000
From: Daniel Bozeman <daniel@orb.net>
To: shawn.lin@rock-chips.com, finley.xiao@rock-chips.com, jonas@kwiboo.se,
	ulf.hansson@linaro.org, heiko@sntech.de, linux-pm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] pmdomain/rockchip: skip QoS operations for idle-only
 domains
Message-ID: <adGT0TZb1BASubCL@claude-dev>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f1b9a97a-f1f9-0757-5dc7-33960318be61@rock-chips.com>
References: <20260331180223.1682283-1-daniel@orb.net>
 <5c8732a3-6cc9-5d02-f56b-fc7ba29c7ce0@rock-chips.com>
 <fbf16b5a-1565-39c9-0d92-33a7a577212f@rock-chips.com>
 <f1b9a97a-f1f9-0757-5dc7-33960318be61@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260404_154228_384139_5B44E85D 
X-CRM114-Status: UNSURE (   7.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Further testing with NO kernel patches and fw_devlink=strict
reveals both crashes happening simultaneously on different
CPUs:

  CPU1 (genpd_power_off_work_fn):
  pc : regmap_mmio_read32le+0x8/0x20
  Workqueue: pm genpd_power_off_work_fn

  CPU2 (deferred_probe_work_func):
  pc : clk_gate_endisable+0xa8/0x130
  Workqueue: events_unbound deferred_probe_work_func

  Kernel panic - not syncing: Asynchronous SError Interrupt

This shows there are perhaps two independent issues:

1. genpd tries to power off idle-only domains and crashes
   in rockchip_pmu_set_idle_request (the regmap read at
   PMU offset 0x1120 faults)

2. GPIO4 probes while PD_RKVENC is not registered (power
   domain controller tore down due to PD_GPU EPROBE_DEFER)
   and crashes in clk_gate_endisable

Both crashes occur in the unpatched kernel. Previously we
only observed crash #2 because it appeared first in serial
output, but maybe they're racing on different CPUs?

I also tested removing all pm_qos from all idle-only
domains (PD_VO, PD_RKVENC, PD_VPU). Crash #1 still
occurs. Because it is in rockchip_pmu_set_idle_request,
not in QoS save/restore?

fw_devlink=strict does not prevent either crash.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
