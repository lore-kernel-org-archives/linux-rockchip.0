Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D344C54731
	for <linux-rockchip@archiver.kernel.org>; Tue, 27 Aug 2024 18:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=n1dB82SiR3s9xaCpibKItioi1EqEI0w8Rgo/SI/DQZE=; b=XvP5g8jf0H+0WS
	gWTbGfqhxR239BbrNMCaMn/p/pZom2jBFOPUUvaG9wmZw2ogiloTGsRsBowgNFhzqXMTMdgvmhnx6
	QgA9jtrHjxiSq/tLgM0yP7VVn7GIV5570xeVCw9pvWoN6LHC0Jecf8RL8alJX4FMtlJLkrhZCOJYO
	JulyW4rKNKu3xwwhCyo+b4uu3tRFfww6OwGxYEWH6r4kzlt7SFmsb0R8FwvKkkXLT9UaiD8KwAjjj
	Dq/VUoYIL3XJgUM9F+mHfi5ce6phx03c61EYF904HtYefOTDC4BgCuQsubU9Q5GFmRiUlNfSgF8Ei
	khKbW5BWQPaME41vWnCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj0g8-0000000CR4W-047x;
	Tue, 27 Aug 2024 18:12:28 +0000
Received: from sender4-op-o14.zoho.com ([136.143.188.14])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sj0g4-0000000CR2y-2r71
	for linux-rockchip@lists.infradead.org;
	Tue, 27 Aug 2024 18:12:26 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724782336; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=brXvxwVIWeMuvOScjIxgv6Wf8xsoBqkNTcBzrDa2raD6htJhsFQef4ChT+QhP2GZCqqtWEH8pqcTOpETw+4MuiZspdflFfd8lT9/+IS/eTFdyukN3EDZyBnnMHzKllkrusuwmQf5vwxfAHbq1VIfF94VfAgcxagG1pnDWSiaxcQ=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724782336; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=RoiMzBJ0Us9ppCH7FKAaOJox09dmiZXOo+WgF7DfWP8=; 
	b=hWq2EJUZ0+8I1cwKmnyTZdGu2fZSseu+8uvJsB9WQan2Rv5qZlvs4WDjehrkYgxaXY/gnj891YtueEXQcubqnrcQK5QOM62TbwzSjX95VEFlY/6KGjPxT/Qzlzp7wMwh3k3N5QHkJOD0/5GdUsEJ5mAX62SXsAGjSAv5tci5W90=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=sebastian.reichel@collabora.com;
	dmarc=pass header.from=<sebastian.reichel@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724782336;
	s=zohomail; d=collabora.com; i=sebastian.reichel@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=RoiMzBJ0Us9ppCH7FKAaOJox09dmiZXOo+WgF7DfWP8=;
	b=ZfSb0FUWLmpfAqvHz/IKDNIWZ3BCg1KxdSHY6pFH5Ab3AafKd9DxWb7YSZDf0fXk
	gngIOB37ZSNarut3wlYNJFFycU5GoEq1JNXUfT/awDYBMT3MdplUQVhYOc/9oJ/06km
	8AbE7/wijqQ+FslYBE2JXnHHmz8GLVxZ2w15XSdI=
Received: by mx.zohomail.com with SMTPS id 1724782334636725.3316886969787;
	Tue, 27 Aug 2024 11:12:14 -0700 (PDT)
Received: by jupiter.universe (Postfix, from userid 1000)
	id DFF724800E2; Tue, 27 Aug 2024 20:12:10 +0200 (CEST)
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jianfeng Liu <liujianfeng1994@gmail.com>,
	Emmanuel Gil Peyrot <linkmauve@linkmauve.fr>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	kernel@collabora.com
Subject: [PATCH v8 0/2] RK3588 VEPU121/VPU121 support
Date: Tue, 27 Aug 2024 20:10:19 +0200
Message-ID: <20240827181206.147617-1-sebastian.reichel@collabora.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240827_111224_795872_C56A0B03 
X-CRM114-Status: GOOD (  11.20  )
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

Hi,

This enables support for Hantro in the RK3588 base devicetree. Sebastian Fricke
send the pull request for the driver/binding changes for 6.12 some hours ago:

https://lore.kernel.org/all/20240827133315.qlmwdvwmghidayzy@basti-XPS-13-9310/

Changes since PATCHv7:
 * Dropped patches 1-4 (merged to media tree)
 * Rebased DT patches to use rk3588-base.dtsi instead of rk3588s.dtsi
 * Dropped a bunch of people from Cc since the media side is done

Changes since PATCHv6:
 * Collected Acked-by for RK3588 VEPU121 DT binding from Conor Dooley
 * Fix resource leak of DT node in hantro_disable_multicore()
 * Support disabled nodes in hantro_disable_multicore()
 * Use correct match data (RK3568 VEPU instead of VPU) for RK3588 VEPU121

Changes since PATCHv5:
 * Fix binding for vepu121 (use enum)
 * split hantro driver patch (multicore / vepu121 compatible)
 * move video-codec@fdb50000 node to correct position
 * change "jpeg_enc*" alias to "vepu121_*"
 * change "vpu_*" alias to "vpu121_*" (to be consistent)

Changes since PATCHv3 (VEPU121) / PATCHv4 (VPU121)
 * combine both patchsets, since there is some overleap
 * add patch to disable multi-core handling in the hantro driver
 * drop the RK3568 fallback compatible for VEPU (see above for the reason)
 * describe all RK3588 VEPU cores (possible because of driver change)

Greetings,

-- Sebastian

Emmanuel Gil Peyrot (1):
  arm64: dts: rockchip: Add VEPU121 to RK3588

Jianfeng Liu (1):
  arm64: dts: rockchip: Add VPU121 support for RK3588

 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 101 ++++++++++++++++++
 1 file changed, 101 insertions(+)

-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
