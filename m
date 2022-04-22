Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29446C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Apr 2022 13:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iB5IZtMQtpfXIbpyTYk7HIf3FWmGEUhweDgGWb+3Qfs=; b=0u9IaisLv32ASU
	J7dM0Ab+qHLM962nUPU/ClD9/bjdPyD73xAfnxSll7eTGBNykX+AurxNyqoOIas6CeUY4P1SfjiUW
	KZWrOp0ysdWU0L+Kg4MoJwdDHz8YKOaLKcyZLCSnD2nTM7dZ2eo1gNXdjXd7MIJKB1jB1jwqNKFS2
	Q+bkcZ3F3r12OqRNjfShpIqupckQxR3bgm1bS2kzvzyd5COcHEvHoidzQC2tp4IprJpoVwrghl6rL
	NPVtgsbJMbJddEcjvgeNoYIwgUOStBr7b1yBCwK8PiTdrLMnc6RBBu+unQLqjfn+4yi+GzaUZy8dq
	okuNWVQTjPQmP2NK1EVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nhtV5-000d8T-LY; Fri, 22 Apr 2022 13:39:07 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nhtUT-000csj-SS; Fri, 22 Apr 2022 13:38:32 +0000
Received: from obbardc-laptop.home (unknown
 [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: obbardc)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 5A9D81F468AD;
 Fri, 22 Apr 2022 14:38:23 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650634703;
 bh=lG0LG0N9MIhYCL292BSrPyGfr6h7Zn6+FnaySiga34Q=;
 h=From:To:Cc:Subject:Date:From;
 b=V5I1K3kUcRLc+b1lAryowpEJmIGmIfT/ATOPIGXQvh2LIICCrr9AZkaLLS4CjlVVP
 vHpsq+sV6YJVok+GmYTMCqVMTfbkQAWimpvdh/Bhp4NeKHL9nNwsHnSIufOroxMCFm
 797ojzujRiNaTI/JAG9iJNPSBqeFWtfAk5sllWHYpehP9lbij4KdffHLcRSy7u+96O
 MFOgNHVjYtatEO8XhnWQS0GSMUXU81Jz70rrdigM1+B7hIUWFzmLPzXJR00KkkDpYS
 /LVfCQK03PBRKawar0iBoONLW50DrmCKYgvvbGiRndtnSJSmhb8GNKqKvPkTCX2IZh
 egWh32jhhKoJw==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Alex Bee <knaerzche@gmail.com>, Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH 0/3] Rockchip RK3328 VDEC support
Date: Fri, 22 Apr 2022 14:38:00 +0100
Message-Id: <20220422133803.989256-1-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220422_063830_083304_81FEF99B 
X-CRM114-Status: GOOD (  12.66  )
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

This series adds VDEC support for the Rockchip RK3328 SoC which
uses the staging rkvdec driver.

Testing was performed using both v4l-compliance and (mainline)
gstreamer using the fluster framework. I can include full test
results if that would be useful.


    $ v4l2-compliance -m0
    v4l2-compliance 1.22.1, 64 bits, 64-bit time_t
    ...
    Grand Total for rkvdec device /dev/media0: 54, Succeeded: 54, Failed: 0, Warnings: 0


    $ python3 fluster.py run -j1 -ts JVT-AVC_V1 -d GStreamer-H.264-V4L2SL-Gst1.0
    ...
    Ran 111/135 tests successfully               in 392.885 secs


    $ python3 fluster.py run -j1 -ts VP9-TEST-VECTORS -d GStreamer-VP9-V4L2SL-Gst1.0
    ...
    Ran 206/303 tests successfully               in 1170.120 secs



Cheers,

Chris

Christopher Obbard (3):
  media: dt-bindings: media: rockchip-vdec: Add RK3328 compatible
  arm64: dts: rockchip: Rename vdec_mmu node for RK3328
  arm64: dts: rockchip: Add vdec support for RK3328

 .../bindings/media/rockchip,vdec.yaml         |  1 +
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      | 27 +++++++++++++++++--
 2 files changed, 26 insertions(+), 2 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
