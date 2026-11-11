Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419EE606A31C
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 00:21:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=xpD+BYpv;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=V2bX+ane
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=IORQUj03D1+y6o9aJcEU4aL36wSqOupo9G57KpHnhPc=; b=xpD+BYpvslnxuTgZKNdX0om+uI
	OOyxGWcmPV+773983vM7mnKxd/Nv5aSF/SxjD2G4C0j/0DCZWb3Ib5QLIFXDAAx/cW8vzPfBlULAT
	zeW2U3yt/KSHWrWzLNbvabDvdAu5llRVERzH1mYAEc/MG2N+XFu8oiMg1XvGWSzMZbYk64aVvGaS3
	tZINju262+EH/84SG3sMkbDQnXvR0tRzK0UnU2OL0k7JMKuU9iLnHBAO1lfmvXkZPAqgIu4QNSrdj
	fTiUatr5T6KGQhXeWXesswprVGgZ06/jqSmHjipZd5YUvxym6NB5bsqWcNKon9tnAfyL7QeYWuRDb
	/PdBXL6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQw5u-00000005IJh-2XKW;
	Wed, 11 Nov 2026 00:21:42 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQw5t-00000005IJT-0Z2a;
	Wed, 11 Nov 2026 00:21:41 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id 50C9461260;
	Wed, 11 Nov 2026 00:21:40 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2A41D1F0089F;
	Wed, 11 Nov 2026 00:21:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794356500;
	bh=wpugLEOmux8XIHzkYeWGMnmgyYWlZogTNBXRBW+fGZs=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=V2bX+aneV9iylHDg0xizcQdV0Pm8T2ORDoEfFdjqUFqTHt00pRGA2U/08FhUGKsPz
	 opuR6vt96BCzYm4a4B5vFxvNFtE+l6Rg1yQFz4Njc5maqaFga/C4hkerk+BP97F3cJ
	 ahIBU3myWSv61AtJim73NC+ptHM6xq6R8c+KG+ZkKP175wOlioKchPAGuidebOwlVO
	 whrQpycq1R33gYRqrVRTb8ziPI7lDoT0e0lSrTpp4gnfDnkfmpAsVNzafbTQwOaSZE
	 jlZPY14d6MJw+ZU6jLb3CgUI5HjIBy/beV+pxzHsxwmsPyNzYP6enxnkQ3AgO5T187
	 3V9Q0TFCLc02w==
From: Thomas Gleixner <tglx@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>, Daniel Lezcano
 <daniel.lezcano@oss.qualcomm.com>
Cc: rafael@kernel.org, peterz@infradead.org, Heiko Stuebner
 <heiko@sntech.de>, "moderated list:ARM/Rockchip SoC support"
 <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC
 support" <linux-rockchip@lists.infradead.org>
Subject: Re: [PATCH 0/2] powercap: idle_inject: Create threads on demand
In-Reply-To: <20261105105805.a6d1b38585290ab73597aa6b@linux-foundation.org>
References: <cover.1793660202.git.daniel.lezcano@oss.qualcomm.com>
 <493b853d-fe45-4058-914b-a9ee684701db@oss.qualcomm.com>
 <20261105105805.a6d1b38585290ab73597aa6b@linux-foundation.org>
Date: Wed, 11 Nov 2026 01:21:36 +0100
Message-ID: <87bj7wtdyn.ffs@fw13>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On Thu, Nov 05 2026 at 10:58, Andrew Morton wrote:
> On Thu, 5 Nov 2026 19:46:13 +0100 Daniel Lezcano <daniel.lezcano@oss.qualcomm.com> wrote:
>
>> On 11/3/26 00:09, Daniel Lezcano wrote:
>> > Idle injection currently registers per-CPU kernel threads during early
>> > initialization, including on CPUs for which no idle injection device
>> > will be registered.
>> > 
>> > This series makes thread creation follow the lifetime and CPU mask of
>> > each idle injection device.
>> > 
>> > The first patch adds an optional CPU mask to smpboot thread descriptors.
>> > The mask restricts thread creation, CPU hotplug handling and teardown,
>> > while preserving the existing behavior for descriptors without a mask.
>> > 
>> > The second patch uses this support to register idle injection threads
>> > when a device registers and destroy them when it unregisters. CPU
>> > ownership claims, registration rollback and thread teardown are
>> > serialized to prevent overlapping registrations from sharing threads.
>> > 
>> > Validation includes W=1 builds of the affected objects, whitespace
>> > checks and static review of the teardown locking paths. Concurrent
>> > registration and CPU hotplug runtime testing remains outstanding.
>> > 
>> > The series was tested on Rockchip RK3588.
>> 
>> One thing not specified in this cover is which tree these changes have 
>> to go through ?
>
> I'd volunteer Rafael's, after peterz/tglx review.
>
> Please!  Removing one kernel thread per cpu makes the world a better
> place.

I'll look at it in the next days with brain awake...

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
