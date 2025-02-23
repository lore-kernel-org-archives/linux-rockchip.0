Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C8BCBC021B6
	for <linux-rockchip@archiver.kernel.org>; Sun, 23 Feb 2025 18:28:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LsffL5WxfCdxcJXNng0I3SrkXNLEoRjwCSA4BuzPuVA=; b=Q9SRQ0nAPOkj+0
	nRcN6en9vH2BA2hdfeE0rLbFuOvlQChk/3ZsLm4dl6lZJzXy5slpL8DPlfqRCgY16I7G0wkAev2xx
	/tB7v4XfIA9s1FE9cEn0bn5iJilAaqMLzoR+CpOppA4K7u4JeZUXPO3hOgaRv5Z7K3Ew3mNS/uISD
	qE358ztzQIKidDt8TMWOf+JF2d5cOSY8NPT0wN3jVxWCyR72pwLoWbl2og7IgN5q9uT5nBKPCWuT0
	Sym0LikJJco+95LSogDcKE2s7epzunqTuGhEoRru3oySjmj26kE5LwAxb0i6vA87GBWZhwyjssIat
	4/BcU/iHDObhONChwqxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tmGiQ-0000000BaKr-3r1j;
	Sun, 23 Feb 2025 18:28:34 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tmGiO-0000000BaJl-1iG4
	for linux-rockchip@lists.infradead.org;
	Sun, 23 Feb 2025 18:28:33 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740335302; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=biT/I4H1u948hZNfzl5xa9iDupUKtD44INk4tZkatE4NH9QzClX+Yc80by+6DYrh63DuOShUatKAF++wpGtw5ik2ZGXT3RhlaJgxOa34EyJwa3MN4276sb1ekkY7NnW3tu5I7evED36KCz3U6Lwq0ZI1qRJiyg/wihVLIzdQhE0=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740335302; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=v6XdBeWdF3ROCU+Lkd505Ci9024pYHmhBHgplZExxHU=; 
	b=ZfVRV3nJ8wY8RywQjUP5mk0bXBQHp0alPMUenqR9Ofceqp8PQkDKhFWbkUTwi1U0Wjyco5xs2mm9fsdyGMCAB+PJcC+yZjyYret17x7W3JGOlCv9BFxFHLuraSmkmgTMHBSNzujr2o+Q+QujftWHWFflx745dyWXqDZdQUh2P2U=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740335302;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=v6XdBeWdF3ROCU+Lkd505Ci9024pYHmhBHgplZExxHU=;
	b=VGCj4BjtNMr+8gtlwBo2n/aNaYDswdmEoZvdectognH5EJki7TenX3VZGok7i4YO
	cnXqewKNqi9pyWu8W1YohZlcwWn3Yz1rVyL6ykjFASepSbWYAAADgzEnZBeWfyFAHOY
	PIG1+8OVetJjsYN1FJvOoQFpPa0+XmMfsan7i7QE=
Received: by mx.zohomail.com with SMTPS id 1740335299626319.34476851460374;
	Sun, 23 Feb 2025 10:28:19 -0800 (PST)
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
	Tim Surber <me@timsurber.de>,
	Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Subject: [PATCH v9 5/6] arm64: defconfig: Enable Synopsys HDMI receiver
Date: Sun, 23 Feb 2025 21:27:09 +0300
Message-ID: <20250223182710.314587-6-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250223182710.314587-1-dmitry.osipenko@collabora.com>
References: <20250223182710.314587-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250223_102832_502741_49CF361F 
X-CRM114-Status: UNSURE (   7.71  )
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

From: Sebastian Reichel <sebastian.reichel@collabora.com>

The Rockchip RK3588 has a built-in HDMI receiver block from
Synopsys. Let's enable the driver for it.

Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index cb7da4415599..6ed1ad3c0055 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -859,6 +859,7 @@ CONFIG_VIDEO_SAMSUNG_EXYNOS_GSC=m
 CONFIG_VIDEO_SAMSUNG_S5P_JPEG=m
 CONFIG_VIDEO_SAMSUNG_S5P_MFC=m
 CONFIG_VIDEO_SUN6I_CSI=m
+CONFIG_VIDEO_SYNOPSYS_HDMIRX=m
 CONFIG_VIDEO_TI_J721E_CSI2RX=m
 CONFIG_VIDEO_HANTRO=m
 CONFIG_VIDEO_IMX219=m
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
