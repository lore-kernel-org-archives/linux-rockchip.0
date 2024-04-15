Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69288C4345F
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 16:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3u1GOJNf42t0F6BZuv88VU76YKMRp2lt29libOMUpwE=; b=HRBzOscNTE8L2P
	ZLUjYbFKPdhKXJaWZc8qZVD0UggP2ZHjUNW/Qi0uaG3fRIsPQxVR5IcgQKCPlYO4w3vCo5jdThpUz
	3N4e5hU8hB4jEvdg7O31NzYgw4KHdsBzOy3eggoEeWidwfRZ+AEVxzxw5xVon6PF9DkYMmKFFUqad
	9neX4AQRKVrpx/VewPbchX/8PD+TlHWeRjR6UGBgNhF3tlLgNC2NGVuJlgMEY1sEH2r9MFK0M3Z1K
	0sdyih7xQsEfobDHRakhBmrZTiVUB75R8vwcpEXIDznYkTdls0aBlpw1wICy3iq+meEp/GkmB0ghc
	iUjh4tnAqy7qNPAy5G6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPZ2-000000099f7-1ak0;
	Mon, 15 Apr 2024 16:52:16 +0000
Received: from mail-yb1-xb34.google.com ([2607:f8b0:4864:20::b34])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwPYu-000000099c8-2ukG
	for linux-rockchip@lists.infradead.org;
	Mon, 15 Apr 2024 16:52:10 +0000
Received: by mail-yb1-xb34.google.com with SMTP id 3f1490d57ef6-ddda842c399so3639378276.3
        for <linux-rockchip@lists.infradead.org>; Mon, 15 Apr 2024 09:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713199927; x=1713804727; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=u5nj7t3vt2EbEPLlkWSc/ywApSrSPp8k4DfqheemWX4=;
        b=B92KLJkpQFEcR/Anb2ROM740/JbtbyyzlD22jogb6H5hzFKcPQxBF8EtKaBa3bCtvh
         E1YX9LfIqZeeBwHZ4gVCD5GEyothgk84MVz9WbCRmMbwJGxjD6jNHLUJ8txJYzc4LBqR
         ZWuO4u7XkPWBQkC+F91U7QzSeJ58+aKwJedKs4sdHanI6S2DkF7n/t2d/9TGFaOQHc6l
         pS2HgEc+n7R9QIO2i0fUk6Mwp7xgklielyi8KqcVjMtSt62CitUCxsb2fsKjAkDKbG4e
         g20QzpOYbyLQA9y2XuFCzIre+wH/MEn5yJIUGQvyY8EkD2n/MNZnZHLUNY+SZD4Pgw74
         JNPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713199927; x=1713804727;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u5nj7t3vt2EbEPLlkWSc/ywApSrSPp8k4DfqheemWX4=;
        b=tNjD780s5CvxU9Te1iuVDkoXVv7sBWNeOjfgMm0UJPS8uvxSGeucnLHY4p8YnZvfMQ
         99eiBvev3WFBuA7W+gip0k7b8m8dlPzvSXygn1UU6puZ8GtQWfI+0tNKMfZ3DIwerYkh
         v4HeC2/RxM+OLJOC5vdf0lV/pewO+6hvBoxW0LrQeeBgnJBamd4/QxskKwjkiGq6JRQa
         5ZMB7q5Z/gazkM6M8jVjK7qcRR1xcwQt2qQWBR9sn8nqk0wVRZFmxuWMHpjMIGPZhLFo
         7nzE13T8BxzChMVIznLcEIc1yJTaz5+kpot8XsvjWJzTAv+pwku3njlQIp+tNwydRNiR
         RZ9Q==
X-Forwarded-Encrypted: i=1; AJvYcCWY8nzqwwzaxwQg+RQeq2AEeSC/s4YjWueWJQlHlkbTnArxUF1v6EcheZlz/F0tYn/Ql7FeFRLhApT3xpSQhoksz1rKHe1KNUDR4VftRzn3Or2E
X-Gm-Message-State: AOJu0YwJiCTBqX40uYxqYmUPreM/X2DcdO9fnHTMFdWAE3/FNdTnTixm
	J9db7QBKIoalSgneQYAkZDHYw+lTuQQa6Qq28Sm06Pc8CXTEwci42SQUUOa+f9ymaXkWpGbxh2v
	O0JHwr88vaYZlfoKJ/s1mmB7skUjHlfnZNLI8UA==
X-Google-Smtp-Source: AGHT+IFUQH4ONlkcS0+01CEMOIrS9D3xuTmTIKe0INOXof2d+fsMqiJVzA1ER/VV0S5Vp3kzkSBLhneirq6dUQh4r9c=
X-Received: by 2002:a25:9e0b:0:b0:de0:df15:b372 with SMTP id
 m11-20020a259e0b000000b00de0df15b372mr9733585ybq.63.1713199925395; Mon, 15
 Apr 2024 09:52:05 -0700 (PDT)
MIME-Version: 1.0
References: <20240412222857.3873079-1-robh@kernel.org> <Zh0vXinxy7woerJQ@hu-bjorande-lv.qualcomm.com>
In-Reply-To: <Zh0vXinxy7woerJQ@hu-bjorande-lv.qualcomm.com>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Apr 2024 19:51:54 +0300
Message-ID: <CAA8EJpqL2T4bJZqtZ9KF=V2NLnFxUjouA6_Hu_H07DofifZaoQ@mail.gmail.com>
Subject: Re: [PATCH] arm/arm64: dts: Drop "arm,armv8-pmuv3" compatible usage
To: Bjorn Andersson <quic_bjorande@quicinc.com>
Cc: Rob Herring <robh@kernel.org>, soc@kernel.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	Florian Fainelli <florian.fainelli@broadcom.com>, 
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>, Dinh Nguyen <dinguyen@kernel.org>, 
	Tsahee Zidenberg <tsahee@annapurnalabs.com>, Antoine Tenart <atenart@kernel.org>, 
	Khuong Dinh <khuong@os.amperecomputing.com>, Liviu Dudau <liviu.dudau@arm.com>, 
	Sudeep Holla <sudeep.holla@arm.com>, Lorenzo Pieralisi <lpieralisi@kernel.org>, 
	Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>, 
	Robert Richter <rric@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>, 
	Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>, 
	Fabio Estevam <festevam@gmail.com>, "Paul J. Murphy" <paul.j.murphy@intel.com>, 
	Daniele Alessandrelli <daniele.alessandrelli@intel.com>, Andrew Lunn <andrew@lunn.ch>, 
	Gregory Clement <gregory.clement@bootlin.com>, 
	Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Matthias Brugger <matthias.bgg@gmail.com>, 
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
	Thierry Reding <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>, 
	Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, 
	=?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Heiko Stuebner <heiko@sntech.de>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	Jisheng Zhang <jszhang@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, linux-fsd@tesla.com, 
	Michal Simek <michal.simek@amd.com>, devicetree@vger.kernel.org, 
	linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-mediatek@lists.infradead.org, linux-tegra@vger.kernel.org, 
	linux-arm-msm@vger.kernel.org, linux-realtek-soc@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-samsung-soc@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_095208_865352_9B135F2D 
X-CRM114-Status: UNSURE (   9.82  )
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

On Mon, 15 Apr 2024 at 16:46, Bjorn Andersson <quic_bjorande@quicinc.com> wrote:
>
> On Fri, Apr 12, 2024 at 05:28:51PM -0500, Rob Herring wrote:
> [..]
> >  arch/arm64/boot/dts/qcom/qcm2290.dtsi                | 2 +-
> >  arch/arm64/boot/dts/qcom/qdu1000.dtsi                | 2 +-
> >  arch/arm64/boot/dts/qcom/sdm630.dtsi                 | 2 +-
> >  arch/arm64/boot/dts/qcom/sdx75.dtsi                  | 2 +-
>
> Acked-by: Bjorn Andersson <andersson@kernel.org>

Note, we'd need to override PMU compatibles in sdm636.dtsi and
sdm660.dtsi. Ideally it should come as the same patch.

>
> Regards,
> Bjorn
>


-- 
With best wishes
Dmitry

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
