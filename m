Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45BD8C41535
	for <linux-rockchip@archiver.kernel.org>; Tue, 19 Dec 2023 12:53:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=15gNBMZNsb4hUhTWj9tQsatbIwoDZ2dftMIXMpS14JM=; b=K5KQMnBfLzJDrS
	rR6Wh5n9pQ7KgWhgVuZU9oJzhgr7cjf8AnWDLOxlVEpLsBHZJ8JxI9uu2qQzsSIyKsLw8KDa/HSaA
	MQjYm1PKJYMDVJrtPVOAl7I6PLT3YWCVY6gKZwWvxangfhXBv3vml0Y31HU2GHPQ69ZpkL0gYFAO/
	BYlocb1tcGQAQHdFvyRCq+f3bw+Yott25KEDbb6OUMOMLaZ0KqnKJKGgINqn7p92I5r3YQJ+Y7dfJ
	5Td2X5xWWouthdotUMP0ZSp9ZraD2vUrjszzxEzFdQ512ZC5A+9jotIO731PIWo5mr53Anjv9CT+v
	M8WvjIYDRypbMbJXjaQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZbC-00E5VI-3B;
	Tue, 19 Dec 2023 12:53:26 +0000
Received: from ams.source.kernel.org ([2604:1380:4601:e00::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZbA-00E5Un-0R;
	Tue, 19 Dec 2023 12:53:25 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by ams.source.kernel.org (Postfix) with ESMTP id 43558B8171B;
	Tue, 19 Dec 2023 12:53:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 23465C433C8;
	Tue, 19 Dec 2023 12:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702990401;
	bh=3NmhXJQ7QHQFh1L8RP2t/8EnsXilOSZx6z+ReJD3+rI=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=hpTVy1/D131MtaaFE+GY1w04ZsqoqjHu8jgip+p4cL7c8+/o7kHbLNs7b7zlyIpdc
	 kigUFKqHBqXHqCYF7MOUCifznyNrUepmsXA34Ba2j/RhXw1dRFs99x/Jr+IliMj099
	 qClhCBEeXhQRHFTTUjE/gkN1fkSUukhMyMRcPyQlmVPE9uHvUUzfTQR7I39eIiEDTk
	 Yy8MxYt32McjvJDMq7eafgE8BYjUsNER95xcoH6KRi5NyIR3vA+O6GKi7MEcLxkrdd
	 trMBdQROYJ9zn0rYfTNSktdSaD+5jHA24KMYvusMkRC9+XEbN/SYQMFZYYOaeG/jLg
	 FptQR80wxdWQQ==
Message-ID: <473e996c20451aa5bb700d30fdf0f16b@kernel.org>
Date: Tue, 19 Dec 2023 12:53:18 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Johan Jonker" <jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/2] drm/rockchip: rk3066_hdmi: remove unused drm
 device pointer
In-Reply-To: <745f84db-dc9b-81b2-6171-4d8d86a96966@gmail.com>
References: <745f84db-dc9b-81b2-6171-4d8d86a96966@gmail.com>
Cc: airlied@gmail.com, andy.yan@rock-chips.com, daniel@ffwll.ch, dri-devel@lists.freedesktop.org, heiko@sntech.de, hjc@rock-chips.com, linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, maarten.lankhorst@linux.intel.com, mripard@kernel.org, tzimmermann@suse.de, "Maxime
 Ripard" <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_045324_327521_2C4926B1 
X-CRM114-Status: UNSURE (   7.43  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 18 Dec 2023 16:48:40 +0100, Johan Jonker wrote:
> The drm_dev field in the rk3066_hdmi struct stores a pointer to the DRM
> device but is never used anywhere in the driver. Let's remove it.
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>

Reviewed-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
