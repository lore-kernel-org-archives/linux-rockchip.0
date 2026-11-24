Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4C8606A31E
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Nov 2026 09:53:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=cmkfoGxZ;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=baylibre.com header.i=@baylibre.com header.a=rsa-sha256 header.s=google header.b=O5ly5Nr8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=cDG9xz21krLJo120TLunQgHYnb7nUg67r67GXiCur4Q=; b=cmkfoGxZnjbhvfMoZn5Y6ArxEH
	WE2iKZcZIB9fNBm0FFu58O++hnWgEmEnqSprIS579slVX3WPGIJEOLp4dckRzl8d7GymBOwrE7tLN
	Pz6/OLVuOcBcZBpYWr4SRzCP7m/oxSuR/beuCecBU8moKOfLYesCggPw6O4ixnrqCr6FjJlgFFD0Z
	F6L/wIth/RKvK6RA49XF6Xv889ohY3Y0Iq93E/wbOedcwZOxIHg6e2UsicjJFPmwavXawmsAbp2/O
	GHLpgMV6Ug6ouh2sYhpDRz9uIFPkITMaMj3F7a8GoPSgOl8BujY4QHhmmY8EehLvb68WqItvQDQal
	4BdlDR2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnDE-000000067zm-1ncg;
	Tue, 24 Nov 2026 09:53:20 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVnD6-000000067yG-3m9B
	for linux-rockchip@lists.infradead.org;
	Tue, 24 Nov 2026 09:53:18 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-4a2f4ca0dcfso2458152f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 24 Nov 2026 01:53:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre.com; s=google; t=1795513991; x=1796118791; darn=lists.infradead.org;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=s3HEy2luFzOKtpXEMJaCVU6qsnBsmUBR+KRo1CZ+Kxc=;
        b=O5ly5Nr8YApdZWtMx0IoZ56O0foMmh5SPFz8cP1SLd3WG6i1pJzQAL98pYBwbSLFB+
         xQsLuBcwp9HGEUdXf5YXjTC6X24JAiNbmK8LmDAR/dT8GqtRN2WUaxtrpL8e5GB0NwJ1
         JZ6XxEQLsJKYoPVeRX42T21ZMJIn7FsxX2TFHlboEXhc2UYX5m5pRVDRMy/7xIXNhWLG
         J71WIAf5QSnX2SCpPbCmm5n4B40zLo2RmC3K9Bna4HPWYOfP8cz67SdI9PitxZlmnRCX
         LfJYr47wZqT6tXxiLwF0GR2P9K6EPZ2bn5fHq5dtFOf1T6FXPWLmLfHq7xHOGZvRI0DS
         4qHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795513991; x=1796118791;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=s3HEy2luFzOKtpXEMJaCVU6qsnBsmUBR+KRo1CZ+Kxc=;
        b=LUw3l0diBytJO7VM+GDsWXrIDJr+hFX4rnjuKyWG/c4q7v/zT8lF0mK4SRE6oiRYSF
         XXpm0GJt6rhsfiGLw6TgiQyMtdfLuT4uOnetxA1QBNwMZWD0Sroa5wFNUiI6LlWJE+bm
         7RtqslU5AqaAW0M+7jAU88X1SIGLu3TefRtul/oNZItjzeoZ395t0QuN84Y0e+p3DTHY
         wQa8ZEXGQgOXmdO5y7/slnFKYLyitNzptKFKMjVrzdmWCNKTYR5EYbL+eHLvjkXPEsOq
         4rQOFi/tDOrg/FbxJL0Joi9p1h24VtCNm9zRrKrOXf5YtCHzsPogDp2g4+F4sLEl0L15
         kvEw==
X-Forwarded-Encrypted: i=1; AL+hErEpw/XIm+TNvQn18CrC8A44YoNi6vcFkyIBaSpTk5TgyHMUPmdvEczkVAvyCWT0/mRI/+j+4VmR7P5rFepfmw==@lists.infradead.org
X-Gm-Message-State: APuU4Z94UL9KzjHhEewdIrpCr/cgwAQsHnHu9w0aUtD8+uwEd0Dj372g
	TINc+UBDuauRGq+PYY8N8qK5S9g5/+lhfUA1STDbHc0y1c1BFINnk2BIMnQVLlh5ccY=
X-Gm-Gg: AZFdTZfGLUSslUshciqJBU9iczvwjZtuTwWfN2wX61RoOmsge2hF3I7LHylXALb0/h1
	JvDNxEGLy2Thmtsvlb6hG84uQqKecUVpk/lq0Gxe4N0pjuRCnOj3LWPcWVJtu4PMDySzFYNBXQN
	ypQw5K816uR94I59HaF8xoSJyp+8qJmjxXEKEswYc4txYAzy2vSlwf6pPLmavPv7QWrSrZRAkFY
	eCMa5cT+Z2Zy1k+Fx7XWzFYlykhvTz2LwiHrjMUjv9bVChr5yYWdxSH4BPYl6rYEjJMr9n/7tIh
	P3HeFaYMLimBBkyAcT80tPpe0cpbjaeKwf/E9uPFqHdSM38dl/exL2MicuDi7zuZAinOVJE8ppF
	jJpThRIwO/FJ+FAKuJBN+69xHuCr9Jddhcrv4oUUKpH8O1V0Z+4M3JvcUXXNZj/tkdQ+cISMD0l
	N0l9Ms+MFjI3Au0ndelGMYZOvqerpdyWCWhMtaeKYU9LHxkImQ1wdKd/XZs7iDwCbfLExMpcKZ5
	nddj+HGaFN6La4DUr/LkJ5cY56EG29jkKDQDdlzULLchI8/aT8E9OK01r22yoiCqlAS2aTtd/vh
	89/l7CjvE7S2vjBOEiXMj/DpzXYRuK7tMuD4jOtm7D457IM4WHLZQua7ePcXeQGyRcB9DJn7f6s
	2dQ==
X-Received: by 2002:a05:600c:4e0b:b0:4bb:6f45:2a79 with SMTP id 5b1f17b1804b1-4bb88817920mr309330195e9.22.1795513991045;
        Tue, 24 Nov 2026 01:53:11 -0800 (PST)
Received: from ?IPV6:2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183? ([2001:8a0:d6cd:9000:86f4:4e71:9fc8:3183])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4bb88442995sm435581505e9.2.2026.11.24.01.53.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Nov 2026 01:53:10 -0800 (PST)
Message-ID: <2fd706ef-8205-4564-bed7-527b6bae8790@baylibre.com>
Date: Tue, 24 Nov 2026 09:53:08 +0000
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v18 5/8] accel/rocket: add a GET_PARAM ioctl for the
 hardware version
To: Jiaxing Hu <gahing@gahingwoo.com>, tomeu@tomeuvizoso.net,
 heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 joro@8bytes.org, will@kernel.org, robin.murphy@arm.com,
 p.zabel@pengutronix.de, ogabbay@kernel.org, zhangqing@rock-chips.com
Cc: royalnet026@gmail.com, sidong.yang@furiosa.ai,
 ulf.hansson@oss.qualcomm.com, abel.vesa@oss.qualcomm.com,
 sebastian.reichel@collabora.com, chaoyi.chen@rock-chips.com,
 shawn.lin@rock-chips.com, finley.xiao@rock-chips.com,
 diederik@cknow-tech.com, alchark@flipper.net, leonard@lausen.nl,
 vlwwwwww@gmail.com, jeff.hugo@oss.qualcomm.com,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 iommu@lists.linux.dev, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <cover.1795478392.git.gahing@gahingwoo.com>
 <cbb77a43deedadb6667a84bd1c57030cf1c9ce74.1795478392.git.gahing@gahingwoo.com>
Content-Language: en-US
From: Daniel Drake <ddrake@baylibre.com>
In-Reply-To: <cbb77a43deedadb6667a84bd1c57030cf1c9ce74.1795478392.git.gahing@gahingwoo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261124_015312_979757_5C799778 
X-CRM114-Status: GOOD (  11.07  )
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
X-Spam-Status: No, score=-10.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

On 24/11/2026 00:01, Jiaxing Hu wrote:
> Add DRM_IOCTL_ROCKET_GET_PARAM so that userspace can tell which NPU it
> runs on. DRM_ROCKET_PARAM_HW_VERSION returns an enum
> drm_rocket_hw_version value, taken from the compatible's match data when
> the first core probes. The PC_VERSION registers cannot be used: the
> RK3568 reads 0 from them.

I also spotted that the vendor driver uses compatible-based matching for
this kind of thing.

> @@ -197,6 +224,9 @@ static int rocket_probe(struct platform_device *pdev)
>  		devres_close_group(&drm_dev->dev, rdev_group);
>  	}
>  
> +	if (hw_version != rdev->hw_version)
> +		return -EINVAL;
> +

This check can be dropped, we can assume that a DT that gives cores with
a mix of hw versions is invalid and broken.

With that change feel free  to add my Reviewed-By


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
