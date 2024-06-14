Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 21332C27C77
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Jun 2024 06:39:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:References:In-Reply-To:
	Subject:To:From:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bdbm+gSbgQw0MnfHP3tCYKF5NHCNOwFHM1rBsykKGMM=; b=LeLeSnkhfx7EKZ
	TiBNZKmKyLqs4e312Cx9xTLIY7JwcrjUacGqsJ5cpUXruqSmwhUu227FuT4FGylLzg5XNkwq25Ndz
	kbsbYCLpMak5P/kDP0ICxmS7yz2PXX66VLk24tiWvuE0oB9+0hgww6JM0L3CnJ3BDelnWe6rpy8VT
	KKq19shxbpjb+o/tmLNq66EqdDfplgcGeIqoy5xDI1m0v/96fEvBtrYlscIYjBzXK3TKEuJuDhkpb
	tTNx36WF+scMLitfh5tb2zscjZCcp7zkeH8oV4sEFD+e8UL5FoPnGvCmsgwA8yQq7gnzcYTTyNmq+
	HBHt/7cIEkyyzEKPyDKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI0aO-00000001eS1-22Uh;
	Fri, 14 Jun 2024 06:38:56 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sI0aL-00000001eRb-3V0W
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Jun 2024 06:38:55 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id EB38361DDB;
	Fri, 14 Jun 2024 06:38:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33DF8C32786;
	Fri, 14 Jun 2024 06:38:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718347131;
	bh=4i3sQn/SJjShuJbeDRXU6rgcmtPkIdqhkiu0lHKawIg=;
	h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
	b=bTusOOPINlW7US6HEPCVWLp4xJ+yYE4m7M80P/trAHNIqz4Srfv3al6srIj+Iopyc
	 4CWn6HvFCBad9R8Rj9QK16r7kWxskKDEOLcM0YAWxPmN652SKE3J7I6Q+XEm5/8ec0
	 w08x2SXB/LyRDwuTTe/JK+JmdzmZFgo2E02b6nSrroqOsQr82TDgB+HlT3W6zv5bgG
	 aMsEY1WvNJtVjl4eUB31+GE8aTUx8c1AE2s/NPbFyRewMPzmeU/S+eYY2MrLaQZdSa
	 Ee6G5oqxYQaa65cENs9n1PBds5fJob0CoAjdaDaxKDFdjUaXUkYFEJfp2FWqFhQoS2
	 M82xubkmYXHFA==
Message-ID: <b91045384631984195a0f05214e0fa94@kernel.org>
Date: Fri, 14 Jun 2024 06:38:48 +0000
From: "Maxime Ripard" <mripard@kernel.org>
To: "Dmitry Baryshkov" <dmitry.baryshkov@linaro.org>
Subject: Re: [PATCH v4 0/3] drm/panel-edp: remove several legacy compatibles
 used by the driver
In-Reply-To: <20240614-edp-panel-drop-v4-0-4e0a112eec46@linaro.org>
References: <20240614-edp-panel-drop-v4-0-4e0a112eec46@linaro.org>
Cc: devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, "Conor
 Dooley" <conor+dt@kernel.org>, "Daniel Vetter" <daniel@ffwll.ch>, "David
 Airlie" <airlied@gmail.com>, "Douglas Anderson" <dianders@chromium.org>, "Jeffrey
 Hugo" <quic_jhugo@quicinc.com>, "Jessica Zhang" <quic_jesszhan@quicinc.com>, "Krzysztof
 Kozlowski" <krzk+dt@kernel.org>, "Maarten Lankhorst" <maarten.lankhorst@linux.intel.com>, "Maxime
 Ripard" <mripard@kernel.org>, "Neil Armstrong" <neil.armstrong@linaro.org>, "Rob
 Herring" <robh@kernel.org>, "Sam Ravnborg" <sam@ravnborg.org>, "Thomas
 Zimmermann" <tzimmermann@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_233853_976524_C70D13DE 
X-CRM114-Status: UNSURE (   8.41  )
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

On Fri, 14 Jun 2024 03:02:19 +0300, Dmitry Baryshkov wrote:
> There are two ways to describe an eDP panel in device tree. The
> recommended way is to add a device on the AUX bus, ideally using the
> edp-panel compatible. The legacy way is to define a top-level platform
> device for the panel.
> 
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
