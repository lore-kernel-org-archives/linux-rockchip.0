Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5960ACA5FA2
	for <linux-rockchip@archiver.kernel.org>; Mon, 28 Sep 2026 19:29:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Subject:Cc:To:
	From:Message-Id:Date:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OiCWRcDWJMJTOPVRXzd4ja1hKK0nLJ3djVWVHHiFgNE=; b=RCh1cbAtYma2gC
	GEBKLt7eSX+htuZPmn4EsfwLY1gzj6qHNiAyVGjH+6ZcVJ/q7lqW83/gOOgs8knoj1Cp1X5rLkdYA
	5GM7m9GTEC3T5opQ/ju3gW4Q6xdv1ZyUoIhPyc4G7RscKa3vEc+ygCBzeF7TPSWdHkAag38Elom8a
	k+pC8NYGCz2cESItydd89jqFEGuVEQCDxvrCmKgDVOHYf5/XoDrB/s00V1uife4XjyJD8559A9F7A
	1COXiNDrnAnlEGxR3qvUaCqreZE9XSyaaWms/Tfl8wHHDQb2/YWzQ5+Lk28KG4e5htVw0zitiOujU
	jYLPGop9sFNEjgxEAyIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBH26-00000001Qwv-3eZc;
	Mon, 28 Sep 2026 19:29:02 +0000
Received: from out-191.mta1.migadu.com ([2001:41d0:203:375::bf] helo=mta1.migadu.com)
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBH1z-00000001Qth-3NKD
	for linux-rockchip@lists.infradead.org;
	Mon, 28 Sep 2026 19:28:58 +0000
X-Envelope-To: linux-rockchip@lists.infradead.org
DKIM-Signature: a=rsa-sha256; bh=6GdeS5J1nAEzAADIZpXQl1fwy/uaoTDl+7jyHikSKZc=;
 c=simple/simple; d=cknow-tech.com;
 h=from:to:subject:date:message-id:mime-version:content-type; s=key1;
 t=1790623732; v=1; x=1791228532;
 b=RA31zn4zsUChIdbTpNb1tC7rpZiNZRrEU7HLpJ7ale/2eMI63IAxd2T//qDfiHgz2fb7gOWV
 4PffcpZpYcgp3FXB509a4p4mjbYJY7E1ZaYCQ1WzmSzYpS34BdEF2jbqHEkqCX62XjVvavC01jA
 CYuXuX+cxYpAeKT4+8rpflzUiRJHhGXwc/Rpf/iywAbHA7po+Gy7ydzISgzsj29/LXJ8NkXtVXL
 6y7Ztp/XXibcxwBVNLQOlRnB1brMYLul3qxVg2m/LOeNpXCekUyFxa0FCowULwAsquhYNyv9jtB
 7NC0ANi0frmeb2n9ZhBp4MyZgkftAjtMFIB1Yd+E2xM/g==
X-Envelope-To: linux-rockchip@lists.infradead.org
Received: by smtp.migadu.com with ESMTPS id a3187ec75891e86d;
	Mon, 28 Sep 2026 19:28:51 +0000
X-Mizu-Trace-ID: a3187ec75891e86d
X-Migadu-Flow: FLOW_OUT
Mime-Version: 1.0
Date: Mon, 28 Sep 2026 21:28:47 +0200
Message-Id: <DLR74W1U9YPC.375IK0HOYHDIG@cknow-tech.com>
From: "Diederik de Haas" <diederik@cknow-tech.com>
To: "Karl Mehltretter" <kmehltretter@gmail.com>, "Sumit Semwal"
 <sumit.semwal@linaro.org>, =?utf-8?q?Christian_K=C3=B6nig?=
 <christian.koenig@amd.com>
Cc: <linux-media@vger.kernel.org>, <dri-devel@lists.freedesktop.org>,
 <linaro-mm-sig@lists.linaro.org>, "Sandy Huang" <hjc@rock-chips.com>,
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, "Andy Yan"
 <andy.yan@rock-chips.com>, <linux-rockchip@lists.infradead.org>, "Detlev
 Casanova" <detlev.casanova@collabora.com>, "Jonas Karlman"
 <jonas@kwiboo.se>
Subject: Re: [PATCH] dma-buf: Make DMABUF_DEBUG default to y on DEBUG_KERNEL
 kernels
X-Mailer: aerc 0.22.0-31-g5c1c510d2b65
References: <20260907020015.24719-1-kmehltretter@gmail.com>
In-Reply-To: <20260907020015.24719-1-kmehltretter@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_122856_308805_5DD395AE 
X-CRM114-Status: GOOD (  23.21  )
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

On Mon Sep 7, 2026 at 4:00 AM CEST, Karl Mehltretter wrote:
> Commit 646013f513f3 ("dma-buf: enable DMABUF_DEBUG by default on DEBUG
> kernels") changed the default of DMABUF_DEBUG to "y if DEBUG", but no
> Kconfig symbol DEBUG exists, so the option has had no default since.
>
> Use DEBUG_KERNEL, the Kconfig symbol for a debug kernel.

I wondered why since 7.3-rc4 when playing videos I got a WHOLE lot of the
following error messages, which weren't there with 7.3-rc3:

  [drm:rockchip_gem_iommu_map [rockchipdrm]] *ERROR* failed to map buffer: size=0 request_size=3956736
  [drm:rockchip_gem_prime_import_sg_table [rockchipdrm]] *ERROR* failed to import sg table: -12

Both come from ``drivers/gpu/drm/rockchip/rockchip_drm_gem.c``.

The value of request_size varies sometimes; I see ``request_size=8294400``
the most. When playing a video (with mpv with v4l2request functionality, but
I think that doesn't matter), I see a whole bunch of these errors and then
it stays 'silent', but I get another stream of them when I resize the window
(ie I'm toggling between windowed and full-screen).
It doesn't take long before dmesg only consists of these errors.

The 'playing video' is likely important; when I just start sway I don't see
those errors. It's only when I start a video that those pop up.

My kernel (config) is based on Debian's and that has ``DEBUG_KERNEL=y`` at
least since 2008 and due to this patch/commit, ``DMABUF_DEBUG`` got turned on.
When I explicitly disable ``DMABUF_DEBUG``, I no longer see those errors.

Whether that fixes or just hides a problem, I'll leave that for others to
decide.

> Fixes: 646013f513f3 ("dma-buf: enable DMABUF_DEBUG by default on DEBUG kernels")
> Assisted-by: LLM
> Signed-off-by: Karl Mehltretter <kmehltretter@gmail.com>
> ---
> This enables the dma-buf debug checks on every CONFIG_DEBUG_KERNEL
> configuration, which is what 646013f513f3 set out to do. If that is too
> broad today, the alternative is to restore the previous
> "default y if DMA_API_DEBUG".

My 0.02:
That change landed in 7.0-rc1 albeit it didn't have the effect it intended
to achieve. An -rc1 version seems like the right version to land such a change.

I'm not in favor of this just popping up in 7.3-rc4 while -rc3 did NOT have
that affect. With an -rc1 you'd expect major changes, but in this case I
accidentally stumbled upon it while trying out something else.

Cheers,
  Diederik

>  drivers/dma-buf/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/dma-buf/Kconfig b/drivers/dma-buf/Kconfig
> index 7efc0f0d0712..e4f078a326a4 100644
> --- a/drivers/dma-buf/Kconfig
> +++ b/drivers/dma-buf/Kconfig
> @@ -43,7 +43,7 @@ config UDMABUF
>  config DMABUF_DEBUG
>  	bool "DMA-BUF debug checks"
>  	depends on DMA_SHARED_BUFFER
> -	default y if DEBUG
> +	default y if DEBUG_KERNEL
>  	help
>  	  This option enables additional checks for DMA-BUF importers and
>  	  exporters. Specifically it validates that importers do not peek at the
>
> base-commit: 986c24e0fe44f844b44d365b71ce831947f50298



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
