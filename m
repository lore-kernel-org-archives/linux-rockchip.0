Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 524DC606A220
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Nov 2026 17:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=0qBZvUHO;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=IsLbuBBM
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:References
	:In-Reply-To:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=e8i4TGj9+ph9cRbWY+ctiEopsSowW8SfnPgFMj5Dp+A=; b=0qBZvUHOF2WaHUflf5NTti/v7W
	KWhPK/HZobuCmJ9sRJwtGKJo862wtI84A71iby+Q0XerFKri21vS7aS0A184M9oCKZS4C2MNoeYMB
	9lG06pJmIOKlcopNWJUdOJNErsjzSRevz3nJqJyyTet4ZuMzZt3aiIqQGc3ytGOvSC00/Ysu4xfzP
	90+W6TzKRpwrMmp8oyC3kR0TFlqDyijppbHY+Hxqlq9NolgzzwQtXW7NqROiNoTaHkDMVfqSAiioW
	HUePqk7MylP0LN/q3DQV0PmvTElVnfbHmrorWDt52pp9s4mVYUH3XdfZGmOSSazloaEyC4cAfw52M
	CxotonnQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRYn5-0000000AmhF-2wtY;
	Thu, 12 Nov 2026 17:40:51 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRYmi-0000000Ambs-11MD;
	Thu, 12 Nov 2026 17:40:28 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id ACF796237D;
	Thu, 12 Nov 2026 17:40:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8EE2D1F000C4;
	Thu, 12 Nov 2026 17:40:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1794505227;
	bh=trto5Eq27UU3dCClttunJSNZcea48dqgIyqJACy3Yh4=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date;
	b=IsLbuBBMQPojG5WcDrbDLgdx+I/5Jj+Edv7SQlc6tZdHJDYJcQvQlva+jFn4XfHu0
	 IKIPgSbW2VDNjKwhTCbFptAyGUp5q9po5UWfF/pI9Af4AXO7FTFx8gM2Bih/o0aqFv
	 yrYEh3PPMchsU1Wy9l/5rXkgegLYgeGybZ+yhaEfEEdM1POu+YLGqf+yOvj8KKLv9U
	 i4LUtDlD4PnfxHlCt83TlFxwj3tcdSZf5jyJfaLtFFagT+n/TB7jSyW0Pi960DXTPJ
	 ShrnPawduQrwb5ANFcBgEmU3yFLnNX2hMzzWB+QqW4wOyBf/z7MLMSXPhqvg8gcvd6
	 N3OkfMeBn+dzg==
From: Thomas Gleixner <tglx@kernel.org>
To: Daniel Lezcano <daniel.lezcano@oss.qualcomm.com>,
 akpm@linux-foundation.org, rafael@kernel.org, peterz@infradead.org
Cc: Heiko Stuebner <heiko@sntech.de>, "moderated list:ARM/Rockchip SoC
 support" <linux-arm-kernel@lists.infradead.org>, "open list:ARM/Rockchip SoC
 support" <linux-rockchip@lists.infradead.org>, "open list:CPU HOTPLUG"
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 1/2] smpboot: Allow restricting per-CPU threads to a CPU
 mask
In-Reply-To: <af37c4e7811a86adafb2064e7cf4aa4f5090ab4b.1793660202.git.daniel.lezcano@oss.qualcomm.com>
References: <cover.1793660202.git.daniel.lezcano@oss.qualcomm.com>
 <af37c4e7811a86adafb2064e7cf4aa4f5090ab4b.1793660202.git.daniel.lezcano@oss.qualcomm.com>
Date: Thu, 12 Nov 2026 18:40:23 +0100
Message-ID: <87zeverlrs.ffs@fw13>
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

On Tue, Nov 03 2026 at 00:09, Daniel Lezcano wrote:
> smpboot_register_percpu_thread() creates a thread for every online CPU
> and registers the descriptor for subsequent CPU hotplug operations.
> There is currently no way to restrict these threads to a subset of
> CPUs, even when the user only needs work performed on that subset.
>
> For example, an idle injection device targets a specific CPU mask.
> Creating threads outside that mask consumes resources unnecessarily.
> Supporting multiple such devices also requires each descriptor to
> manage only the threads associated with its own CPUs.
>
> Add an optional CPU mask to struct smp_hotplug_thread and apply it
> throughout the thread lifecycle. Registration creates threads only for
> online CPUs in the mask. CPU bring-up creates threads for selected
> CPUs that were offline at registration, while parking and unparking
> are restricted to the same mask.
>
> Apply the restriction to thread destruction as well, both during
> unregistration and registration failure cleanup. This is necessary
> when descriptors with disjoint masks share the same per-CPU task
> storage: tearing down one descriptor must not stop or clear threads
> owned by another descriptor.
>
> The caller must keep the mask valid and unchanged until the descriptor
> is unregistered. Callers sharing per-CPU task storage must ensure their
> masks do not overlap and serialize ownership changes themselves.

This really wants a built-in check which prevents overlapping
registrations for the same thread storage. It's easy enough to do:

smpboot_register_percpu_thread()

	if (!pt->cpumask)
		pt->cpu_mask = cpu_possible_mask;

	guard(cpus_read_lock)();
        guard(mutex)(&smpboot_threads_lock);
        list_for_each_entry(ht, &hotplug_threads, list) {
		if (ht->store != pt->store)
                	continue;
                if (WARN_ON_ONCE(cpumask_intersects(ht->cpumask, pt->cpumask)))
                	return -EBUSY;
        }
                
Hmm?

Thanks,

        tglx

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
