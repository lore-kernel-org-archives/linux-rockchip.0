Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D5E5DC282DE
	for <linux-rockchip@archiver.kernel.org>; Fri,  7 Mar 2025 09:21:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=367xqZENfUTlQezelexlJG2Wcsg9kjyLWL/hUDR5P4k=; b=XyugkWbVGqTujW
	5npKF4a9n4Tx3xtwQRvcDJ6p15qb/y0++QwmD51Ge/pZsVop952ob2Ra98Tg4dzaVj0wFZZ86nng0
	s2rxa9XW92nbSioJl0bKCPvHbVLGr3ADZN8C3EhnhOx/y1egU1CbRT/5IAL5sb+lK/mxHSupHUKiC
	NzatE9nZOCsyNc111kG/UnN7/6vYCbxbUE+fOxLduUsZJFYv3LHcMmIq7dCu6u4cdxSvhQ0D6nZ0c
	KGtDizknOginjiY/FoPj+4TzTROT/AP7cKu5giM9em2w44neGoNlDn5nkJQ8jR8CQZ4lii0CfNEvK
	Dc78xksilfDhs9HiPtjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqTtY-0000000Dgq3-23TG;
	Fri, 07 Mar 2025 09:21:28 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqTro-0000000DgLw-0Y5R
	for linux-rockchip@lists.infradead.org;
	Fri, 07 Mar 2025 09:19:41 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741339167; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=YzLv5mfAH80vIklSoxtki1XE1xukzSoJx+DZFYGrUjlaVCrBfVlbW1LSzEePYdft/6fBZd4kqZFM3uQXzdoTfv3O576rVIOPFW32z73WmtC2lBrPR+USd3UiE+UEAKDoMDb/T2G02K0Xciee43/frfADLlm43F0hB0li32TlNQA=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741339167; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=LUZNNrGCHEYUgjWOR9Ax5bht229rw4nWFBraJsxlaPE=; 
	b=TGFwdRkdJonr6CPSFc/ZpIsek5gia7OVcotq8HEyp9Pz+4GX0Lfip3f/dju2tapNV8dXY26tu28YapNmgnxYU6Oa7A9qPZyjQSrqgma14h9xW+eJVGpNrS5oGzP+/c/BtFuC+byOhl1nKv+cyljb5R2RSfe27ecAGiIO5B5TZ9U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741339167;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=LUZNNrGCHEYUgjWOR9Ax5bht229rw4nWFBraJsxlaPE=;
	b=Fp5PVAF4+1rEg26jqDlcAEt3Zg3RdUBbx44X+2gxEMzPzLggtHooz69rmZG0ijcB
	s5F1de6IYaLzTPvSlQn325Kwm4osUuB0Y5IW5RbpjH+U7Gq3b3XdlFEsl5IVelH6JD+
	jQrqXxgElspsPxrR1aVKzc0ePRCRzigtqqNalJo4=
Received: by mx.zohomail.com with SMTPS id 1741339164930302.9248701537149;
	Fri, 7 Mar 2025 01:19:24 -0800 (PST)
From: Dmitry Osipenko <dmitry.osipenko@collabora.com>
To: Shreeya Patel <shreeya.patel@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Hans Verkuil <hverkuil@xs4all.nl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	jose.abreu@synopsys.com,
	nelson.costa@synopsys.com,
	shawn.wen@rock-chips.com,
	nicolas.dufresne@collabora.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: kernel@collabora.com,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Tim Surber <me@timsurber.de>
Subject: [PATCH v15 0/2] Enable HDMI RX controller on RK3588
Date: Fri,  7 Mar 2025 12:18:55 +0300
Message-ID: <20250307091857.646581-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_011940_236267_4313334C 
X-CRM114-Status: UNSURE (   7.08  )
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

Hi Heiko,

This patchset adds HDMIRX controller node to RK3588 DTSI and enables
it on Rock 5b board.

Changelog:

v15: - Removed duplicated HDMIRX pinctrl definitions

     - Removed default M1 HDMIRX pinctrl assignment from the DTSI as
       technically HDMIRX can use M0 depending on a board configuration.

     - Changed ordering of the status DT property

v14: - Re-enabled LOAD_DEFAULT_EDID=y option in the defconfig and
       added ack from Hans Verkuil fot that patch.

Sebastian Reichel (1):
  arm64: dts: rockchip: Enable HDMI receiver on rock-5b

Shreeya Patel (1):
  arm64: dts: rockchip: Add device tree support for HDMI RX Controller

 .../arm64/boot/dts/rockchip/rk3588-extra.dtsi | 55 +++++++++++++++++++
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 17 ++++++
 2 files changed, 72 insertions(+)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
