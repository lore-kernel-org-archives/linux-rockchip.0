Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 158EBFED2F3
	for <linux-rockchip@archiver.kernel.org>; Thu, 12 Mar 2026 08:58:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-Id:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M07j5rfScvhBEYJz4mW92nz8s5BTww9bF9Pcf6WPjAw=; b=1jfDrJ/VsVO9Sp
	Xi5dB7SZBsau7cufpZxJTGnkUVgpKHIIU2dWykQh4zjoT8KVKVR7eSQeXNyntAcPdYVpo1LNP8ldW
	/WL3/94dehJvBqwuL8vGlllz8gvwcf+YpTSQjomBU7M5/JOWLFEGc8I1rNRBZA92e3Rct5dKVeD4P
	cE8ITJpJRKvVXwGZKtUSRf3XEYXEdyKULGrC3C+IPM2C2H2uLY1fb0Gom/8uJzFtS/BQuZVBRiHUe
	Inuv0HbUxFBv6rkOoZLhBCBEwHdT7qXIuHrv0lqt9vNPToZz31P3swGRsOQT/klv9gi2ZQgub48G9
	4VD93FKmhNuP2niuMing==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0bsU-0000000DgMZ-3iur;
	Thu, 12 Mar 2026 08:58:46 +0000
Received: from sea.source.kernel.org ([2600:3c0a:e001:78e:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0bsQ-0000000DgLa-2zHS;
	Thu, 12 Mar 2026 08:58:44 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 4611143588;
	Thu, 12 Mar 2026 08:58:42 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2F260C4CEF7;
	Thu, 12 Mar 2026 08:58:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773305922;
	bh=gzwQbXlxGCgV7ayjoCQc2C/VT8D0c/zVDcxM5EFbBdE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
	b=GN/0UJ7XfZ0kkoE3uBKLZOt6mJsIegV/pdEjAKaueyy4bmTvDYADf4BVzfysTQ9Go
	 6HihvWbV8OnKnrmI5OSA6FlHEj570vtkzi7hXdBSDBFhwQU6c9/0Csi13xmK2BlSUc
	 +vEeAgwcrxob7hRLsp2a6EaeUe1HwbsM96Qu5tGCaFdrvR7+eLbOyhNCZ9VUgu6b/q
	 /lmF7UwScg+DRwwgPrHZv3oEqqFGd3zDUTsxPh5Jew/kkniBvb6HjBzKWHJcL/T9+8
	 9RNXaJxMWt97UIb/p8duQe07KVd9V1lYzDvKox5lI41TNlZs+9vw189B2DRMZjvsH0
	 jbLB4fkCYYznQ==
From: Srinivas Kandagatla <srini@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 kever.yang@rock-chips.com, finley.xiao@rock-chips.com, w@1wt.eu, 
 jonas@kwiboo.se
In-Reply-To: <20260205211901.490181-1-heiko@sntech.de>
References: <20260205211901.490181-1-heiko@sntech.de>
Subject: Re: [PATCH v4 0/6] rockchip,otp: Support for RK3528, RK3562 and
 RK3568
Message-Id: <177330591995.2413713.14025044047873415718.b4-ty@kernel.org>
Date: Thu, 12 Mar 2026 08:58:39 +0000
MIME-Version: 1.0
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_015843_839649_776CD12C 
X-CRM114-Status: GOOD (  10.39  )
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


On Thu, 05 Feb 2026 22:18:55 +0100, Heiko Stuebner wrote:
> This is a continuation of Kever's from april 2025 [0] - hence the v4
> The original patches seem to have fallen through the cracks.
> 
> Additionally this directly inclues the interal word-size patch [1],
> that was previously listed as an external dependency.
> 
> And finally meanwhile patches for the RK3528 SoC from Jonas have appeared,
> so I've included those too, to get the support for all not-yet supported
> SoCs done
> 
> [...]

Applied, thanks!

[1/6] dt-bindings: nvmem: rockchip,otp: Add support for RK3562 and RK3568
      commit: 9438f599e77795f59571e57c438b28da59e1e5df
[2/6] dt-bindings: nvmem: rockchip,otp: Add compatible for RK3528
      commit: c3c46b2a5bdbe254c6d7546d693a6b3886fd2993
[3/6] nvmem: rockchip-otp: Handle internal word_size in main reg_read op
      commit: 9e7aba140eba2aeb72e65ea778c89a245fa235a4
[4/6] nvmem: rockchip-otp: Add support for RK3568
      commit: 11e01bcb827d369344f7f0e960698d33db9ced5a
[5/6] nvmem: rockchip-otp: Add support for RK3562
      commit: e482a8d8a0b4fef407084da1d6a00ad86993e7df
[6/6] nvmem: rockchip-otp: Add support for RK3528
      commit: 85e2134182e21dc9550a1e316d690b1dda52d8cf

Best regards,
-- 
Srinivas Kandagatla <srini@kernel.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
