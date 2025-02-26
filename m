Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E54CCC19776
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 Feb 2025 09:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EhQUVwcNMuz1shWDk16UJiwOXgxbdxkKSJw7FF9Yl7g=; b=bFCyVdGxZh5AaD
	kA99DW6F2i9dQAcTAmBgF2AxquTteJycg9/MQe84p8ciusfjnveI11PRog9v8oe7+0ZfcfuLfmZL0
	tjzyqH77HNDYfORo9WC0TmcJkf+R8ZZT65Cao1l7xTvjDJQWw5tQStYFi0X6I/xUw4ZCsztXYJ6/6
	B5n030l1CW5A5qSocNpVJPzKqDuZZavvi2cQGy5TJtLdQZ6ARR63VDqw01Fnd0j9WRYqExS3yh72w
	dRx5qdTakK4vsMIcXZXakE1qYB5YEX32gLnNInMvSUuboYxqGdrF6KzwXPeucqYydu4wvyxgDsG1+
	JVKadBaUTVWAPN69QFXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnE55-00000003A67-1xU1;
	Wed, 26 Feb 2025 09:51:55 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnE3g-000000039kD-0q04
	for linux-rockchip@lists.infradead.org;
	Wed, 26 Feb 2025 09:50:29 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1740563413; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=ODySbHIgUrC/R/eJVn+s6PRCVzWT0Wi8CQ7JNl/W/7V9WBR/ZSnYe+RyBN50yKzFoPxgUQzs8oebvJSu8AllLi7f2zU1SIutiLIJRXUu82sn//YahOMPB487NMqU1BABb4v6CWjZuyQxO1wy17gOrooPdcoXod10IdhfgRmugXw=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1740563413; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=YExa2cR9o7Mo3lUq9RQPolzLOjJZhxbHtJfLua+BJKI=; 
	b=mtc4ItPNOJn6tZIbujx5C6vb+Lz1Xp+Oat7UM6TCmEt3JdyZlx9w0a+RAUhGr2fjw1NgbPDmpbh7Q5KSQH/qtDiL6XfjESPzywVAClv87XzM6nGneow1n3GRRpz4X/R3v/fsKwwHFEWttSw2pfUO9Sz63GquUvTtql1nOS00BRk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=dmitry.osipenko@collabora.com;
	dmarc=pass header.from=<dmitry.osipenko@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1740563413;
	s=zohomail; d=collabora.com; i=dmitry.osipenko@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=YExa2cR9o7Mo3lUq9RQPolzLOjJZhxbHtJfLua+BJKI=;
	b=BFCWmfzpK6H4svO3CMcR3aR+AyLk93O5Fj81qAPeciCeOlVQUzTe25P4MAW+nLkV
	6A6Bj8B2kakOY/7ub28rgPwTa9flNlLjfh5o+VpMZ9MDhqcK25Wn2Fmv8CUtpYipXoB
	9Qnzmg+T6L4ZHGd0eAWFaMFjJmvo3Y0fuB7RVWbE=
Received: by mx.zohomail.com with SMTPS id 1740563411516959.0567330367636;
	Wed, 26 Feb 2025 01:50:11 -0800 (PST)
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
Subject: [PATCH v11 1/6] MAINTAINERS: Add entry for Synopsys DesignWare HDMI RX Driver
Date: Wed, 26 Feb 2025 12:49:41 +0300
Message-ID: <20250226094946.665963-2-dmitry.osipenko@collabora.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250226094946.665963-1-dmitry.osipenko@collabora.com>
References: <20250226094946.665963-1-dmitry.osipenko@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250226_015028_325329_AC563FD5 
X-CRM114-Status: UNSURE (   8.45  )
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

From: Shreeya Patel <shreeya.patel@collabora.com>

Add an entry for Synopsys DesignWare HDMI Receiver Controller
Driver.

Reviewed-by: Christopher Obbard <chris.obbard@collabora.com>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
Signed-off-by: Dmitry Osipenko <dmitry.osipenko@collabora.com>
---

NOTE: Shreeya is currently busy and I'm helping to finish upstreaming
      the driver. She will be maintaining driver afterwards.

 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 2286200b355b..1bb6a54e41c6 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -22952,6 +22952,14 @@ F:	drivers/net/pcs/pcs-xpcs.c
 F:	drivers/net/pcs/pcs-xpcs.h
 F:	include/linux/pcs/pcs-xpcs.h
 
+SYNOPSYS DESIGNWARE HDMI RX CONTROLLER DRIVER
+M:	Shreeya Patel <shreeya.patel@collabora.com>
+L:	linux-media@vger.kernel.org
+L:	kernel@collabora.com
+S:	Maintained
+F:	Documentation/devicetree/bindings/media/snps,dw-hdmi-rx.yaml
+F:	drivers/media/platform/synopsys/hdmirx/*
+
 SYNOPSYS DESIGNWARE I2C DRIVER
 M:	Jarkko Nikula <jarkko.nikula@linux.intel.com>
 R:	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
