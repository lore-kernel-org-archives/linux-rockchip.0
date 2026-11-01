Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDC82606A333
	for <linux-rockchip@archiver.kernel.org>; Sun,  1 Nov 2026 10:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=zkdC5ejp;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=GiFyZkF3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:References:In-Reply-To:
	Cc:To:From:Subject:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=htNJvw1SEYpympj6RKpCT7/kYz9V2cdBb2sLSOlPFRk=; b=zkdC5ejpuYzhiZQyfnvhj85QMd
	lsGEGHfwwVjuGo0i5h6OCjvkZBPOlKuqYl+B6CG3vk2Zyw8ufzYQeaUmfNIsllY1qOvJw9qK6DYUG
	LB1HSAGv5ESw8ZXJdOdEin6NSCMA1+85opAndk6N+g1GLBldlWP+R1F5xUZrSSZ896X+qXGTu793c
	A3So1fh/9e6Fd7M6k5U2nWto7witw9N2eX2AfIZKhUgeTSwWrPq1p4PgGVt5Ceo6oIT0gjldBA5Ou
	Y/DgtEubq6YcwGjYglMgfnQGPFje9diUjYQiCJCa2QFWZP/5XyMQ9u4A400k6qnNCkZoAx0EmCq43
	/XIjDk5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNT0R-0000000E5rB-2P4d;
	Sun, 01 Nov 2026 10:41:43 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNT0Q-0000000E5qy-1ele;
	Sun, 01 Nov 2026 10:41:42 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id A90C4600E2;
	Sun,  1 Nov 2026 10:41:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 01B691F000C1;
	Sun,  1 Nov 2026 10:41:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1793529701;
	bh=brJuiyHDKGzoeRPH3jfus7MpLEHCC+gFd44P4Q3+zTc=;
	h=Subject:From:To:Cc:In-Reply-To:References:Date;
	b=GiFyZkF3BcB+Lq/qGvsK6OxNQvs42Y0ea2XicCIzZ29xjGg1g+ts7OHFM62IcMx9b
	 mT5JrJN4TT21BuDxjFquTXOVDOX2EEV2lxqo5czMkGawou681VAaaQ8u9VSF989pyN
	 Lr3i3LM2zpKvzE6YJTHzRbFmZgPa0H2TsuQkYrnNh+V478X4Pub+mstjfyVYLACPCw
	 V2xHpq9SBrhlbU6YwiARnoAROPNZj4sAZdJtNg0EM+ezZKmIAOndNKjc+281gAAVlE
	 ybF55vUwOBybaI7bVs1kHsDPqZE1kpIHq4ssO61gTS/WrukTUrWKRtBJo4cFuZrF6j
	 fwhAbigCTPFJA==
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Subject: Re: [PATCH v3] phy: rockchip: snps-pcie3: Raise the SRAM init
 timeout
From: Manivannan Sadhasivam <mani@kernel.org>
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
 Vinod Koul <vkoul@kernel.org>, linux-rockchip@lists.infradead.org, 
 linux-phy@lists.infradead.org, 
 Sebastian Reichel <sebastian.reichel@collabora.com>
In-Reply-To: <1792286036-208067-1-git-send-email-shawn.lin@rock-chips.com>
References: <1792286036-208067-1-git-send-email-shawn.lin@rock-chips.com>
Date: Sun, 01 Nov 2026 16:11:37 +0530
Message-Id: <179352969724.2955.8020626916458747827.b4-reply@b4>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=810; i=mani@kernel.org;
 h=from:subject:message-id; bh=MumBt/6HSW2cCE+tFKc4UdGbhArG1ydOs7NghvYuKmE=;
 b=owEBbQGS/pANAwAKAVWfEeb+kc71AcsmYgBq5xdjp0pFgfE8I+Q0Q5BVv17PFui36HjQZ6sFo
 ckoUR2oZoKJATMEAAEKAB0WIQRnpUMqgUjL2KRYJ5dVnxHm/pHO9QUCaucXYwAKCRBVnxHm/pHO
 9TtACACdOsMPIXxM32WDOuNPtE8pEh00IiB0x02ALrQguuuECaxj+B6lXU4l0Nu4Kfm/S6WIdXY
 HslAGgx4rvHJi02HRtHs2sppiIadJyv/2t4gJ4CenvnKWZHOYWiLutDvQALZ2TN3V/0eIR/kyyg
 FcOdoiuu5ZXkS2J1oRKzBbV6vGlZok2wStf4Dqu7eJ024gGiYInUHyCRBcbTnQlLljvCRbGuxe5
 lP/c5bPWZYlHvLhvQqeB83Tm+KZHl4stuciGc9CDcQ+3zNVohQavqeoDB2hrYJv8JPvJ7/uqoIa
 pRI7agobEWmHHxDaMDcmL9rA3MJh+/Xydm2KN9lBhvNnAE4n
X-Developer-Key: i=mani@kernel.org; a=openpgp;
 fpr=C668AEC3C3188E4C611465E7488550E901166008
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 2026-10-18 09:13 +0800, Shawn Lin wrote:
> The SRAM initialization of the PCIe3 PHY may take longer than the 500us
> currently allowed, especially on a slow power-up such as at low
> temperature. In that case the driver reports
> 
>   lock failed 0x..., check input refclk and power supply
> 
> even though the input refclk and power supply are fine.
> 
> Raise the timeout to 20ms and use a named constant for it, applied to
> both the RK3568 and RK3588 paths.
> 
> A non-zero sleep interval (1ms) is passed to the polling helpers so the
> CPU is yielded between reads. With sleep_us == 0 the helpers tight-loop,
> which would otherwise burn the CPU during the now much longer wait.
> 
> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>

Missing Fixes tag. With that added,

- Mani



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
