Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EE102E7718F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 13:23:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u6vgQg5v6qAMSZOd0UoNmZgeNMTvCrtvsnwPDh2shaY=; b=QTOp1aENbzlkFb
	29oG/+C0BSTKiiNZeUU5A+sr+Ep+t3lOufvCvSypiwJBhWR49tVU7nXfR30wUXSFTzLjYkZMYO5IU
	O+wrD8iwm2Fdmqr1moovgKUr3eeSE9EiWoHJ4IkYvL1R3Xm7Cg8y28HUdfew58O95tHd2UxKiPhBt
	wLDjqGyR1HcrdscpaIn0nEgwWpFRpXh4lw4JK/HjvaRiPQ3wcI3xyal25jkMiim3Cc04L5JYGGU2Z
	ThEKtNGk8Ftf8OVFe687ehtLz3TfYmwcA30KyePWKHNta4xs05PPlRgUmjVYHIbggAtr9F4g8pjKO
	irmHEWmBg6ejmIbiak1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAJg-00000000HWS-2WD8;
	Fri, 27 Dec 2024 13:23:48 +0000
Received: from mail-pj1-x1036.google.com ([2607:f8b0:4864:20::1036])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRAG5-00000000GsM-2kbF
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 13:20:06 +0000
Received: by mail-pj1-x1036.google.com with SMTP id 98e67ed59e1d1-2ef70c7efa5so7053118a91.2
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Dec 2024 05:20:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20230601.gappssmtp.com; s=20230601; t=1735305604; x=1735910404; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=8AKGn7nMK9/Ut/Y6UeXKdpxBcWZLRuzCPMCeYqx6bNk=;
        b=VbT5AnFBsrnWo9EzoAsl9ImzVZCZgwVGAmjUohHLCorgNU7370p5eHSxcJgJuAAi58
         f2oMkKCUfZ4L78IgHOEllmtLXlI+GUemuqKGQUbyGgrsZvUTKkTH2iX6vEqVCA2Hg1Ze
         VntfkXpabNbnDTVekcn7hDRFYuAwZPAy6Y4YrvFSu5IqBPUzURoqik2H6CruXzfr4RNe
         HtHibVLJUcJ03gA3wWdjAyQrVpiV9oN5Hx8ZxKHxr7WGR5iJy8bTfXe0xl877HMB6D8R
         zB5DU4VpNRBqj6+QRmQ5NMtbN2R/yIjR8gL8RQpQOT/Y14cWPrfOmYefzKwRC1dabXPB
         zXFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735305604; x=1735910404;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8AKGn7nMK9/Ut/Y6UeXKdpxBcWZLRuzCPMCeYqx6bNk=;
        b=JIwbEOSHVZbvbQxFvddXagozId7730V+SvUX8aDRW+q5RlTebALtK2jbTpc+XX0idv
         wLW+Ysv1jNuoCgRtrgBb2ZgSEKDMHDCp8qsfnIz9aZ2d+wZ1VoSe2L+Yq/w6UBOZv83X
         9/BjjarrmjoBf1DxfoXStf21C9APx8xAInphC74e/+rY0d5MyelcoxcB0+Cei4Qh3Nva
         8hiyvvMdc9ou/dV7aqIQ8lJoXHRqDVOG6le2XWhquss98DO1eRHtllsZdDlOzbtLSlQ5
         Pt+SQlDYjrPidLqbuSfv7HWQYPtubR7in7y+nIUrKA7pqp+pVD0d9YM84QMnfMVJ1XV3
         Uqjg==
X-Forwarded-Encrypted: i=1; AJvYcCV5jRWKnl0kEqJSsUFWmywL0/2d2voNj6HmZ2MyLc7ts7cr3hlkk7UlVm3SLLasIbIYpvQxao3Y0y4U6j8DcA==@lists.infradead.org
X-Gm-Message-State: AOJu0YwKwPvbNYNyc2RjaZdvUGQYQZqqczpjNKqyqxtAFnBVtoFK5l68
	bX805c2ngardHwKQIFlum6HPyIoxu7T2ZyrltlBwWwELJqGOZLw2VHiR6XVBcEMFXsm8pD/3MX6
	tNUjTaIBeCSrNaJoaCgEIIutOm1EOUuVfwVdQpg==
X-Gm-Gg: ASbGncv4t7HLkfuCJiN10hinfDAasY34XGgasc8TjNUXQ/FQ959aBqWs+PpohRRkfg4
	U6vCi/ryMlD9SAlSfyG0TlVbSH4atPmvxV6+T
X-Google-Smtp-Source: AGHT+IEGt6OfQFeUdl2dnCUTbJna90fZoStffuKdb/amHUvkirE0mXYEtS1dYZ+9PMXG96Ot/QPVwvp+ateTGZX9k4o=
X-Received: by 2002:a17:90b:54c6:b0:2f4:434d:c7f0 with SMTP id
 98e67ed59e1d1-2f452e22c43mr49131562a91.12.1735305604727; Fri, 27 Dec 2024
 05:20:04 -0800 (PST)
MIME-Version: 1.0
References: <20241211-rk3588-hdmi1-v2-0-02cdca22ff68@collabora.com> <20241211-rk3588-hdmi1-v2-3-02cdca22ff68@collabora.com>
In-Reply-To: <20241211-rk3588-hdmi1-v2-3-02cdca22ff68@collabora.com>
From: Jagan Teki <jagan@edgeble.ai>
Date: Fri, 27 Dec 2024 18:49:53 +0530
Message-ID: <CA+VMnFxFBxMXBCiTfJHuMxB1U-zAqBRxeBxMRQWWCE7drr9MgA@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: rockchip: Add HDMI1 node on RK3588
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Sandy Huang <hjc@rock-chips.com>, =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alexandre ARNOUD <aarnoud@me.com>, kernel@collabora.com, dri-devel@lists.freedesktop.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_052005_698701_8F5BB908 
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, 11 Dec 2024 at 04:37, Cristian Ciocaltea
<cristian.ciocaltea@collabora.com> wrote:
>
> Add support for the second HDMI TX port found on RK3588 SoC.
>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---

Tested-by: Jagan Teki <jagan@edgeble.ai> # edgeble-6tops-modules

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
