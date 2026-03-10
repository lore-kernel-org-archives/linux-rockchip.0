Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24055FD2D79
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Mar 2026 13:22:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9vmaIF4mPqC5/csB2Q6KI2k+MRmbDXIWN1SWuuvKP/U=; b=UaRtI3jD1nZAvf
	qr3FRB13XDb/ipeaHJ3Tx9rhw9oFMR2EJIDK3R/liMINYxhaTJVsPfW3svccj1lwBl93/zVuG31Ig
	XrGbpfvYVynVYK1ec03EYGujqwiZmqTCGJozIq3LISB+FcA1UN7Gv4MxcUfnjPOCWd9ndTF4BQBcK
	Lm0Ld+XeunFonROtZo7AsoccF2e64ORPZveR+L9p4KoRLjaN1ZzgsSiqkhq8jidScprNFYh0cV5cC
	bO+rXEqCCGfJ0/Mac+4eH9urQoqDceHIYCSWh3L14tGIQDYnTt1n7kKUYC2Kj2LyhCBcwwfyeCQuo
	0dPdYmjnT++Vv1tlOFNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzx2K-00000009aIl-0ufI;
	Tue, 10 Mar 2026 13:22:12 +0000
Received: from us-smtp-delivery-124.mimecast.com ([170.10.129.124])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vzx2G-00000009aH9-28tY
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Mar 2026 13:22:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1773148926;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=5/adDEbR57gUpYJcJq84OoDVxrrM3xMPFmZCRo0jKXM=;
	b=ADQQpd+bpcMvyiI6BuK6I/AtlFPVjRaT1jbvm8x0bcg2sn4Mv+l/q+wGsOaa7zGZavpvJL
	HOw6n0NTrJxN8BVrJlzy+3Oyq/AicE10gafpjzfnHFVMImjvlOy3qRSEO7jpexZVWETsUQ
	RoRPrXnJkd5ZbUZ0X+x9wM3CIJYSD9c=
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-211-dYg7_rAWNiaCJ0AV9GU8CQ-1; Tue, 10 Mar 2026 09:22:05 -0400
X-MC-Unique: dYg7_rAWNiaCJ0AV9GU8CQ-1
X-Mimecast-MFC-AGG-ID: dYg7_rAWNiaCJ0AV9GU8CQ_1773148925
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8cd81506677so1375227485a.1
        for <linux-rockchip@lists.infradead.org>; Tue, 10 Mar 2026 06:22:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773148925; x=1773753725;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5/adDEbR57gUpYJcJq84OoDVxrrM3xMPFmZCRo0jKXM=;
        b=MFgzVIcq5anh2F/yfUvNVe+drNzCfBoldN/oMTnMPXrg4rfzyikeKcP+bGppiDyo1q
         BHeH5W21TE6VJJsICkWfb1Y41nvOgvDUBafpHzXjhVB85sO1hClHxbonCFztwKyvz49h
         JaDW80umxLb7aaJnartoYB8buUZm1QBr9fDpjpiIYC2X+TTsev4UX4PIgZlHQ+IiANiY
         N3VsLdlHUXV06ZqAHglgWc6GoNNZSP2WMls3oodFsxHAQj2IjnoQRLk/mMphwRBQNKI9
         Vv/RxZWgPcnYueKi7bCJwKVOCGMWrVtq+nqIRQsGEi3Xgd1VIkFkrnCatCeNQtG0XkRZ
         9iJQ==
X-Forwarded-Encrypted: i=1; AJvYcCWV+MDZRjnNlsJPvvk75kLMcHjEsDgEDwd8iggToofCnOVVBu+panRbsYH6VRaC93oPsiPEv6cO2CvcOR6SWg==@lists.infradead.org
X-Gm-Message-State: AOJu0YyGsoARivSUbHXdffc2u1JbiET8gwa/btccBYVv/s44pYLBo8M/
	CmpVLcuULUgpOv058NWX8ZjoaI+Mk3vZWVCqQnenRqVxvID4DDONZ/gsDpVE/tkuAk71fMYdL5b
	7cZ+aDRRBvno8SJ2oRFyZg86VBDJkfBfyV63b84Cq8Uq5oINfWWLbqyAii6HCjAbbTp/tzMFCHg
	==
X-Gm-Gg: ATEYQzyYaaLXt0NSxMymoTupVDzEmq0iuRl0Q495THVLDo4MhufuDV4OhhZTzmtKsEa
	EZfbEx7cxwSSiEOpVkj2RShomATf0u/GNsRHg3yBlEkzDXD9BIEGYPxjlxApCfBmaGL8iyr8kcM
	T7s45iAMK6rShlnEuIaEPODtP7AQqpT/EYieAr9noL0Fr5MH5HsMKwR0mKWbFDxGdRUv5CLTtKh
	tQfi2Ih7FnH2zOHOG2MCdaIkCJmo1KFrOXEd38X1P4J1TJBAhXQnjunnPnsF/N1G45Ha6WKTS0H
	vaSMnymOWDoL9B3ik+XUm/l8pzvq0YZ/MQB41dAO/n3zs9FGjsZ0vawZ6A6lYpBKdyifavWWbO6
	SXrZ+ddCCftsmQGOsYZjUr+ykakCBZ+UAgLLnv20Gz8qSW3nQ2Rkw7WyV
X-Received: by 2002:a05:620a:3713:b0:8ca:1240:4991 with SMTP id af79cd13be357-8cd6d4f9469mr1830786285a.45.1773148924711;
        Tue, 10 Mar 2026 06:22:04 -0700 (PDT)
X-Received: by 2002:a05:620a:3713:b0:8ca:1240:4991 with SMTP id af79cd13be357-8cd6d4f9469mr1830766185a.45.1773148922638;
        Tue, 10 Mar 2026 06:22:02 -0700 (PDT)
Received: from redhat.com (c-73-183-52-120.hsd1.pa.comcast.net. [73.183.52.120])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-8cd8576db0esm474754485a.47.2026.03.10.06.21.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Mar 2026 06:22:01 -0700 (PDT)
Date: Tue, 10 Mar 2026 09:21:58 -0400
From: Brian Masney <bmasney@redhat.com>
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
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Daniel Lezcano <daniel.lezcano@kernel.org>,
	Thomas Gleixner <tglx@kernel.org>
Subject: Re: [PATCH 56/61] clk: Prefer IS_ERR_OR_NULL over manual NULL check
Message-ID: <abAa9vQg4BSxl1BJ@redhat.com>
References: <20260310-b4-is_err_or_null-v1-0-bd63b656022d@avm.de>
 <20260310-b4-is_err_or_null-v1-56-bd63b656022d@avm.de>
MIME-Version: 1.0
In-Reply-To: <20260310-b4-is_err_or_null-v1-56-bd63b656022d@avm.de>
User-Agent: Mutt/2.2.14 (2025-02-20)
X-Mimecast-Spam-Score: 0
X-Mimecast-MFC-PROC-ID: ei5a8yucawwXackf5URMfARCxd4MAa6_dheVP7cCaLU_1773148925
X-Mimecast-Originator: redhat.com
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260310_062208_742854_5830479A 
X-CRM114-Status: GOOD (  11.15  )
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

On Tue, Mar 10, 2026 at 12:49:22PM +0100, Philipp Hahn wrote:
> Prefer using IS_ERR_OR_NULL() over using IS_ERR() and a manual NULL
> check.
> 
> Semantich change: Previously the code only printed the warning on error,

Semantic ...

> but not when the pointer was NULL. Now the warning is printed in both
> cases!
> 
> Change found with coccinelle.
> 
> To: Michael Turquette <mturquette@baylibre.com>
> To: Stephen Boyd <sboyd@kernel.org>
> To: Daniel Lezcano <daniel.lezcano@kernel.org>
> To: Thomas Gleixner <tglx@kernel.org>
> Cc: linux-clk@vger.kernel.org
> Cc: linux-kernel@vger.kernel.org
> Signed-off-by: Philipp Hahn <phahn-oss@avm.de>

With the minor typo addressed:

Reviewed-by: Brian Masney <bmasney@redhat.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
