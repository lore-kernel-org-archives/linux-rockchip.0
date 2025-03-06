Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 19038C282D1
	for <linux-rockchip@archiver.kernel.org>; Thu,  6 Mar 2025 09:18:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kccQ9I0YypAZcKi1nkpvP1PbcUACQczyP3RaoiNwvfM=; b=oJCVsOE+07eAwj
	SQA8pMwcfR6DCx850rkX4W7cfP3rrWmhLAWhz2kY4XTgQPtIvtyOxwpX++ATvresYsIIn/qChLZIL
	7FTLwVT0WUT72yE1HTFc13NUBCFPhzpKEYs1SQKM31E6CjEU2KiL0TlHXjeoa3UoPbBKRF8LsJyND
	9SBJ/m3gdgdMD0MusvlES8akMiOk95hQbFxk98lYzp7AS91ff9kI7EL68RSBEWDhZ/3Yj/XOs9wdL
	01sbdloyz0SFJE0+uUYFoZBF5sHkix9gtGsAjLFzlGTcnrLOdI41wEka7OvGiOjZ0bFe/Ed01oamS
	oIWcMM26YnwwZnkibS6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tq7NU-0000000ASsT-3mV1;
	Thu, 06 Mar 2025 09:18:52 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6Fk-0000000AHYQ-3Q0L
	for linux-rockchip@bombadil.infradead.org;
	Thu, 06 Mar 2025 08:06:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=pJnrzorwJZg5YVopIF87hrP6/JAWjqvnB+RBADKXXwE=; b=VOxtcjSAWiGNMshTBV7gmqmj6z
	NFA2aFEwwlbY3Zg6Kg6R4YGk5N5pJlaYInS0JNIPzBoM99rVugGVAC7r7peSDb1AvABdSg0NiAuOn
	y2uMrhEyLnDESmAIXTLhVgwyI4HPOuheaX5xuNPrAT0zDJ1s6VxoRRS770pChva9xFPKBPAXxy3CX
	3lmhig4MMUIeDEITqLQ7h1Y4jMP5hUblK/vejbVuhud5Wcb9u1upRK93E1DAiQkEUz0lGzF6ct0TK
	Ojp2twlfbOAssvNTO+VNzOrLYh4ztcDe5Hg0TpE0KijzGGLjAxLJOBo1k2Z9KrciCWvmh6GL3PPS4
	QmfSUUTg==;
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tq6Fh-00000000xTq-1lHb
	for linux-rockchip@lists.infradead.org;
	Thu, 06 Mar 2025 08:06:47 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741248391; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=CWvERW0aqJYos4A9ChZ0WUYpVAlLVFcka6xZ2DPgwvhNJaLV+ulwb86isCMTiDUYd/JbTGnMv/Icx1AmyM30qhjBwxVm5cA48k1rqgJuQrUa0vV0UY1EM+hZj70FX7usbKyLso6eyU5KZfDMJf25DqHEL3d6tMFRQsuLItb+BRM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741248391; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=pJnrzorwJZg5YVopIF87hrP6/JAWjqvnB+RBADKXXwE=; 
	b=aweY4RFBbqtihLY1gVBtSPV4PS6Wk+Z8mXv28xlIXIhoreRVvzDEdPa8yyInVep2ODkU8e+MowviUpKgc9CmVy4YYRVsZ+lbMxrfQFDQ6mNihiQwIv2Kz/ArAkwcmkntfaXTaGUla47ZCdaFOuvlVbYcMc0TMe3saX+2Iuo1tm0=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741248391;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=pJnrzorwJZg5YVopIF87hrP6/JAWjqvnB+RBADKXXwE=;
	b=Erj10uqxvm9Iu8s/SDjtOeOxUkedSot1Wk0iS/H8EzDUM92HUKs+A3KDhXr6nWns
	NFJQYC7clS0PRJq9vuIyYAEefmD/K7BVwYaoRc6bD/ffZb+/xP4n43Q30UjJGjxSXt8
	ZDotbJ9sVKoP7QVH4dCkq4Rvdg3uKuje3p99xhhw=
Received: by mx.zohomail.com with SMTPS id 174124838915716.167179851729884;
	Thu, 6 Mar 2025 00:06:29 -0800 (PST)
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
	linux-rockchip@lists.infradead.org
Subject: [PATCH v1 0/3] Remove unused code from HDMI RX driver
Date: Thu,  6 Mar 2025 11:05:30 +0300
Message-ID: <20250306080533.294964-1-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250306_080645_935508_576D94DE 
X-CRM114-Status: UNSURE (   7.23  )
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

Hi Hans,

This is a follow up to the v13 HDMI RX patches [1] addressing warning
produced by Intel's test robot.

It also removes the unused HDMI CODEC leftovers that we accidentally
missed to remove previously and makes minor improvement to the definition
of struct snps_hdmirx_dev, all of which I noticed while was looking at
the warning report.

Dmitry Osipenko (3):
  media: platform: synopsys: hdmirx: Remove duplicated header inclusion
  media: platform: synopsys: hdmirx: Remove unused HDMI audio CODEC
    relics
  media: platform: synopsys: hdmirx: Optimize struct snps_hdmirx_dev

 drivers/media/platform/synopsys/hdmirx/snps_hdmirx.c | 7 +------
 1 file changed, 1 insertion(+), 6 deletions(-)

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
