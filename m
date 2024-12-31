Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3097BE77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 31 Dec 2024 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7niOWPBDFEIsM75LLr0/jk7wQ19+otquFuaj7Qncpuw=; b=C46fHOhwHBTkLB
	gRWjk/13Ut244fGQMzPcUGM3qYrBJl61Dk8Mi2z9NZQ2Iv/mAD1pLKTQn/iLSMPhPpwkz/JAkt6Xo
	5qGN8MivJ6Mz6cg5L9JLJx6cRkM9fQzPkYHPCCDlD9GQrVQ4CQXoCvAY1tuYEvI0vx28waR6zBG2P
	YeEEcdjm21BeiFqa28I410N5DrSl0vOFyx7nNS3/oYYPUezwyqQznZ0FTTSo1y4TxwMN+ZMUyKzOj
	ovkODHDwLffN3axBg0IDSyDQSrU++8gvhc4hHxOBgvH59CGCoLMnAwX6icmA4dv6PtsTEgFiE1EGD
	rq03UYxideUDM77FgNZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSYG3-00000006tSV-3GJ0;
	Tue, 31 Dec 2024 09:09:47 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tSYEn-00000006t1k-0CTE;
	Tue, 31 Dec 2024 09:08:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=XV89b
	s2wMRgwDYsfc4+32ZIFY6mzS8Qa7Y/aVo+nfdg=; b=U7J4mHArmgnK31kiMlw/m
	NYbgpVQ+ffexx/JzQpigx9VytFTkuZNbFon076kTfTuWk4ncxay2sVGUcxxE108S
	z+OIPhXj7qBQud8arUB1J+qG3saozRkogdOsjhVaeS482uRDeR8Lr2/CpdKMbfPM
	mssKjHLF1pgZjujt3tt5T0=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-2 (Coremail) with SMTP id _____wBHEQp0tHNnooOKCw--.15748S2;
	Tue, 31 Dec 2024 17:08:08 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	krzk+dt@kernel.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	derek.foreman@collabora.com,
	detlev.casanova@collabora.com,
	daniel@fooishbar.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v8 0/9] VOP Support for rk3576
Date: Tue, 31 Dec 2024 17:07:43 +0800
Message-ID: <20241231090802.251787-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: _____wBHEQp0tHNnooOKCw--.15748S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxGw4xtF1DJw15ArW8Wry8Zrb_yoW5GF1Dp3
	98Cr95XrWxGF42qrs7Jw1UCFWFgFnayFWSg34fKw13Ja4qyry7Kryakr15Zr9xXw18Zr4j
	9a1Skw4UKFsFvF7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07UmZXwUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqQbGXmdzq1zdEQABsZ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241231_010829_475287_F59EB6FB 
X-CRM114-Status: GOOD (  12.84  )
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

From: Andy Yan <andy.yan@rock-chips.com>

Here is the V8

Patches that have already been merged in V6 are dropped.

PATCH 1~7 are preparations for rk3576 support
PATCH 8~9 are real support for rk376

I test it with a 1080P/4K HDMI output with modetest and weston
output.

If there are some one want to have a try, I have a tree based on
Linux 6.13-rc2 here[1]

[0]https://lore.kernel.org/linux-rockchip/20241115151131.416830-1-heiko@sntech.de/
[1]https://github.com/andyshrk/linux/tree/rk3576-vop2-upstream-v6

Changes in v8:
- Remove redundant blank line before drm_bus_format_enum_list
- Add a blank line before DRM_ENUM_NAME_FN
- Fix dt_binding_check errors of vop2
- ordered by soc name of vop2 ymal

Changes in v7:
- Fix rk3588 dp+dsi maxclk verification

Changes in v6:
- Add a blank line after hardware version check code
-  More specific explanation about the AXI_BUS_ID register bit of
   cluster window.

Changes in v5:
- Add axi id configuration
- Remove the non-existent CBCR scale register.

Changes in v4:
- Typo fix: selet->select
- describe constraint SOC by SOC, as interrupts of rk3576 is very
  different from others
- Drop Krzysztof's Reviewed-by, as this version changed a lot.

Changes in v3:
- Add comments for why we should treat rk3566 with special care.
- Add hardware version check
- Add comments for why we should treat rk3566 with special care.
- ordered by soc name
- Add description for newly added interrupt
- Share the alpha setup function with rk3568
- recoder the code block by soc

Changes in v2:
- split it from main patch add support for rk3576
- Add platform specific callback
- Introduce vop hardware version
- Add dt bindings
- Add platform specific callback

Andy Yan (9):
  drm/rockchip: vop2: Support 32x8 superblock afbc
  drm/rockchip: vop2: Add platform specific callback
  drm/rockchip: vop2: Support for different layer select configuration
    between VPs
  drm/rockchip: vop2: Introduce vop hardware version
  drm/rockchip: vop2: Register the primary plane and overlay plane
    separately
  drm/rockchip: vop2: Set plane possible crtcs by possible vp mask
  drm/rockchip: vop2: Add uv swap for cluster window
  dt-bindings: display: vop2: Add rk3576 support
  drm/rockchip: vop2: Add support for rk3576

 .../display/rockchip/rockchip-vop2.yaml       |   81 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 1454 +++----------
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  271 ++-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  | 1797 ++++++++++++++++-
 4 files changed, 2361 insertions(+), 1242 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
