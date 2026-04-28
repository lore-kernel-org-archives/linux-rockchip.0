Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFB21FF885A
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Apr 2026 22:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnC+hSMpFzH1CL+zY+3MY0tmCcv885dDh/d5QBiEczc=; b=j7EagTmvBJ/mpW
	PKP/DwECQ51F6eYDB+XmuXFL6SJj0CbGvodqbzg3olfcXIrkjl315gsTKgmGxNl6FzqVs7FFC3UYe
	hcKGxHpKsEJ1nN0Vmm1dLT/AFnYHnBx7oOe0N3M8cQHfp7IoBTOCsZB3X3jMDmDV+hDMhRF+pWX14
	zFnhZGlef4z/3nUs8XK2zyX8u5GtcSNzRBxC9Az9/yFzMwLosH1rVqp84eMoPMFDDReQ/DyVxUWF/
	44wy/sNSLdf28ANd8fbIkgCmIFP44KHvAOgcjLvoJjT49nNnCtvvDfX+JCv5HZ+WQ4FhX0Ll4aCH5
	pDpvo+BJfQzj+kaM+1ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHqio-00000002YSC-3GnB;
	Tue, 28 Apr 2026 22:16:02 +0000
Received: from mail-dy1-x1334.google.com ([2607:f8b0:4864:20::1334])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHqim-00000002YQp-0GvO
	for linux-rockchip@lists.infradead.org;
	Tue, 28 Apr 2026 22:16:01 +0000
Received: by mail-dy1-x1334.google.com with SMTP id 5a478bee46e88-2e221a71e19so12019711eec.0
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Apr 2026 15:15:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1777414559; x=1778019359; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=IRuOpUnKlyxobyVU18RBjJjL20LQKeUc7Tn5BEfMoeM=;
        b=d+84qQ7grA8CQjXiNTHjZPWYE2LNFnB1/2cg+SlSQDsbxoVxcFClTCAunTigEAl6hg
         dd7rWCkAlJpJAuQ2bEGGFIq2Y0jm+Ce5M9kgUEMPx/+Ac/YuzKc9mUafkWt1YGV61JgM
         tfuwuQIc148kgd7N3MZLKCsn0FJ8cEhj8tSes=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777414559; x=1778019359;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IRuOpUnKlyxobyVU18RBjJjL20LQKeUc7Tn5BEfMoeM=;
        b=icfni89aCVz4nV1QQ553Lu1xT/jJhK0uffqVmHHKy+wWRUY/s0e48Fu202pUmRxrfy
         BJ/3uSCddY/Ky2xsavQn9D5LShgB8gCwTRoyrl1fs2ZqkztOWa2haM8ZoYbUm1JP1rwW
         F9BRcfQqCJ/0yVfq6uCVfrx+iroLq8uVFOGEo86mFC64rW7ps065eHBXi9HNpkSMDZSS
         lukzBHvnsxpbuY2JJ5/vvwoIbQoIDREeC5NCrsabCQjq/8G2Zc8PuX/grf/LI0O9nr+W
         U7ZbvMhRRa29ifqi3UIhaDeUDaFH3d864CZqs1TqLwDkyrAoZaxl21PsTNN7jHkPNHWv
         USrw==
X-Forwarded-Encrypted: i=1; AFNElJ813+u35icBk1b0wc09BN/xj4DG9hASOKrIKL9YPbTNCUGEqpX0fSKV8iwvAKMyk+gHthi37cwx8FTcfSNZtA==@lists.infradead.org
X-Gm-Message-State: AOJu0YzJMRAk/klMkf+vboon0hqN1mRMpQDfOtnsFq92XBtu6jBXZWI8
	AEEleezFPNIypkDozhdi7UjggsrHtLM7sDsfhWnf83sdFvdBhgkZ2ZroL3upLV0f+A==
X-Gm-Gg: AeBDiet4Sv/W7F3gRMmBpTSiYrJ6FfWGZg5U8jP5OxM7ZDUsj8GZJ7c9NEQCDoNAV7Z
	bWszvKYEP7AZtB86DwDBzEyZv851AyMs88h3+emoOf7HziAm8obAJ4ExgjFsydtYhhvBI7RHBTT
	zPpxG7b2C3GTX5DXznid2SR+6zRBVsNV6i32heARSQdLnqL3yMfDnIueo0ZT1Quk/3YyW7L+xbc
	+ja4uwNvHGpcCRVdqBU9MER1WerVDb0R352DHHUC0Ja4i+9Hh000aTqCBtkRTaL0Dove/ljwoBp
	YcSZJLgXK6V6pSqMH4Ga/effv5U5eltaycxeXB9279LhRHrYr6k4AkdvF3xcymq7z8t/qaylrCz
	lXokIAKEnxQ2X9MZ4BFD5t9RjhblOvaNGg50jOl1WUbQYfbsllBwCdPKxQ0AliI+AMPVpdDNMoP
	PYw89SuCPX6/BUG3aDYiZVKo9hMX7cJcg7YaEEm+clrxK+ytRUhyatQchdU2iJYVURBU4Le9+U
X-Received: by 2002:a05:7301:fa10:b0:2ed:75d:fe40 with SMTP id 5a478bee46e88-2ed0a084038mr2613645eec.15.1777414558981;
        Tue, 28 Apr 2026 15:15:58 -0700 (PDT)
Received: from localhost ([2a00:79e0:2e7c:8:4ff5:9607:c7e5:48f3])
        by smtp.gmail.com with UTF8SMTPSA id 5a478bee46e88-2ed1c070523sm162156eec.19.2026.04.28.15.15.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2026 15:15:58 -0700 (PDT)
Date: Tue, 28 Apr 2026 15:15:55 -0700
From: Brian Norris <briannorris@chromium.org>
To: Julius Werner <jwerner@chromium.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Thierry Reding <thierry.reding@kernel.org>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
	Doug Anderson <dianders@chromium.org>,
	linux-arm-kernel@lists.infradead.org,
	Tzung-Bi Shih <tzungbi@kernel.org>, chrome-platform@lists.linux.dev,
	linux-rockchip@lists.infradead.org,
	Alim Akhtar <alim.akhtar@samsung.com>,
	cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
	linux-tegra@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/7] dts: Add /firmware/#{address,size}-cells to
 Chromium-based DTs
Message-ID: <afExm9HeB-FMmP4P@google.com>
References: <20260428200712.2660635-1-briannorris@chromium.org>
 <CAODwPW-YuhQxyGSeahp8+i-bz_hAvPQQCNWxaZCjrbvkHOQa7A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAODwPW-YuhQxyGSeahp8+i-bz_hAvPQQCNWxaZCjrbvkHOQa7A@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260428_151600_287274_564C5B72 
X-CRM114-Status: GOOD (  16.87  )
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

On Tue, Apr 28, 2026 at 02:43:21PM -0700, Julius Werner wrote:
> > I reviewed Depthcharge code history and found that this problematic
> > bootloader behavior dates back to at least 2014, with the Tegra/Nyan
> > device. Older devices may have similar DTB structures, but I'm not sure
> > if they have the same address-cells problems. In any case, these changes
> > shouldn't hurt even if a device was not affected.
> 
> I can confirm that Nyan was the first Arm device shipping with
> depthcharge. Note that the Exynos devices are all older and shipped
> with an old fork of U-Boot that probably handled this very differently
> (I believe they had `/firmware/chromeos` but not `/firmware/coreboot`,
> so they wouldn't have had a `reg` node and should need no `ranges`).

OK, so that makes patch 4 unnecessary:

  [PATCH 4/7] ARM: dts: samsung: Add #{address,size}-cells to Chromium-based /firmware

If I respin this, I can drop it. Or if it otherwise looks good,
presumably folks can just skip patch 4.

Thanks,
Brian

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
