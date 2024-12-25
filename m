Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9571FE7718B
	for <linux-rockchip@archiver.kernel.org>; Wed, 25 Dec 2024 10:43:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aWN1E8AClv2XKRH8Aan+St6AjXvDAYPD8V0E1wsS1pg=; b=03pJ5zzGYkv3ow
	KMa1NEHhwFbrtggbB+pmt+zfY/QMO3EIqxbjACVW744t3pp6pXukxyNxHixAvwx3LNoHxErwYjlSh
	fOcuUwJK61gSUwbjHXiR2CbcDkex3+7I4yH+AIiOK4ng8OBsE3QRyRocos9jhUJFfJeIxy/bnoQGv
	kSZ7hor8tKNuBnGEtWGJ4aCz4S7NZWd42HT1v/KfM/BvGcBQYZGP+t230cBXmqK+PM1kldqfP1kIv
	BcSzGQ7pYdWBRgf+tWS1K3BSzVlKLbG1ex0AnhS1V6SzCUo7cEMpyWAIxOTAENW0s423yuo54TCwv
	gjW9e62g7pBRhG+XkYIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQOr4-0000000Dess-3ZZQ;
	Wed, 25 Dec 2024 10:43:06 +0000
Received: from m16.mail.163.com ([117.135.210.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQOmQ-0000000De8r-3Pae;
	Wed, 25 Dec 2024 10:38:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=bpcK5
	Qjhe/tAh2DN8xdikTX3IMR0Jsw2fHaDKM8SIj4=; b=Ygryc+bElwnp9afz2vtH+
	K/rojF15MCT8NvJP23Esa1af7s5AsNf0MpJ0rCL64g1vaRHzFV0vWKgypgIRzJKk
	VIbswHTwIz++ACYkXyRYqRu94786OMUt4CH/3sAMY2ABqXdIcXvgrWkjC3R/ghjY
	/dVf/wXX3cgWRVSDx31RM8=
Received: from ProDesk.. (unknown [])
	by gzsmtp4 (Coremail) with SMTP id PygvCgCnfIF24GtnkqkWCg--.3201S2;
	Wed, 25 Dec 2024 18:37:46 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Subject: [PATCH 0/3] Add HDMI support for rk3576
Date: Wed, 25 Dec 2024 18:37:28 +0800
Message-ID: <20241225103741.364597-1-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CM-TRANSID: PygvCgCnfIF24GtnkqkWCg--.3201S2
X-Coremail-Antispam: 1Uf129KBjvdXoW7XFW3Kr4UZr1UWF4UKr13twb_yoWxKFX_Ka
	4fW345uw18u3WYyasrtw4Iga93Jay2gFWrGF4jgFnrXFWkJr48Xrn3C3yYqa4UZF1Yyrnr
	JF4FqFy8CFZxZjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU1ZYFtUUUUU==
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiMw7AXmdr1DmOeAADs3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241225_023819_207027_E839B748 
X-CRM114-Status: UNSURE (   7.07  )
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
Cc: devicetree@vger.kernel.org, hjc@rock-chips.com, dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, mripard@kernel.org, Andy Yan <andy.yan@rock-chips.com>, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Andy Yan <andy.yan@rock-chips.com>


RK3576 HDMI TX Controller is very similar to that of RK3588, but with
some control bits for IO and interrupts status scattered across different
GRF.

PATCH 1/3 is add platform ctrl callback for IO setting and interrupts
status handing.
PATCH 2/3 ~ 3/3 are add support for rk3576


Andy Yan (3):
  drm/rockchip: dw_hdmi_qp: Add platform ctrl callback
  dt-bindings: display: rockchip: Add support for RK3576 HDMI TX
    Controller
  drm/rockchip: Add basic RK3576 HDMI output support

 .../rockchip/rockchip,rk3588-dw-hdmi-qp.yaml  |   1 +
 .../gpu/drm/rockchip/dw_hdmi_qp-rockchip.c    | 224 +++++++++++++++---
 2 files changed, 196 insertions(+), 29 deletions(-)

-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
