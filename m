Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D00CCCD13D8
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Nov 2025 12:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnnrbCfGnN92My6KeKo2n3t8eiltiqHaBQrJ1XqdWfc=; b=zJwOdfOTSDVmiY
	oLZUihabQ848zLAh0XzBHALnYCELsZ1Zl2lblkgrmCiPoEyDBEsDO6JCwewKizBUTvmLpYTJSd5P9
	jqGGyacMHF6ImPO7v1xUQaAYo3XUhHfGf3Y0lGBw231h5qDooXgHf9i5gIzDmBboq5LBB1IenEHEv
	bwUxzFiPPOuyS3Dq8cPAro9syZVhdORxkQMSlyHPjCSw1kf8wx77s/temk9z9386Cf2UoDlPvcjv9
	xCBjGRoXv28K8vxgJJs0MzZyx3L4Ir78bwzPW8rWkgz3ywMCBRVE99fMfOx5/EOJKoEPAabU+njj4
	aPuuXLdhCgrb1V3llU4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGz6c-0000000FRYG-2zCu;
	Thu, 06 Nov 2025 12:28:46 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uqG3l-00000006Tp7-0s8K
	for linux-rockchip@lists.infradead.org;
	Sun, 24 Aug 2025 19:07:22 +0000
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-55f34d792c4so371911e87.3
        for <linux-rockchip@lists.infradead.org>; Sun, 24 Aug 2025 12:07:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756062439; x=1756667239; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kRFerQraihZIanmomm0IKhmbjfbkS3W8YtjfgYvp2fw=;
        b=QXjP9WpGluFL/kKeFDvOBMzKuViaf0VT9jT5PRaRsodA2Sfrag3v7N42g5KmfcaqR5
         RnmSlhvIplqcxIkRuJJ3ywOseJOX93xDg/3HVFUksKp2Cjz9EAAf54fvU6weMoy6sEBa
         ujgeb8IFFVZz+jSesKldV76ZuahnX8MSeuXZeUbXsUrubHpO/zhDJ1BftmeSUqfJLLT7
         Iz6wsrCDU1p/cF9bUXjLQ19nz3Am2+2PRsxCwuHrQF6+IRl7f7FUCZscOrH6XDTtg0Cd
         CAThtcEpzNY7h1bnmjuHU+lZkzTMi3PjpRmqRp2We/eNNiblM0SoeKfwCiMfWyffE5DV
         UsDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756062440; x=1756667240;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kRFerQraihZIanmomm0IKhmbjfbkS3W8YtjfgYvp2fw=;
        b=wjvEEYlT9DHRwNd1F5K6e5jpkVlEpIYQ6CFhn/c3ZJmGYjQXn5de/KWsm/ss7kXbdS
         1v2o9Vi6ZbgFpBFT8K141SARACE+Jnih9wQn/Ie/cXhwws08PCWplX7iY8KHCRAtMlKT
         Y3iu3kQwAisIvPGmu47nI6mVGMrtJKGmSvYEqvcz4fR7v4gFmH3uWehB5F1YxVnmfozO
         OlwzvsQhOpEjyXes9pLOOWwFY6Nb+z+wejcjmrJwnI12IQJyJF4euZ3c+UhSXDJyWuhK
         1wAExpBtIRxCI9/GtbUF1Sha8gGc2vaX+XfT+Qx4WUh7mn0lY6MwOV5XPGyLjMyEOQ0Z
         Vqmg==
X-Forwarded-Encrypted: i=1; AJvYcCVEYdVgbIx2R6nIe/psluJY+pEaad03I0H1JrZyYPfFfjLUX3Oasl3cUC5o+fbccrAKo/1gTOi0BntBnT6KDw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyYnOu4tc0t/xigc/URzl/QbGdPMzkIKl+of9jA5kkcYxXT+YCx
	sodme0GCbUZfpTfE2L81WOwU+RmR3ObvYnNu7wJzoOZSaeK8W8/YPSc5hI0GiGQBiSI=
X-Gm-Gg: ASbGncslEeEOt/ccwrvWifywD0pgpCVHbDy5jmPTXQhItNr0z2a2kS3uiN4nJYycKzN
	Ds1K0DfDEOmn6iDLcISpq2mc1HRMgCR1PpMieul6n4s8pFZyAvDRaxYkbau6n/PNRokrFRkXDSJ
	B+bKZcmv9LdkLFwfvHKLA5NMaBhfOR2eVGntt7WPKGnRI41CNsTQHNGQOesfjHDlIv3L9RlZgy/
	jZ5QPfLEOQqw7k0Vm69SX8MHR6Rxy74IMA28VH6V+90G6dthRLjaaNa/gSBw+C7IpeeGsQS8CJk
	SdCf/4YBnJ0VhkbpmkGu2z/CFFAVKysj9dVDm0AZmKmWRrZkX+PxN4Z/a1JtydVQD+FxEu63xdA
	b5CGJmfiKqj1jJCtEn/YnpitSLgdMgVdiXs4oIKZejFLTcTZdWeZz/bnRmR9p7gcSq8WLJcudsd
	S/bd93Gfqn54Q=
X-Google-Smtp-Source: AGHT+IH13MoxmrDQetMznYo3yow5OENe/3UHzqm8TZjVRtSQjRA+4ERWWZasIRoFRuhqFpxTrCVdqA==
X-Received: by 2002:a05:6512:2391:b0:55f:44eb:ea92 with SMTP id 2adb3069b0e04-55f44ebec0cmr134730e87.7.1756062439301;
        Sun, 24 Aug 2025 12:07:19 -0700 (PDT)
Received: from [192.168.1.100] (88-112-128-43.elisa-laajakaista.fi. [88.112.128.43])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55f35ca6713sm1206429e87.136.2025.08.24.12.07.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 24 Aug 2025 12:07:18 -0700 (PDT)
Message-ID: <b4221eca-7977-47b3-a563-f392d7dafb8b@linaro.org>
Date: Sun, 24 Aug 2025 22:07:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 20/65] media: camss: Remove custom .release fop()
Content-Language: ru-RU
To: Jacopo Mondi <jacopo.mondi@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Devarsh Thakkar
 <devarsht@ti.com>, Benoit Parrot <bparrot@ti.com>,
 Hans Verkuil <hverkuil@kernel.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Hans de Goede <hansg@kernel.org>,
 Parthiban Veerasooran <parthiban.veerasooran@microchip.com>,
 Christian Gromm <christian.gromm@microchip.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Alex Shi
 <alexs@kernel.org>, Yanteng Si <si.yanteng@linux.dev>,
 Jonathan Corbet <corbet@lwn.net>, Tomasz Figa <tfiga@chromium.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Andy Walls <awalls@md.metrocast.net>,
 Michael Tretter <m.tretter@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Bin Liu <bin.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
 Dmitry Osipenko <digetx@gmail.com>, Thierry Reding
 <thierry.reding@gmail.com>, Jonathan Hunter <jonathanh@nvidia.com>,
 Mirela Rabulea <mirela.rabulea@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 Michal Simek <michal.simek@amd.com>, Ming Qian <ming.qian@nxp.com>,
 Zhou Peng <eagle.zhou@nxp.com>, Xavier Roumegue
 <xavier.roumegue@oss.nxp.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Vikash Garodia <quic_vgarodia@quicinc.com>,
 Dikshita Agarwal <quic_dikshita@quicinc.com>,
 Abhinav Kumar <abhinav.kumar@linux.dev>,
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
 Sylwester Nawrocki <sylvester.nawrocki@gmail.com>,
 Jernej Skrabec <jernej.skrabec@gmail.com>, Chen-Yu Tsai <wens@csie.org>,
 Samuel Holland <samuel@sholland.org>,
 Daniel Almeida <daniel.almeida@collabora.com>,
 Neil Armstrong <neil.armstrong@linaro.org>,
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Nas Chung <nas.chung@chipsnmedia.com>,
 Jackson Lee <jackson.lee@chipsnmedia.com>,
 Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
 Houlong Wei <houlong.wei@mediatek.com>,
 Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
 Tiffany Lin <tiffany.lin@mediatek.com>,
 Yunfei Dong <yunfei.dong@mediatek.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>,
 Mikhail Ulyanov <mikhail.ulyanov@cogentembedded.com>,
 Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Heiko Stuebner <heiko@sntech.de>,
 Detlev Casanova <detlev.casanova@collabora.com>,
 Krzysztof Kozlowski <krzk@kernel.org>, Alim Akhtar
 <alim.akhtar@samsung.com>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 =?UTF-8?Q?=C5=81ukasz_Stelmach?= <l.stelmach@samsung.com>,
 Andrzej Pietrasiewicz <andrzejtp2010@gmail.com>,
 Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 Andrzej Hajda <andrzej.hajda@intel.com>,
 Fabien Dessenne <fabien.dessenne@foss.st.com>,
 Jean-Christophe Trotin <jean-christophe.trotin@foss.st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@foss.st.com>,
 Nicolas Dufresne <nicolas.dufresne@collabora.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Steve Longerbeam <slongerbeam@gmail.com>, Maxime Ripard
 <mripard@kernel.org>, =?UTF-8?Q?Niklas_S=C3=B6derlund?=
 <niklas.soderlund@ragnatech.se>, Robert Foss <rfoss@kernel.org>,
 Todor Tomov <todor.too@gmail.com>, Corentin Labbe <clabbe@baylibre.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 Bingbu Cao <bingbu.cao@intel.com>,
 Stanislaw Gruszka <stanislaw.gruszka@linux.intel.com>
Cc: linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-doc@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, imx@lists.linux.dev,
 linux-renesas-soc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-sunxi@lists.linux.dev,
 linux-usb@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-rockchip@lists.infradead.org,
 linux-stm32@st-md-mailman.stormreply.com, mjpeg-users@lists.sourceforge.net
References: <20250802-media-private-data-v1-0-eb140ddd6a9d@ideasonboard.com>
 <20250802-media-private-data-v1-20-eb140ddd6a9d@ideasonboard.com>
From: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
In-Reply-To: <20250802-media-private-data-v1-20-eb140ddd6a9d@ideasonboard.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250824_120721_279012_853D5B74 
X-CRM114-Status: GOOD (  10.33  )
X-Mailman-Approved-At: Thu, 06 Nov 2025 04:28:36 -0800
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Jacopo,

thank you for the change!

On 8/2/25 12:22, Jacopo Mondi wrote:
> The 'file->private_data' pointer is reset in the vb2_fop_release()
> call path. For this reason a custom handler for the .release
> file operation is not needed and the driver can use
> vb2_fop_release() directly.
> 
> Signed-off-by: Jacopo Mondi <jacopo.mondi@ideasonboard.com>

Tested-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Reviewed-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>

-- 
Best wishes,
Vladimir

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
