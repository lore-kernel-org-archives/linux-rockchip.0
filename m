Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4408E606A31B
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 Nov 2026 12:26:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=e5zLzgke;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=fooishbar.org header.i=@fooishbar.org header.a=rsa-sha256 header.s=google header.b=IywYu9JO
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Kzpa8bqxIDsfbdt+dKCnX0IcxN8yxcutwjGfyv25zZI=; b=e5zLzgkeXjULiPKn3mkkU3rBpO
	Ayw83dD74k531s+rvjLhe4DD2oo5ABgeIYAKPbef3PNrqyi2KeV6yasQlecfS3ew93XDXESLP4qWj
	JNLmpWKoC1EpKCoLntQyGsp6asorujFa1zNTLIoJDolZBdXxgdSvcweEgD/Vm/s2TyN73ac5B6xpL
	tfFRXIMFZ5nQu6jZmAO71OMa0iIgaD87Zs0jR71shZAQTB7nOKy1VScMkwFfC5bBh1d+ughcojlu8
	3t7qO4q18n/WNSCVZoIgxctbH9GzqePqaOCLynhfJaqIS0hpqfd6+K7YLxdFBoujt+MBWYjP/GTP2
	E34mfFMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwXc-00000008wgf-1Ce9;
	Thu, 05 Nov 2026 12:26:04 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xOwX9-00000008wUb-3yW6
	for linux-rockchip@lists.infradead.org;
	Thu, 05 Nov 2026 12:25:49 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-3ae2b7e1e17so1210876a91.3
        for <linux-rockchip@lists.infradead.org>; Thu, 05 Nov 2026 04:25:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1793881535; cv=none;
        d=google.com; s=arc-20260327;
        b=sXnofR2rFn0sf9PXCdwpNI+FrdnxR6jcnNw3ezjBvWjMMsE08+w8Zh9ZToFwcinJdy
         AM9ORWroXf3wXDbUsDfg58PqkqRFfj933VQlrhbzkY5TygmWUj4kQZkLOvjyL4+5SIup
         CZH6xYpeii0DyX7CYg3ib+AfPZYPTwAGYVDqi30X9kXBcP8RqH5VGiVKYtm51LMl6Nwz
         b0CSWmRn9aOPw0W1A01WaGGkBiwjHl1xIg8N+A0vgNwlY1bJ/voeZ7pFC9dS48d4K+eZ
         NqdHkCYKjzbuUfaGzyy7HrZ0kSJUwNAZq3pxwHLdTa9GgqxUuxuw3XC6UdlivhIcyELX
         CdEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZvGn0TWxKmoxK6KM44Y6QgeDgPYc9rdxIcbth936aAY=;
        fh=UaNFmsvkEchdJtT05uaIth0cQG2ZLTlzuB5DHWZx/WY=;
        b=ByjKifXax6A7lF7HUtp82ckphM9ZryCTXT9vHj0WZaVk8uDf32S/vT5yU2zImw5yPA
         HFuTHv4YtVMaOhasQHBPmcrWIc7u3UMCVe6bW4hNPRUq62IxUGSjiE8WlVI81z3IgCG4
         +6RDEhZv05wGEFZZHs2TNPFXVMaACE7hkfuh1AubwaFicJBmuAq5Se8luDtZ5hr9fR4t
         JBEwWs4QOqTtuAF2LS2Tv3dyjib3XKh8XLx3jroE7+Z6kP/e/kflOPbhlgsFVpisifDj
         h5Jsfe+hhoplz4ny8LnvktD73FCEj9ZVdIERmBW0ZhDM/KB2P7FQsnE099VyVK59EEao
         cmYw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fooishbar.org; s=google; t=1793881535; x=1794486335; darn=lists.infradead.org;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZvGn0TWxKmoxK6KM44Y6QgeDgPYc9rdxIcbth936aAY=;
        b=IywYu9JOK2BwvDFjPzM+Tup7jxp5wCEqeq2UfuoeHqBVdOE/c5a35Z/vFWJ8PebnMT
         kJjE7fHfvH4qxAb3J7iie5Iq2KE0WT5uZQTqiqk6wHcYDETkjit+cZCsScTA1CJ+U+D8
         NSF+Cem6lnh61m2UvTu57ZVoOHmMOnmhgvLjyWRYWLeDi+H4U1aNSztswaNMKGppA1oS
         o1XXrQaWKQA5r0ax3TpQa1BN2GfjUVUnW8VN3TOLH1DHEhPstJ0EWF7miJkAPEmvvuF6
         KwPgId+57nsFX/U6oqDhelCdxTMt+m/W8UA/0DMBSiagybNcf27unNJyx80tCUVWGjcE
         1JsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793881535; x=1794486335;
        h=content-type:cc:to:subject:message-id:date:from:in-reply-to
         :references:mime-version:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to:content-type;
        bh=ZvGn0TWxKmoxK6KM44Y6QgeDgPYc9rdxIcbth936aAY=;
        b=jKHFd3zyGBhGutGWW2sRN4K5G1DzAnTCUbnZfqhHPRUh+K7mXhhcpEPdLwA8vt0vh6
         sgybfCW9poEGH4hPT4nQ2OiP8jA501sa38d+BdWd9ka/6ZY5pVfKeYNDeS2XbZC63Wah
         Qim4H6YkLQOOzt85YB9/cXb1a8ulBT5+FsLpTA7NAE2QZPF3UVJZ75wQuPjhk/9hhcUa
         yckrwprZ20mfCnPBtGwtv696nevN3qyEcaYdpbP23DKIOF9WVAPnrNdP21WOeVTdEgnb
         mPfgpwfI5aEwEqfMhRWVUnaiHomvFVPuF3lRMT9N9HS++3KVFtKb7w5gvgFUCJeCFqmW
         6jxw==
X-Forwarded-Encrypted: i=1; AKwUvBy3eGu3DThMA1nrDN3Ow2nhS7hg8CBwSKOxY5/F5OCbKDRb58AGLpvGX/5QqRQ7l1NkaRrkUXBP3yBTpTap8g==@lists.infradead.org
X-Gm-Message-State: APuU4Z+zJHMyhdzFkWaAn181wfTpTdAz5gKuBKVU/a5zv4CH3HZxNali
	nx6CHgc5pobbbGKpBxM+WXUBmp/ZoDNAUqRbjq6lkvqMs9TOVW3J0iiqhS6lC2Ou5FHQD87DvgI
	t5oqgPl1DHy6odZt7dBZdjucua+hjlv+gz5wu3ZKMjw==
X-Gm-Gg: AYBFou1h/IHpl4o00c/X2Rl7CC4cgfkhCfWUsq1WjB8B826TgCGraZugeX516X2SqOv
	UnOctyEZMp30coh44MRO+AB/07tW6Jw5/JYlXbndlJb59xiUM38gfAlEsTGt2MsT/miAZLRsQhg
	aT1x+f+gynKJMUmL23n2xGu261S9v46G0tkOZFlMSloYeUUp8MEVG2gfFbHXXFXWB9Noufzjn5N
	oOKCdyD3Wkq1c0TmO9+LsEKHpNonwr6tiGu8KnOgozpyqE+sYdgBilqIMODOg97dj/NhNbKgzC3
	jHpOom6nE12cJVOSHPXkzogwGNchrSscXrURgdTHmPsLDQGGWHw+QB8XJLF+qiaulFoOM2bUixj
	eA5SwqfTbRM9It2p+p+AsWXQdsQvWtw8O3aI8
X-Received: by 2002:a17:90b:180d:b0:3ab:2d46:1dd2 with SMTP id
 98e67ed59e1d1-3ae895a5c46mr17306949a91.6.1793881534904; Thu, 05 Nov 2026
 04:25:34 -0800 (PST)
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
References: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com>
In-Reply-To: <20261105-dw-hdmi-qp-yuv-v6-0-1bb63ef5766e@collabora.com>
From: Daniel Stone <daniel@fooishbar.org>
Date: Thu, 5 Nov 2026 12:25:23 +0000
X-Gm-Features: AclHuK94D60Hc87aFX4xe_hS9QfUHnTA410grumPTEjY5dxN4dgYm-_Kh7IGrsk
Message-ID: <CAPj87rMQdE3eeUxGSb4oQfB4Adry6UV8CvhGoTKtdKGQHdSo4Q@mail.gmail.com>
Subject: Re: [PATCH v6 00/15] Support 10-bit YUV422 and 8/10-bit YUV420 color
 format on DW HDMI QP
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andyshrk@163.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Daniel Stone <daniels@collabora.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, kernel@collabora.com, 
	dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>, Sashiko <sashiko-bot@kernel.org>, 
	Igor Paunovic <royalnet026@gmail.com>, Sebastian Reichel <sebastian.reichel@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261105_042545_070681_5BB13EF2 
X-CRM114-Status: GOOD (  14.01  )
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
X-Spam-Status: No, score=-3.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=no
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

Hi Cristi,

On Thu, 5 Nov 2026 at 01:01, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
> Changes in v6:
> - Added new vop2 patch "Disable core clocks before dropping runtime PM
>   reference" (Sashiko)
>
> Changes in v5:
> - Added new patch "drm/rockchip: dw_hdmi_qp: Do not mask error code in
>   atomic_check()" to fix a pre-existing issue reported by Sashiko
>
> Changes in v3:
> - Updated patch 3 to skip any hardware programming in the callbacks
>   gated by drm_atomic_helper_commit_planes() after powering down VOP2 on
>   an atomic_enable() error (Sashiko)
> - Ensured VBLANK events are sent immediately when atomic_enable() fails,
>   hence preventing userspace processes waiting for the page flip
>   completion to hang indefinitely (new patch 4, Sashiko)
>
> Changes in v2:
> - Addressed several issues reported by Sashiko
>   * Reset AXI before detaching the IOMMU domain, to close a theoretical
>     window where stale or in-flight DMA transactions could fault or
>     access memory untranslated after the domain is detached (patch 6)
>   * Fixed resource leak on vop2_enable() error path (new patch 2)
>   * Balance state on atomic_enable error paths (new patch 3)
>   * Avoided division by zero when computing max_dclk (new path 4)
>   * Fixed VOP2_MAX_DCLK_RATE overflow on 32-bit (new patch 5)

I think everything in here should now be solidly reviewed. But if this
series keeps on collecting unrelated patches until Sashiko decides all
of VOP2 is bug-free, we will never get this series merged. Could we
please keep this series focused on the useful bits at the end, and not
keep on adding speculative new Sashiko-pleasing as artificial
dependencies?

Cheers,
Daniel

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
