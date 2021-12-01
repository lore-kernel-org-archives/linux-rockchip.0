Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1CE1DC433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  1 Dec 2021 01:34:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zBbgHXKB/YneNzRVY/VnYeHJso6c1vkhA5pKYL+ZyUk=; b=1hClNm+lqrmO1Z
	lrZSsnM18UEyvDnXW9SeLokooFm3rB8y1LpPkaoj8VYZPK2vWTAhGYZQPAIKhoKUDpB0Sa7yKeeXz
	lHASDjGxUgggVvnFO1y5m3YMDnCZuGUfarXxLKXweD8zN9a75CdbKNnGunqGNZeJUUPBC0DRx7yAm
	dgbz9Jw9fPMp+1zd0jIBAxU0r8/lCG6bTuGXpdgi+7NHvOmIV659l6DXyl/fyQbCrhIK+JRKeTpRi
	bQXu+9UgbksdWWVpVVBm02hnh3TzC3n8EouzHo1TopKFWZe0cdUy2ap5DgdfrjCkUl0aTFt3W17zA
	wab7EPQVcCnDunINIsag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1msEVp-007FmS-NI; Wed, 01 Dec 2021 01:34:21 +0000
Received: from mail-io1-xd33.google.com ([2607:f8b0:4864:20::d33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1msEVJ-007FcS-PB; Wed, 01 Dec 2021 01:33:51 +0000
Received: by mail-io1-xd33.google.com with SMTP id b187so17565736iof.11;
 Tue, 30 Nov 2021 17:33:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z6+Hsl2E7Fnoefi4agcFRg7vLMjgK5Iu6TjBvSeyeqU=;
 b=i+kUWaVqqQZG9C824ctJ3vKTiwSiGEPuzWPmD6nxB1isjgMBq9ueQVb2J7WGfUoOsP
 dAokJBh1JXTjMUA107+TkDuGzB7CfvcQkFrZiGrOVchE9y4N2Tu7JXfjuNqCRrmFnEM4
 /R+zMMiycEZBYYqbQzW+hPEIUvCVcmnwGlRLsuDjU6+s0rNjIZSWYlD+rARVK5XDDADQ
 MAY7uj621/0AaiL1xZg8GyVdhpLD3CyrqiGBBC4xlT5w9b+TwkYPgRsP9/GIY52vUP3I
 biMS4DaVlzka/KAJ3UeGvDjmSDp4FeFxiFGkHEbLhRDVAA6oz8Cc5CJzImWZga6sEkLD
 s1Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=z6+Hsl2E7Fnoefi4agcFRg7vLMjgK5Iu6TjBvSeyeqU=;
 b=uM9bUe0N7Nsn7essb73Zr5JRQwBRt6PzFfFrvK9K94VrZyj+efsYhPv1UF8Zfi2W8D
 uoJHTJX9P0+TSBBqzfBW3uzxIUNs4IRmWyiYe1qTJklmS6M97fuX0ZAcmVkEPQedvHhd
 P4tH8ShD/+G08n8ak8iuTO8mf3ziNIW/sr4J0sTbdle6dWFd13u+DWo9epzs5rvWPKGQ
 uxdJmg0Q1hdfXvACN5r212WYGR3Vun4OFYUxRoNygrkeZ0kQuZwKb2iinZ2YVdppnCtY
 2PRmh6zIlemjwAstnDpTLK3I18M26aTR5BVmf/KadH25/s0zN2K/beb5s+nQ2fKlI1h0
 PaMA==
X-Gm-Message-State: AOAM532pi0sEqHVHE5t/ZLLoqBrc9lYfb4rm+fwgOYnuoD534I+GH5aL
 WTsDkLgooETQ1jBUVqNItDo=
X-Google-Smtp-Source: ABdhPJyW+HrcS0ZmOpkgFwvWGKGW6/Hwc9Osh0IEW7UhpCwjn64FvGv3Cn9B4lISIyqF86IIatHz8w==
X-Received: by 2002:a05:6602:2e81:: with SMTP id
 m1mr4265751iow.55.1638322418535; 
 Tue, 30 Nov 2021 17:33:38 -0800 (PST)
Received: from aford-IdeaCentre-A730.lan
 ([2601:448:8400:9e8:b7ee:f768:f33c:c028])
 by smtp.gmail.com with ESMTPSA id u24sm11856737ior.20.2021.11.30.17.33.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 30 Nov 2021 17:33:38 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-media@vger.kernel.org
Cc: ezequiel@vanguardiasur.com.ar, hverkuil@xs4all.nl, tharvey@gateworks.com,
 nicolas@ndufresne.ca, aford@beaconembedded.com,
 Adam Ford <aford173@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-staging@lists.linux.dev
Subject: [RFC V2 0/2] arm64: imx8mm: Enable Hantro VPUs
Date: Tue, 30 Nov 2021 19:33:27 -0600
Message-Id: <20211201013329.15875-1-aford173@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211130_173349_828893_63AC40B1 
X-CRM114-Status: GOOD (  14.94  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The i.MX8M has two Hantro video decoders, called G1 and G2 which appear
to be related to the video decoders used on the i.MX8MQ, but because of
how the Mini handles the power domains, the VPU driver does not need to
handle all the functions, nor does it support the post-processor,
so a new compatible flag is required.

With the suggestion from Hans Verkuil, I was able to get the G2 splat to go away
with changes to FORCE_MAX_ZONEORDER, but I found I could also set cma=512M, however
it's unclear to me if that's an acceptable alternative.

At the suggestion of Ezequiel Garcia and Nicolas Dufresne I have some
results from Fluster. However, the G2 VPU appears to fail most tests.

./fluster.py run -dGStreamer-H.264-V4L2SL-Gst1.0
Ran 90/135 tests successfully               in 76.431 secs

 ./fluster.py run -d GStreamer-VP8-V4L2SL-Gst1.0
Ran 55/61 tests successfully               in 21.454 secs

./fluster.py run -d GStreamer-VP9-V4L2SL-Gst1.0
Ran 0/303 tests successfully               in 20.016 secs

Each day seems to show more and more G2 submissions, and gstreamer seems to be 
still working on the VP9, so I am not sure if I should drop G2 as well.


Adam Ford (2):
  media: hantro: Add support for i.MX8M Mini
  arm64: dts: imx8mm: Enable VPU-G1 and VPU-G2

 arch/arm64/boot/dts/freescale/imx8mm.dtsi   | 41 +++++++++++++++
 drivers/staging/media/hantro/hantro_drv.c   |  2 +
 drivers/staging/media/hantro/hantro_hw.h    |  2 +
 drivers/staging/media/hantro/imx8m_vpu_hw.c | 57 +++++++++++++++++++++
 4 files changed, 102 insertions(+)

-- 
2.32.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
