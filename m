Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13E71606A321
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Nov 2026 21:01:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=aQakT+Jb;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=timsurber.de header.i=@timsurber.de header.a=rsa-sha256 header.s=MBO0001 header.b=KzcpJxT2
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=hb5Tu1V0uAzGMKorRa2W2D886mW2i53GYAcY3eaUAdE=; b=aQakT+Jb3SMU80j3403jD2naOB
	z6MKw8voVJIeAGZ9negjImzANGE0SPIXflT+6B0tWtus9ZgVUPCGhI92jh6oBevBIldV1OclS8lFz
	XwUodrcq0EyDWy6GDpNC2aXo5CWxoZKOm26YHVEZ16nGygWEW3BTjPTBfxT4c7RGSwLnAD9pSvs3g
	LYf0yxNljvOVGkyrPc7hbf4pKmHAkWi+ZSSxZlZc7rM2akkzDs78WbXi+RleOLKmLwHuJ9agdXIPh
	0IMTpKQ9mwzpNz9zxNhDcTMfR+9gGev1fa6118q03WT0VUAtBYRS8EoAecNAKvFovvyP40/vXlY4h
	Je82sTYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFRs-00000007hlh-17wF;
	Wed, 11 Nov 2026 21:01:40 +0000
Received: from mout-p-201.mailbox.org ([2001:67c:2050:0:465::201])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRFRh-00000007hkd-2Xr7;
	Wed, 11 Nov 2026 21:01:39 +0000
Received: from smtp2.mailbox.org (smtp2.mailbox.org [IPv6:2001:67c:2050:b231:465::2])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519MLKEM768 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-201.mailbox.org (Postfix) with ESMTPS id 4jPwtF2LtbzMlj3;
	Wed, 11 Nov 2026 22:01:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=timsurber.de;
	s=MBO0001; t=1794430885;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=tlP7YiAB0ndxc1g1Kyrgds/y0lfbIBXihc8MyOXgpx0=;
	b=KzcpJxT2REm1FzABc0qyuOqma9BV8isWmnUjjZiP817FKuTNsoSxyhOYsgbL+nsjDU9Vw/
	vRUgw5aXQHu2DkZNAoF1bMmxUfCiDDSTaMLt5RfK+XuQj6gRolYLM2WtP44h4LkySKnMHn
	MvH20E4Z5O72iRod0fAQrNAPTvJvJCYnggoh6xWL5qZRMJeCE7n664apWlUv/zXQQN6KIX
	a66Z8vrtrDoT8JwCzd/OxJr7o6tW7dAqj+qI+UB5PCVSo5B35ZicBg482VCd1pVe89KkAJ
	CxpNQFHtrNXNuWQl5mbNe7bDYg5qi8EVLlkVJXyhBvjmBvN9gu+W61WcKUylXA==
Authentication-Results: outgoing_mbo_mout;
	dkim=none;
	spf=pass (outgoing_mbo_mout: domain of me@timsurber.de designates 2001:67c:2050:b231:465::2 as permitted sender) smtp.mailfrom=me@timsurber.de
From: Tim Surber <me@timsurber.de>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Tim Surber <me@timsurber.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	=?UTF-8?q?Valentin=20H=C4=83loiu?= <valentin.haloiu@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 0/1] arm64: dts: rockchip: fix HDMI RX HPD on CM3588 NAS
Date: Wed, 11 Nov 2026 22:00:26 +0100
Message-ID: <20261111210059.3489502-1-me@timsurber.de>
X-Mailer: git-send-email 2.55.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-Rspamd-Queue-Id: 4jPwtF2LtbzMlj3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_130130_109472_F4907B20 
X-CRM114-Status: GOOD (  10.80  )
X-Spam-Score: -2.8 (--)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,MENTIONS_GIT_HOSTING,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The upstream CM3588 NAS device tree uses GPIO3_D4 both as the HDMI
receiver's HPD output and as its 5V detection input. The GPIO setting
wins, so the receiver can never drive HPD. Sources then read the EDID
while the driver is still writing it and keep the damaged copy. This
patch moves the 5V detection to GPIO1_D5, the pin that FriendlyElec's
vendor kernel uses for the CM3588 (rk3588-nanopi6-rev09.dts is the
CM3588 board file there):

  hdmirx-det-gpios = <&gpio1 RK_PD5 GPIO_ACTIVE_LOW>;
  https://github.com/friendlyarm/kernel-rockchip/blob/30d3e1c2470a7282f37b96fdd4354314dda69aa3/arch/arm64/boot/dts/rockchip/rk3588-nanopi6-rev09.dts#L299-L309

  hdmirx_det: rockchip,pins = <1 RK_PD5 RK_FUNC_GPIO &pcfg_pull_up>;
  https://github.com/friendlyarm/kernel-rockchip/blob/30d3e1c2470a7282f37b96fdd4354314dda69aa3/arch/arm64/boot/dts/rockchip/rk3588-nanopi6-rev09.dts#L584-L586

Testing was done on a CM3588 NAS with HDMI0 looped back into HDMI RX.
Both runs used the same kernel, built from linux-rockchip for-next
(c3baae5f1a15) with nothing else applied, and only the DTB was
swapped:

                                    for-next DTB    with this patch
  boots with a good EDID on HDMI0   7/10            10/10
  pin 124 (GPIO3_D4) function       hdmirx GPIO     hdmi (HPD)
  EDID change via VIDIOC_S_EDID     never seen      seen in ~0.48 s,
  reaching the source                               2 HPD IRQs each
  pinctrl "not freeing pin 124"     6/6 unbinds     0/6 unbinds
  warning on unbind
  5V detected (power_present),      yes             yes
  receiver locks to 3840x2160

dtbs_check gives no new warnings.

Tim Surber (1):
  arm64: dts: rockchip: fix HDMI RX 5V detection pin on CM3588 NAS

 .../boot/dts/rockchip/rk3588-friendlyelec-cm3588-nas.dts      | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)


base-commit: c3baae5f1a15645cddadcb2b9abddef5df291f59
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
