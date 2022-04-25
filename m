Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 303ECC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 18:46:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zO5Co/VwJcXwI2GjDMc2UdU5j0GVt/rHXM73dAQhz00=; b=FQcgQmxGxeIAeD
	BFC8/5P00Ytw+htC5wO01q9OQ5QJxzWPFF8oe0BLSffC2oByTHRzekuSsMF5PXJcBnanxRyv3IKHy
	JITOHh9/qLhTCirIZ3+wk5Bws0sHbI+BMOAl6nRDcJqq3mNYgYOA1T0N2Vaez3UxuP6GNx+cuv15p
	ypD8+rAsRruj+PJk0Izt7o8/UnTIWnJBY4eML1qNy0G3jkjomPO2sygqsy2zV129zhh8oxH9qgbRF
	XGjpIT0O+JB1mzmF/jiFxyPB2/acX4GovxMGbT6XtbpxxhTNFc2FwK1tRRMi64GdHxZFDZ0OFgB3E
	QkFRX7652QApEcOH1ZHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj3ix-00Aw6v-5F; Mon, 25 Apr 2022 18:46:15 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj3i7-00Avd3-5C; Mon, 25 Apr 2022 18:45:26 +0000
Received: from obbardc-laptop.home (unknown
 [IPv6:2a00:23c7:6883:e501:cf51:f3a2:10b5:accf])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested) (Authenticated sender: obbardc)
 by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 696C11F42FFF;
 Mon, 25 Apr 2022 19:45:18 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
 s=mail; t=1650912318;
 bh=6WX0YykginR4rs3mKf/Gy2eH7P20D1yl5xmmnw4gzAI=;
 h=From:To:Cc:Subject:Date:From;
 b=hBHdhWOxKse9yEF0khUOx+cNRA4mTQyt7Rh9RKH9rFYVYCpmaIO7bJhRLZizFRufk
 BI4g+MSg05TnFlSFL/hngaRgu1QV+2V8RbXRzgZXROSTjgATZiDm2WQwT8VU3bp9cF
 aZXtAj5zhMzUBdW0SjhW4ER45f3oYENcwT+t1o8hxteCSQIzkZWf29QXABqFIHJ+ng
 0vB1RdIPjzOMr1DyGAzUEibgrdiTUYwkSY7VA5PVAPi3458tSMnk9bQw8Lf09flgv0
 9Tp3bYXN6d/sCRxJLgaAJRcnHM1+II7pIvho62HwAA5yYS3/coeNVF0uza3z7YzR8e
 MiS8pOjbLZRlA==
From: Christopher Obbard <chris.obbard@collabora.com>
To: Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Johan Jonker <jbx6244@gmail.com>,
 Elaine Zhang <zhangqing@rock-chips.com>
Cc: linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, kernel@collabora.com,
 Christopher Obbard <chris.obbard@collabora.com>
Subject: [PATCH v3 0/3] Rockchip RK3328 VDEC support
Date: Mon, 25 Apr 2022 19:45:07 +0100
Message-Id: <20220425184510.1138446-1-chris.obbard@collabora.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_114523_433305_A7093DF8 
X-CRM114-Status: GOOD (  12.94  )
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

Testing was performed using both v4l-compliance and (mainline) gstreamer
using the fluster framework:

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

Changes in v3:
 - Finally fix mistable in dt-binding compatible documentation

Changes in v2:
 - Fix mistake in dt-binding compatible documentation
 - Remove unused reset nodes from devicetree
 - Improve some commit messages
 - Check all dts files against dtbs_check
 - Collect review tags on unchanged patches

Christopher Obbard (3):
  media: dt-bindings: media: rockchip-vdec: Add RK3328 compatible
  arm64: dts: rockchip: Rename vdec_mmu node for RK3328
  arm64: dts: rockchip: Add vdec support for RK3328

 .../bindings/media/rockchip,vdec.yaml         |  3 +++
 arch/arm64/boot/dts/rockchip/rk3328.dtsi      | 22 +++++++++++++++++--
 2 files changed, 23 insertions(+), 2 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
