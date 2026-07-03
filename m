Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E35A7C44500
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jul 2026 02:37:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Date:Subject:From:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vzYhyMRWeqrL5qwPVA72g+8U7WFgOjkoDEiqwtX/vTE=; b=Q6LfU+eEigqSbK
	FRXPUYdEFaeKLdCauhRhwyayJjyT2NMsGAR7Jdn4C656tlLb5iP+fknbyWM/otTfaFqLO0/G2MinT
	L9AqCHeVu/5A2AKK2rtiSu3GkSZRo1d+QBJqiA9+iabXTmwHLr1tmdhC7t0RDdTLceTG4G7DlfU/L
	kCrdlLoWu2VGIFwErKXdxNd6fwdmZX4gB4my8bpOKthgROhNSgbsXGfMS7t89D8/b/LrvNWli67Lo
	+181XPGYUFY4MY2m2B1KK7R1UFgWg4MxNaw9IKZxtteyCSdEV8yONKzxFkFyFpPgzuYjlGCM4R/xP
	V62OFIxSBX9xyiJu+QrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTmK-00000005tWr-2l9m;
	Fri, 03 Jul 2026 02:37:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wfTmJ-00000005tWP-17UC
	for linux-rockchip@bombadil.infradead.org;
	Fri, 03 Jul 2026 02:37:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Subject:From:Message-ID:Sender:Reply-To:
	Content-ID:Content-Description:In-Reply-To:References;
	bh=Ygojyp0bDF3m1hG4wdzA6tVvoWHQZC539t+dNCrdS60=; b=Ps+15qolyny/8hT7yr+eVzLVdJ
	tOpbsvQSqFsVnGpXYYX5YcPTzXinoGmfFdADvJ+ZkjOTrlQtURCp6uFmJd7llyIG5EHf0S8eHNkre
	DU/6Dtb5HXe96uH0gboWfgUeg+5jVmQ/9Yj8tVRlaD/ZIawMxGdOKS4ao5C9p9oYIqFxx8lYl/Z32
	Dtfii9D76JK2IRl8bwgmHpy7ev0Q8MGwGabYRlGr5EWQvf6MGMfuS3gS6EzNjA+3f/QQNoH/8ogpb
	jQZjCN2SMQkagI1QvdSsgtNfJW4oY080/kvFYW0HMqkZefsbw2W8SvDlT9t505gHX0e7cuhxdzRtJ
	r6yeIGCQ==;
Received: from out162-62-58-216.mail.qq.com ([162.62.58.216])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wfTmE-00000004PRL-3xmw
	for linux-rockchip@lists.infradead.org;
	Fri, 03 Jul 2026 02:37:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qq.com; s=s201512;
	t=1783046227; bh=Ygojyp0bDF3m1hG4wdzA6tVvoWHQZC539t+dNCrdS60=;
	h=From:Subject:Date:To:Cc;
	b=fcbg1/CHb/Y7xSPFcFIq8n1sYMIlHiRhpNO4lNxRdD89xyjTrBc3M1K28Vr6z+0j3
	 ZSJfWYsNMksa8fvE/2CFGgYYJiStrX9Se9y5M4DUBmWkONkRKL7iPoThpRXhKB8g1X
	 RgHzJSTEFT1zecdsiVM2lR0ewdYVm6EySIk2+IAM=
Received: from ubuntu2204.localdomain ([218.4.149.66])
	by newxmesmtplogicsvrszb51-0.qq.com (NewEsmtp) with SMTP
	id 8F90EEF9; Fri, 03 Jul 2026 10:35:57 +0800
X-QQ-mid: xmsmtpt1783046157t5fksbsjd
Message-ID: <tencent_AA108D2806AC225EF9553469D218C8C0260A@qq.com>
X-QQ-XMAILINFO: NGZp1yYNf7Y+3KmgUKGD76+hykZmOInL9Y0xSuZx+MoBIwu/ISbYLz5Ckgifd1
	 LEj6XlcfWOBnhCaHt7hmCOoUoFzy+K/KXHUAQ88bxIAmBFfIlJQRqPHxkovI6oYbu7l6vH/T2/x6
	 grZ/zZu2MzDH4meUIU45bntctml/qWhGkPjG6PyV0FZj92wfqCmJBX5AymIV07GpLuSuX6g0DCJO
	 2eXQQv/fiYYGkr9i/ZE+2RxTZynau9CszCbCbNP/ZDhU+Mg2/weUzrZtT9Hky38D64V5Nq2BfYor
	 6xTHeiPnOS5TrYoA5pElzXRbWDYyJCJxgJF87TqkWfB+XnTAbwpZ/kcMtHR4uxRN/u/DP9s2s8pl
	 n38zjZvKhABIItsJcwJlVRB0RORSToaGS3CUea1e4mB2RrZLzYMx9Fi/GUuyeQpPBMEAVZ+83ipv
	 Ls7uKh4QuL1myJkfC2uezCAaIGrz5Zj8JEe0wz8/R5C0+aasDI5lh5GgZ+7jnd32il9xhlbiPg6E
	 Yip+Lca2WGTBqEFMbhvniWB1nhY0tiUWw0BEsGqnV525yO4mGharcsCPp7sZjQMTjFKP7l4qU8d9
	 ZTqcllymiMIBP2JxCqKVqgEj8rnxOoAlu0M1DALXxeIXX7ku3I8SbVGU3pgMw2xFYAhs24X3J5i9
	 4i3wQwBIyrTM6YS4prddpP2UdUFGZYNFFOx24yK0Rgdg5ECNSToHC5PRfbEq0WVdEBxTxAUukOil
	 AQFIiUiGkwpHtuQhhf/Y6Xi5G3aXxUm/x75bP3+ClKVI6q9LlDE5KzqnIKo3OpWxF2l5+I5kqk4/
	 yuxekeEquXx8FCmMp5VGzTdLFqv25P6/xlG9kUUSQI3w47MsU5LRrHXd0PKY2dCtAEaJusdbBd32
	 dOm+fPb8ny+TGNc4k4GU6zsT6KRIlNT9qblq3ZD/KbBLRw/WrlCywBpRN/4n9L7VVPYVHRk5mpYe
	 WFXlprbDUzca6QItRb+dlQu71RFzMbwMB/f/xgIcWD2GohxHurd5A300PXKoSzU6HRof3RQ8PXCH
	 L3fCOS4uARZvMCvn1Ju7J1nd1UpHCamprjELEYASexwdEg/QUsGL/WxxwfT0/+K84fsRHkJpr6ML
	 7BuGn8L3sqmy2FkhO+LJlvl+Uc4H6/Z/ATwwuPh0qhbmX2C/SjeRGvnRsUXA==
X-QQ-XMRINFO: MPJ6Tf5t3I/ylTmHUqvI8+Wpn+Gzalws3A==
From: Cunhao Lu <1579567540@qq.com>
Subject: [PATCH v3 0/4] can: rockchip: add RK3588 CAN support
Date: Fri, 03 Jul 2026 10:35:39 +0800
X-OQ-MSGID: <20260703-master-v3-0-6d56de6fd2f3@qq.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAPsfR2oC/yXMSwqAMAxF0a1IxhZKxO9WxEGtUSP4oakiiHu36
 vDAfe8CIcckUEUXODpYeF0CkjgCO5plIMVdMKDGTOca1WzEk1OFTbGlokST9BDizVHP53dUN79
 lbyey/l3DfT9B5L3KagAAAA==
X-Change-ID: 20260702-master-8c52be892a3f
To: Marc Kleine-Budde <mkl@pengutronix.de>, kernel@pengutronix.de, 
 Vincent Mailhol <mailhol@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-can@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, Cunhao Lu <1579567540@qq.com>, 
 Heiko Stuebner <heiko.stuebner@cherry.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260703_033715_660369_FFCDE360 
X-CRM114-Status: GOOD (  11.14  )
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

Add support for the RK3588 CAN controller.

RK3588 integrates three CAN-FD controllers that are closely related to
the existing Rockchip CAN-FD IP already supported in the kernel. The
RK3588 variant is not fully compatible with RK3568v2 because the RX
FIFO count register field has a different layout.

This series therefore:

- extends the existing Rockchip CAN-FD binding with the
  rockchip,rk3588-canfd compatible
- adds a dedicated RK3588 match entry and devtype in the driver
- describes the three CAN controller nodes in rk3588-base.dtsi
- enables CAN on the RK3588 Tiger Haikou board

RK3588 encodes RX_FIFO_CNT in bits 7:5 instead of 6:4. This
difference was found by comparing Rockchip's vendor kernel 6.1 CAN
support for RK3568 and RK3588, and was also confirmed by runtime
testing.

RK3588 uses the existing erratum 5 empty-FIFO workaround. Based on
Heiko's testing, v2 also enables the erratum 6 workaround for extended
frames being transmitted as standard frames.

RKCANFD_QUIRK_CANFD_BROKEN remains enabled for RK3588, so CAN-FD stays
disabled for now. Local testing did not reproduce the two known CAN-FD
trigger frames that cause Error Interrupts on RK3568 variants. Instead,
RK3588 shows a different CAN-FD failure mode: CAN-FD frames without BRS
work in this setup, but BRS with a data bitrate different from the
nominal bitrate immediately drives the controller bus-off.

Tested on an embedfire,rk3588-lubancat-5io board with can0/can1
directly connected. Runtime testing used a 200 MHz CAN clock, nominal
bitrate 500 kbit/s, data bitrate 500 kbit/s and 1 Mbit/s, and included
stress and error-path coverage for the existing Rockchip errata handling.

v2 -> v3:
- Move the Changelog below ---
- Collect Heiko's Reviewed-by and the driver patch Tested-by tag
- Use Co-developed-by for Heiko's RK3588 contributions and add his
  Signed-off-by
v1 -> v2:
- use real author name
- fold the single-compatible entries into an enum, as suggested by Krzysztof
- enable the erratum 6 workaround for RK3588 based on Heiko's testing
- add Heiko's RK3588 Tiger Haikou CAN enablement patch
- keep RKCANFD_QUIRK_CANFD_BROKEN enabled for RK3588 so CAN-FD stays disabled
- document the RK3588 CAN-FD/BRS bus-off failure mode

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
Cunhao Lu (3):
      dt-bindings: can: rockchip: add rk3588 CAN-FD compatible
      can: rockchip: add RK3588 CAN support
      arm64: dts: rockchip: add CAN-FD nodes for RK3588

Heiko Stuebner (1):
      arm64: dts: rockchip: Enable CAN controller on RK3588-Tiger-Haikou

 .../bindings/net/can/rockchip,rk3568v2-canfd.yaml  |  4 ++-
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi      | 39 ++++++++++++++++++++++
 .../boot/dts/rockchip/rk3588-tiger-haikou.dts      |  6 ++++
 drivers/net/can/rockchip/rockchip_canfd-core.c     | 12 +++++++
 drivers/net/can/rockchip/rockchip_canfd-rx.c       |  5 ++-
 drivers/net/can/rockchip/rockchip_canfd.h          | 26 ++++++++++++++-
 6 files changed, 89 insertions(+), 3 deletions(-)
---
base-commit: dc59e4fea9d83f03bad6bddf3fa2e52491777482
change-id: 20260702-master-8c52be892a3f

Best regards,
--  
Cunhao Lu <1579567540@qq.com>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
